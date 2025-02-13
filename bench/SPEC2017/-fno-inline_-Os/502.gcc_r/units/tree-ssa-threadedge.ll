; ModuleID = 'tree-ssa-threadedge.c'
source_filename = "tree-ssa-threadedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }

@ssa_name_values = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [22 x i8] c"tree-ssa-threadedge.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@stmt_count = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_ssa_name_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !207 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !208
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #13
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %12, label %8, !prof !211

8:                                                ; preds = %2
  %9 = add i32 %4, 1
  tail call fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %9) #13
  %10 = load ptr, ptr @ssa_name_values, align 8
  %11 = load i32, ptr %3, align 8, !tbaa !208
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %4, %2 ]
  %14 = phi ptr [ %10, %8 ], [ %5, %2 ]
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %14, i32 noundef %13, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !212 !PGOFuncName !213 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !214

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !215
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !218 !PGOFuncName !219 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #13
  tail call fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) #13
  %4 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220
  %5 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %4) #13
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 !prof !207 !PGOFuncName !222 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !220
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @threadedge_initialize_values() local_unnamed_addr #0 !prof !223 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !224

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !220
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #13
  %11 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %10) #13
  store ptr %11, ptr @ssa_name_values, align 8, !tbaa !220
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !223 !PGOFuncName !231 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @threadedge_finalize_values() local_unnamed_addr #4 !prof !223 {
  tail call fastcc void @VEC_tree_heap_free() #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #4 !prof !223 !PGOFuncName !232 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !233

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @potentially_threadable_block(ptr noundef %0) local_unnamed_addr #5 !prof !234 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !235
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23, !prof !236

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !235
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23, !prof !237

8:                                                ; preds = %5
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !235
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23, !prof !238

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !239

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #13, !range !240
  %16 = trunc i32 %15 to i8
  %17 = icmp ult i8 %16, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = shl nuw nsw i32 %15, 3
  %20 = zext nneg i32 %19 to i48
  %21 = lshr i48 1099528405248, %20
  %22 = trunc i48 %21 to i8
  br label %23

23:                                               ; preds = %18, %14, %8, %11, %1, %5
  %24 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 0, %11 ], [ 0, %8 ], [ 0, %14 ], [ %22, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i8 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !234 !PGOFuncName !241 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !245 !PGOFuncName !246 {
  %2 = load ptr, ptr %0, align 8, !tbaa !247
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !248 !PGOFuncName !249 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !250
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !252
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !254 !PGOFuncName !255 {
  %2 = load ptr, ptr %0, align 8, !tbaa !250
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !256 !PGOFuncName !257 {
  %2 = load ptr, ptr %0, align 8, !tbaa !250
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !260 !PGOFuncName !261 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @thread_across_edge(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !prof !262 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !263
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12, !prof !265

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  %13 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !266
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %14) #13
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #13
  %16 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %6, ptr noundef %15) #13
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %35, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %40

20:                                               ; preds = %12, %35
  %21 = phi ptr [ %36, %35 ], [ %16, %12 ]
  %22 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %21) #13
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !208
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %28) #13, !range !240
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #13
  %33 = load ptr, ptr %13, align 8, !tbaa !266
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %20, %26, %31
  %36 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %6) #13
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %20, label %19, !llvm.loop !267

39:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %68

40:                                               ; preds = %19, %5
  store i32 0, ptr @stmt_count, align 4, !tbaa !269
  %41 = tail call fastcc zeroext i8 @record_temporary_equivalences_from_phis(ptr noundef %1, ptr noundef %3) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %68, label %43, !prof !270

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @record_temporary_equivalences_from_stmts_at_dest(ptr noundef %1, ptr noundef %3, ptr noundef %4) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46, !prof !270

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %44) #13, !range !240
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %68 [
    i8 1, label %49
    i8 3, label %49
    i8 5, label %49
  ], !prof !271

49:                                               ; preds = %46, %46, %46
  %50 = tail call fastcc ptr @simplify_control_stmt_condition(ptr noundef %1, ptr noundef nonnull %44, ptr noundef %0, ptr noundef %4, i8 noundef zeroext %2) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52, !prof !272

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %50) #14
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %68, label %55, !prof !273

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !266
  %58 = tail call ptr @find_taken_edge(ptr noundef %57, ptr noundef nonnull %50) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !274

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !266
  br label %63

63:                                               ; preds = %55, %60
  %64 = phi ptr [ %62, %60 ], [ null, %55 ]
  %65 = load ptr, ptr %56, align 8, !tbaa !266
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %68, label %67, !prof !274

67:                                               ; preds = %63
  tail call fastcc void @remove_temporary_equivalences(ptr noundef %3) #13
  tail call void @register_jump_thread(ptr noundef nonnull %1, ptr noundef %58) #14
  br label %68

68:                                               ; preds = %46, %39, %67, %52, %49, %63, %43, %40
  tail call fastcc void @remove_temporary_equivalences(ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !275 !PGOFuncName !276 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !277
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !279 !PGOFuncName !280 {
  %2 = load i8, ptr %0, align 8, !tbaa !281
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !282 !PGOFuncName !283 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !286 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !288 !PGOFuncName !289 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !291

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !292
  store ptr %7, ptr %2, align 8, !tbaa !290
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !294
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !295
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !296

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !297
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !294
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #13
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !281
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @record_temporary_equivalences_from_phis(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !262 !PGOFuncName !298 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !266
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #14
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !235
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39, !prof !299

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %36
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13
  %12 = load i32, ptr %9, align 4, !tbaa !300
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #13
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #13
  %15 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #13
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %30, label %17, !prof !301

17:                                               ; preds = %10
  %18 = load i64, ptr %14, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %30, !prof !302

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !208
  %24 = call fastcc i32 @gimple_code(ptr noundef %23) #13, !range !240
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %30, !prof !303

26:                                               ; preds = %21
  %27 = call fastcc ptr @gimple_bb(ptr noundef %23) #13
  %28 = load ptr, ptr %4, align 8, !tbaa !266
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %39, label %30, !prof !304

30:                                               ; preds = %26, %21, %17, %10
  %31 = call zeroext i8 @is_gimple_reg(ptr noundef %15) #14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33, !prof !305

33:                                               ; preds = %30
  %34 = load i32, ptr @stmt_count, align 4, !tbaa !269
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @stmt_count, align 4, !tbaa !269
  br label %36

36:                                               ; preds = %33, %30
  call fastcc void @record_temporary_equivalence(ptr noundef %15, ptr noundef %14, ptr noundef %1) #13
  call fastcc void @gsi_next(ptr noundef nonnull %3) #13
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !235
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %10, label %39, !prof !306, !llvm.loop !307

39:                                               ; preds = %26, %36, %2
  %40 = phi i8 [ 1, %2 ], [ 1, %36 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @record_temporary_equivalences_from_stmts_at_dest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !262 !PGOFuncName !308 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !220
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 94, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !309
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !266
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %10) #13
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13, !range !235
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %164, !prof !311

13:                                               ; preds = %3, %161
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %14) #13, !range !240
  %16 = trunc i32 %15 to i8
  switch i8 %16, label %17 [
    i8 18, label %161
    i8 4, label %161
  ], !prof !312

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %14) #13, !range !235
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %161, !prof !313

20:                                               ; preds = %17
  %21 = icmp eq i32 %15, 7
  br i1 %21, label %22, label %25, !prof !314

22:                                               ; preds = %20
  %23 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %14) #13, !range !235
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %164

25:                                               ; preds = %20
  %26 = load i32, ptr @stmt_count, align 4, !tbaa !269
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr @stmt_count, align 4, !tbaa !269
  %28 = icmp slt i32 %26, %8
  br i1 %28, label %33, label %164, !prof !313

29:                                               ; preds = %22
  %30 = load i32, ptr @stmt_count, align 4, !tbaa !269
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @stmt_count, align 4, !tbaa !269
  %32 = icmp slt i32 %30, %8
  br i1 %32, label %40, label %164, !prof !313

33:                                               ; preds = %25
  %34 = icmp eq i32 %15, 6
  br i1 %34, label %35, label %40, !prof !315

35:                                               ; preds = %33
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %14) #13
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %51, label %40, !prof !316

40:                                               ; preds = %29, %35, %33
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %14) #13, !range !240
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %161, !prof !317

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %14) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %161, label %46, !prof !318

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %14) #13
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %161, !prof !319

51:                                               ; preds = %46, %35
  %52 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %14) #13, !range !235
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54, !prof !320

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %14) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !321

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_function_decl, ptr %55, i64 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 2047
  switch i32 %60, label %61 [
    i32 528, label %161
    i32 428, label %161
  ], !prof !322

61:                                               ; preds = %57, %54, %51
  %62 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %14) #14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64, !prof !323

64:                                               ; preds = %61
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 141
  br i1 %68, label %69, label %71, !prof !324

69:                                               ; preds = %64
  %70 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  br label %149

71:                                               ; preds = %64, %61
  %72 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %14) #14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %83, label %74, !prof !325

74:                                               ; preds = %71
  %75 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 148
  br i1 %78, label %79, label %83, !prof !326

79:                                               ; preds = %74
  %80 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %81 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !208
  br label %149

83:                                               ; preds = %74, %71
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  %84 = tail call fastcc i32 @num_ssa_operands(ptr noundef %14) #13
  %85 = zext i32 %84 to i64
  %86 = tail call ptr @xcalloc(i64 noundef %85, i64 noundef 8) #14
  %87 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %14) #13
  %88 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %114, !prof !327

90:                                               ; preds = %83, %110
  %91 = phi i32 [ %94, %110 ], [ 0, %83 ]
  %92 = phi ptr [ %111, %110 ], [ %87, %83 ]
  %93 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %92) #13
  %94 = add i32 %91, 1
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds ptr, ptr %86, i64 %95
  store ptr %93, ptr %96, align 8, !tbaa !220
  %97 = load i64, ptr %93, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 141
  br i1 %99, label %100, label %110, !prof !328

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %93, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !208
  %103 = load ptr, ptr @ssa_name_values, align 8
  %104 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #13
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %110, !prof !329

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %103, i32 noundef %102) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !330

109:                                              ; preds = %106
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %92, ptr noundef nonnull %107) #13
  br label %110

110:                                              ; preds = %100, %90, %109, %106
  %111 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #13
  %112 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %90, label %114, !prof !331, !llvm.loop !332

114:                                              ; preds = %110, %83
  %115 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %14) #13, !range !235
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117, !prof !333

117:                                              ; preds = %114
  %118 = tail call ptr @fold_call_stmt(ptr noundef %14, i8 noundef zeroext 0) #14
  br label %121

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @fold_assignment_stmt(ptr noundef %14) #13
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi ptr [ %118, %117 ], [ %120, %119 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124, !prof !334

124:                                              ; preds = %121
  %125 = load i64, ptr %122, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %133, label %128, !prof !335

128:                                              ; preds = %124
  %129 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %122) #14
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133, !prof !336

131:                                              ; preds = %128, %121
  %132 = tail call ptr %2(ptr noundef %14, ptr noundef %14) #14
  br label %133

133:                                              ; preds = %131, %128, %124
  %134 = phi ptr [ %122, %128 ], [ %132, %131 ], [ %122, %124 ]
  %135 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %14) #13
  %136 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %148, !prof !327

138:                                              ; preds = %133, %138
  %139 = phi i32 [ %141, %138 ], [ 0, %133 ]
  %140 = phi ptr [ %145, %138 ], [ %135, %133 ]
  %141 = add i32 %139, 1
  %142 = zext i32 %139 to i64
  %143 = getelementptr inbounds ptr, ptr %86, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !220
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %140, ptr noundef %144) #13
  %145 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #13
  %146 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %138, label %148, !prof !331, !llvm.loop !337

148:                                              ; preds = %138, %133
  tail call void @free(ptr noundef %86) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %149

149:                                              ; preds = %79, %148, %69
  %150 = phi ptr [ %70, %69 ], [ %82, %79 ], [ %134, %148 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152, !prof !338

152:                                              ; preds = %149
  %153 = load i64, ptr %150, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 141
  br i1 %155, label %159, label %156, !prof !339

156:                                              ; preds = %152
  %157 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %150) #14
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %161, label %159, !prof !340

159:                                              ; preds = %156, %152
  %160 = tail call ptr @gimple_get_lhs(ptr noundef %14) #14
  tail call fastcc void @record_temporary_equivalence(ptr noundef %160, ptr noundef nonnull %150, ptr noundef %1) #13
  br label %161

161:                                              ; preds = %13, %13, %17, %46, %43, %40, %159, %156, %149, %57, %57
  call fastcc void @gsi_next(ptr noundef nonnull %4) #13
  %162 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13, !range !235
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %13, label %164, !prof !341, !llvm.loop !342

164:                                              ; preds = %161, %29, %25, %22, %3
  %165 = phi ptr [ null, %3 ], [ null, %22 ], [ null, %25 ], [ null, %29 ], [ %14, %161 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret ptr %165
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_control_stmt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !262 !PGOFuncName !343 {
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #13, !range !240
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %94 [
    i8 1, label %8
    i8 5, label %90
    i8 3, label %92
  ], !prof !344

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #13
  %10 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #13
  %11 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #13, !range !345
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %27, !prof !346

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !208
  %18 = load ptr, ptr @ssa_name_values, align 8
  %19 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %18) #13
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %23, !prof !347

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %17) #13
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %22, %21 ], [ null, %15 ]
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %9, ptr %24, !prof !348
  br label %27

27:                                               ; preds = %23, %8
  %28 = phi ptr [ %26, %23 ], [ %9, %8 ]
  %29 = load i64, ptr %10, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %44, !prof !349

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !208
  %35 = load ptr, ptr @ssa_name_values, align 8
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #13
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %35, i32 noundef %34) #13
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ null, %32 ]
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %10, ptr %41
  br label %44

44:                                               ; preds = %40, %27
  %45 = phi ptr [ %43, %40 ], [ %10, %27 ]
  %46 = icmp eq i8 %4, 0
  br i1 %46, label %62, label %47, !prof !350

47:                                               ; preds = %44
  %48 = load i64, ptr %28, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %54, !prof !351

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !352
  %53 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %28, ptr noundef %52, ptr noundef %1) #13
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %53, %51 ], [ %28, %47 ]
  %56 = load i64, ptr %45, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %62, !prof !353

59:                                               ; preds = %54
  %60 = load ptr, ptr %0, align 8, !tbaa !352
  %61 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %45, ptr noundef %60, ptr noundef %1) #13
  br label %62

62:                                               ; preds = %54, %59, %44
  %63 = phi ptr [ %55, %59 ], [ %55, %54 ], [ %28, %44 ]
  %64 = phi ptr [ %61, %59 ], [ %45, %54 ], [ %45, %44 ]
  %65 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %63, ptr noundef %64, i8 noundef zeroext 0) #14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67, !prof !346

67:                                               ; preds = %62
  %68 = tail call i32 @swap_tree_comparison(i32 noundef %11) #14
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %64, %67 ], [ %63, %62 ]
  %71 = phi ptr [ %63, %67 ], [ %64, %62 ]
  %72 = phi i32 [ %68, %67 ], [ %11, %62 ]
  tail call fastcc void @gimple_cond_set_code(ptr noundef %2, i32 noundef %72) #13
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %2, ptr noundef %70) #13
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %2, ptr noundef %71) #13
  tail call void @fold_defer_overflow_warnings() #14
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !220
  %74 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %72, ptr noundef %73, ptr noundef %70, ptr noundef %71) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76, !prof !354

76:                                               ; preds = %69, %80
  %77 = phi ptr [ %82, %80 ], [ %74, %69 ]
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %83 [
    i16 116, label %80
    i16 113, label %80
  ], !prof !355

80:                                               ; preds = %76, %76
  %81 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !208
  br label %76, !llvm.loop !356

83:                                               ; preds = %76
  %84 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #14
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %86, ptr noundef %1, i32 noundef 2) #14
  %87 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %125, label %128, !prof !357

89:                                               ; preds = %69
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef %1, i32 noundef 2) #14
  br label %125

90:                                               ; preds = %5
  %91 = tail call fastcc ptr @gimple_switch_index(ptr noundef %1) #13
  br label %95

92:                                               ; preds = %5
  %93 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %1) #13
  br label %95

94:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 550, ptr noundef nonnull @.str.1) #14
  br label %95

95:                                               ; preds = %92, %94, %90
  %96 = phi ptr [ %91, %90 ], [ %93, %92 ], [ undef, %94 ]
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 141
  br i1 %99, label %100, label %128, !prof !358

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %96, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !208
  %103 = load ptr, ptr @ssa_name_values, align 8
  %104 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #13
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %110, !prof !359

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %103, i32 noundef %102) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !358

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %100, %106
  %111 = phi ptr [ %96, %106 ], [ %96, %100 ], [ %107, %109 ]
  %112 = icmp eq i8 %4, 0
  br i1 %112, label %121, label %113, !prof !358

113:                                              ; preds = %110
  %114 = load i64, ptr %111, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 8, !tbaa !352
  %119 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %111, ptr noundef %118, ptr noundef %1) #13
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121, !prof !360

121:                                              ; preds = %110, %113, %117
  %122 = phi ptr [ %119, %117 ], [ %111, %113 ], [ %111, %110 ]
  %123 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %122) #14
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128, !prof !358

125:                                              ; preds = %121, %83, %89
  %126 = phi ptr [ %2, %89 ], [ %2, %83 ], [ %1, %121 ]
  %127 = tail call ptr %3(ptr noundef %126, ptr noundef %1) #14
  br label %128

128:                                              ; preds = %125, %121, %117, %95, %83
  %129 = phi ptr [ %77, %83 ], [ %122, %121 ], [ null, %117 ], [ null, %95 ], [ %127, %125 ]
  ret ptr %129
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_temporary_equivalences(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !361 !PGOFuncName !362 {
  %2 = load ptr, ptr %0, align 8, !tbaa !220
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5, !prof !363

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %12, %9 ], [ %2, %1 ]
  %7 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !364

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !220
  %11 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %10) #13
  tail call void @set_ssa_name_value(ptr noundef nonnull %7, ptr noundef %11) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !220
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5, !prof !365

15:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @register_jump_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !218 !PGOFuncName !366 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !367

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !215
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %8) #13
  %9 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220, !nonnull !368, !noundef !368
  store i32 %0, ptr %9, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #8 !prof !218 !PGOFuncName !369 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !367
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !218 !PGOFuncName !370 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !220
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #13, !range !371
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !367

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #14
  store ptr %6, ptr @ssa_name_values, align 8, !tbaa !220
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !372 !PGOFuncName !373 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !374

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !375
  %7 = load i32, ptr %0, align 8, !tbaa !215
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !376 !PGOFuncName !377 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !378

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !379
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !381 !PGOFuncName !382 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !383
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !384

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !385

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !386
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 !prof !248 !PGOFuncName !388 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !239

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !389
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !391 !PGOFuncName !392 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !393
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !290
  store i8 0, ptr %0, align 8, !tbaa !281
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !391 !PGOFuncName !394 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !395

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !396 !PGOFuncName !397 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !240
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !398 !PGOFuncName !399 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !398 !PGOFuncName !400 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !208
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !301

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !398 !PGOFuncName !401 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_temporary_equivalence(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !402 !PGOFuncName !403 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !208
  %6 = load ptr, ptr @ssa_name_values, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #13
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %11, !prof !404

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %5) #13
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %10, %9 ], [ null, %3 ]
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %26, !prof !405

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !208
  %19 = icmp ult i32 %18, %7
  br i1 %19, label %20, label %22, !prof !406

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %18) #13
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %21, %20 ], [ null, %16 ]
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %1, ptr %23, !prof !407
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi ptr [ %25, %22 ], [ %1, %11 ]
  tail call void @set_ssa_name_value(ptr noundef nonnull %0, ptr noundef %27) #13
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %2) #13
  %28 = load ptr, ptr %2, align 8, !tbaa !220
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %28, ptr noundef %12) #13
  %29 = load ptr, ptr %2, align 8, !tbaa !220
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %29, ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !408 !PGOFuncName !409 {
  %2 = load ptr, ptr %0, align 8, !tbaa !250
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !410
  store ptr %4, ptr %0, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !411 !PGOFuncName !412 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !220
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !402 !PGOFuncName !413 {
  %2 = load ptr, ptr %0, align 8, !tbaa !220
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 2) #13, !range !371
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !414

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 2) #14
  store ptr %6, ptr %0, align 8, !tbaa !220
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !415 !PGOFuncName !416 {
  %3 = load i32, ptr %0, align 8, !tbaa !215
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !215
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !220
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !262 !PGOFuncName !417 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !250
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !252
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !418 !PGOFuncName !419 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !240
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !420 !PGOFuncName !421 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !423 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !424 !PGOFuncName !425 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !426 !PGOFuncName !427 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !240
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !429 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #13
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !319

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !430 !PGOFuncName !431 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @num_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !432 !PGOFuncName !433 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call fastcc void @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #13
  %3 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10, !prof !327

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i32 %6, 1
  call fastcc void @op_iter_next_tree(ptr noundef nonnull %2) #13
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %5, label %10, !prof !331, !llvm.loop !434

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !435 !PGOFuncName !436 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !284
  store ptr %1, ptr %4, align 8, !tbaa !220
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_assignment_stmt(ptr noundef %0) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !345
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !240
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %42 [
    i8 3, label %5
    i8 2, label %29
    i8 1, label %35
  ], !prof !439

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 56
  br i1 %9, label %10, label %26, !prof !440

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = tail call ptr @fold(ptr noundef %12) #14
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !220
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !220
  %20 = icmp eq ptr %13, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !208
  br label %26

26:                                               ; preds = %23, %18, %5
  %27 = phi ptr [ %6, %5 ], [ %6, %18 ], [ %25, %23 ]
  %28 = tail call ptr @fold(ptr noundef %27) #14
  br label %43

29:                                               ; preds = %1
  %30 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #13
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !208
  %34 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %2, ptr noundef %33, ptr noundef %31) #14
  br label %43

35:                                               ; preds = %1
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #13
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %38 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #13
  %39 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !208
  %41 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %2, ptr noundef %40, ptr noundef %37, ptr noundef %38) #14
  br label %43

42:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @.str.1) #14
  br label %43

43:                                               ; preds = %42, %35, %29, %26
  %44 = phi ptr [ null, %42 ], [ %41, %35 ], [ %34, %29 ], [ %28, %26 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 !prof !262 !PGOFuncName !441 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !270

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !442
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !443 !PGOFuncName !444 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !235
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !445

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !220
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !446 !PGOFuncName !447 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !448
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !449

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !446 !PGOFuncName !450 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !240
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !446 !PGOFuncName !451 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !269
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !452 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !432 !PGOFuncName !453 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !277
  tail call fastcc void @op_iter_next_tree(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !454 !PGOFuncName !455 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !456

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !292
  store ptr %6, ptr %2, align 8, !tbaa !290
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !393
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !457

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !458
  store ptr %12, ptr %8, align 8, !tbaa !393
  br label %14

13:                                               ; preds = %7
  store i8 1, ptr %0, align 8, !tbaa !281
  br label %14

14:                                               ; preds = %13, %11, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !435 !PGOFuncName !460 {
  %2 = load ptr, ptr %0, align 8, !tbaa !461
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !462

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !463
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !463
  store ptr %2, ptr %6, align 8, !tbaa !461
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !435 !PGOFuncName !464 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !465

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !466

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !461
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #13
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !467 !PGOFuncName !468 {
  store ptr %1, ptr %0, align 8, !tbaa !461
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !463
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !463
  store ptr %0, ptr %4, align 8, !tbaa !461
  store ptr %0, ptr %3, align 8, !tbaa !463
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !437 !PGOFuncName !469 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #13, !range !345
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !240
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !470

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 !prof !471 !PGOFuncName !472 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !208
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !473 !PGOFuncName !474 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !475

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !437 !PGOFuncName !476 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !240
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !477

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !478 !PGOFuncName !479 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !208
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !480 !PGOFuncName !481 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !480 !PGOFuncName !482 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !480 !PGOFuncName !483 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lhs_of_dominating_assert(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 !prof !484 !PGOFuncName !485 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %5 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #13, !range !235
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %36, !prof !486

8:                                                ; preds = %3, %32
  %9 = phi ptr [ %33, %32 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %32, label %13, !prof !487

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %11) #14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16, !prof !488

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #13
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 148
  br i1 %20, label %21, label %32, !prof !489

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !208
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32, !prof !489

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #13
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef %27) #14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30, !prof !490

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #13
  br label %36

32:                                               ; preds = %8, %13, %16, %21, %26
  %33 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #13
  %34 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #13, !range !235
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %8, label %36, !prof !491, !llvm.loop !492

36:                                               ; preds = %32, %3, %30
  %37 = phi ptr [ %31, %30 ], [ %0, %3 ], [ %0, %32 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  ret ptr %37
}

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !480 !PGOFuncName !493 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !480 !PGOFuncName !494 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !480 !PGOFuncName !495 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !496 !PGOFuncName !497 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !420 !PGOFuncName !498 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !484 !PGOFuncName !499 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !500
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !463
  store ptr %6, ptr %0, align 8, !tbaa !502
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #13, !range !235
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !503
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !504 !PGOFuncName !505 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !500
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #5 !prof !506 !PGOFuncName !507 {
  %2 = load ptr, ptr %0, align 8, !tbaa !502
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !463
  store ptr %4, ptr %0, align 8, !tbaa !502
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #13, !range !235
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !508
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !509 !PGOFuncName !510 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !235
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !511

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !512

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #2 !prof !513 !PGOFuncName !514 {
  %2 = load i32, ptr %0, align 8, !tbaa !215
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !215
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  ret ptr %6
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!206}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!35 = !{ptr @set_ssa_name_value, ptr @VEC_tree_base_length, i64 1503096}
!36 = !{ptr @set_ssa_name_value, ptr @VEC_tree_heap_safe_grow_cleared, i64 56237}
!37 = !{ptr @set_ssa_name_value, ptr @VEC_tree_base_replace, i64 1503096}
!38 = !{ptr @VEC_tree_heap_safe_grow_cleared, ptr @VEC_tree_base_length, i64 56236}
!39 = !{ptr @VEC_tree_heap_safe_grow_cleared, ptr @VEC_tree_heap_safe_grow, i64 56236}
!40 = !{ptr @VEC_tree_heap_safe_grow_cleared, ptr @VEC_tree_base_address, i64 56236}
!41 = !{ptr @threadedge_initialize_values, ptr @fancy_abort, i64 1}
!42 = !{ptr @threadedge_initialize_values, ptr @VEC_tree_base_length, i64 152}
!43 = !{ptr @threadedge_initialize_values, ptr @VEC_tree_heap_alloc, i64 152}
!44 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 152}
!45 = !{ptr @threadedge_finalize_values, ptr @VEC_tree_heap_free, i64 152}
!46 = !{ptr @VEC_tree_heap_free, ptr @free, i64 151}
!47 = !{ptr @potentially_threadable_block, ptr @single_succ_p, i64 896586}
!48 = !{ptr @potentially_threadable_block, ptr @single_pred_p, i64 710749}
!49 = !{ptr @potentially_threadable_block, ptr @gsi_last_bb, i64 337948}
!50 = !{ptr @potentially_threadable_block, ptr @gsi_end_p, i64 337948}
!51 = !{ptr @potentially_threadable_block, ptr @gsi_stmt, i64 337947}
!52 = !{ptr @potentially_threadable_block, ptr @gimple_code, i64 337946}
!53 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 896586}
!54 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 710750}
!55 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 337948}
!56 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 337948}
!57 = !{ptr @thread_across_edge, ptr @gsi_last_bb, i64 1}
!58 = !{ptr @thread_across_edge, ptr @gsi_stmt, i64 1}
!59 = !{ptr @thread_across_edge, ptr @op_iter_init_use, i64 1}
!60 = !{ptr @thread_across_edge, ptr @op_iter_done, i64 11}
!61 = !{ptr @thread_across_edge, ptr @get_use_from_ptr, i64 10}
!62 = !{ptr @thread_across_edge, ptr @gimple_code, i64 488392}
!63 = !{ptr @thread_across_edge, ptr @gimple_bb, i64 2}
!64 = !{ptr @thread_across_edge, ptr @op_iter_next_use, i64 10}
!65 = !{ptr @thread_across_edge, ptr @record_temporary_equivalences_from_phis, i64 488389}
!66 = !{ptr @thread_across_edge, ptr @record_temporary_equivalences_from_stmts_at_dest, i64 488388}
!67 = !{ptr @thread_across_edge, ptr @simplify_control_stmt_condition, i64 488386}
!68 = !{ptr @thread_across_edge, ptr @is_gimple_min_invariant, i64 42271}
!69 = !{ptr @thread_across_edge, ptr @find_taken_edge, i64 41795}
!70 = !{ptr @thread_across_edge, ptr @remove_temporary_equivalences, i64 530183}
!71 = !{ptr @thread_across_edge, ptr @register_jump_thread, i64 41794}
!72 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 1343664}
!73 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 1343664}
!74 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!75 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_start_phis, i64 488389}
!76 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_end_p, i64 924420}
!77 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_stmt, i64 436032}
!78 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 436032}
!79 = !{ptr @record_temporary_equivalences_from_phis, ptr @get_use_from_ptr, i64 436032}
!80 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_phi_result, i64 436032}
!81 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_code, i64 432361}
!82 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_bb, i64 185450}
!83 = !{ptr @record_temporary_equivalences_from_phis, ptr @is_gimple_reg, i64 436031}
!84 = !{ptr @record_temporary_equivalences_from_phis, ptr @record_temporary_equivalence, i64 436031}
!85 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_next, i64 436031}
!86 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_start_bb, i64 488389}
!87 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_end_p, i64 1648752}
!88 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_stmt, i64 1160364}
!89 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_code, i64 1714361}
!90 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @is_gimple_debug, i64 1160362}
!91 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_asm_volatile_p, i64 1}
!92 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_assign_lhs, i64 606364}
!93 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_call_lhs, i64 131093}
!94 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @is_gimple_call, i64 1343666}
!95 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_call_fndecl, i64 65482}
!96 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_assign_single_p, i64 1343681}
!97 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_assign_rhs1, i64 828653}
!98 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @num_ssa_operands, i64 671822}
!99 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @xcalloc, i64 671822}
!100 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @op_iter_init_use, i64 1343644}
!101 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @op_iter_done, i64 2913852}
!102 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @get_use_from_ptr, i64 785104}
!103 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @VEC_tree_base_length, i64 785103}
!104 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @VEC_tree_base_index, i64 781689}
!105 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @set_ssa_use_from_ptr, i64 1258472}
!106 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @op_iter_next_use, i64 1570208}
!107 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @fold_call_stmt, i64 65482}
!108 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @fold_assignment_stmt, i64 606340}
!109 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @is_gimple_min_invariant, i64 479295}
!110 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @free, i64 671822}
!111 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_get_lhs, i64 104647}
!112 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @record_temporary_equivalence, i64 104647}
!113 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_next, i64 1160363}
!114 = !{ptr @simplify_control_stmt_condition, ptr @gimple_code, i64 488389}
!115 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_lhs, i64 488228}
!116 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_rhs, i64 488228}
!117 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_code, i64 488228}
!118 = !{ptr @simplify_control_stmt_condition, ptr @VEC_tree_base_length, i64 488388}
!119 = !{ptr @simplify_control_stmt_condition, ptr @VEC_tree_base_index, i64 488115}
!120 = !{ptr @simplify_control_stmt_condition, ptr @lhs_of_dominating_assert, i64 244828}
!121 = !{ptr @simplify_control_stmt_condition, ptr @tree_swap_operands_p, i64 488228}
!122 = !{ptr @simplify_control_stmt_condition, ptr @swap_tree_comparison, i64 1}
!123 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_set_code, i64 488228}
!124 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_set_lhs, i64 488228}
!125 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_set_rhs, i64 488228}
!126 = !{ptr @simplify_control_stmt_condition, ptr @fold_defer_overflow_warnings, i64 488228}
!127 = !{ptr @simplify_control_stmt_condition, ptr @fold_binary_loc, i64 488228}
!128 = !{ptr @simplify_control_stmt_condition, ptr @is_gimple_min_invariant, i64 121368}
!129 = !{ptr @simplify_control_stmt_condition, ptr @fold_undefer_overflow_warnings, i64 488228}
!130 = !{ptr @simplify_control_stmt_condition, ptr @gimple_switch_index, i64 160}
!131 = !{ptr @remove_temporary_equivalences, ptr @VEC_tree_base_length, i64 1281572}
!132 = !{ptr @remove_temporary_equivalences, ptr @VEC_tree_base_pop, i64 1817142}
!133 = !{ptr @remove_temporary_equivalences, ptr @set_ssa_name_value, i64 751388}
!134 = !{ptr @VEC_tree_heap_safe_grow, ptr @VEC_tree_heap_reserve_exact, i64 56236}
!135 = !{ptr @VEC_tree_heap_reserve_exact, ptr @VEC_tree_base_space, i64 56236}
!136 = !{ptr @VEC_tree_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 1}
!137 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2015496}
!138 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2015496}
!139 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 7343732}
!140 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 436032}
!141 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!142 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_base_length, i64 540681}
!143 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_base_index, i64 928742}
!144 = !{ptr @record_temporary_equivalence, ptr @set_ssa_name_value, i64 540681}
!145 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_heap_reserve, i64 540681}
!146 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_base_quick_push, i64 1081362}
!147 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 540681}
!148 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 57}
!149 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 488389}
!150 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 488389}
!151 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1160367}
!152 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 803838}
!153 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 131092}
!154 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1343682}
!155 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 65482}
!156 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2182703}
!157 = !{ptr @num_ssa_operands, ptr @op_iter_init_tree, i64 671832}
!158 = !{ptr @num_ssa_operands, ptr @op_iter_done, i64 1456948}
!159 = !{ptr @num_ssa_operands, ptr @op_iter_next_tree, i64 785116}
!160 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 1258492}
!161 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 1258492}
!162 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_rhs_code, i64 606350}
!163 = !{ptr @fold_assignment_stmt, ptr @get_gimple_rhs_class, i64 606350}
!164 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_rhs1, i64 606349}
!165 = !{ptr @fold_assignment_stmt, ptr @fold, i64 414304}
!166 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_lhs, i64 192046}
!167 = !{ptr @fold_assignment_stmt, ptr @fold_unary_loc, i64 1}
!168 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_rhs2, i64 192045}
!169 = !{ptr @fold_assignment_stmt, ptr @fold_binary_loc, i64 192045}
!170 = !{ptr @fold_assignment_stmt, ptr @fancy_abort, i64 1}
!171 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 4351778}
!172 = !{ptr @gimple_op, ptr @gimple_ops, i64 4351777}
!173 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 5328236}
!174 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!175 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 5328236}
!176 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 5328236}
!177 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 65482}
!178 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 671832}
!179 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 671832}
!180 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1240296}
!181 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 606350}
!182 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 606350}
!183 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 414305}
!184 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 192045}
!185 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 192044}
!186 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 606350}
!187 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 488229}
!188 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 488229}
!189 = !{ptr @lhs_of_dominating_assert, ptr @first_readonly_imm_use, i64 244828}
!190 = !{ptr @lhs_of_dominating_assert, ptr @end_readonly_imm_use_p, i64 673859}
!191 = !{ptr @lhs_of_dominating_assert, ptr @gimple_assign_single_p, i64 193379}
!192 = !{ptr @lhs_of_dominating_assert, ptr @gimple_assign_rhs1, i64 337555}
!193 = !{ptr @lhs_of_dominating_assert, ptr @gimple_bb, i64 168776}
!194 = !{ptr @lhs_of_dominating_assert, ptr @dominated_by_p, i64 168776}
!195 = !{ptr @lhs_of_dominating_assert, ptr @gimple_assign_lhs, i64 5494}
!196 = !{ptr @lhs_of_dominating_assert, ptr @next_readonly_imm_use, i64 429031}
!197 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 488229}
!198 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 488229}
!199 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 160}
!200 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 244828}
!201 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 423730}
!202 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 976458}
!203 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 976457}
!204 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!205 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 976458}
!206 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!207 = !{!"function_entry_count", i64 1503096}
!208 = !{!209, !209, i64 0}
!209 = !{!"omnipotent char", !210, i64 0}
!210 = !{!"Simple C/C++ TBAA"}
!211 = !{!"branch_weights", i32 1446861, i32 56237}
!212 = !{!"function_entry_count", i64 5110298}
!213 = !{!"tree-ssa-threadedge.c:VEC_tree_base_length"}
!214 = !{!"branch_weights", i32 1, i32 5110299}
!215 = !{!216, !217, i64 0}
!216 = !{!"VEC_tree_base", !217, i64 0, !217, i64 4, !209, i64 8}
!217 = !{!"int", !209, i64 0}
!218 = !{!"function_entry_count", i64 56236}
!219 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_safe_grow_cleared"}
!220 = !{!221, !221, i64 0}
!221 = !{!"any pointer", !209, i64 0}
!222 = !{!"tree-ssa-threadedge.c:VEC_tree_base_replace"}
!223 = !{!"function_entry_count", i64 152}
!224 = !{!"branch_weights", i32 153, i32 1}
!225 = !{!226, !221, i64 24}
!226 = !{!"function", !221, i64 0, !221, i64 8, !221, i64 16, !221, i64 24, !221, i64 32, !221, i64 40, !221, i64 48, !221, i64 56, !221, i64 64, !221, i64 72, !221, i64 80, !221, i64 88, !221, i64 96, !217, i64 104, !217, i64 108, !217, i64 112, !217, i64 116, !217, i64 120, !217, i64 124, !221, i64 128, !217, i64 136, !217, i64 137, !217, i64 138, !217, i64 138, !217, i64 138, !217, i64 138, !217, i64 138, !217, i64 138, !217, i64 138, !217, i64 139, !217, i64 139, !217, i64 139, !217, i64 139, !217, i64 139, !217, i64 139, !217, i64 139}
!227 = !{!228, !221, i64 16}
!228 = !{!"gimple_df", !221, i64 0, !221, i64 8, !221, i64 16, !221, i64 24, !229, i64 32, !229, i64 48, !221, i64 64, !221, i64 72, !221, i64 80, !221, i64 88, !217, i64 96, !230, i64 104}
!229 = !{!"pt_solution", !217, i64 0, !217, i64 0, !217, i64 0, !217, i64 0, !217, i64 0, !217, i64 0, !221, i64 8}
!230 = !{!"ssa_operands", !221, i64 0, !217, i64 8, !217, i64 12, !209, i64 16, !221, i64 24, !221, i64 32}
!231 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_alloc"}
!232 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_free"}
!233 = !{!"branch_weights", i32 1, i32 153}
!234 = !{!"function_entry_count", i64 896586}
!235 = !{i8 0, i8 2}
!236 = !{!"branch_weights", i32 710751, i32 185837}
!237 = !{!"branch_weights", i32 337949, i32 372803}
!238 = !{!"branch_weights", i32 337949, i32 1}
!239 = !{!"branch_weights", i32 1, i32 337949}
!240 = !{i32 0, i32 256}
!241 = !{!"tree-ssa-threadedge.c:single_succ_p"}
!242 = !{!243, !221, i64 8}
!243 = !{!"basic_block_def", !221, i64 0, !221, i64 8, !221, i64 16, !221, i64 24, !209, i64 32, !221, i64 48, !221, i64 56, !209, i64 64, !244, i64 72, !217, i64 80, !217, i64 84, !217, i64 88, !217, i64 92, !217, i64 96}
!244 = !{!"long", !209, i64 0}
!245 = !{!"function_entry_count", i64 710750}
!246 = !{!"tree-ssa-threadedge.c:single_pred_p"}
!247 = !{!243, !221, i64 0}
!248 = !{!"function_entry_count", i64 337948}
!249 = !{!"tree-ssa-threadedge.c:gsi_last_bb"}
!250 = !{!251, !221, i64 0}
!251 = !{!"", !221, i64 0, !221, i64 8, !221, i64 16}
!252 = !{!251, !221, i64 8}
!253 = !{!251, !221, i64 16}
!254 = !{!"function_entry_count", i64 2911125}
!255 = !{!"tree-ssa-threadedge.c:gsi_end_p"}
!256 = !{!"function_entry_count", i64 2272801}
!257 = !{!"tree-ssa-threadedge.c:gsi_stmt"}
!258 = !{!259, !221, i64 0}
!259 = !{!"gimple_seq_node_d", !221, i64 0, !221, i64 8, !221, i64 16}
!260 = !{!"function_entry_count", i64 30069481}
!261 = !{!"tree-ssa-threadedge.c:gimple_code"}
!262 = !{!"function_entry_count", i64 488389}
!263 = !{!264, !217, i64 48}
!264 = !{!"edge_def", !221, i64 0, !221, i64 8, !209, i64 16, !221, i64 24, !221, i64 32, !217, i64 40, !217, i64 44, !217, i64 48, !217, i64 52, !244, i64 56}
!265 = !{!"branch_weights", i32 488390, i32 1}
!266 = !{!264, !221, i64 8}
!267 = distinct !{!267, !268}
!268 = !{!"llvm.loop.mustprogress"}
!269 = !{!217, !217, i64 0}
!270 = !{!"branch_weights", i32 1, i32 488390}
!271 = !{!"branch_weights", i32 6480, i32 -1091690266, i32 6520, i32 1043320}
!272 = !{!"branch_weights", i32 446120, i32 42271}
!273 = !{!"branch_weights", i32 476, i32 41796}
!274 = !{!"branch_weights", i32 1, i32 41796}
!275 = !{!"function_entry_count", i64 1343664}
!276 = !{!"tree-ssa-threadedge.c:op_iter_init_use"}
!277 = !{!278, !217, i64 4}
!278 = !{!"ssa_operand_iterator_d", !209, i64 0, !217, i64 4, !221, i64 8, !221, i64 16, !217, i64 24, !217, i64 28, !221, i64 32}
!279 = !{!"function_entry_count", i64 4370844}
!280 = !{!"tree-ssa-threadedge.c:op_iter_done"}
!281 = !{!278, !209, i64 0}
!282 = !{!"function_entry_count", i64 2006264}
!283 = !{!"tree-ssa-threadedge.c:get_use_from_ptr"}
!284 = !{!285, !221, i64 24}
!285 = !{!"ssa_use_operand_d", !221, i64 0, !221, i64 8, !209, i64 16, !221, i64 24}
!286 = !{!"function_entry_count", i64 352144}
!287 = !{!"tree-ssa-threadedge.c:gimple_bb"}
!288 = !{!"function_entry_count", i64 2913896}
!289 = !{!"tree-ssa-threadedge.c:op_iter_next_use"}
!290 = !{!278, !221, i64 16}
!291 = !{!"branch_weights", i32 1343665, i32 1570233}
!292 = !{!293, !221, i64 0}
!293 = !{!"use_optype_d", !221, i64 0, !285, i64 8}
!294 = !{!278, !217, i64 24}
!295 = !{!278, !217, i64 28}
!296 = !{!"branch_weights", i32 1, i32 1343665}
!297 = !{!278, !221, i64 32}
!298 = !{!"tree-ssa-threadedge.c:record_temporary_equivalences_from_phis"}
!299 = !{!"branch_weights", i32 436033, i32 52357}
!300 = !{!264, !217, i64 44}
!301 = !{!"branch_weights", i32 1, i32 436033}
!302 = !{!"branch_weights", i32 432364, i32 3670}
!303 = !{!"branch_weights", i32 185452, i32 246913}
!304 = !{!"branch_weights", i32 1, i32 185452}
!305 = !{!"branch_weights", i32 424211, i32 11823}
!306 = !{!"branch_weights", i32 0, i32 436033}
!307 = distinct !{!307, !268}
!308 = !{!"tree-ssa-threadedge.c:record_temporary_equivalences_from_stmts_at_dest"}
!309 = !{!310, !217, i64 8}
!310 = !{!"param_info", !221, i64 0, !217, i64 8, !209, i64 12, !217, i64 16, !217, i64 20, !221, i64 24}
!311 = !{!"branch_weights", i32 488389, i32 1}
!312 = !{!"branch_weights", i32 -1665174532, i32 2266, i32 2266}
!313 = !{!"branch_weights", i32 1160368, i32 1}
!314 = !{!"branch_weights", i32 1, i32 1160368}
!315 = !{!"branch_weights", i32 1122201587, i32 1025282061}
!316 = !{!"branch_weights", i32 606369, i32 1}
!317 = !{!"branch_weights", i32 65611, i32 488390}
!318 = !{!"branch_weights", i32 129, i32 65483}
!319 = !{!"branch_weights", i32 65483, i32 1}
!320 = !{!"branch_weights", i32 606369, i32 65483}
!321 = !{!"branch_weights", i32 1, i32 65483}
!322 = !{!"branch_weights", i32 -6944007, i32 65484, i32 65483}
!323 = !{!"branch_weights", i32 257528, i32 414324}
!324 = !{!"branch_weights", i32 3, i32 414322}
!325 = !{!"branch_weights", i32 257528, i32 414322}
!326 = !{!"branch_weights", i32 17, i32 414306}
!327 = !{!"branch_weights", i32 671832, i32 1}
!328 = !{!"branch_weights", i32 785117, i32 1}
!329 = !{!"branch_weights", i32 781704, i32 3414}
!330 = !{!"branch_weights", i32 847028922, i32 1300454726}
!331 = !{!"branch_weights", i32 113285, i32 671832}
!332 = distinct !{!332, !268}
!333 = !{!"branch_weights", i32 606351, i32 65483}
!334 = !{!"branch_weights", i32 220975, i32 450859}
!335 = !{!"branch_weights", i32 567, i32 450293}
!336 = !{!"branch_weights", i32 436714, i32 13580}
!337 = distinct !{!337, !268}
!338 = !{!"branch_weights", i32 567202, i32 104650}
!339 = !{!"branch_weights", i32 75639, i32 29012}
!340 = !{!"branch_weights", i32 1, i32 29012}
!341 = !{!"branch_weights", i32 671979, i32 488389}
!342 = distinct !{!342, !268}
!343 = !{!"tree-ssa-threadedge.c:simplify_control_stmt_condition"}
!344 = !{!"branch_weights", i32 161, i32 158186520, i32 51842, i32 161}
!345 = !{i32 0, i32 65536}
!346 = !{!"branch_weights", i32 488230, i32 1}
!347 = !{!"branch_weights", i32 488118, i32 113}
!348 = !{!"branch_weights", i32 406835, i32 81396}
!349 = !{!"branch_weights", i32 1, i32 488230}
!350 = !{!"branch_weights", i32 241759, i32 246472}
!351 = !{!"branch_weights", i32 244829, i32 1644}
!352 = !{!264, !221, i64 0}
!353 = !{!"branch_weights", i32 1, i32 246472}
!354 = !{!"branch_weights", i32 427627, i32 60604}
!355 = !{!"branch_weights", i32 -622122480, i32 60605, i32 60604}
!356 = distinct !{!356, !268}
!357 = !{!"branch_weights", i32 1, i32 -1}
!358 = !{!"branch_weights", i32 161, i32 1}
!359 = !{!"branch_weights", i32 1, i32 161}
!360 = !{!"branch_weights", i32 -2147483648, i32 0}
!361 = !{!"function_entry_count", i64 530184}
!362 = !{!"tree-ssa-threadedge.c:remove_temporary_equivalences"}
!363 = !{!"branch_weights", i32 1, i32 261565}
!364 = !{!"branch_weights", i32 268620, i32 642048}
!365 = !{!"branch_weights", i32 261565, i32 649102}
!366 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_safe_grow"}
!367 = !{!"branch_weights", i32 1, i32 56237}
!368 = !{}
!369 = !{!"tree-ssa-threadedge.c:VEC_tree_base_address"}
!370 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_reserve_exact"}
!371 = !{i32 0, i32 2}
!372 = !{!"function_entry_count", i64 596917}
!373 = !{!"tree-ssa-threadedge.c:VEC_tree_base_space"}
!374 = !{!"branch_weights", i32 1, i32 596918}
!375 = !{!216, !217, i64 4}
!376 = !{!"function_entry_count", i64 1607336}
!377 = !{!"tree-ssa-threadedge.c:VEC_edge_base_length"}
!378 = !{!"branch_weights", i32 77, i32 1607261}
!379 = !{!380, !217, i64 0}
!380 = !{!"VEC_edge_base", !217, i64 0, !217, i64 4, !209, i64 8}
!381 = !{!"function_entry_count", i64 826337}
!382 = !{!"tree-ssa-threadedge.c:bb_seq"}
!383 = !{!243, !217, i64 96}
!384 = !{!"branch_weights", i32 826338, i32 1}
!385 = !{!"branch_weights", i32 1, i32 826338}
!386 = !{!387, !221, i64 0}
!387 = !{!"gimple_bb_info", !221, i64 0, !221, i64 8}
!388 = !{!"tree-ssa-threadedge.c:gimple_seq_last"}
!389 = !{!390, !221, i64 8}
!390 = !{!"gimple_seq_d", !221, i64 0, !221, i64 8, !221, i64 16}
!391 = !{!"function_entry_count", i64 2015496}
!392 = !{!"tree-ssa-threadedge.c:op_iter_init"}
!393 = !{!278, !221, i64 8}
!394 = !{!"tree-ssa-threadedge.c:gimple_use_ops"}
!395 = !{!"branch_weights", i32 1, i32 2015497}
!396 = !{!"function_entry_count", i64 7343732}
!397 = !{!"tree-ssa-threadedge.c:gimple_has_ops"}
!398 = !{!"function_entry_count", i64 436032}
!399 = !{!"tree-ssa-threadedge.c:gimple_phi_arg_imm_use_ptr"}
!400 = !{!"tree-ssa-threadedge.c:gimple_phi_arg"}
!401 = !{!"tree-ssa-threadedge.c:gimple_phi_result"}
!402 = !{!"function_entry_count", i64 540681}
!403 = !{!"tree-ssa-threadedge.c:record_temporary_equivalence"}
!404 = !{!"branch_weights", i32 485022, i32 55661}
!405 = !{!"branch_weights", i32 508002, i32 32681}
!406 = !{!"branch_weights", i32 443725, i32 64278}
!407 = !{!"branch_weights", i32 507974, i32 29}
!408 = !{!"function_entry_count", i64 1596399}
!409 = !{!"tree-ssa-threadedge.c:gsi_next"}
!410 = !{!259, !221, i64 16}
!411 = !{!"function_entry_count", i64 2198885}
!412 = !{!"tree-ssa-threadedge.c:VEC_tree_base_index"}
!413 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_reserve"}
!414 = !{!"branch_weights", i32 57, i32 540626}
!415 = !{!"function_entry_count", i64 1081362}
!416 = !{!"tree-ssa-threadedge.c:VEC_tree_base_quick_push"}
!417 = !{!"tree-ssa-threadedge.c:gsi_start_bb"}
!418 = !{!"function_entry_count", i64 1160367}
!419 = !{!"tree-ssa-threadedge.c:is_gimple_debug"}
!420 = !{!"function_entry_count", i64 0}
!421 = !{!"tree-ssa-threadedge.c:gimple_asm_volatile_p"}
!422 = !{!"function_entry_count", i64 803838}
!423 = !{!"tree-ssa-threadedge.c:gimple_assign_lhs"}
!424 = !{!"function_entry_count", i64 131092}
!425 = !{!"tree-ssa-threadedge.c:gimple_call_lhs"}
!426 = !{!"function_entry_count", i64 1343682}
!427 = !{!"tree-ssa-threadedge.c:is_gimple_call"}
!428 = !{!"function_entry_count", i64 65482}
!429 = !{!"tree-ssa-threadedge.c:gimple_call_fndecl"}
!430 = !{!"function_entry_count", i64 2182703}
!431 = !{!"tree-ssa-threadedge.c:gimple_assign_rhs1"}
!432 = !{!"function_entry_count", i64 671832}
!433 = !{!"tree-ssa-threadedge.c:num_ssa_operands"}
!434 = distinct !{!434, !268}
!435 = !{!"function_entry_count", i64 1258492}
!436 = !{!"tree-ssa-threadedge.c:set_ssa_use_from_ptr"}
!437 = !{!"function_entry_count", i64 606350}
!438 = !{!"tree-ssa-threadedge.c:fold_assignment_stmt"}
!439 = !{!"branch_weights", i32 1, i32 414306, i32 1, i32 192046}
!440 = !{!"branch_weights", i32 1, i32 414306}
!441 = !{!"tree-ssa-threadedge.c:gimple_seq_first"}
!442 = !{!390, !221, i64 0}
!443 = !{!"function_entry_count", i64 4351778}
!444 = !{!"tree-ssa-threadedge.c:gimple_op"}
!445 = !{!"branch_weights", i32 1, i32 4351779}
!446 = !{!"function_entry_count", i64 5328236}
!447 = !{!"tree-ssa-threadedge.c:gimple_ops"}
!448 = !{!244, !244, i64 0}
!449 = !{!"branch_weights", i32 1, i32 5328237}
!450 = !{!"tree-ssa-threadedge.c:gimple_statement_structure"}
!451 = !{!"tree-ssa-threadedge.c:gss_for_code"}
!452 = !{!"tree-ssa-threadedge.c:gimple_call_fn"}
!453 = !{!"tree-ssa-threadedge.c:op_iter_init_tree"}
!454 = !{!"function_entry_count", i64 1456948}
!455 = !{!"tree-ssa-threadedge.c:op_iter_next_tree"}
!456 = !{!"branch_weights", i32 671833, i32 785117}
!457 = !{!"branch_weights", i32 671833, i32 1}
!458 = !{!459, !221, i64 0}
!459 = !{!"def_optype_d", !221, i64 0, !221, i64 8}
!460 = !{!"tree-ssa-threadedge.c:delink_imm_use"}
!461 = !{!285, !221, i64 0}
!462 = !{!"branch_weights", i32 18195, i32 1240299}
!463 = !{!285, !221, i64 8}
!464 = !{!"tree-ssa-threadedge.c:link_imm_use"}
!465 = !{!"branch_weights", i32 1, i32 1258493}
!466 = !{!"branch_weights", i32 1240299, i32 18195}
!467 = !{!"function_entry_count", i64 1240298}
!468 = !{!"tree-ssa-threadedge.c:link_imm_use_to_list"}
!469 = !{!"tree-ssa-threadedge.c:gimple_assign_rhs_code"}
!470 = !{!"branch_weights", i32 414306, i32 192046}
!471 = !{!"function_entry_count", i64 1212700}
!472 = !{!"tree-ssa-threadedge.c:get_gimple_rhs_class"}
!473 = !{!"function_entry_count", i64 192045}
!474 = !{!"tree-ssa-threadedge.c:gimple_assign_rhs2"}
!475 = !{!"branch_weights", i32 192046, i32 1}
!476 = !{!"tree-ssa-threadedge.c:gimple_expr_code"}
!477 = !{!"branch_weights", i32 1, i32 2425404, i32 2, i32 1}
!478 = !{!"function_entry_count", i64 1168503}
!479 = !{!"tree-ssa-threadedge.c:gimple_num_ops"}
!480 = !{!"function_entry_count", i64 488229}
!481 = !{!"tree-ssa-threadedge.c:gimple_cond_lhs"}
!482 = !{!"tree-ssa-threadedge.c:gimple_cond_rhs"}
!483 = !{!"tree-ssa-threadedge.c:gimple_cond_code"}
!484 = !{!"function_entry_count", i64 244828}
!485 = !{!"tree-ssa-threadedge.c:lhs_of_dominating_assert"}
!486 = !{!"branch_weights", i32 239403, i32 1}
!487 = !{!"branch_weights", i32 238167, i32 190990}
!488 = !{!"branch_weights", i32 24297, i32 166694}
!489 = !{!"branch_weights", i32 166694, i32 1}
!490 = !{!"branch_weights", i32 161269, i32 5426}
!491 = !{!"branch_weights", i32 189753, i32 239403}
!492 = distinct !{!492, !268}
!493 = !{!"tree-ssa-threadedge.c:gimple_cond_set_code"}
!494 = !{!"tree-ssa-threadedge.c:gimple_cond_set_lhs"}
!495 = !{!"tree-ssa-threadedge.c:gimple_cond_set_rhs"}
!496 = !{!"function_entry_count", i64 160}
!497 = !{!"tree-ssa-threadedge.c:gimple_switch_index"}
!498 = !{!"tree-ssa-threadedge.c:gimple_goto_dest"}
!499 = !{!"tree-ssa-threadedge.c:first_readonly_imm_use"}
!500 = !{!501, !221, i64 8}
!501 = !{!"immediate_use_iterator_d", !221, i64 0, !221, i64 8, !285, i64 16, !221, i64 48}
!502 = !{!501, !221, i64 0}
!503 = !{!"branch_weights", i32 244829, i32 1}
!504 = !{!"function_entry_count", i64 1337116}
!505 = !{!"tree-ssa-threadedge.c:end_readonly_imm_use_p"}
!506 = !{!"function_entry_count", i64 423730}
!507 = !{!"tree-ssa-threadedge.c:next_readonly_imm_use"}
!508 = !{!"branch_weights", i32 184328, i32 239404}
!509 = !{!"function_entry_count", i64 976458}
!510 = !{!"tree-ssa-threadedge.c:gimple_set_op"}
!511 = !{!"branch_weights", i32 1, i32 976459}
!512 = !{!"branch_weights", i32 976459, i32 1}
!513 = !{!"function_entry_count", i64 1552713}
!514 = !{!"tree-ssa-threadedge.c:VEC_tree_base_pop"}
