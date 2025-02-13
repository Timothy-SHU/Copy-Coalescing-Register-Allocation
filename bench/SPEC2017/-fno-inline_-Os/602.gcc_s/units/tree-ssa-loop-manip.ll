; ModuleID = 'tree-ssa-loop-manip.c'
source_filename = "tree-ssa-loop-manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@.str = private unnamed_addr constant [6 x i8] c"ivtmp\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-manip.c\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"unrinittmp\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @create_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 !prof !200 {
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %11 = tail call ptr @loop_preheader_edge(ptr noundef %3) #17
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %18, !prof !201

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !202
  %16 = tail call ptr @create_tmp_var(ptr noundef %15, ptr noundef nonnull @.str) #17
  %17 = tail call zeroext i8 @add_referenced_var(ptr noundef %16) #17
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %2, %8 ], [ %16, %13 ]
  %20 = tail call fastcc ptr @make_ssa_name(ptr noundef %19) #18
  %21 = icmp eq ptr %6, null
  br i1 %21, label %23, label %22, !prof !205

22:                                               ; preds = %18
  store ptr %20, ptr %6, align 8, !tbaa !206
  br label %23

23:                                               ; preds = %22, %18
  %24 = tail call fastcc ptr @make_ssa_name(ptr noundef %19) #18
  %25 = icmp eq ptr %7, null
  br i1 %25, label %27, label %26, !prof !208

26:                                               ; preds = %23
  store ptr %24, ptr %7, align 8, !tbaa !206
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 23
  br i1 %30, label %31, label %55, !prof !209

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !202
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 2097152
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37, !prof !210

37:                                               ; preds = %31
  %38 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %33, ptr noundef nonnull %1) #17
  %39 = tail call i32 @tree_int_cst_lt(ptr noundef %38, ptr noundef nonnull %1) #17
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 63, i32 64, !prof !211
  %42 = select i1 %40, ptr %1, ptr %38, !prof !211
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
  %50 = load ptr, ptr %32, align 8, !tbaa !202
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
  %59 = load ptr, ptr %58, align 8, !tbaa !202
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i16
  switch i16 %61, label %76 [
    i16 10, label %62
    i16 12, label %62
  ], !prof !212

62:                                               ; preds = %55, %55
  %63 = load i64, ptr %0, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 121
  br i1 %65, label %66, label %69, !prof !213

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !202
  call void @mark_addressable(ptr noundef %68) #17
  br label %69

69:                                               ; preds = %66, %62
  %70 = load ptr, ptr @sizetype_tab, align 16, !tbaa !206
  %71 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %70, ptr noundef %57) #17
  %72 = icmp eq i32 %56, 64
  br i1 %72, label %73, label %76, !prof !213

73:                                               ; preds = %69
  %74 = load ptr, ptr @sizetype_tab, align 16, !tbaa !206
  %75 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %74, ptr noundef %71) #17
  br label %76

76:                                               ; preds = %69, %73, %55
  %77 = phi i32 [ %56, %55 ], [ 66, %73 ], [ 66, %69 ]
  %78 = phi ptr [ %57, %55 ], [ %75, %73 ], [ %71, %69 ]
  %79 = call ptr @force_gimple_operand(ptr noundef %78, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %80 = load ptr, ptr %9, align 8, !tbaa !206
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82, !prof !214

82:                                               ; preds = %76
  %83 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %11, ptr noundef nonnull %80) #17
  br label %84

84:                                               ; preds = %82, %76
  %85 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %77, ptr noundef %24, ptr noundef %20, ptr noundef %79) #17
  %86 = icmp eq i8 %5, 0
  br i1 %86, label %88, label %87, !prof !215

87:                                               ; preds = %84
  call void @gsi_insert_after(ptr noundef %4, ptr noundef %85, i32 noundef 0) #17
  br label %89

88:                                               ; preds = %84
  call void @gsi_insert_before(ptr noundef %4, ptr noundef %85, i32 noundef 0) #17
  br label %89

89:                                               ; preds = %88, %87
  %90 = call ptr @force_gimple_operand(ptr noundef nonnull %0, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef %19) #17
  %91 = load ptr, ptr %9, align 8, !tbaa !206
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !216

93:                                               ; preds = %89
  %94 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %11, ptr noundef nonnull %91) #17
  br label %95

95:                                               ; preds = %93, %89
  %96 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !217
  %98 = call ptr @create_phi_node(ptr noundef %20, ptr noundef %97) #17
  %99 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !202
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 !prof !223 !PGOFuncName !224 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !206
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

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rewrite_into_loop_closed_ssa(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !225 {
  tail call fastcc void @loops_state_set() #18
  %3 = tail call fastcc i32 @number_of_loops() #18
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %24, label %5, !prof !226

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @get_loops_exits() #18
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @update_ssa(i32 noundef %1) #17
  %8 = load ptr, ptr @cfun, align 8, !tbaa !206
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !227
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !229
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #18
  %14 = zext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #17
  tail call fastcc void @find_uses_to_rename(ptr noundef %0, ptr noundef %15, ptr noundef %7) #18
  tail call fastcc void @add_exit_phis(ptr noundef %7, ptr noundef %15, ptr noundef %6) #18
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %23, label %17, !prof !233

17:                                               ; preds = %5, %17
  %18 = phi i64 [ %21, %17 ], [ 0, %5 ]
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !206
  tail call void @bitmap_obstack_free(ptr noundef %20) #17
  store ptr null, ptr %19, align 8, !tbaa !206
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %14
  br i1 %22, label %23, label %17, !prof !234, !llvm.loop !235

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
define internal fastcc void @loops_state_set() unnamed_addr #3 !prof !225 !PGOFuncName !237 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !206
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = load i32, ptr %3, align 8, !tbaa !239
  %5 = or i32 %4, 32
  store i32 %5, ptr %3, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 !prof !225 !PGOFuncName !241 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !206
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !242

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loops_exits() unnamed_addr #0 !prof !244 !PGOFuncName !245 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %4 = load ptr, ptr @cfun, align 8, !tbaa !206
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !246
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !249
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !251
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %51, label %13, !prof !233

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  br label %15

15:                                               ; preds = %13, %42
  %16 = phi ptr [ %9, %13 ], [ %44, %42 ]
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef %16) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !252
  store ptr %17, ptr %14, align 8, !tbaa.struct !254
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %1) #18, !range !255
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %42, label %20, !prof !256

20:                                               ; preds = %15, %37
  %21 = load ptr, ptr %1, align 8, !tbaa !206
  %22 = load ptr, ptr %21, align 8, !tbaa !257
  %23 = load ptr, ptr @cfun, align 8, !tbaa !206
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !246
  %26 = load ptr, ptr %25, align 8, !tbaa !247
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %37, label %28, !prof !259

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !260
  %31 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %30, ptr noundef %16) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37, !prof !261

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !262
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %35) #17
  br label %42

37:                                               ; preds = %20, %28
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %38 = load i32, ptr %2, align 8
  %39 = load ptr, ptr %14, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %1) #18, !range !255
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %20, !prof !263, !llvm.loop !264

42:                                               ; preds = %37, %15, %33
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !249
  %45 = load ptr, ptr @cfun, align 8, !tbaa !206
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !246
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !251
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %15, !prof !265, !llvm.loop !266

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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !244 !PGOFuncName !267 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !268

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !269
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename(ptr noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !244 !PGOFuncName !271 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = icmp eq ptr %0, null
  br i1 %6, label %23, label %7, !prof !272

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !273
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10, !prof !275

10:                                               ; preds = %7
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %4) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !255
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %43, label %13, !prof !276

13:                                               ; preds = %10, %13
  %14 = load ptr, ptr @cfun, align 8, !tbaa !206
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !277
  %19 = load i32, ptr %4, align 4, !tbaa !253
  %20 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %18, i32 noundef %19) #18
  tail call fastcc void @find_uses_to_rename_bb(ptr noundef %20, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !255
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %43, label %13, !prof !278, !llvm.loop !279

23:                                               ; preds = %7, %3
  %24 = load ptr, ptr @cfun, align 8, !tbaa !206
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !246
  %27 = load ptr, ptr %26, align 8, !tbaa !247
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !249
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !251
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %43, label %33, !prof !280

33:                                               ; preds = %23, %33
  %34 = phi ptr [ %36, %33 ], [ %29, %23 ]
  tail call fastcc void @find_uses_to_rename_bb(ptr noundef %34, ptr noundef %1, ptr noundef %2) #18
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !249
  %37 = load ptr, ptr @cfun, align 8, !tbaa !206
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !246
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !251
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %33, !prof !281, !llvm.loop !282

43:                                               ; preds = %13, %33, %10, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_exit_phis(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !244 !PGOFuncName !283 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %4) #18
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !255
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8, !prof !233

8:                                                ; preds = %3, %8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !206
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !227
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !229
  %14 = load i32, ptr %4, align 4, !tbaa !253
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %14) #18
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  tail call fastcc void @add_exit_phis_var(ptr noundef %15, ptr noundef %18, ptr noundef %2) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !255
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %8, !prof !284, !llvm.loop !285

21:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !286 !PGOFuncName !287 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !288

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !289
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !291 !PGOFuncName !292 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !293 !PGOFuncName !294 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !255
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !295

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !206
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !296 !PGOFuncName !297 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !298

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !299

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 738, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !300
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !300
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !293 !PGOFuncName !302 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !303

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !304 !PGOFuncName !305 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !306

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !307 !PGOFuncName !308 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !309

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !310
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !312 !PGOFuncName !313 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !314

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 687, ptr noundef nonnull @.str.2) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !206
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !315 !PGOFuncName !316 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !317 !PGOFuncName !318 {
  %4 = load ptr, ptr %1, align 8, !tbaa !273
  store ptr %4, ptr %0, align 8, !tbaa !319
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !321
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !322

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !319
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !323
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !325
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !326
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !327
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !253
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !328 !PGOFuncName !329 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !327
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !330

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !331

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !253
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !332, !llvm.loop !333

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !253
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !253
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !325
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !319
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !325
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !334

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !326
  store i64 %35, ptr %3, align 8, !tbaa !327
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !335

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !253
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !253
  %40 = load i32, ptr %23, align 8, !tbaa !325
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !325
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !336, !llvm.loop !337

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !338
  store ptr %44, ptr %0, align 8, !tbaa !319
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !339

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !323
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !253
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !327
  store i32 %16, ptr %1, align 4, !tbaa !253
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename_bb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !340 !PGOFuncName !341 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #18
  store i32 0, ptr %6, align 8, !tbaa.struct !252
  %10 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !254
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %5) #18, !range !255
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13, !prof !342

13:                                               ; preds = %3, %28
  %14 = load ptr, ptr %5, align 8, !tbaa !206
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !343
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %16) #17
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !255
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28, !prof !344

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  br label %21

21:                                               ; preds = %19, %21
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  %23 = load i32, ptr %20, align 4, !tbaa !345
  %24 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22, i32 noundef %23) #18
  %25 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %24) #18
  call fastcc void @find_uses_to_rename_use(ptr noundef %0, ptr noundef %25, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !255
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %21, label %28, !prof !346, !llvm.loop !347

28:                                               ; preds = %21, %13
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %29 = load i32, ptr %6, align 8
  %30 = load ptr, ptr %10, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %5) #18, !range !255
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %13, !prof !348, !llvm.loop !349

33:                                               ; preds = %28, %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !255
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40, !prof !351

36:                                               ; preds = %33, %36
  %37 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18
  call fastcc void @find_uses_to_rename_stmt(ptr noundef %37, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @gsi_next(ptr noundef nonnull %4) #18
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #18, !range !255
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %36, label %40, !prof !352, !llvm.loop !353

40:                                               ; preds = %36, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !354 !PGOFuncName !355 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !356 !PGOFuncName !357 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !327
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !327
  %6 = load i32, ptr %1, align 4, !tbaa !253
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !253
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !358 !PGOFuncName !359 {
  %2 = load ptr, ptr %0, align 8, !tbaa !360
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !prof !362 !PGOFuncName !363 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %39, !prof !364

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11, !prof !365

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !202
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !202
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18, !prof !366

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !260
  %21 = tail call fastcc ptr @loop_outer(ptr noundef %20) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23, !prof !367

23:                                               ; preds = %18
  %24 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %20, ptr noundef %0) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %39, !prof !368

26:                                               ; preds = %23
  %27 = zext i32 %13 to i64
  %28 = getelementptr inbounds ptr, ptr %2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !206
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !prof !369

31:                                               ; preds = %26
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %32, ptr %28, align 8, !tbaa !206
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %29, %26 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !262
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %36) #17
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %13) #17
  br label %39

39:                                               ; preds = %23, %18, %11, %8, %4, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !370 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !372
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !374 !PGOFuncName !375 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !376 !PGOFuncName !377 {
  %2 = load ptr, ptr %0, align 8, !tbaa !360
  %3 = load ptr, ptr %2, align 8, !tbaa !378
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !376 !PGOFuncName !380 {
  %2 = load ptr, ptr %0, align 8, !tbaa !360
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !381
  store ptr %4, ptr %0, align 8, !tbaa !360
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !340 !PGOFuncName !382 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !360
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !383
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !384
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_uses_to_rename_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !385 !PGOFuncName !386 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %6 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #18, !range !255
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17, !prof !387

8:                                                ; preds = %3
  %9 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0) #18
  %10 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !388

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %14, %12 ], [ %9, %8 ]
  tail call fastcc void @find_uses_to_rename_use(ptr noundef %5, ptr noundef %13, ptr noundef %1, ptr noundef %2) #18
  %14 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #18
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %12, label %17, !prof !389, !llvm.loop !390

17:                                               ; preds = %12, %8, %3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !391 !PGOFuncName !392 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !393 !PGOFuncName !394 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !367

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !396 !PGOFuncName !397 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !398 !PGOFuncName !399 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !202
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !400

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !401 !PGOFuncName !402 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !403
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !404

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !202
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !405

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !406
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !340 !PGOFuncName !408 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !409

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !410
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !385 !PGOFuncName !412 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !413
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !385 !PGOFuncName !414 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !415
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !417 !PGOFuncName !418 {
  %2 = load i8, ptr %0, align 8, !tbaa !419
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 !prof !417 !PGOFuncName !420 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !421
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !422

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !423
  store ptr %8, ptr %2, align 8, !tbaa !421
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !425
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !387

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !426
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !428
  store ptr %17, ptr %10, align 8, !tbaa !425
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !419
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !429 !PGOFuncName !430 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !385 !PGOFuncName !431 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !425
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !421
  store i8 0, ptr %0, align 8, !tbaa !419
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !385 !PGOFuncName !432 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !255
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !433

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !385 !PGOFuncName !434 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !413
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !435 !PGOFuncName !436 {
  %2 = load ptr, ptr %0, align 8, !tbaa !206
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_exit_phis_var(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #17
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !262
  br i1 %10, label %15, label %13, !prof !439

13:                                               ; preds = %3
  %14 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %12) #17
  br label %17

15:                                               ; preds = %3
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %12) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !262
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %20) #17
  tail call void @compute_global_livein(ptr noundef %1, ptr noundef %18) #17
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %4) #18
  %22 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !255
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24, !prof !440

24:                                               ; preds = %17, %24
  %25 = load ptr, ptr @cfun, align 8, !tbaa !206
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !246
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !277
  %30 = load i32, ptr %4, align 4, !tbaa !253
  %31 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %29, i32 noundef %30) #18
  tail call fastcc void @add_exit_phis_edge(ptr noundef %31, ptr noundef %0) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %32 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !255
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %24, !prof !441, !llvm.loop !442

34:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !437 !PGOFuncName !443 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @compute_global_livein(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 !prof !437 !PGOFuncName !444 {
  %5 = load ptr, ptr %1, align 8, !tbaa !273
  store ptr %5, ptr %0, align 8, !tbaa !319
  %6 = load ptr, ptr %2, align 8, !tbaa !273
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %6, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %14, label %11, !prof !445

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !323
  br label %16

14:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !321
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !319
  %15 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !323
  br label %26

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !323
  %20 = icmp ult i32 %19, %13
  br i1 %20, label %21, label %24, !prof !446

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !338
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %16, !prof !447

24:                                               ; preds = %16
  store ptr %17, ptr %7, align 8, !tbaa !321
  %25 = icmp eq i32 %13, %19
  br i1 %25, label %26, label %36, !prof !448

26:                                               ; preds = %14, %24
  %27 = phi ptr [ @bitmap_zero_bits, %14 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %14 ], [ %17, %24 ]
  %29 = phi i32 [ %15, %14 ], [ %19, %24 ]
  %30 = shl i32 %29, 7
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !326
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !326
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
  store i32 %44, ptr %3, align 4, !tbaa !253
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !449 !PGOFuncName !450 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !327
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !451

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77, !prof !452

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !253
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !prof !453, !llvm.loop !454

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !253
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !253
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !325
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !319
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !325
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32, !prof !455

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !321
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !326
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !326
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !327
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6, !prof !456

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !253
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !253
  %46 = load i32, ptr %23, align 8, !tbaa !325
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !325
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !prof !457, !llvm.loop !458

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !338
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54, !prof !459

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !323
  %57 = load ptr, ptr %26, align 8, !tbaa !321
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !323
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62, !prof !460

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !461

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !319
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !323
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71, !prof !462

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !338
  store ptr %69, ptr %26, align 8, !tbaa !321
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !prof !463, !llvm.loop !464

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61, !prof !465

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !253
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !327
  store i32 %16, ptr %1, align 4, !tbaa !253
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !319
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_exit_phis_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !466 !PGOFuncName !467 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !252
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !254
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %3) #18, !range !255
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13, !prof !468

13:                                               ; preds = %2, %24
  %14 = load ptr, ptr %10, align 8, !tbaa !260
  %15 = load ptr, ptr %3, align 8, !tbaa !206
  %16 = load ptr, ptr %15, align 8, !tbaa !257
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !260
  %19 = tail call ptr @find_common_loop(ptr noundef %14, ptr noundef %18) #17
  %20 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !343
  %22 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %19, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24, !prof !469

24:                                               ; preds = %13
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %25 = load i32, ptr %4, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %3) #18, !range !255
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %13, !prof !470, !llvm.loop !471

29:                                               ; preds = %24, %13, %2
  %30 = load ptr, ptr %3, align 8, !tbaa !206
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32, !prof !472

32:                                               ; preds = %29
  %33 = tail call ptr @create_phi_node(ptr noundef %1, ptr noundef %0) #17
  %34 = tail call fastcc ptr @gimple_phi_result(ptr noundef %33) #18
  %35 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %33) #18
  %36 = tail call ptr @create_new_def_for(ptr noundef %34, ptr noundef %33, ptr noundef nonnull %35) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !252
  store ptr %8, ptr %9, align 8, !tbaa.struct !254
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %3) #18, !range !255
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39, !prof !473

39:                                               ; preds = %32, %39
  %40 = load ptr, ptr %3, align 8, !tbaa !206
  tail call void @add_phi_arg(ptr noundef %33, ptr noundef %1, ptr noundef %40, i32 noundef 0) #17
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %41 = load i32, ptr %4, align 8
  %42 = load ptr, ptr %9, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %3) #18, !range !255
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %39, !prof !474, !llvm.loop !475

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !476 !PGOFuncName !477 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 !prof !476 !PGOFuncName !478 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_loop_closed_ssa() local_unnamed_addr #0 !prof !435 {
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
  %8 = load ptr, ptr @cfun, align 8, !tbaa !206
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !246
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !251
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %59, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  br label %28

19:                                               ; preds = %55, %52
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !249
  %22 = load ptr, ptr @cfun, align 8, !tbaa !206
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !246
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !251
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %59, label %28, !llvm.loop !479

28:                                               ; preds = %17, %19
  %29 = phi ptr [ %13, %17 ], [ %21, %19 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %29) #17
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !255
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = call fastcc ptr @ei_start_1(ptr noundef %29) #18
  br label %34

34:                                               ; preds = %32, %49
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !252
  store ptr %33, ptr %18, align 8, !tbaa.struct !254
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %33, ptr noundef nonnull %2) #18, !range !255
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34, %38
  %39 = load ptr, ptr %2, align 8, !tbaa !206
  %40 = load ptr, ptr %39, align 8, !tbaa !257
  %41 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !345
  %43 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %35, i32 noundef %42) #18
  %44 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %43) #18
  call fastcc void @check_loop_closed_ssa_use(ptr noundef %40, ptr noundef %44) #18
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %18, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %2) #18, !range !255
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %38, !llvm.loop !480

49:                                               ; preds = %38, %34
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !255
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %34, label %52, !llvm.loop !481

52:                                               ; preds = %49, %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %29) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !255
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %19

55:                                               ; preds = %52, %55
  %56 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  call fastcc void @check_loop_closed_ssa_stmt(ptr noundef %29, ptr noundef %56) #18
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %57 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !255
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %55, label %19, !llvm.loop !482

59:                                               ; preds = %19, %7, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  ret void
}

; Function Attrs: optsize
declare void @verify_ssa(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_loop_closed_ssa_use(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !435 !PGOFuncName !483 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !260
  %17 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %16, ptr noundef %0) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 425, ptr noundef nonnull @.str.2) #17
  br label %20

20:                                               ; preds = %19, %14, %9, %2, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_loop_closed_ssa_stmt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !435 !PGOFuncName !484 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %4 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #18, !range !255
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
  br i1 %14, label %10, label %15, !llvm.loop !485

15:                                               ; preds = %10, %6, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @split_loop_exit_edge(ptr noundef %0) local_unnamed_addr #0 !prof !486 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = tail call ptr @split_edge(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #17
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !255
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %27, !prof !487

8:                                                ; preds = %1, %24
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18
  %10 = call fastcc ptr @single_succ_edge(ptr noundef %5) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !345
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %9, i32 noundef %12) #18
  %14 = call fastcc ptr @single_succ_edge(ptr noundef %5) #18
  %15 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %9, ptr noundef %14) #18
  %16 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #18
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %24, !prof !488

20:                                               ; preds = %8
  %21 = call ptr @duplicate_ssa_name(ptr noundef nonnull %16, ptr noundef null) #17
  %22 = call ptr @create_phi_node(ptr noundef %21, ptr noundef %5) #17
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !202
  call void @add_phi_arg(ptr noundef %22, ptr noundef nonnull %16, ptr noundef %0, i32 noundef %15) #17
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %13, ptr noundef %21) #18
  br label %24

24:                                               ; preds = %8, %20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #18
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !255
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %8, label %27, !prof !489, !llvm.loop !490

27:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !491 !PGOFuncName !492 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #18, !range !255
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !493

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 645, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !494
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #18
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !495 !PGOFuncName !496 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !345
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !497
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !499 !PGOFuncName !500 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !372
  store ptr %1, ptr %4, align 8, !tbaa !206
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !491 !PGOFuncName !501 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !494
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !499 !PGOFuncName !502 {
  %2 = load ptr, ptr %0, align 8, !tbaa !503
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !504

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !505
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !505
  store ptr %2, ptr %6, align 8, !tbaa !503
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !499 !PGOFuncName !506 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !504

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !507

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !503
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #18
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !499 !PGOFuncName !508 {
  store ptr %1, ptr %0, align 8, !tbaa !503
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !505
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !505
  store ptr %0, ptr %4, align 8, !tbaa !503
  store ptr %0, ptr %3, align 8, !tbaa !505
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @ip_end_pos(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !509 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !510
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ip_normal_pos(ptr noundef %0) local_unnamed_addr #0 !prof !511 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !510
  %4 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %3) #18, !range !255
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %30, label %6, !prof !512

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @single_pred(ptr noundef %3) #18
  %8 = tail call ptr @last_stmt(ptr noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10, !prof !513

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #18, !range !413
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %30, !prof !514

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !494
  %16 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %15, i32 noundef 0) #18
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !343
  %19 = load ptr, ptr %2, align 8, !tbaa !510
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25, !prof !515

21:                                               ; preds = %13
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %15, i32 noundef 1) #18
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !343
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi ptr [ %24, %21 ], [ %18, %13 ]
  %27 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %26) #17
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr %7, ptr null, !prof !516
  br label %30

30:                                               ; preds = %25, %6, %10, %1
  %31 = phi ptr [ null, %1 ], [ null, %10 ], [ null, %6 ], [ %29, %25 ]
  ret ptr %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !517 !PGOFuncName !518 {
  %2 = load ptr, ptr %0, align 8, !tbaa !519
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !520 !PGOFuncName !521 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !520 !PGOFuncName !522 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #18, !range !255
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !523

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 655, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !519
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @standard_iv_increment_position(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !524 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @ip_normal_pos(ptr noundef %0) #18
  %7 = tail call ptr @ip_end_pos(ptr noundef %0) #18
  %8 = tail call ptr @last_stmt(ptr noundef %7) #17
  %9 = icmp eq ptr %6, null
  br i1 %9, label %15, label %10, !prof !525

10:                                               ; preds = %3
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12, !prof !526

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #18, !range !413
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %17

16:                                               ; preds = %12, %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i8 [ 0, %16 ], [ 1, %15 ]
  store i8 %18, ptr %2, align 1, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !524 !PGOFuncName !527 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !360
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !383
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !524 !PGOFuncName !528 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !525

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !529
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !530 {
  %8 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 2) #18, !range !255
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10, !prof !531

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #18, !range !255
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13, !prof !531

13:                                               ; preds = %10
  %14 = load ptr, ptr @cfun, align 8, !tbaa !206
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !532
  %19 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !531

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
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #4 !prof !533 !PGOFuncName !534 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !206
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %5 = load i32, ptr %4, align 8, !tbaa !239
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
define internal fastcc void @copy_phi_node_args(i32 noundef %0) unnamed_addr #0 !prof !530 !PGOFuncName !535 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !206
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !246
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !532
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %20, !prof !536

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !277
  br label %12

11:                                               ; preds = %12
  br i1 %7, label %27, label %20, !prof !537

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %0, %8 ], [ %18, %12 ]
  %14 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %13) #18
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !403
  %17 = or i32 %16, 128
  store i32 %17, ptr %15, align 8, !tbaa !403
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %11, label %12, !prof !538, !llvm.loop !539

20:                                               ; preds = %27, %1, %11
  %21 = phi ptr [ %4, %11 ], [ %4, %1 ], [ %36, %27 ]
  %22 = phi i32 [ %6, %11 ], [ %6, %1 ], [ %38, %27 ]
  %23 = icmp ugt i32 %22, %0
  br i1 %23, label %24, label %48, !prof !536

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !277
  br label %40

27:                                               ; preds = %11, %27
  %28 = phi ptr [ %36, %27 ], [ %4, %11 ]
  %29 = phi i32 [ %33, %27 ], [ %0, %11 ]
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !277
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef %29) #18
  tail call void @add_phi_args_after_copy_bb(ptr noundef %32) #17
  %33 = add nuw i32 %29, 1
  %34 = load ptr, ptr @cfun, align 8, !tbaa !206
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !246
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !532
  %39 = icmp ult i32 %33, %38
  br i1 %39, label %27, label %20, !prof !540, !llvm.loop !541

40:                                               ; preds = %24, %40
  %41 = phi i32 [ %0, %24 ], [ %46, %40 ]
  %42 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %41) #18
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !403
  %45 = and i32 %44, -129
  store i32 %45, ptr %43, align 8, !tbaa !403
  %46 = add nuw i32 %41, 1
  %47 = icmp eq i32 %46, %22
  br i1 %47, label %48, label %40, !prof !538, !llvm.loop !542

48:                                               ; preds = %40, %20
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_args_after_copy_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_unroll_loop_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !435 {
  %4 = tail call ptr @single_dom_exit(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 0) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !543
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !546
  %16 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %15) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !547
  %21 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %20) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !548
  %26 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !549
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
  %39 = load ptr, ptr @compiler_params, align 8, !tbaa !206
  %40 = getelementptr inbounds %struct.param_info, ptr %39, i64 26, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !550
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
define dso_local void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 !prof !435 {
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
  %22 = load i32, ptr %21, align 8, !tbaa !552
  %23 = and i32 %22, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store ptr null, ptr %18, align 8, !tbaa !206
  %24 = tail call i32 @expected_loop_iterations(ptr noundef %0) #17
  call fastcc void @determine_exit_conditions(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %12) #18
  %25 = load ptr, ptr %9, align 8, !tbaa !206
  %26 = tail call i32 @integer_nonzerop(ptr noundef %25) #17
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 9000, i32 10000
  %29 = tail call ptr @loop_version(ptr noundef %0, ptr noundef %25, ptr noundef null, i32 noundef %28, i32 noundef %28, i32 noundef 10000, i8 noundef zeroext 1) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 928, ptr noundef nonnull @.str.2) #17
  br label %32

32:                                               ; preds = %6, %31
  tail call void @update_ssa(i32 noundef 2048) #17
  %33 = udiv i32 %24, %1
  %34 = icmp ult i32 %33, 5
  %35 = tail call i32 @llvm.umin.i32(i32 %24, i32 5)
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = tail call ptr @loop_preheader_edge(ptr noundef %29) #17
  %38 = load ptr, ptr %37, align 8, !tbaa !257
  %39 = tail call fastcc ptr @single_pred_edge(ptr noundef %38) #18
  %40 = tail call ptr @loop_latch_edge(ptr noundef %0) #17
  %41 = tail call ptr @split_edge(ptr noundef %40) #17
  %42 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !510
  %44 = tail call fastcc ptr @single_pred(ptr noundef %43) #18
  %45 = load ptr, ptr %2, align 8, !tbaa !257
  %46 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !553
  %48 = sub nsw i32 10000, %47
  tail call fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %45, i32 noundef %48) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %17, ptr noundef %44) #18
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !206
  %50 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %49, ptr noundef %49, ptr noundef null, ptr noundef null) #17
  call void @gsi_insert_after(ptr noundef nonnull %17, ptr noundef %50, i32 noundef 0) #17
  %51 = or disjoint i32 %23, 2048
  %52 = call ptr @make_edge(ptr noundef %44, ptr noundef %38, i32 noundef %51) #17
  call void @rescan_loop_exit(ptr noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  %53 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 9
  %54 = load i64, ptr %53, align 8, !tbaa !554
  %55 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 9
  store i64 %54, ptr %55, align 8, !tbaa !554
  %56 = load i32, ptr %46, align 4, !tbaa !553
  %57 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 8
  store i32 %56, ptr %57, align 4, !tbaa !553
  %58 = load ptr, ptr %42, align 8, !tbaa !510
  %59 = call fastcc ptr @single_pred_edge(ptr noundef %58) #18
  %60 = load i32, ptr %46, align 4, !tbaa !553
  %61 = sub nsw i32 10000, %60
  %62 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 8
  store i32 %61, ptr %62, align 4, !tbaa !553
  %63 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 7
  store i32 1024, ptr %63, align 8, !tbaa !552
  %64 = load i64, ptr %53, align 8, !tbaa !554
  %65 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 9
  %66 = load i64, ptr %65, align 8, !tbaa !554
  %67 = sub nsw i64 %66, %64
  %68 = call i64 @llvm.smax.i64(i64 %67, i64 0)
  store i64 %68, ptr %65, align 8, !tbaa !554
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %42, i32 noundef 1, i32 noundef %61, i32 noundef 10000) #17
  %69 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %70 = call ptr @loop_preheader_edge(ptr noundef %29) #17
  %71 = call ptr @loop_latch_edge(ptr noundef %0) #17
  %72 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !217
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %14, ptr noundef %73) #17
  %74 = getelementptr inbounds %struct.loop, ptr %29, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !217
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef %75) #17
  %76 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %14) #18, !range !255
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
  %85 = load i32, ptr %79, align 4, !tbaa !345
  %86 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %83, i32 noundef %85) #18
  %87 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %86) #18
  %88 = load i32, ptr %80, align 4, !tbaa !345
  %89 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %84, i32 noundef %88) #18
  %90 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %89) #18
  %91 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %87, ptr noundef %90) #17
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 997, ptr noundef nonnull @.str.2) #17
  br label %94

94:                                               ; preds = %82, %93
  %95 = load i32, ptr %81, align 4, !tbaa !345
  %96 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %83, i32 noundef %95) #18
  %97 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %96) #18
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 141
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !202
  %104 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !202
  %106 = call zeroext i8 @useless_type_conversion_p(ptr noundef %103, ptr noundef %105) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %97, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !202
  br label %140

111:                                              ; preds = %101, %94
  %112 = load i64, ptr %87, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 141
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !202
  %118 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !202
  %120 = call zeroext i8 @useless_type_conversion_p(ptr noundef %117, ptr noundef %119) #17
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.tree_ssa_name, ptr %87, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !202
  br label %140

125:                                              ; preds = %115, %111
  %126 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !202
  %128 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !202
  %130 = call zeroext i8 @useless_type_conversion_p(ptr noundef %127, ptr noundef %129) #17
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load ptr, ptr %126, align 8, !tbaa !202
  %134 = call ptr @create_tmp_var(ptr noundef %133, ptr noundef nonnull @.str.6) #17
  %135 = call zeroext i8 @add_referenced_var(ptr noundef %134) #17
  br label %140

136:                                              ; preds = %125
  %137 = load ptr, ptr %128, align 8, !tbaa !202
  %138 = call ptr @create_tmp_var(ptr noundef %137, ptr noundef nonnull @.str.6) #17
  %139 = call zeroext i8 @add_referenced_var(ptr noundef %138) #17
  br label %140

140:                                              ; preds = %122, %136, %132, %108
  %141 = phi ptr [ %110, %108 ], [ %124, %122 ], [ %134, %132 ], [ %138, %136 ]
  %142 = call fastcc ptr @make_ssa_name(ptr noundef %141) #18
  %143 = call ptr @create_phi_node(ptr noundef %142, ptr noundef %38) #17
  %144 = getelementptr inbounds %struct.tree_ssa_name, ptr %142, i64 0, i32 2
  store ptr %143, ptr %144, align 8, !tbaa !202
  call void @add_phi_arg(ptr noundef %143, ptr noundef nonnull %87, ptr noundef %39, i32 noundef 0) #17
  call void @add_phi_arg(ptr noundef %143, ptr noundef nonnull %97, ptr noundef %52, i32 noundef 0) #17
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %89, ptr noundef %142) #18
  call fastcc void @gsi_next(ptr noundef nonnull %14) #18
  call fastcc void @gsi_next(ptr noundef nonnull %15) #18
  %145 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %14) #18, !range !255
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %82, label %147, !llvm.loop !555

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
  %155 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %154, i32 noundef %153, ptr noundef %152, ptr noundef %52, ptr noundef nonnull %18, i32 noundef 1) #18, !range !255
  call void @free(ptr noundef %152) #18
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1047, ptr noundef nonnull @.str.2) #17
  br label %158

158:                                              ; preds = %151, %157
  %159 = load ptr, ptr %18, align 8
  %160 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %159, i32 noundef 0, ptr noundef nonnull %16) #18, !range !556
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %158, %168
  %163 = phi i32 [ %169, %168 ], [ 0, %158 ]
  %164 = load ptr, ptr %16, align 8, !tbaa !206
  %165 = call zeroext i8 @remove_path(ptr noundef %164) #17
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1052, ptr noundef nonnull @.str.2) #17
  br label %168

168:                                              ; preds = %162, %167
  %169 = add i32 %163, 1
  %170 = load ptr, ptr %18, align 8
  %171 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %170, i32 noundef %169, ptr noundef nonnull %16) #18, !range !556
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %162, !llvm.loop !557

173:                                              ; preds = %168, %158
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %18) #18
  call void @update_ssa(i32 noundef 2048) #17
  %174 = load ptr, ptr %72, align 8, !tbaa !217
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 11
  %176 = load i32, ptr %175, align 8, !tbaa !558
  %177 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %178 = load ptr, ptr %177, align 8, !tbaa !257
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 11
  %180 = load i32, ptr %179, align 8, !tbaa !558
  %181 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %182 = icmp eq i32 %176, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = add i32 %36, 1
  br label %193

185:                                              ; preds = %173
  %186 = getelementptr inbounds %struct.edge_def, ptr %181, i64 0, i32 8
  %187 = load i32, ptr %186, align 4, !tbaa !553
  %188 = mul nsw i32 %187, %180
  %189 = add nsw i32 %188, 5000
  %190 = sdiv i32 %189, 10000
  %191 = add i32 %36, 1
  %192 = mul i32 %190, %191
  call void @scale_loop_frequencies(ptr noundef nonnull %0, i32 noundef %192, i32 noundef %176) #17
  br label %193

193:                                              ; preds = %183, %185
  %194 = phi i32 [ %184, %183 ], [ %191, %185 ]
  %195 = load ptr, ptr %42, align 8, !tbaa !510
  %196 = call fastcc ptr @single_pred(ptr noundef %195) #18
  %197 = call ptr @find_edge(ptr noundef %196, ptr noundef %38) #17
  %198 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #17
  %199 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 9
  %200 = load i64, ptr %199, align 8, !tbaa !554
  %201 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 9
  store i64 %200, ptr %201, align 8, !tbaa !554
  %202 = udiv i32 10000, %194
  %203 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 8
  store i32 %202, ptr %203, align 4, !tbaa !553
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 8
  %205 = load i64, ptr %204, align 8, !tbaa !559
  %206 = add nsw i64 %205, %200
  store i64 %206, ptr %204, align 8, !tbaa !559
  %207 = load ptr, ptr %197, align 8, !tbaa !257
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 11
  %209 = load i32, ptr %208, align 8, !tbaa !558
  %210 = mul nsw i32 %209, %202
  %211 = add nsw i32 %210, 5000
  %212 = sdiv i32 %211, 10000
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 11
  %214 = load i32, ptr %213, align 8, !tbaa !558
  %215 = add nsw i32 %212, %214
  store i32 %215, ptr %213, align 8, !tbaa !558
  %216 = load ptr, ptr %42, align 8, !tbaa !510
  %217 = call fastcc ptr @single_pred_edge(ptr noundef %216) #18
  %218 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 8
  %219 = load i32, ptr %218, align 4, !tbaa !553
  %220 = load i32, ptr %203, align 4, !tbaa !553
  %221 = sub nsw i32 10000, %220
  store i32 %221, ptr %218, align 4, !tbaa !553
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %196, i64 0, i32 8
  %223 = load i64, ptr %222, align 8, !tbaa !559
  %224 = load i64, ptr %201, align 8, !tbaa !554
  %225 = sub nsw i64 %223, %224
  %226 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 9
  %227 = call i64 @llvm.smax.i64(i64 %225, i64 0)
  store i64 %227, ptr %226, align 8, !tbaa !554
  %228 = icmp eq i32 %219, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %193
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %42, i32 noundef 1, i32 noundef %221, i32 noundef %219) #17
  br label %230

230:                                              ; preds = %229, %193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %19, ptr noundef nonnull %196) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #16
  %231 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %17) #18
  %232 = load ptr, ptr %10, align 8, !tbaa !206
  %233 = load ptr, ptr %11, align 8, !tbaa !206
  call void @create_iv(ptr noundef %232, ptr noundef %233, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %17, i8 noundef zeroext 0, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %234 = load i32, ptr %13, align 4, !tbaa !253
  call fastcc void @gimple_cond_set_code(ptr noundef %231, i32 noundef %234) #18
  %235 = load ptr, ptr %8, align 8, !tbaa !206
  call fastcc void @gimple_cond_set_lhs(ptr noundef %231, ptr noundef %235) #18
  %236 = load ptr, ptr %12, align 8, !tbaa !206
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
define internal fastcc void @determine_exit_conditions(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 !prof !435 !PGOFuncName !560 {
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !547
  %12 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !548
  %14 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !549
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !202
  %18 = tail call ptr @lower_bound_in_type(ptr noundef %17, ptr noundef %17) #17
  %19 = tail call ptr @upper_bound_in_type(ptr noundef %17, ptr noundef %17) #17
  %20 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !543
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !206
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef %11) #17
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef %15) #17
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !206
  store ptr %25, ptr %3, align 8, !tbaa !206
  store ptr null, ptr %4, align 8, !tbaa !206
  store ptr null, ptr %5, align 8, !tbaa !206
  store i32 0, ptr %6, align 4, !tbaa !253
  store ptr null, ptr %7, align 8, !tbaa !206
  switch i32 %21, label %39 [
    i32 0, label %26
    i32 102, label %27
    i32 97, label %31
    i32 99, label %35
  ]

26:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 714, ptr noundef nonnull @.str.2) #17
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 729, ptr noundef nonnull @.str.2) #17
  br label %40

35:                                               ; preds = %8
  %36 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %13) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 733, ptr noundef nonnull @.str.2) #17
  br label %40

39:                                               ; preds = %26, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 736, ptr noundef nonnull @.str.2) #17
  br label %40

40:                                               ; preds = %27, %38, %35, %34, %31, %39
  %41 = phi i32 [ 97, %34 ], [ 97, %31 ], [ 99, %35 ], [ 99, %38 ], [ %21, %39 ], [ %30, %27 ]
  %42 = getelementptr inbounds %struct.tree_niter_desc, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !546
  %44 = tail call i32 @integer_zerop(ptr noundef %43) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !206
  %48 = load ptr, ptr %42, align 8, !tbaa !546
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
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !206
  %59 = select i1 %57, ptr %18, ptr %19
  %60 = select i1 %57, i32 100, i32 98
  %61 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %17, ptr noundef %59, ptr noundef %56) #17
  %62 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %60, ptr noundef %58, ptr noundef %24, ptr noundef %61) #17
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !206
  %64 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %63, ptr noundef %62, ptr noundef %52) #17
  %65 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %17, ptr noundef %24, ptr noundef %56) #17
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !206
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %41, ptr noundef %66, ptr noundef %23, ptr noundef %65) #17
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !206
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %68, ptr noundef %67, ptr noundef %64) #17
  %70 = tail call ptr @unshare_expr(ptr noundef %69) #17
  %71 = call ptr @force_gimple_operand(ptr noundef %70, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null) #17
  %72 = load ptr, ptr %9, align 8, !tbaa !206
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %51
  %75 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %76 = load ptr, ptr %9, align 8, !tbaa !206
  %77 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %75, ptr noundef %76) #17
  br label %78

78:                                               ; preds = %74, %51
  %79 = call zeroext i8 @is_gimple_condexpr(ptr noundef %71) #17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = call ptr @force_gimple_operand(ptr noundef %71, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %83 = load ptr, ptr %9, align 8, !tbaa !206
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %87 = load ptr, ptr %9, align 8, !tbaa !206
  %88 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %86, ptr noundef %87) #17
  br label %89

89:                                               ; preds = %81, %85, %78
  %90 = phi ptr [ %71, %78 ], [ %82, %85 ], [ %82, %81 ]
  store ptr %90, ptr %3, align 8, !tbaa !206
  %91 = call ptr @unshare_expr(ptr noundef %23) #17
  %92 = call ptr @force_gimple_operand(ptr noundef %91, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %93 = load ptr, ptr %9, align 8, !tbaa !206
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %97 = load ptr, ptr %9, align 8, !tbaa !206
  %98 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %96, ptr noundef %97) #17
  br label %99

99:                                               ; preds = %95, %89
  %100 = call ptr @unshare_expr(ptr noundef %65) #17
  %101 = call ptr @force_gimple_operand(ptr noundef %100, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #17
  %102 = load ptr, ptr %9, align 8, !tbaa !206
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %106 = load ptr, ptr %9, align 8, !tbaa !206
  %107 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %105, ptr noundef %106) #17
  br label %108

108:                                              ; preds = %104, %99
  store ptr %92, ptr %4, align 8, !tbaa !206
  store ptr %55, ptr %5, align 8, !tbaa !206
  store i32 %41, ptr %6, align 4, !tbaa !253
  store ptr %101, ptr %7, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret void
}

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !435 !PGOFuncName !561 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %1) #17
  store ptr %7, ptr %4, align 8, !tbaa !206
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %17, %15 ], [ %7, %6 ]
  %11 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 10000, i32 noundef %2) #17
  %14 = load ptr, ptr %4, align 8, !tbaa !206
  call fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %14, i32 noundef %2) #18
  br label %15

15:                                               ; preds = %9, %13
  %16 = load ptr, ptr %4, align 8, !tbaa !206
  %17 = call ptr @next_dom_son(i32 noundef 1, ptr noundef %16) #17
  store ptr %17, ptr %4, align 8, !tbaa !206
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !562

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
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !prof !435 !PGOFuncName !563 {
  %3 = load ptr, ptr %0, align 8, !tbaa !564
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
  %15 = load i64, ptr %14, align 8, !tbaa !326
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !202
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !202
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !326
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !435 !PGOFuncName !566 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !310
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !206
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !435 !PGOFuncName !567 {
  %2 = load ptr, ptr %0, align 8, !tbaa !206
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !206
  ret void
}

; Function Attrs: optsize
declare void @scale_loop_frequencies(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !435 !PGOFuncName !568 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !435 !PGOFuncName !569 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !435 !PGOFuncName !570 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !435 !PGOFuncName !571 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !255
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

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
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !435 !PGOFuncName !572 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !255
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !435 !PGOFuncName !573 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !202
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !435 !PGOFuncName !574 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !326
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !435 !PGOFuncName !575 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !413
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !435 !PGOFuncName !576 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !253
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !435 {
  tail call void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canonicalize_loop_ivs(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !435 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr %1, align 8, !tbaa !206
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %16 = tail call ptr @single_dom_exit(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !217
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %18) #17
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18, !range !255
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !577
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
  %33 = load ptr, ptr %32, align 8, !tbaa !202
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = call i32 @llvm.umax.i32(i32 %36, i32 %25)
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i32 [ %25, %24 ], [ %37, %31 ]
  call fastcc void @gsi_next(ptr noundef nonnull %6) #18
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18, !range !255
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %24, label %42, !llvm.loop !585

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !577
  %44 = call ptr %43(i32 noundef %39, i32 noundef 1) #17
  %45 = icmp eq i32 %15, %39
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8, !tbaa !206
  %48 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %44, ptr noundef %47) #17
  store ptr %48, ptr %1, align 8, !tbaa !206
  %49 = call ptr @force_gimple_operand(ptr noundef %48, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #17
  store ptr %49, ptr %1, align 8, !tbaa !206
  %50 = load ptr, ptr %7, align 8, !tbaa !206
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = call ptr @loop_preheader_edge(ptr noundef %0) #17
  %54 = load ptr, ptr %7, align 8, !tbaa !206
  %55 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %53, ptr noundef %54) #17
  br label %56

56:                                               ; preds = %21, %46, %52, %42
  %57 = phi ptr [ %23, %21 ], [ %44, %46 ], [ %44, %52 ], [ %44, %42 ]
  %58 = icmp eq i8 %2, 0
  %59 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %60 = select i1 %58, ptr %17, ptr %59
  %61 = load ptr, ptr %60, align 8, !tbaa !206
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %61) #18
  %62 = call ptr @build_int_cst_type(ptr noundef %57, i64 noundef 0) #17
  %63 = call ptr @build_int_cst(ptr noundef %57, i64 noundef 1) #17
  call void @create_iv(ptr noundef %62, ptr noundef %63, ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %2, ptr noundef nonnull %4, ptr noundef null) #18
  %64 = load ptr, ptr %4, align 8, !tbaa !206
  call fastcc void @rewrite_all_phi_nodes_with_iv(ptr noundef %0, ptr noundef %64) #18
  %65 = load ptr, ptr %16, align 8, !tbaa !257
  %66 = call ptr @last_stmt(ptr noundef %65) #17
  %67 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !552
  %69 = and i32 %68, 1024
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %72 = load ptr, ptr %16, align 8, !tbaa !257
  call void @extract_true_false_edges_from_block(ptr noundef %72, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %73 = load ptr, ptr %8, align 8, !tbaa !206
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  store i32 2048, ptr %74, align 8, !tbaa !552
  %75 = load ptr, ptr %9, align 8, !tbaa !206
  %76 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 7
  store i32 1024, ptr %76, align 8, !tbaa !552
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %77

77:                                               ; preds = %71, %56
  call fastcc void @gimple_cond_set_code(ptr noundef %66, i32 noundef 97) #18
  %78 = load ptr, ptr %4, align 8, !tbaa !206
  call fastcc void @gimple_cond_set_lhs(ptr noundef %66, ptr noundef %78) #18
  %79 = load ptr, ptr %1, align 8, !tbaa !206
  call fastcc void @gimple_cond_set_rhs(ptr noundef %66, ptr noundef %79) #18
  call fastcc void @update_stmt(ptr noundef %66) #18
  %80 = load ptr, ptr %4, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %80
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_all_phi_nodes_with_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !435 !PGOFuncName !586 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !587
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2, %23
  %11 = phi i64 [ %24, %23 ], [ 0, %2 ]
  %12 = getelementptr inbounds ptr, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #18
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !260
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %13) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !350
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !255
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %20
  call fastcc void @rewrite_phi_with_iv(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1) #18
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !255
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %20, label %23, !llvm.loop !588

23:                                               ; preds = %20, %17, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %24 = add nuw nsw i64 %11, 1
  %25 = load i32, ptr %7, align 4, !tbaa !587
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %10, label %28, !llvm.loop !589

28:                                               ; preds = %23, %2
  call void @free(ptr noundef %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !435 !PGOFuncName !590 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #18
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !255
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #18, !range !413
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #18
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !255
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !591

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_phi_with_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !435 !PGOFuncName !592 {
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
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %25 [
    i16 10, label %23
    i16 12, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = load ptr, ptr @sizetype_tab, align 16, !tbaa !206
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %24, %23 ], [ %20, %18 ]
  %27 = getelementptr inbounds %struct.affine_iv, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !593
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
  %39 = load ptr, ptr %5, align 8, !tbaa !594
  %40 = call ptr @unshare_expr(ptr noundef %39) #17
  %41 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %38, ptr noundef nonnull %20, ptr noundef %40, ptr noundef %31) #17
  %42 = call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef %41, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %43 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %8, ptr noundef %42) #17
  call void @gsi_insert_before(ptr noundef %2, ptr noundef %43, i32 noundef 1) #17
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !202
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
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!199}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!36 = !{ptr @create_iv, ptr @loop_preheader_edge, i64 6310}
!37 = !{ptr @create_iv, ptr @create_tmp_var, i64 1011}
!38 = !{ptr @create_iv, ptr @add_referenced_var, i64 1011}
!39 = !{ptr @create_iv, ptr @make_ssa_name, i64 6310}
!40 = !{ptr @create_iv, ptr @fold_build1_stat_loc, i64 3140}
!41 = !{ptr @create_iv, ptr @tree_int_cst_lt, i64 3139}
!42 = !{ptr @create_iv, ptr @tree_expr_nonnegative_warnv_p, i64 1}
!43 = !{ptr @create_iv, ptr @mark_addressable, i64 1}
!44 = !{ptr @create_iv, ptr @fold_convert_loc, i64 31}
!45 = !{ptr @create_iv, ptr @force_gimple_operand, i64 6310}
!46 = !{ptr @create_iv, ptr @gsi_insert_seq_on_edge_immediate, i64 1882}
!47 = !{ptr @create_iv, ptr @gimple_build_assign_with_ops_stat, i64 3155}
!48 = !{ptr @create_iv, ptr @gsi_insert_after, i64 464}
!49 = !{ptr @create_iv, ptr @gsi_insert_before, i64 2691}
!50 = !{ptr @create_iv, ptr @create_phi_node, i64 3155}
!51 = !{ptr @create_iv, ptr @add_phi_arg, i64 6310}
!52 = !{ptr @create_iv, ptr @loop_latch_edge, i64 3155}
!53 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 6310}
!54 = !{ptr @rewrite_into_loop_closed_ssa, ptr @loops_state_set, i64 26137}
!55 = !{ptr @rewrite_into_loop_closed_ssa, ptr @number_of_loops, i64 26137}
!56 = !{ptr @rewrite_into_loop_closed_ssa, ptr @get_loops_exits, i64 11824}
!57 = !{ptr @rewrite_into_loop_closed_ssa, ptr @bitmap_obstack_alloc_stat, i64 11824}
!58 = !{ptr @rewrite_into_loop_closed_ssa, ptr @update_ssa, i64 23648}
!59 = !{ptr @rewrite_into_loop_closed_ssa, ptr @VEC_tree_base_length, i64 11824}
!60 = !{ptr @rewrite_into_loop_closed_ssa, ptr @xcalloc, i64 11824}
!61 = !{ptr @rewrite_into_loop_closed_ssa, ptr @find_uses_to_rename, i64 11824}
!62 = !{ptr @rewrite_into_loop_closed_ssa, ptr @add_exit_phis, i64 11824}
!63 = !{ptr @rewrite_into_loop_closed_ssa, ptr @bitmap_obstack_free, i64 3880141}
!64 = !{ptr @rewrite_into_loop_closed_ssa, ptr @free, i64 11824}
!65 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 26136}
!66 = !{ptr @get_loops_exits, ptr @bitmap_obstack_alloc_stat, i64 11824}
!67 = !{ptr @get_loops_exits, ptr @ei_start_1, i64 996291}
!68 = !{ptr @get_loops_exits, ptr @ei_cond, i64 2436223}
!69 = !{ptr @get_loops_exits, ptr @flow_bb_inside_loop_p, i64 1536274}
!70 = !{ptr @get_loops_exits, ptr @bitmap_set_bit, i64 108963}
!71 = !{ptr @get_loops_exits, ptr @ei_next, i64 1439932}
!72 = !{ptr @find_uses_to_rename, ptr @bmp_iter_set_init, i64 85}
!73 = !{ptr @find_uses_to_rename, ptr @bmp_iter_set, i64 365}
!74 = !{ptr @find_uses_to_rename, ptr @VEC_basic_block_base_index, i64 280}
!75 = !{ptr @find_uses_to_rename, ptr @find_uses_to_rename_bb, i64 985274}
!76 = !{ptr @find_uses_to_rename, ptr @bmp_iter_next, i64 280}
!77 = !{ptr @add_exit_phis, ptr @bmp_iter_set_init, i64 11824}
!78 = !{ptr @add_exit_phis, ptr @bmp_iter_set, i64 27439}
!79 = !{ptr @add_exit_phis, ptr @VEC_tree_base_index, i64 15615}
!80 = !{ptr @add_exit_phis, ptr @add_exit_phis_var, i64 15615}
!81 = !{ptr @add_exit_phis, ptr @bmp_iter_next, i64 15615}
!82 = !{ptr @ei_cond, ptr @ei_end_p, i64 4914503}
!83 = !{ptr @ei_cond, ptr @ei_edge, i64 3005122}
!84 = !{ptr @ei_next, ptr @ei_container, i64 5764777}
!85 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 2882389}
!86 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!87 = !{ptr @ei_end_p, ptr @ei_container, i64 9829005}
!88 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 4914503}
!89 = !{ptr @ei_edge, ptr @ei_container, i64 6010243}
!90 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 3005122}
!91 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!92 = !{ptr @find_uses_to_rename_bb, ptr @ei_start_1, i64 985437}
!93 = !{ptr @find_uses_to_rename_bb, ptr @ei_cond, i64 2479736}
!94 = !{ptr @find_uses_to_rename_bb, ptr @gsi_start_phis, i64 1494299}
!95 = !{ptr @find_uses_to_rename_bb, ptr @gsi_end_p, i64 6107852}
!96 = !{ptr @find_uses_to_rename_bb, ptr @gsi_stmt, i64 3628116}
!97 = !{ptr @find_uses_to_rename_bb, ptr @gimple_phi_arg_imm_use_ptr, i64 1246884}
!98 = !{ptr @find_uses_to_rename_bb, ptr @get_use_from_ptr, i64 1246884}
!99 = !{ptr @find_uses_to_rename_bb, ptr @find_uses_to_rename_use, i64 1246884}
!100 = !{ptr @find_uses_to_rename_bb, ptr @gsi_next, i64 3628116}
!101 = !{ptr @find_uses_to_rename_bb, ptr @ei_next, i64 1494299}
!102 = !{ptr @find_uses_to_rename_bb, ptr @gsi_start_bb, i64 985437}
!103 = !{ptr @find_uses_to_rename_bb, ptr @find_uses_to_rename_stmt, i64 2381232}
!104 = !{ptr @find_uses_to_rename_use, ptr @is_gimple_reg, i64 4968061}
!105 = !{ptr @find_uses_to_rename_use, ptr @gimple_bb, i64 3214285}
!106 = !{ptr @find_uses_to_rename_use, ptr @loop_outer, i64 3033421}
!107 = !{ptr @find_uses_to_rename_use, ptr @flow_bb_inside_loop_p, i64 2099516}
!108 = !{ptr @find_uses_to_rename_use, ptr @bitmap_obstack_alloc_stat, i64 15615}
!109 = !{ptr @find_uses_to_rename_use, ptr @bitmap_set_bit, i64 56434}
!110 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1248775}
!111 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 985437}
!112 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 985437}
!113 = !{ptr @find_uses_to_rename_stmt, ptr @gimple_bb, i64 2381233}
!114 = !{ptr @find_uses_to_rename_stmt, ptr @is_gimple_debug, i64 2381233}
!115 = !{ptr @find_uses_to_rename_stmt, ptr @op_iter_init_tree, i64 2381232}
!116 = !{ptr @find_uses_to_rename_stmt, ptr @op_iter_done, i64 6248951}
!117 = !{ptr @find_uses_to_rename_stmt, ptr @find_uses_to_rename_use, i64 3867719}
!118 = !{ptr @find_uses_to_rename_stmt, ptr @op_iter_next_tree, i64 3867719}
!119 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 3033423}
!120 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 2099518}
!121 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!122 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 2381233}
!123 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 2381233}
!124 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 2381233}
!125 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 3867721}
!126 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!127 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2381233}
!128 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2381233}
!129 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2381233}
!130 = !{ptr @add_exit_phis_var, ptr @gimple_bb, i64 15615}
!131 = !{ptr @add_exit_phis_var, ptr @is_gimple_reg, i64 15615}
!132 = !{ptr @add_exit_phis_var, ptr @bitmap_clear_bit, i64 15614}
!133 = !{ptr @add_exit_phis_var, ptr @bitmap_set_bit, i64 15616}
!134 = !{ptr @add_exit_phis_var, ptr @bitmap_obstack_alloc_stat, i64 15615}
!135 = !{ptr @add_exit_phis_var, ptr @compute_global_livein, i64 15615}
!136 = !{ptr @add_exit_phis_var, ptr @bitmap_obstack_free, i64 15615}
!137 = !{ptr @add_exit_phis_var, ptr @bmp_iter_and_init, i64 15615}
!138 = !{ptr @add_exit_phis_var, ptr @bmp_iter_and, i64 45275}
!139 = !{ptr @add_exit_phis_var, ptr @VEC_basic_block_base_index, i64 29660}
!140 = !{ptr @add_exit_phis_var, ptr @add_exit_phis_edge, i64 29660}
!141 = !{ptr @add_exit_phis_var, ptr @bmp_iter_next, i64 29660}
!142 = !{ptr @add_exit_phis_edge, ptr @gimple_bb, i64 29661}
!143 = !{ptr @add_exit_phis_edge, ptr @ei_start_1, i64 29661}
!144 = !{ptr @add_exit_phis_edge, ptr @ei_cond, i64 92539}
!145 = !{ptr @add_exit_phis_edge, ptr @find_common_loop, i64 43932}
!146 = !{ptr @add_exit_phis_edge, ptr @flow_bb_inside_loop_p, i64 43932}
!147 = !{ptr @add_exit_phis_edge, ptr @ei_next, i64 42236}
!148 = !{ptr @add_exit_phis_edge, ptr @create_phi_node, i64 20642}
!149 = !{ptr @add_exit_phis_edge, ptr @gimple_phi_result, i64 20642}
!150 = !{ptr @add_exit_phis_edge, ptr @gimple_phi_result_ptr, i64 20642}
!151 = !{ptr @add_exit_phis_edge, ptr @create_new_def_for, i64 20642}
!152 = !{ptr @add_exit_phis_edge, ptr @add_phi_arg, i64 23251}
!153 = !{ptr @split_loop_exit_edge, ptr @split_edge, i64 2142}
!154 = !{ptr @split_loop_exit_edge, ptr @gsi_start_phis, i64 2142}
!155 = !{ptr @split_loop_exit_edge, ptr @gsi_end_p, i64 4033}
!156 = !{ptr @split_loop_exit_edge, ptr @gsi_stmt, i64 1891}
!157 = !{ptr @split_loop_exit_edge, ptr @single_succ_edge, i64 3782}
!158 = !{ptr @split_loop_exit_edge, ptr @gimple_phi_arg_imm_use_ptr, i64 1891}
!159 = !{ptr @split_loop_exit_edge, ptr @gimple_phi_arg_location_from_edge, i64 1891}
!160 = !{ptr @split_loop_exit_edge, ptr @get_use_from_ptr, i64 1891}
!161 = !{ptr @split_loop_exit_edge, ptr @duplicate_ssa_name, i64 1852}
!162 = !{ptr @split_loop_exit_edge, ptr @create_phi_node, i64 1852}
!163 = !{ptr @split_loop_exit_edge, ptr @add_phi_arg, i64 1852}
!164 = !{ptr @split_loop_exit_edge, ptr @set_ssa_use_from_ptr, i64 1852}
!165 = !{ptr @split_loop_exit_edge, ptr @gsi_next, i64 1891}
!166 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 3782}
!167 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!168 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 3782}
!169 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 1891}
!170 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 1853}
!171 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 1853}
!172 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 3782}
!173 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1851}
!174 = !{ptr @ip_normal_pos, ptr @single_pred_p, i64 339168}
!175 = !{ptr @ip_normal_pos, ptr @single_pred, i64 319223}
!176 = !{ptr @ip_normal_pos, ptr @last_stmt, i64 319223}
!177 = !{ptr @ip_normal_pos, ptr @gimple_code, i64 319196}
!178 = !{ptr @ip_normal_pos, ptr @VEC_edge_base_index, i64 615161}
!179 = !{ptr @ip_normal_pos, ptr @flow_bb_inside_loop_p, i64 318759}
!180 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 658392}
!181 = !{ptr @single_pred, ptr @single_pred_edge, i64 319224}
!182 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 319224}
!183 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!184 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 319224}
!185 = !{ptr @standard_iv_increment_position, ptr @ip_normal_pos, i64 65}
!186 = !{ptr @standard_iv_increment_position, ptr @ip_end_pos, i64 65}
!187 = !{ptr @standard_iv_increment_position, ptr @last_stmt, i64 65}
!188 = !{ptr @standard_iv_increment_position, ptr @gimple_code, i64 1}
!189 = !{ptr @standard_iv_increment_position, ptr @gsi_last_bb, i64 65}
!190 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 65}
!191 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 65}
!192 = !{ptr @gimple_duplicate_loop_to_header_edge, ptr @loops_state_satisfies_p, i64 1405}
!193 = !{ptr @gimple_duplicate_loop_to_header_edge, ptr @duplicate_loop_to_header_edge, i64 701}
!194 = !{ptr @gimple_duplicate_loop_to_header_edge, ptr @flush_pending_stmts, i64 700}
!195 = !{ptr @gimple_duplicate_loop_to_header_edge, ptr @copy_phi_node_args, i64 700}
!196 = !{ptr @gimple_duplicate_loop_to_header_edge, ptr @scev_reset, i64 700}
!197 = !{ptr @copy_phi_node_args, ptr @VEC_basic_block_base_index, i64 25242}
!198 = !{ptr @copy_phi_node_args, ptr @add_phi_args_after_copy_bb, i64 8414}
!199 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!200 = !{!"function_entry_count", i64 3155}
!201 = !{!"branch_weights", i32 1012, i32 2145}
!202 = !{!203, !203, i64 0}
!203 = !{!"omnipotent char", !204, i64 0}
!204 = !{!"Simple C/C++ TBAA"}
!205 = !{!"branch_weights", i32 976, i32 2181}
!206 = !{!207, !207, i64 0}
!207 = !{!"any pointer", !203, i64 0}
!208 = !{!"branch_weights", i32 1, i32 3156}
!209 = !{!"branch_weights", i32 3142, i32 15}
!210 = !{!"branch_weights", i32 1, i32 3142}
!211 = !{!"branch_weights", i32 929, i32 2214}
!212 = !{!"branch_weights", i32 9778129, i32 93840, i32 3127}
!213 = !{!"branch_weights", i32 1, i32 30}
!214 = !{!"branch_weights", i32 3143, i32 14}
!215 = !{!"branch_weights", i32 2693, i32 464}
!216 = !{!"branch_weights", i32 1288, i32 1869}
!217 = !{!218, !207, i64 8}
!218 = !{!"loop", !219, i64 0, !219, i64 4, !207, i64 8, !207, i64 16, !220, i64 24, !219, i64 32, !219, i64 36, !207, i64 40, !207, i64 48, !207, i64 56, !207, i64 64, !207, i64 72, !221, i64 80, !221, i64 96, !203, i64 112, !203, i64 113, !219, i64 116, !207, i64 120, !207, i64 128, !203, i64 136, !207, i64 144}
!219 = !{!"int", !203, i64 0}
!220 = !{!"lpt_decision", !219, i64 0, !219, i64 4}
!221 = !{!"", !222, i64 0, !222, i64 8}
!222 = !{!"long", !203, i64 0}
!223 = !{!"function_entry_count", i64 6310}
!224 = !{!"tree-ssa-loop-manip.c:make_ssa_name"}
!225 = !{!"function_entry_count", i64 26137}
!226 = !{!"branch_weights", i32 14314, i32 11825}
!227 = !{!228, !207, i64 24}
!228 = !{!"function", !207, i64 0, !207, i64 8, !207, i64 16, !207, i64 24, !207, i64 32, !207, i64 40, !207, i64 48, !207, i64 56, !207, i64 64, !207, i64 72, !207, i64 80, !207, i64 88, !207, i64 96, !219, i64 104, !219, i64 108, !219, i64 112, !219, i64 116, !219, i64 120, !219, i64 124, !207, i64 128, !219, i64 136, !219, i64 137, !219, i64 138, !219, i64 138, !219, i64 138, !219, i64 138, !219, i64 138, !219, i64 138, !219, i64 138, !219, i64 139, !219, i64 139, !219, i64 139, !219, i64 139, !219, i64 139, !219, i64 139, !219, i64 139}
!229 = !{!230, !207, i64 16}
!230 = !{!"gimple_df", !207, i64 0, !207, i64 8, !207, i64 16, !207, i64 24, !231, i64 32, !231, i64 48, !207, i64 64, !207, i64 72, !207, i64 80, !207, i64 88, !219, i64 96, !232, i64 104}
!231 = !{!"pt_solution", !219, i64 0, !219, i64 0, !219, i64 0, !219, i64 0, !219, i64 0, !219, i64 0, !207, i64 8}
!232 = !{!"ssa_operands", !207, i64 0, !219, i64 8, !219, i64 12, !203, i64 16, !207, i64 24, !207, i64 32}
!233 = !{!"branch_weights", i32 1, i32 11824}
!234 = !{!"branch_weights", i32 11824, i32 3844964}
!235 = distinct !{!235, !236}
!236 = !{!"llvm.loop.mustprogress"}
!237 = !{!"tree-ssa-loop-manip.c:loops_state_set"}
!238 = !{!228, !207, i64 32}
!239 = !{!240, !219, i64 0}
!240 = !{!"loops", !219, i64 0, !207, i64 8, !207, i64 16, !207, i64 24}
!241 = !{!"tree-ssa-loop-manip.c:number_of_loops"}
!242 = !{!"branch_weights", i32 1, i32 26138}
!243 = !{!240, !207, i64 8}
!244 = !{!"function_entry_count", i64 11824}
!245 = !{!"tree-ssa-loop-manip.c:get_loops_exits"}
!246 = !{!228, !207, i64 8}
!247 = !{!248, !207, i64 0}
!248 = !{!"control_flow_graph", !207, i64 0, !207, i64 8, !207, i64 16, !219, i64 24, !219, i64 28, !219, i64 32, !207, i64 40, !219, i64 48, !203, i64 52, !203, i64 60, !219, i64 68, !219, i64 72}
!249 = !{!250, !207, i64 56}
!250 = !{!"basic_block_def", !207, i64 0, !207, i64 8, !207, i64 16, !207, i64 24, !203, i64 32, !207, i64 48, !207, i64 56, !203, i64 64, !222, i64 72, !219, i64 80, !219, i64 84, !219, i64 88, !219, i64 92, !219, i64 96}
!251 = !{!248, !207, i64 8}
!252 = !{i64 0, i64 4, !253, i64 8, i64 8, !206}
!253 = !{!219, !219, i64 0}
!254 = !{i64 0, i64 8, !206}
!255 = !{i8 0, i8 2}
!256 = !{!"branch_weights", i32 1, i32 894283}
!257 = !{!258, !207, i64 0}
!258 = !{!"edge_def", !207, i64 0, !207, i64 8, !203, i64 16, !207, i64 24, !207, i64 32, !219, i64 40, !219, i64 44, !219, i64 48, !219, i64 52, !222, i64 56}
!259 = !{!"branch_weights", i32 11825, i32 1439397}
!260 = !{!250, !207, i64 24}
!261 = !{!"branch_weights", i32 102092, i32 1337306}
!262 = !{!250, !219, i64 80}
!263 = !{!"branch_weights", i32 894283, i32 556938}
!264 = distinct !{!264, !236}
!265 = !{!"branch_weights", i32 11824, i32 984551}
!266 = distinct !{!266, !236}
!267 = !{!"tree-ssa-loop-manip.c:VEC_tree_base_length"}
!268 = !{!"branch_weights", i32 1, i32 11825}
!269 = !{!270, !219, i64 0}
!270 = !{!"VEC_tree_base", !219, i64 0, !219, i64 4, !203, i64 8}
!271 = !{!"tree-ssa-loop-manip.c:find_uses_to_rename"}
!272 = !{!"branch_weights", i32 8137, i32 3689}
!273 = !{!274, !207, i64 0}
!274 = !{!"bitmap_head_def", !207, i64 0, !207, i64 8, !219, i64 16, !207, i64 24}
!275 = !{!"branch_weights", i32 3605, i32 85}
!276 = !{!"branch_weights", i32 1, i32 169}
!277 = !{!248, !207, i64 16}
!278 = !{!"branch_weights", i32 169, i32 391}
!279 = distinct !{!279, !236}
!280 = !{!"branch_weights", i32 1, i32 11740}
!281 = !{!"branch_weights", i32 11740, i32 973419}
!282 = distinct !{!282, !236}
!283 = !{!"tree-ssa-loop-manip.c:add_exit_phis"}
!284 = !{!"branch_weights", i32 11824, i32 3792}
!285 = distinct !{!285, !236}
!286 = !{!"function_entry_count", i64 3059560}
!287 = !{!"tree-ssa-loop-manip.c:VEC_loop_p_base_length"}
!288 = !{!"branch_weights", i32 933906, i32 2125656}
!289 = !{!290, !219, i64 0}
!290 = !{!"VEC_loop_p_base", !219, i64 0, !219, i64 4, !203, i64 8}
!291 = !{!"function_entry_count", i64 2032114}
!292 = !{!"tree-ssa-loop-manip.c:ei_start_1"}
!293 = !{!"function_entry_count", i64 4914503}
!294 = !{!"tree-ssa-loop-manip.c:ei_cond"}
!295 = !{!"branch_weights", i32 3005123, i32 1909382}
!296 = !{!"function_entry_count", i64 2882389}
!297 = !{!"tree-ssa-loop-manip.c:ei_next"}
!298 = !{!"branch_weights", i32 1, i32 2882390}
!299 = !{!"branch_weights", i32 2882390, i32 1}
!300 = !{!301, !219, i64 0}
!301 = !{!"", !219, i64 0, !207, i64 8}
!302 = !{!"tree-ssa-loop-manip.c:ei_end_p"}
!303 = !{!"branch_weights", i32 1, i32 4914504}
!304 = !{!"function_entry_count", i64 3005122}
!305 = !{!"tree-ssa-loop-manip.c:ei_edge"}
!306 = !{!"branch_weights", i32 1, i32 3005123}
!307 = !{!"function_entry_count", i64 8459066}
!308 = !{!"tree-ssa-loop-manip.c:VEC_edge_base_length"}
!309 = !{!"branch_weights", i32 1, i32 8459067}
!310 = !{!311, !219, i64 0}
!311 = !{!"VEC_edge_base", !219, i64 0, !219, i64 4, !203, i64 8}
!312 = !{!"function_entry_count", i64 21604028}
!313 = !{!"tree-ssa-loop-manip.c:ei_container"}
!314 = !{!"branch_weights", i32 1, i32 21604029}
!315 = !{!"function_entry_count", i64 3943296}
!316 = !{!"tree-ssa-loop-manip.c:VEC_edge_base_index"}
!317 = !{!"function_entry_count", i64 11908}
!318 = !{!"tree-ssa-loop-manip.c:bmp_iter_set_init"}
!319 = !{!320, !207, i64 0}
!320 = !{!"", !207, i64 0, !207, i64 8, !219, i64 16, !222, i64 24}
!321 = !{!320, !207, i64 8}
!322 = !{!"branch_weights", i32 8579, i32 3331}
!323 = !{!324, !219, i64 16}
!324 = !{!"bitmap_element_def", !207, i64 0, !207, i64 8, !219, i64 16, !203, i64 24}
!325 = !{!320, !219, i64 16}
!326 = !{!222, !222, i64 0}
!327 = !{!320, !222, i64 24}
!328 = !{!"function_entry_count", i64 27802}
!329 = !{!"tree-ssa-loop-manip.c:bmp_iter_set"}
!330 = !{!"branch_weights", i32 16166, i32 11638}
!331 = !{!"branch_weights", i32 15894, i32 1}
!332 = !{!"branch_weights", i32 198381, i32 15894}
!333 = distinct !{!333, !236}
!334 = !{!"branch_weights", i32 1, i32 14331}
!335 = !{!"branch_weights", i32 12498, i32 4258}
!336 = !{!"branch_weights", i32 14331, i32 2424}
!337 = distinct !{!337, !236}
!338 = !{!324, !207, i64 0}
!339 = !{!"branch_weights", i32 11909, i32 2424}
!340 = !{!"function_entry_count", i64 985437}
!341 = !{!"tree-ssa-loop-manip.c:find_uses_to_rename_bb"}
!342 = !{!"branch_weights", i32 1, i32 985437}
!343 = !{!258, !207, i64 8}
!344 = !{!"branch_weights", i32 1246885, i32 247416}
!345 = !{!258, !219, i64 44}
!346 = !{!"branch_weights", i32 0, i32 1246885}
!347 = distinct !{!347, !236}
!348 = !{!"branch_weights", i32 985437, i32 508864}
!349 = distinct !{!349, !236}
!350 = !{i64 0, i64 8, !206, i64 8, i64 8, !206, i64 16, i64 8, !206}
!351 = !{!"branch_weights", i32 985437, i32 1}
!352 = !{!"branch_weights", i32 1395797, i32 985437}
!353 = distinct !{!353, !236}
!354 = !{!"function_entry_count", i64 55215}
!355 = !{!"tree-ssa-loop-manip.c:VEC_basic_block_base_index"}
!356 = !{!"function_entry_count", i64 45555}
!357 = !{!"tree-ssa-loop-manip.c:bmp_iter_next"}
!358 = !{!"function_entry_count", i64 6111887}
!359 = !{!"tree-ssa-loop-manip.c:gsi_end_p"}
!360 = !{!361, !207, i64 0}
!361 = !{!"", !207, i64 0, !207, i64 8, !207, i64 16}
!362 = !{!"function_entry_count", i64 5114605}
!363 = !{!"tree-ssa-loop-manip.c:find_uses_to_rename_use"}
!364 = !{!"branch_weights", i32 4968063, i32 146544}
!365 = !{!"branch_weights", i32 1753777, i32 3214287}
!366 = !{!"branch_weights", i32 180864, i32 3033424}
!367 = !{!"branch_weights", i32 933906, i32 2099519}
!368 = !{!"branch_weights", i32 28217, i32 2071303}
!369 = !{!"branch_weights", i32 15616, i32 12602}
!370 = !{!"function_entry_count", i64 5116496}
!371 = !{!"tree-ssa-loop-manip.c:get_use_from_ptr"}
!372 = !{!373, !207, i64 24}
!373 = !{!"ssa_use_operand_d", !207, i64 0, !207, i64 8, !203, i64 16, !207, i64 24}
!374 = !{!"function_entry_count", i64 1248775}
!375 = !{!"tree-ssa-loop-manip.c:gimple_phi_arg_imm_use_ptr"}
!376 = !{!"function_entry_count", i64 3630008}
!377 = !{!"tree-ssa-loop-manip.c:gsi_stmt"}
!378 = !{!379, !207, i64 0}
!379 = !{!"gimple_seq_node_d", !207, i64 0, !207, i64 8, !207, i64 16}
!380 = !{!"tree-ssa-loop-manip.c:gsi_next"}
!381 = !{!379, !207, i64 16}
!382 = !{!"tree-ssa-loop-manip.c:gsi_start_bb"}
!383 = !{!361, !207, i64 8}
!384 = !{!361, !207, i64 16}
!385 = !{!"function_entry_count", i64 2381233}
!386 = !{!"tree-ssa-loop-manip.c:find_uses_to_rename_stmt"}
!387 = !{!"branch_weights", i32 2381234, i32 1}
!388 = !{!"branch_weights", i32 2381233, i32 1}
!389 = !{!"branch_weights", i32 1486489, i32 2381233}
!390 = distinct !{!390, !236}
!391 = !{!"function_entry_count", i64 5640795}
!392 = !{!"tree-ssa-loop-manip.c:gimple_bb"}
!393 = !{!"function_entry_count", i64 3033423}
!394 = !{!"tree-ssa-loop-manip.c:loop_outer"}
!395 = !{!218, !207, i64 40}
!396 = !{!"function_entry_count", i64 2099518}
!397 = !{!"tree-ssa-loop-manip.c:VEC_loop_p_base_index"}
!398 = !{!"function_entry_count", i64 1250666}
!399 = !{!"tree-ssa-loop-manip.c:gimple_phi_arg"}
!400 = !{!"branch_weights", i32 1, i32 1250667}
!401 = !{!"function_entry_count", i64 985502}
!402 = !{!"tree-ssa-loop-manip.c:bb_seq"}
!403 = !{!250, !219, i64 96}
!404 = !{!"branch_weights", i32 985503, i32 1}
!405 = !{!"branch_weights", i32 1, i32 985503}
!406 = !{!407, !207, i64 0}
!407 = !{!"gimple_bb_info", !207, i64 0, !207, i64 8}
!408 = !{!"tree-ssa-loop-manip.c:gimple_seq_first"}
!409 = !{!"branch_weights", i32 1, i32 985438}
!410 = !{!411, !207, i64 0}
!411 = !{!"gimple_seq_d", !207, i64 0, !207, i64 8, !207, i64 16}
!412 = !{!"tree-ssa-loop-manip.c:is_gimple_debug"}
!413 = !{i32 0, i32 256}
!414 = !{!"tree-ssa-loop-manip.c:op_iter_init_tree"}
!415 = !{!416, !219, i64 4}
!416 = !{!"ssa_operand_iterator_d", !203, i64 0, !219, i64 4, !207, i64 8, !207, i64 16, !219, i64 24, !219, i64 28, !207, i64 32}
!417 = !{!"function_entry_count", i64 6248954}
!418 = !{!"tree-ssa-loop-manip.c:op_iter_done"}
!419 = !{!416, !203, i64 0}
!420 = !{!"tree-ssa-loop-manip.c:op_iter_next_tree"}
!421 = !{!416, !207, i64 16}
!422 = !{!"branch_weights", i32 2381234, i32 3867722}
!423 = !{!424, !207, i64 0}
!424 = !{!"use_optype_d", !207, i64 0, !373, i64 8}
!425 = !{!416, !207, i64 8}
!426 = !{!427, !207, i64 8}
!427 = !{!"def_optype_d", !207, i64 0, !207, i64 8}
!428 = !{!427, !207, i64 0}
!429 = !{!"function_entry_count", i64 7462897}
!430 = !{!"tree-ssa-loop-manip.c:gimple_code"}
!431 = !{!"tree-ssa-loop-manip.c:op_iter_init"}
!432 = !{!"tree-ssa-loop-manip.c:gimple_use_ops"}
!433 = !{!"branch_weights", i32 6, i32 2381229}
!434 = !{!"tree-ssa-loop-manip.c:gimple_has_ops"}
!435 = !{!"function_entry_count", i64 0}
!436 = !{!"tree-ssa-loop-manip.c:get_def_from_ptr"}
!437 = !{!"function_entry_count", i64 15615}
!438 = !{!"tree-ssa-loop-manip.c:add_exit_phis_var"}
!439 = !{!"branch_weights", i32 1, i32 15616}
!440 = !{!"branch_weights", i32 1, i32 15615}
!441 = !{!"branch_weights", i32 15615, i32 14047}
!442 = distinct !{!442, !236}
!443 = !{!"tree-ssa-loop-manip.c:VEC_tree_base_index"}
!444 = !{!"tree-ssa-loop-manip.c:bmp_iter_and_init"}
!445 = !{!"branch_weights", i32 31983615, i32 -233048064}
!446 = !{!"branch_weights", i32 489, i32 15616}
!447 = !{!"branch_weights", i32 127, i32 2061185}
!448 = !{!"branch_weights", i32 1434980241, i32 712503407}
!449 = !{!"function_entry_count", i64 45276}
!450 = !{!"tree-ssa-loop-manip.c:bmp_iter_and"}
!451 = !{!"branch_weights", i32 26401, i32 18877}
!452 = !{!"branch_weights", i32 29661, i32 1}
!453 = !{!"branch_weights", i32 492529, i32 29661}
!454 = distinct !{!454, !236}
!455 = !{!"branch_weights", i32 1, i32 23710}
!456 = !{!"branch_weights", i32 15881, i32 10786}
!457 = !{!"branch_weights", i32 23710, i32 2956}
!458 = distinct !{!458, !236}
!459 = !{!"branch_weights", i32 10279, i32 27161}
!460 = !{!"branch_weights", i32 12541, i32 14621}
!461 = distinct !{!461, !236}
!462 = !{!"branch_weights", i32 8551, i32 9284}
!463 = !{!"branch_weights", i32 5338, i32 3214}
!464 = distinct !{!464, !236}
!465 = !{!"branch_weights", i32 8096, i32 1189}
!466 = !{!"function_entry_count", i64 29661}
!467 = !{!"tree-ssa-loop-manip.c:add_exit_phis_edge"}
!468 = !{!"branch_weights", i32 1, i32 9019}
!469 = !{!"branch_weights", i32 20643, i32 15709}
!470 = !{!"branch_weights", i32 9019, i32 27332}
!471 = distinct !{!471, !236}
!472 = !{!"branch_weights", i32 9020, i32 20643}
!473 = !{!"branch_weights", i32 1, i32 20642}
!474 = !{!"branch_weights", i32 20642, i32 2611}
!475 = distinct !{!475, !236}
!476 = !{!"function_entry_count", i64 20642}
!477 = !{!"tree-ssa-loop-manip.c:gimple_phi_result"}
!478 = !{!"tree-ssa-loop-manip.c:gimple_phi_result_ptr"}
!479 = distinct !{!479, !236}
!480 = distinct !{!480, !236}
!481 = distinct !{!481, !236}
!482 = distinct !{!482, !236}
!483 = !{!"tree-ssa-loop-manip.c:check_loop_closed_ssa_use"}
!484 = !{!"tree-ssa-loop-manip.c:check_loop_closed_ssa_stmt"}
!485 = distinct !{!485, !236}
!486 = !{!"function_entry_count", i64 2142}
!487 = !{!"branch_weights", i32 1892, i32 251}
!488 = !{!"branch_weights", i32 1854, i32 39}
!489 = !{!"branch_weights", i32 0, i32 1892}
!490 = distinct !{!490, !236}
!491 = !{!"function_entry_count", i64 3782}
!492 = !{!"tree-ssa-loop-manip.c:single_succ_edge"}
!493 = !{!"branch_weights", i32 1, i32 3783}
!494 = !{!250, !207, i64 8}
!495 = !{!"function_entry_count", i64 1891}
!496 = !{!"tree-ssa-loop-manip.c:gimple_phi_arg_location_from_edge"}
!497 = !{!498, !219, i64 40}
!498 = !{!"phi_arg_d", !373, i64 0, !207, i64 32, !219, i64 40}
!499 = !{!"function_entry_count", i64 1853}
!500 = !{!"tree-ssa-loop-manip.c:set_ssa_use_from_ptr"}
!501 = !{!"tree-ssa-loop-manip.c:single_succ_p"}
!502 = !{!"tree-ssa-loop-manip.c:delink_imm_use"}
!503 = !{!373, !207, i64 0}
!504 = !{!"branch_weights", i32 1, i32 1854}
!505 = !{!373, !207, i64 8}
!506 = !{!"tree-ssa-loop-manip.c:link_imm_use"}
!507 = !{!"branch_weights", i32 1854, i32 1}
!508 = !{!"tree-ssa-loop-manip.c:link_imm_use_to_list"}
!509 = !{!"function_entry_count", i64 171771}
!510 = !{!218, !207, i64 16}
!511 = !{!"function_entry_count", i64 339168}
!512 = !{!"branch_weights", i32 19945, i32 319225}
!513 = !{!"branch_weights", i32 27, i32 319199}
!514 = !{!"branch_weights", i32 318763, i32 437}
!515 = !{!"branch_weights", i32 296407, i32 22357}
!516 = !{!"branch_weights", i32 317843, i32 921}
!517 = !{!"function_entry_count", i64 658392}
!518 = !{!"tree-ssa-loop-manip.c:single_pred_p"}
!519 = !{!250, !207, i64 0}
!520 = !{!"function_entry_count", i64 319224}
!521 = !{!"tree-ssa-loop-manip.c:single_pred"}
!522 = !{!"tree-ssa-loop-manip.c:single_pred_edge"}
!523 = !{!"branch_weights", i32 1, i32 319225}
!524 = !{!"function_entry_count", i64 65}
!525 = !{!"branch_weights", i32 1, i32 66}
!526 = !{!"branch_weights", i32 66, i32 1}
!527 = !{!"tree-ssa-loop-manip.c:gsi_last_bb"}
!528 = !{!"tree-ssa-loop-manip.c:gimple_seq_last"}
!529 = !{!411, !207, i64 8}
!530 = !{!"function_entry_count", i64 703}
!531 = !{!"branch_weights", i32 1, i32 704}
!532 = !{!248, !219, i64 32}
!533 = !{!"function_entry_count", i64 1406}
!534 = !{!"tree-ssa-loop-manip.c:loops_state_satisfies_p"}
!535 = !{!"tree-ssa-loop-manip.c:copy_phi_node_args"}
!536 = !{!"branch_weights", i32 703, i32 1}
!537 = !{!"branch_weights", i32 -2147483648, i32 0}
!538 = !{!"branch_weights", i32 703, i32 7723}
!539 = distinct !{!539, !236}
!540 = !{!"branch_weights", i32 7723, i32 703}
!541 = distinct !{!541, !236}
!542 = distinct !{!542, !236}
!543 = !{!544, !219, i64 72}
!544 = !{!"tree_niter_desc", !207, i64 0, !207, i64 8, !207, i64 16, !221, i64 24, !545, i64 40, !207, i64 64, !219, i64 72}
!545 = !{!"", !207, i64 0, !207, i64 8, !203, i64 16}
!546 = !{!544, !207, i64 8}
!547 = !{!544, !207, i64 40}
!548 = !{!544, !207, i64 48}
!549 = !{!544, !207, i64 64}
!550 = !{!551, !219, i64 8}
!551 = !{!"param_info", !207, i64 0, !219, i64 8, !203, i64 12, !219, i64 16, !219, i64 20, !207, i64 24}
!552 = !{!258, !219, i64 48}
!553 = !{!258, !219, i64 52}
!554 = !{!258, !222, i64 56}
!555 = distinct !{!555, !236}
!556 = !{i32 0, i32 2}
!557 = distinct !{!557, !236}
!558 = !{!250, !219, i64 88}
!559 = !{!250, !222, i64 72}
!560 = !{!"tree-ssa-loop-manip.c:determine_exit_conditions"}
!561 = !{!"tree-ssa-loop-manip.c:scale_dominated_blocks_in_loop"}
!562 = distinct !{!562, !236}
!563 = !{!"tree-ssa-loop-manip.c:RESET_BIT"}
!564 = !{!565, !207, i64 0}
!565 = !{!"simple_bitmap_def", !207, i64 0, !219, i64 8, !219, i64 12, !203, i64 16}
!566 = !{!"tree-ssa-loop-manip.c:VEC_edge_base_iterate"}
!567 = !{!"tree-ssa-loop-manip.c:VEC_edge_heap_free"}
!568 = !{!"tree-ssa-loop-manip.c:gimple_cond_set_code"}
!569 = !{!"tree-ssa-loop-manip.c:gimple_cond_set_lhs"}
!570 = !{!"tree-ssa-loop-manip.c:gimple_cond_set_rhs"}
!571 = !{!"tree-ssa-loop-manip.c:update_stmt"}
!572 = !{!"tree-ssa-loop-manip.c:gimple_set_op"}
!573 = !{!"tree-ssa-loop-manip.c:gimple_num_ops"}
!574 = !{!"tree-ssa-loop-manip.c:gimple_ops"}
!575 = !{!"tree-ssa-loop-manip.c:gimple_statement_structure"}
!576 = !{!"tree-ssa-loop-manip.c:gss_for_code"}
!577 = !{!578, !207, i64 456}
!578 = !{!"lang_hooks", !207, i64 0, !222, i64 8, !207, i64 16, !207, i64 24, !207, i64 32, !207, i64 40, !207, i64 48, !207, i64 56, !207, i64 64, !207, i64 72, !207, i64 80, !207, i64 88, !207, i64 96, !207, i64 104, !207, i64 112, !207, i64 120, !207, i64 128, !207, i64 136, !207, i64 144, !207, i64 152, !207, i64 160, !207, i64 168, !207, i64 176, !207, i64 184, !207, i64 192, !207, i64 200, !207, i64 208, !207, i64 216, !207, i64 224, !207, i64 232, !579, i64 240, !580, i64 248, !581, i64 256, !582, i64 272, !583, i64 432, !584, i64 560, !207, i64 584, !207, i64 592, !207, i64 600, !207, i64 608, !207, i64 616, !207, i64 624, !207, i64 632, !207, i64 640, !207, i64 648, !207, i64 656, !207, i64 664, !203, i64 672}
!579 = !{!"lang_hooks_for_tree_inlining", !207, i64 0}
!580 = !{!"lang_hooks_for_callgraph", !207, i64 0}
!581 = !{!"lang_hooks_for_tree_dump", !207, i64 0, !207, i64 8}
!582 = !{!"lang_hooks_for_decls", !207, i64 0, !207, i64 8, !207, i64 16, !207, i64 24, !207, i64 32, !207, i64 40, !207, i64 48, !207, i64 56, !207, i64 64, !207, i64 72, !207, i64 80, !207, i64 88, !207, i64 96, !207, i64 104, !207, i64 112, !207, i64 120, !207, i64 128, !207, i64 136, !207, i64 144, !207, i64 152}
!583 = !{!"lang_hooks_for_types", !207, i64 0, !207, i64 8, !207, i64 16, !207, i64 24, !207, i64 32, !207, i64 40, !207, i64 48, !207, i64 56, !207, i64 64, !207, i64 72, !207, i64 80, !207, i64 88, !207, i64 96, !207, i64 104, !207, i64 112, !203, i64 120}
!584 = !{!"lang_hooks_for_lto", !207, i64 0, !207, i64 8, !207, i64 16}
!585 = distinct !{!585, !236}
!586 = !{!"tree-ssa-loop-manip.c:rewrite_all_phi_nodes_with_iv"}
!587 = !{!218, !219, i64 36}
!588 = distinct !{!588, !236}
!589 = distinct !{!589, !236}
!590 = !{!"tree-ssa-loop-manip.c:gsi_after_labels"}
!591 = distinct !{!591, !236}
!592 = !{!"tree-ssa-loop-manip.c:rewrite_phi_with_iv"}
!593 = !{!545, !207, i64 8}
!594 = !{!545, !207, i64 0}
