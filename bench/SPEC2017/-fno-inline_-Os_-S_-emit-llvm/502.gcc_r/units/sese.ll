; ModuleID = 'sese.c'
source_filename = "sese.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ivtype_map_elt_s = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.sese_s = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.rename_map_elt_s = type { ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.alep = type { ptr, ptr }
%struct.VEC_rename_map_elt_base = type { i32, i32, [1 x ptr] }
%struct.igp = type { ptr, ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.ifsese_s = type { ptr, ptr, ptr }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"sese.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(%s, \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rename_map(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @debug_rename_map_1, ptr noundef null) #19
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_rename_map_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @debug_rename_elt(ptr noundef %3) #20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rename_map_elt_info(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !11
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @eq_rename_map_elts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %1, align 8, !tbaa !9
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ivtype_map(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @debug_ivtype_map_1, ptr noundef null) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_ivtype_map_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @debug_ivtype_elt(ptr noundef %3) #20
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ivtype_map_elt_info(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = tail call i32 %2(ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @eq_ivtype_map_elts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @build_sese_loop_nests(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %33, %1
  %13 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #20, !range !25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %61, label %42

17:                                               ; preds = %1, %33
  %18 = phi ptr [ %35, %33 ], [ %8, %1 ]
  %19 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef %18, ptr noundef %0) #20, !range !26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = icmp eq ptr %25, %18
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  %30 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef %29, ptr noundef %0) #20, !range !26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call fastcc void @sese_record_loop(ptr noundef %0, ptr noundef nonnull %23) #20
  br label %33

33:                                               ; preds = %21, %27, %32, %17
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = load ptr, ptr @cfun, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %35, %40
  br i1 %41, label %12, label %17, !llvm.loop !33

42:                                               ; preds = %12, %57
  %43 = phi ptr [ %58, %57 ], [ %14, %12 ]
  %44 = phi i32 [ %46, %57 ], [ 0, %12 ]
  %45 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %43) #20
  %46 = add i32 %44, 1
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %43, i32 noundef %46) #20
  %50 = load ptr, ptr %2, align 8, !tbaa !5
  %51 = load i32, ptr %50, align 8, !tbaa !35
  %52 = load i32, ptr %49, align 8, !tbaa !35
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  tail call fastcc void @VEC_loop_p_base_replace(ptr noundef %43, i32 noundef %44, ptr noundef nonnull %49) #20
  %55 = load ptr, ptr %13, align 8, !tbaa !23
  tail call fastcc void @VEC_loop_p_base_replace(ptr noundef %55, i32 noundef %46, ptr noundef nonnull %50) #20
  %56 = load ptr, ptr %13, align 8, !tbaa !23
  br label %57

57:                                               ; preds = %48, %54
  %58 = phi ptr [ %43, %48 ], [ %56, %54 ]
  %59 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %58, i32 noundef %46, ptr noundef nonnull %2) #20, !range !25
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %42, !llvm.loop !36

61:                                               ; preds = %57, %42, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bb_in_sese_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.sese_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = tail call fastcc zeroext i8 @bb_in_region(ptr noundef %0, ptr noundef %5, ptr noundef %9) #20, !range !26
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_record_loop(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @sese_contains_loop(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = load i32, ptr %1, align 8, !tbaa !35
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %8) #19
  %10 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 4
  tail call fastcc void @VEC_loop_p_heap_safe_push(ptr noundef nonnull %10, ptr noundef nonnull %1) #20
  br label %11

11:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !42
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @new_sese(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 48) #19
  store ptr %0, ptr %3, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !40
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %6 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !41
  %7 = tail call fastcc ptr @VEC_loop_p_heap_alloc() #20
  %8 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 5
  store i8 1, ptr %9, align 8, !tbaa !44
  %10 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  %11 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_loop_p_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_sese(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %6, ptr %2, align 8, !tbaa !41
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 4
  tail call fastcc void @VEC_loop_p_heap_free(ptr noundef nonnull %9) #20
  tail call void @free(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_loop_p_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sese_insert_phis_for_liveouts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  tail call void @update_ssa(i32 noundef 2048) #19
  tail call fastcc void @sese_build_liveouts(ptr noundef %0, ptr noundef %7) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %5) #20
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4, %10
  %11 = load ptr, ptr @cfun, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = load i32, ptr %5, align 4, !tbaa !51
  %17 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %15, i32 noundef %16) #20
  tail call fastcc void @sese_add_exit_phis_edge(ptr noundef %1, ptr noundef %17, ptr noundef %2, ptr noundef %3) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %10, !llvm.loop !52

20:                                               ; preds = %10, %4
  tail call void @bitmap_obstack_free(ptr noundef %7) #19
  tail call void @update_ssa(i32 noundef 2048) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_build_liveouts(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %15, %12 ], [ %8, %2 ]
  tail call fastcc void @sese_build_liveouts_bb(ptr noundef %0, ptr noundef %1, ptr noundef %13) #20
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %22, label %12, !llvm.loop !53

22:                                               ; preds = %12, %2
  %23 = phi ptr [ %8, %2 ], [ %15, %12 ]
  %24 = phi ptr [ %5, %2 ], [ %18, %12 ]
  %25 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !51
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %24, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = icmp eq ptr %30, %23
  br i1 %31, label %42, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %27 ]
  tail call fastcc void @sese_reset_debug_liveouts_bb(ptr noundef %0, ptr noundef %1, ptr noundef %33) #20
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = load ptr, ptr @cfun, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %35, %40
  br i1 %41, label %42, label %32, !llvm.loop !54

42:                                               ; preds = %32, %27, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = load ptr, ptr %1, align 8, !tbaa !55
  store ptr %4, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !59
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !64
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !51
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !65

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !51
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !51
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !62
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !63
  store i64 %35, ptr %3, align 8, !tbaa !64
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !51
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !51
  %40 = load i32, ptr %23, align 8, !tbaa !62
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !62
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !66

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !67
  store ptr %44, ptr %0, align 8, !tbaa !57
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !60
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !51
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !64
  store i32 %16, ptr %1, align 4, !tbaa !51
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_add_exit_phis_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @create_phi_node(ptr noundef %1, ptr noundef %0) #19
  %6 = tail call fastcc ptr @gimple_phi_result(ptr noundef %5) #20
  %7 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %5) #20
  %8 = tail call ptr @create_new_def_for(ptr noundef %6, ptr noundef %5, ptr noundef nonnull %7) #19
  tail call void @add_phi_arg(ptr noundef %5, ptr noundef %1, ptr noundef %2, i32 noundef 0) #19
  tail call void @add_phi_arg(ptr noundef %5, ptr noundef %1, ptr noundef %3, i32 noundef 0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !64
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !64
  %6 = load i32, ptr %1, align 4, !tbaa !51
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rename_map_elt_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !9
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @free(ptr noundef nonnull %10) #20
  br label %13

13:                                               ; preds = %12, %9
  %14 = call fastcc ptr @new_rename_map_elt(ptr noundef %1, ptr noundef %2) #20
  store ptr %14, ptr %7, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %6, %3, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_rename_map_elt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #19
  store ptr %0, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.rename_map_elt_s, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rename_nb_iterations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.loop_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %9) #20
  store ptr %10, ptr %8, align 8, !tbaa !69
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !70

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !71
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !74
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !74
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !35
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !74
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #20
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !79

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_rename(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !11
  switch i8 %12, label %21 [
    i8 3, label %13
    i8 2, label %17
    i8 1, label %23
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %15) #20
  store ptr %16, ptr %14, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %10, %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %19) #20
  store ptr %20, ptr %18, align 8, !tbaa !11
  br label %23

21:                                               ; preds = %10, %2, %8, %23
  %22 = phi ptr [ %1, %23 ], [ %9, %8 ], [ null, %2 ], [ %1, %10 ]
  ret ptr %22

23:                                               ; preds = %10, %17
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %25) #20
  store ptr %26, ptr %24, align 8, !tbaa !11
  br label %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !71
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !74
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #20, !range !25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !71
  %13 = load i32, ptr %3, align 4, !tbaa !51
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #20
  store ptr %14, ptr %1, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !80

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #20
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rename_sese_parameters(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.sese_s, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #20, !range !25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %5, %2 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  %12 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %11) #20
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %9, i32 noundef %10, ptr noundef %12) #20
  %13 = add nuw nsw i32 %10, 1
  %14 = load ptr, ptr %4, align 8, !tbaa !45
  %15 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %14, i32 noundef %13, ptr noundef nonnull %3) #20, !range !25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8, !llvm.loop !81

17:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !82
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sese_adjust_liveout_phis(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %2) #19
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %68

10:                                               ; preds = %5, %65
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20
  %12 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #20
  %13 = call zeroext i8 @is_gimple_reg(ptr noundef %12) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = call fastcc i32 @gimple_phi_num_args(ptr noundef %11) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %15
  %19 = zext i32 %16 to i64
  br label %21

20:                                               ; preds = %10
  call fastcc void @sese_adjust_vphi(ptr noundef %0, ptr noundef %11, ptr noundef %4) #20
  br label %65

21:                                               ; preds = %18, %25
  %22 = phi i64 [ 0, %18 ], [ %26, %25 ]
  %23 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %11, i64 noundef %22) #20
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %21, !llvm.loop !84

28:                                               ; preds = %25, %21
  %29 = phi i64 [ 0, %25 ], [ %22, %21 ]
  br i1 %17, label %65, label %30

30:                                               ; preds = %28
  %31 = and i64 %29, 4294967295
  br label %32

32:                                               ; preds = %30, %60
  %33 = phi i64 [ 0, %30 ], [ %61, %60 ]
  %34 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %11, i64 noundef %33) #20
  %35 = icmp eq ptr %34, %4
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %11, i64 noundef %31) #20
  %38 = call fastcc ptr @get_rename(ptr noundef %1, ptr noundef %37) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 633, ptr noundef nonnull @.str.1) #19
  br label %41

41:                                               ; preds = %36, %40
  %42 = load i64, ptr %38, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = call zeroext i8 @is_gimple_reg(ptr noundef %37) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = call ptr @create_tmp_var(ptr noundef %50, ptr noundef nonnull @.str.2) #19
  %52 = call ptr @build2_stat(i32 noundef 53, ptr noundef %50, ptr noundef %51, ptr noundef nonnull %38) #19
  %53 = call ptr @force_gimple_operand(ptr noundef %52, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #19
  %54 = load ptr, ptr %7, align 8, !tbaa !5
  %55 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %4, ptr noundef %54) #19
  br label %56

56:                                               ; preds = %48, %45, %41
  %57 = phi ptr [ %53, %48 ], [ %38, %45 ], [ %38, %41 ]
  %58 = trunc i64 %33 to i32
  %59 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %58) #20
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %59, ptr noundef %57) #20
  call void @set_rename(ptr noundef %1, ptr noundef %37, ptr noundef %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %60

60:                                               ; preds = %32, %56
  %61 = add nuw nsw i64 %33, 1
  %62 = call fastcc i32 @gimple_phi_num_args(ptr noundef %11) #20
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %32, label %65, !llvm.loop !85

65:                                               ; preds = %60, %15, %28, %20
  call fastcc void @gsi_next(ptr noundef nonnull %6) #20
  %66 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #20, !range !26
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %10, label %68, !llvm.loop !86

68:                                               ; preds = %65, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_adjust_vphi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 465, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %7, %40
  %11 = phi i64 [ %41, %40 ], [ 0, %7 ]
  %12 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %1, i64 noundef %11) #20
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %1, i64 noundef %11) #20
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 4294967296
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %14
  %20 = icmp eq i64 %11, 0
  %21 = zext i1 %20 to i64
  %22 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %1, i64 noundef %21) #20
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 4294967296
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !91
  %32 = tail call ptr @sbitmap_alloc(i32 noundef %31) #19
  tail call void @sbitmap_zero(ptr noundef %32) #19
  %33 = tail call fastcc ptr @get_vdef_before_sese(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %32) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 484, ptr noundef nonnull @.str.1) #19
  br label %36

36:                                               ; preds = %26, %35
  %37 = trunc i64 %11 to i32
  %38 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %37) #20
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %38, ptr noundef %33) #20
  %39 = load ptr, ptr %32, align 8, !tbaa !92
  tail call void @free(ptr noundef %39) #20
  tail call void @free(ptr noundef %32) #20
  br label %40

40:                                               ; preds = %36, %10
  %41 = add nuw nsw i64 %11, 1
  %42 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %10, label %45, !llvm.loop !94

45:                                               ; preds = %19, %14, %40, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #20
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_rename(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rename_map_elt_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 498, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %2, %7
  store ptr %1, ptr %3, align 8, !tbaa !9
  %9 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rename_map_elt_s, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  br label %17

17:                                               ; preds = %8, %11, %14
  %18 = phi ptr [ %16, %14 ], [ %1, %11 ], [ %1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret ptr %18
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  store ptr %1, ptr %4, align 8, !tbaa !5
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  store ptr %4, ptr %0, align 8, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_true_edge_from_guard_bb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !99
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !100
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !101
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #20, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !102

20:                                               ; preds = %15, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1085, ptr noundef nonnull @.str.1) #19
  br label %21

21:                                               ; preds = %9, %20
  %22 = phi ptr [ null, %20 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !103
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_false_edge_from_guard_bb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !99
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !100
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #20, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1, %15
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !101
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %16 = load i32, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %2) #20, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !105

20:                                               ; preds = %15, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1101, ptr noundef nonnull @.str.1) #19
  br label %21

21:                                               ; preds = %9, %20
  %22 = phi ptr [ null, %20 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_loop_close_phis(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.alep, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr %1, ptr %3, align 8, !tbaa !106
  %5 = tail call fastcc ptr @VEC_rename_map_elt_heap_alloc() #20
  %6 = getelementptr inbounds %struct.alep, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !108
  tail call void @update_ssa(i32 noundef 2048) #19
  call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @add_loop_exit_phis, ptr noundef nonnull %3) #19
  call void @update_ssa(i32 noundef 2048) #19
  %7 = load ptr, ptr %6, align 8
  %8 = call fastcc i32 @VEC_rename_map_elt_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #20, !range !25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.rename_map_elt_s, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  call void @set_rename(ptr noundef %0, ptr noundef %13, ptr noundef %15) #20
  call void @free(ptr noundef %12) #20
  %16 = add nuw nsw i32 %11, 1
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc i32 @VEC_rename_map_elt_base_iterate(ptr noundef %17, i32 noundef %16, ptr noundef nonnull %4) #20, !range !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10, !llvm.loop !109

20:                                               ; preds = %10, %2
  call fastcc void @VEC_rename_map_elt_heap_free(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_rename_map_elt_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #19
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_loop_exit_phis(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.rename_map_elt_s, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = load ptr, ptr %5, align 8, !tbaa !9
  %14 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %12, ptr noundef %10) #20, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %5) #20
  store ptr null, ptr %0, align 8, !tbaa !5
  %17 = load i64, ptr %12, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @alive_after_loop(ptr noundef %13) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc zeroext i8 @close_phi_not_yet_inserted_p(ptr noundef %10, ptr noundef nonnull %12) #20, !range !26
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @single_exit(ptr noundef %10) #19
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = tail call ptr @create_phi_node(ptr noundef nonnull %12, ptr noundef %29) #19
  %31 = tail call fastcc ptr @gimple_phi_result(ptr noundef %30) #20
  %32 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %30) #20
  %33 = tail call ptr @create_new_def_for(ptr noundef %31, ptr noundef %30, ptr noundef nonnull %32) #19
  %34 = tail call fastcc ptr @single_pred_edge(ptr noundef %29) #20
  tail call void @add_phi_arg(ptr noundef %30, ptr noundef nonnull %12, ptr noundef %34, i32 noundef 0) #19
  %35 = getelementptr inbounds %struct.alep, ptr %1, i64 0, i32 1
  %36 = tail call fastcc ptr @gimple_phi_result(ptr noundef nonnull %21) #20
  %37 = tail call fastcc ptr @new_rename_map_elt(ptr noundef %36, ptr noundef %33) #20
  tail call fastcc void @VEC_rename_map_elt_heap_safe_push(ptr noundef nonnull %35, ptr noundef %37) #20
  br label %38

38:                                               ; preds = %23, %26, %20, %16, %9, %2, %4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rename_map_elt_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !110
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rename_map_elt_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rename_map_elt_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_guard_phis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.igp, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  store ptr %0, ptr %6, align 8, !tbaa !112
  %7 = getelementptr inbounds %struct.igp, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.igp, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.igp, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !116
  tail call void @update_ssa(i32 noundef 2048) #19
  call void @htab_traverse(ptr noundef %4, ptr noundef nonnull @add_guard_exit_phis, ptr noundef nonnull %6) #19
  call void @update_ssa(i32 noundef 2048) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_guard_exit_phis(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.igp, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.igp, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = load ptr, ptr %3, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.rename_map_elt_s, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.igp, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = tail call fastcc ptr @default_before_guard(ptr noundef %13, ptr noundef %9) #20
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = tail call fastcc ptr @convert_for_phi_arg(ptr noundef %11, ptr noundef %9, ptr noundef %6) #20
  %18 = tail call fastcc ptr @convert_for_phi_arg(ptr noundef %14, ptr noundef %9, ptr noundef %8) #20
  %19 = tail call ptr @create_phi_node(ptr noundef %9, ptr noundef %4) #19
  %20 = tail call fastcc ptr @gimple_phi_result(ptr noundef %19) #20
  %21 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %19) #20
  %22 = tail call ptr @create_new_def_for(ptr noundef %20, ptr noundef %19, ptr noundef nonnull %21) #19
  tail call void @add_phi_arg(ptr noundef %19, ptr noundef %17, ptr noundef %6, i32 noundef 0) #19
  tail call void @add_phi_arg(ptr noundef %19, ptr noundef %18, ptr noundef %8, i32 noundef 0) #19
  store ptr %22, ptr %10, align 8, !tbaa !68
  store ptr %3, ptr %0, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %2, %16
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_bb_and_scalar_dependences(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @split_edge(ptr noundef %2) #19
  %6 = tail call fastcc ptr @single_succ_edge(ptr noundef %5) #20
  tail call fastcc void @graphite_copy_stmts_from_block(ptr noundef %0, ptr noundef %5, ptr noundef %3) #20
  tail call fastcc void @remove_condition(ptr noundef %5) #20
  tail call void @remove_phi_nodes(ptr noundef %5) #19
  tail call fastcc void @expand_scalar_variables(ptr noundef %5, ptr noundef %1, ptr noundef %3) #20
  tail call fastcc void @rename_variables(ptr noundef %5, ptr noundef %3) #20
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graphite_copy_stmts_from_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #20
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %3, %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %11 = call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !118
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = call ptr @gimple_copy(ptr noundef %10) #19
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %14, i32 noundef 0) #19
  %15 = load ptr, ptr @cfun, align 8, !tbaa !5
  %16 = call fastcc ptr @gimple_vop(ptr noundef %15) #20
  call void @mark_sym_for_renaming(ptr noundef %16) #19
  %17 = call zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef %14, ptr noundef %10) #19
  %18 = load ptr, ptr @cfun, align 8, !tbaa !5
  call void @gimple_duplicate_stmt_histograms(ptr noundef %18, ptr noundef %14, ptr noundef %18, ptr noundef %10) #19
  %19 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %6, ptr noundef %14) #20
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13, %22
  %23 = phi ptr [ %26, %22 ], [ %19, %13 ]
  %24 = call fastcc ptr @get_def_from_ptr(ptr noundef %23) #20
  %25 = call ptr @create_new_def_for(ptr noundef %24, ptr noundef %14, ptr noundef %23) #19
  call void @set_rename(ptr noundef %2, ptr noundef %24, ptr noundef %25) #20
  %26 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %6) #20
  %27 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %22, label %29, !llvm.loop !119

29:                                               ; preds = %22, %13, %9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %9, label %32, !llvm.loop !120

32:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_condition(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call ptr @last_stmt(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %3) #20, !range !118
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #20
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  br label %9

9:                                                ; preds = %8, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @remove_phi_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_scalar_variables(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3, %7
  %8 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  call fastcc void @expand_scalar_variables_stmt(ptr noundef %8, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #20
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %7, label %11, !llvm.loop !121

11:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rename_variables(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #20
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2, %7
  %8 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  call fastcc void @rename_variables_in_stmt(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %4) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %7, label %11, !llvm.loop !122

11:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @outermost_loop_in_sese(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = tail call fastcc ptr @loop_outer(ptr noundef %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %12
  %8 = phi ptr [ %14, %12 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %10 = tail call fastcc zeroext i8 @loop_in_sese_p(ptr noundef nonnull %8, ptr noundef %0) #20, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @loop_outer(ptr noundef %9) #20
  %14 = tail call fastcc ptr @loop_outer(ptr noundef %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !123

16:                                               ; preds = %7, %12, %2
  %17 = phi ptr [ %4, %2 ], [ %13, %12 ], [ %9, %7 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @loop_in_sese_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef %4, ptr noundef %1) #20, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef %9, ptr noundef %1) #20, !range !26
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @if_region_set_false_region(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @if_region_get_condition_block(ptr noundef %0) #20
  %4 = tail call ptr @get_false_edge_from_guard_bb(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = load ptr, ptr %1, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.sese_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = load ptr, ptr %7, align 8, !tbaa !125
  %11 = load ptr, ptr %9, align 8, !tbaa !125
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  %17 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !5
  %18 = tail call i32 %17(ptr noundef nonnull %9) #19
  %19 = tail call ptr @htab_find_slot_with_hash(ptr noundef %16, ptr noundef nonnull %9, i32 noundef %18, i32 noundef 0) #19
  %20 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  store i32 %21, ptr %22, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !101
  store i32 %24, ptr %20, align 8, !tbaa !101
  tail call void @redirect_edge_pred(ptr noundef nonnull %7, ptr noundef %3) #19
  tail call void @redirect_edge_pred(ptr noundef nonnull %9, ptr noundef %10) #19
  tail call void @redirect_edge_pred(ptr noundef %4, ptr noundef %11) #19
  %25 = tail call fastcc ptr @single_succ(ptr noundef %6) #20
  tail call void @redirect_edge_succ(ptr noundef %4, ptr noundef %25) #19
  tail call void @delete_basic_block(ptr noundef %6) #19
  store i32 1, ptr %23, align 8, !tbaa !101
  tail call fastcc void @recompute_all_dominators() #20
  store ptr %4, ptr %8, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.ifsese_s, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %27) #20
  br label %30

30:                                               ; preds = %29, %2
  store ptr %1, ptr %26, align 8, !tbaa !127
  %31 = icmp eq ptr %19, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %30
  %33 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #19
  %34 = load ptr, ptr %19, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false)
  %35 = load ptr, ptr @cfun, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.loops, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !126
  tail call void @htab_clear_slot(ptr noundef %39, ptr noundef nonnull %19) #19
  %40 = load ptr, ptr @cfun, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct.loops, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !5
  %46 = tail call i32 %45(ptr noundef nonnull %4) #19
  %47 = tail call ptr @htab_find_slot_with_hash(ptr noundef %44, ptr noundef nonnull %4, i32 noundef %46, i32 noundef 1) #19
  store ptr %4, ptr %33, align 8, !tbaa !129
  store ptr %33, ptr %47, align 8, !tbaa !5
  %48 = load ptr, ptr %4, align 8, !tbaa !125
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !27
  %51 = getelementptr inbounds %struct.loop, ptr %50, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !131
  %53 = getelementptr inbounds %struct.loop_exit, ptr %52, i64 0, i32 2
  store ptr %33, ptr %53, align 8, !tbaa !132
  br label %54

54:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @if_region_get_condition_block(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @if_region_entry(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  ret ptr %4
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recompute_all_dominators() unnamed_addr #0 {
  %1 = tail call zeroext i8 @mark_irreducible_loops() #19
  tail call void @free_dominance_info(i32 noundef 1) #19
  tail call void @free_dominance_info(i32 noundef 2) #19
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  tail call void @calculate_dominance_info(i32 noundef 2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_if_region_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = tail call ptr @xmalloc(i64 noundef 48) #19
  %6 = tail call ptr @xmalloc(i64 noundef 48) #19
  %7 = tail call ptr @xmalloc(i64 noundef 48) #19
  %8 = tail call ptr @xmalloc(i64 noundef 24) #19
  %9 = tail call ptr @create_empty_if_region_on_edge(ptr noundef %0, ptr noundef %1) #19
  store ptr %5, ptr %8, align 8, !tbaa !133
  store ptr %0, ptr %5, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.sese_s, ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !99
  %15 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !100
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %3) #20, !range !26
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sese_s, ptr %6, i64 0, i32 1
  %20 = getelementptr inbounds %struct.ifsese_s, ptr %8, i64 0, i32 1
  %21 = getelementptr inbounds %struct.sese_s, ptr %7, i64 0, i32 1
  %22 = getelementptr inbounds %struct.ifsese_s, ptr %8, i64 0, i32 2
  br label %23

23:                                               ; preds = %18, %40
  %24 = load ptr, ptr %3, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !101
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  store ptr %24, ptr %6, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = tail call fastcc ptr @single_succ_edge(ptr noundef %31) #20
  store ptr %32, ptr %19, align 8, !tbaa !40
  store ptr %6, ptr %20, align 8, !tbaa !134
  br label %40

33:                                               ; preds = %23
  %34 = and i32 %26, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  store ptr %24, ptr %7, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = tail call fastcc ptr @single_succ_edge(ptr noundef %38) #20
  store ptr %39, ptr %21, align 8, !tbaa !40
  store ptr %7, ptr %22, align 8, !tbaa !127
  br label %40

40:                                               ; preds = %29, %36, %33
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %41 = load i32, ptr %4, align 8
  %42 = load ptr, ptr %15, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %3) #20, !range !26
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %23, !llvm.loop !135

45:                                               ; preds = %40, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @create_empty_if_region_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @move_sese_in_condition(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = tail call ptr @split_edge(ptr noundef %2) #19
  %4 = tail call fastcc ptr @single_succ_edge(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !37
  %5 = tail call fastcc ptr @single_pred_edge(ptr noundef %3) #20
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !5
  %7 = tail call ptr @create_if_region_on_edge(ptr noundef %5, ptr noundef %6) #20
  tail call void @if_region_set_false_region(ptr noundef %7, ptr noundef nonnull %0) #20
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !95
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #20
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_ifsese_condition(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !133
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = tail call ptr @last_stmt(ptr noundef %9) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %9) #20
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #20, !range !118
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1582, ptr noundef nonnull @.str.1) #19
  br label %14

14:                                               ; preds = %2, %13
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %9) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %15 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #19
  %16 = call ptr @gimple_build_cond_from_tree(ptr noundef %15, ptr noundef null, ptr noundef null) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %9) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %16, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @scalar_evolution_in_region(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @block_before_sese(ptr noundef %0) #20
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @loop_in_sese_p(ptr noundef %1, ptr noundef %0) #20, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef nonnull %2) #19
  %13 = tail call ptr @instantiate_scev(ptr noundef %4, ptr noundef %1, ptr noundef %12) #19
  br label %31

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i8 @defined_in_sese_p(ptr noundef nonnull %2, ptr noundef %0) #20, !range !26
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %19) #20
  %21 = tail call fastcc zeroext i8 @loop_in_sese_p(ptr noundef %20, ptr noundef %0) #20, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @analyze_scalar_evolution(ptr noundef %20, ptr noundef nonnull %2) #19
  %25 = tail call fastcc i32 @loop_depth(ptr noundef %1) #20
  %26 = add i32 %25, 1
  %27 = tail call ptr @superloop_at_depth(ptr noundef %20, i32 noundef %26) #19
  %28 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %27, ptr noundef %24) #19
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @instantiate_scev(ptr noundef %4, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %31

31:                                               ; preds = %14, %29, %23, %11
  %32 = phi ptr [ %13, %11 ], [ %28, %23 ], [ %30, %29 ], [ %2, %14 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @block_before_sese(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @defined_in_sese_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef nonnull %5, ptr noundef %1) #20, !range !26
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i8 [ 0, %2 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @compute_overall_effect_of_inner_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_rename_elt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i32 @fputc(i32 40, ptr %2)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %4, ptr noundef %5, i32 noundef 0) #19
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %6) #22
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.rename_map_elt_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %8, ptr noundef %10, i32 noundef 0) #19
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %12 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %11) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_ivtype_elt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %4) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = load ptr, ptr %0, align 8, !tbaa !139
  tail call void @print_generic_expr(ptr noundef %6, ptr noundef %7, i32 noundef 0) #19
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bb_in_region(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %2) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef %2) #19
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %9, %3
  %14 = phi i8 [ 0, %3 ], [ 1, %6 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sese_contains_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = load i32, ptr %1, align 8, !tbaa !35
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %5) #19
  %7 = trunc i32 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_loop_p_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !42
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !42
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = load i32, ptr %0, align 8, !tbaa !42
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_build_liveouts_bb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #20
  store i32 0, ptr %6, align 8, !tbaa.struct !99
  %11 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !100
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %5) #20, !range !26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %3, %29
  %15 = load ptr, ptr %5, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %17) #19
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 6
  br label %22

22:                                               ; preds = %20, %22
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %24 = load i32, ptr %21, align 4, !tbaa !141
  %25 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %23, i32 noundef %24) #20
  %26 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %25) #20
  call fastcc void @sese_build_liveouts_use(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %26) #20
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %22, label %29, !llvm.loop !142

29:                                               ; preds = %22, %14
  call fastcc void @ei_next(ptr noundef nonnull %6) #20
  %30 = load i32, ptr %6, align 8
  %31 = load ptr, ptr %11, align 8
  %32 = call fastcc zeroext i8 @ei_cond(i32 %30, ptr %31, ptr noundef nonnull %5) #20, !range !26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %14, !llvm.loop !143

34:                                               ; preds = %29, %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34, %51
  %38 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %39 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %38) #20, !range !26
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %7, ptr noundef %38) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %48, %45 ], [ %42, %41 ]
  %47 = call fastcc ptr @get_use_from_ptr(ptr noundef %46) #20
  call fastcc void @sese_build_liveouts_use(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %47) #20
  %48 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #20
  %49 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %45, label %51, !llvm.loop !144

51:                                               ; preds = %45, %41, %37
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %37, label %54, !llvm.loop !145

54:                                               ; preds = %51, %34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_reset_debug_liveouts_bb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2) #20
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3, %26
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %10 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %9) #20, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %9) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12, %22
  %17 = phi ptr [ %23, %22 ], [ %13, %12 ]
  %18 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %19 = tail call fastcc zeroext i8 @sese_bad_liveouts_use(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %18) #20, !range !26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %9) #20
  tail call fastcc void @update_stmt(ptr noundef %9) #20
  br label %26

22:                                               ; preds = %16
  %23 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #20
  %24 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %16, label %26, !llvm.loop !146

26:                                               ; preds = %22, %12, %21, %8
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %8, label %29, !llvm.loop !147

29:                                               ; preds = %26, %3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sese_build_liveouts_use(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef nonnull %13, ptr noundef %0) #20, !range !26
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef %2, ptr noundef %0) #20, !range !26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %10) #19
  br label %23

23:                                               ; preds = %8, %15, %18, %4, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !118
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !148
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !150
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !152
  store ptr %7, ptr %2, align 8, !tbaa !151
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !154
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !155
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !154
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !150
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !157
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !158
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !160
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 747, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !162
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !162
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !163
  store ptr %25, ptr %18, align 8, !tbaa !162
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !151
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !151
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !152
  store ptr %41, ptr %32, align 8, !tbaa !151
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !150
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !118
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !118
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sese_bad_liveouts_use(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !11
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %10) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef nonnull %16, ptr noundef %0) #20, !range !26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef %2, ptr noundef %0) #20, !range !26
  %23 = xor i8 %22, 1
  br label %24

24:                                               ; preds = %21, %13, %18, %8, %4
  %25 = phi i8 [ 0, %4 ], [ 0, %8 ], [ 0, %18 ], [ 0, %13 ], [ %23, %21 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #19
  tail call void @update_stmt_operands(ptr noundef %0) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !118
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !51
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_new_def_for(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #2 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #20
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !166
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !166
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !166
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !51
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !51
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !165
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vdef_before_sese(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %70, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef nonnull %6, ptr noundef %0) #20, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %70, label %14

11:                                               ; preds = %66
  %12 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef nonnull %68, ptr noundef %0) #20, !range !26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %70, label %14

14:                                               ; preds = %8, %11
  %15 = phi ptr [ %67, %11 ], [ %5, %8 ]
  %16 = phi ptr [ %68, %11 ], [ %6, %8 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !168
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !63
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %14
  tail call fastcc void @SET_BIT(ptr noundef nonnull %2, i32 noundef %18) #20
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %15) #20, !range !118
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %70 [
    i8 16, label %31
    i8 6, label %54
    i8 8, label %54
  ]

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %15) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %31, %49
  %35 = phi i64 [ %50, %49 ], [ 0, %31 ]
  %36 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %15, i64 noundef %35) #20
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = tail call fastcc ptr @gimple_bb(ptr noundef %38) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i32, ptr %17, align 8, !tbaa !168
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !168
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %34
  %47 = tail call fastcc ptr @get_vdef_before_sese(ptr noundef %0, ptr noundef nonnull %36, ptr noundef %2) #20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %46, %41
  %50 = add nuw nsw i64 %35, 1
  %51 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %15) #20
  %52 = zext i32 %51 to i64
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %34, label %70, !llvm.loop !169

54:                                               ; preds = %28, %28
  %55 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %15) #20
  %56 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %55) #20
  %57 = load i32, ptr %17, align 8, !tbaa !168
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %56, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = tail call fastcc ptr @gimple_bb(ptr noundef %59) #20
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !168
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %2, i32 noundef %57) #20
  %65 = load ptr, ptr %58, align 8, !tbaa !11
  br label %66

66:                                               ; preds = %64, %54
  %67 = phi ptr [ %65, %64 ], [ %59, %54 ]
  %68 = tail call fastcc ptr @gimple_bb(ptr noundef %67) #20
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %11

70:                                               ; preds = %28, %14, %66, %11, %49, %46, %8, %3, %31
  %71 = phi ptr [ null, %31 ], [ %1, %3 ], [ %1, %8 ], [ null, %49 ], [ %47, %46 ], [ %56, %11 ], [ %56, %66 ], [ null, %14 ], [ null, %28 ]
  ret ptr %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
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
  %15 = load i64, ptr %14, align 8, !tbaa !63
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !11
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !63
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !170
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
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
  %15 = load i64, ptr %14, align 8, !tbaa !63
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !11
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !11
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !172
  store ptr %2, ptr %6, align 8, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !171
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  store ptr %1, ptr %0, align 8, !tbaa !171
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !172
  store ptr %0, ptr %4, align 8, !tbaa !171
  store ptr %0, ptr %3, align 8, !tbaa !172
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !173
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @expr_defined_in_loop_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #15 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi ptr [ %0, %2 ], [ %23, %21 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !11
  switch i8 %8, label %37 [
    i8 3, label %9
    i8 2, label %24
    i8 1, label %31
    i8 0, label %33
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %11, ptr noundef %1) #20, !range !26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %16, ptr noundef %1) #20, !range !26
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  br label %21

21:                                               ; preds = %19, %29, %31
  %22 = phi ptr [ %20, %19 ], [ %30, %29 ], [ %32, %31 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  br label %3

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %26, ptr noundef %1) #20, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  br label %21

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  br label %21

33:                                               ; preds = %3
  %34 = icmp eq i64 %6, 141
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = tail call fastcc zeroext i8 @name_defined_in_loop_p(ptr noundef nonnull %4, ptr noundef %1) #20, !range !26
  br label %37

37:                                               ; preds = %3, %24, %9, %14, %33, %35
  %38 = phi i8 [ 0, %33 ], [ %36, %35 ], [ 0, %3 ], [ 1, %24 ], [ 1, %9 ], [ 1, %14 ]
  ret i8 %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @alive_after_loop(ptr noundef %0) unnamed_addr #9 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %2, ptr noundef %0) #20
  %9 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %2) #20, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1, %22
  %12 = phi ptr [ %23, %22 ], [ %8, %1 ]
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %14) #20, !range !118
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #20
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %22, label %26

22:                                               ; preds = %11, %17
  %23 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %2) #20
  %24 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %2) #20, !range !26
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %11, label %26, !llvm.loop !175

26:                                               ; preds = %22, %17, %1
  %27 = phi ptr [ null, %1 ], [ %14, %17 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #21
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @close_phi_not_yet_inserted_p(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %4 = tail call ptr @single_exit(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %6) #19
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2, %13
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %11 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %10, i64 noundef 0) #20
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %9, label %16, !llvm.loop !176

16:                                               ; preds = %9, %13, %2
  %17 = phi i8 [ 1, %2 ], [ 1, %13 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rename_map_elt_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rename_map_elt_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_rename_map_elt_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @name_defined_in_loop_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 4294967296
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = tail call fastcc ptr @gimple_bb(ptr noundef %8) #20
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = icmp eq ptr %11, %1
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i8 [ 0, %2 ], [ %13, %6 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  store ptr %6, ptr %0, align 8, !tbaa !179
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !26
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !177
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  store ptr %4, ptr %0, align 8, !tbaa !179
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !26
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rename_map_elt_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_rename_map_elt_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rename_map_elt_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !110
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !110
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rename_map_elt_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rename_map_elt_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rename_map_elt_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !180
  %6 = load i32, ptr %0, align 8, !tbaa !110
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @default_before_guard(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @get_rename(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1) #19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %12 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %11) #19
  br label %18

13:                                               ; preds = %5
  %14 = load ptr, ptr @cfun, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = tail call ptr @gimple_default_def(ptr noundef %14, ptr noundef %16) #19
  br label %18

18:                                               ; preds = %2, %13, %8
  %19 = phi ptr [ %12, %8 ], [ %17, %13 ], [ %3, %2 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_for_phi_arg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %6, ptr noundef nonnull %0) #19
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ %0, %3 ]
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %13) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = tail call ptr @create_tmp_var(ptr noundef %6, ptr noundef nonnull @.str.2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %22 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %6, ptr noundef %21, ptr noundef nonnull %13) #19
  %23 = call ptr @force_gimple_operand(ptr noundef %22, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef null) #19
  %24 = load ptr, ptr %4, align 8, !tbaa !5
  %25 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2, ptr noundef %24) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %26

26:                                               ; preds = %20, %17, %12
  %27 = phi ptr [ %13, %17 ], [ %23, %20 ], [ %13, %12 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 51, ptr noundef nonnull @.str.1) #19
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !148
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = load ptr, ptr %3, align 8, !tbaa !163
  store ptr %8, ptr %2, align 8, !tbaa !162
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !150
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #20
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !26
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #20, !range !118
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !183

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_scalar_variables_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %7 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %6, ptr noundef %0) #20
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %5, %45
  %11 = phi ptr [ %46, %45 ], [ %7, %5 ]
  %12 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %11) #20
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = load i64, ptr %12, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65535
  %18 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %12) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %10
  %21 = tail call fastcc ptr @get_rename(ptr noundef %3, ptr noundef nonnull %12) #20
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %14, ptr noundef nonnull %12, i32 noundef %17, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  %25 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %14, ptr noundef %24) #19
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !26
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %0) #20, !range !26
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #20
  br label %49

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @.str.1) #19
  br label %49

35:                                               ; preds = %27
  %36 = load i64, ptr %25, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @create_tmp_var(ptr noundef %14, ptr noundef nonnull @.str.2) #19
  %41 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %14, ptr noundef %40, ptr noundef nonnull %25) #19
  %42 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %41, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi ptr [ %42, %39 ], [ %25, %35 ]
  tail call void @replace_exp(ptr noundef %11, ptr noundef %44) #19
  br label %45

45:                                               ; preds = %43, %10, %20, %23
  %46 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %6) #20
  %47 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %10, label %49, !llvm.loop !184

49:                                               ; preds = %45, %5, %34, %33
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_scalar_variables_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !51
  switch i32 %11, label %87 [
    i32 1, label %13
    i32 3, label %13
    i32 4, label %12
    i32 6, label %65
    i32 7, label %73
    i32 5, label %73
  ]

12:                                               ; preds = %8
  switch i32 %2, label %64 [
    i32 43, label %15
    i32 44, label %15
    i32 47, label %23
    i32 45, label %42
    i32 41, label %13
  ]

13:                                               ; preds = %8, %8, %95, %90, %12, %106, %88, %39, %99, %73, %65, %42, %15
  %14 = phi ptr [ %22, %15 ], [ %63, %42 ], [ %72, %65 ], [ %86, %73 ], [ %105, %99 ], [ %89, %88 ], [ null, %106 ], [ %41, %39 ], [ %1, %8 ], [ %1, %8 ], [ %1, %12 ], [ %1, %95 ], [ %1, %90 ]
  ret ptr %14

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %20, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %22 = tail call ptr @build1_stat(i32 noundef %2, ptr noundef %0, ptr noundef %21) #19
  br label %13

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = tail call fastcc ptr @expand_scalar_variables_ssa_name(ptr noundef %0, ptr noundef %25, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 141
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @is_gimple_reg(ptr noundef %25) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = tail call ptr @create_tmp_var(ptr noundef %35, ptr noundef nonnull @.str.2) #19
  %37 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %35, ptr noundef %36, ptr noundef nonnull %26) #19
  %38 = tail call ptr @force_gimple_operand_gsi(ptr noundef %7, ptr noundef %37, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  br label %39

39:                                               ; preds = %33, %30, %23
  %40 = phi ptr [ %38, %33 ], [ %26, %30 ], [ %26, %23 ]
  %41 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %0, ptr noundef %40) #19
  br label %13

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = load i64, ptr %44, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %52, ptr noundef nonnull %44, i32 noundef %55, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %57 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  %59 = load i64, ptr %46, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  %62 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %58, ptr noundef nonnull %46, i32 noundef %61, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %63 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %0, ptr noundef %56, ptr noundef %62, ptr noundef %48, ptr noundef %50) #19
  br label %13

64:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 912, ptr noundef nonnull @.str.1) #19
  br label %87

65:                                               ; preds = %8
  %66 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = load i64, ptr %1, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 65535
  %71 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %67, ptr noundef nonnull %1, i32 noundef %70, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %72 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %0, ptr noundef %71) #19
  br label %13

73:                                               ; preds = %8, %8
  %74 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = load i64, ptr %1, align 8
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 65535
  %79 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %75, ptr noundef nonnull %1, i32 noundef %78, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %80 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = load i64, ptr %3, align 8
  %83 = trunc i64 %82 to i32
  %84 = and i32 %83, 65535
  %85 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %81, ptr noundef nonnull %3, i32 noundef %84, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %0, ptr noundef %79, ptr noundef %85) #19
  br label %13

87:                                               ; preds = %8, %64
  switch i32 %2, label %106 [
    i32 141, label %88
    i32 121, label %90
  ]

88:                                               ; preds = %87
  %89 = tail call fastcc ptr @expand_scalar_variables_ssa_name(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  br label %13

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !11
  %93 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %92) #20, !range !26
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %13, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %92, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 45
  br i1 %98, label %99, label %13

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %101, ptr noundef nonnull %92, i32 noundef 45, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #20
  %103 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !11
  %105 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 121, ptr noundef %104, ptr noundef %102) #19
  br label %13

106:                                              ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 960, ptr noundef nonnull @.str.1) #19
  br label %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: optsize
declare void @replace_exp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_scalar_variables_ssa_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc zeroext i8 @is_parameter(ptr noundef %3, ptr noundef %1) #20, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @is_iv(ptr noundef %1) #20, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %6
  %13 = tail call fastcc ptr @get_rename(ptr noundef %4, ptr noundef %1) #20
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %13) #19
  br label %51

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = tail call fastcc ptr @get_rename(ptr noundef %4, ptr noundef %1) #20
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = tail call fastcc ptr @gimple_bb(ptr noundef %22) #20
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %18) #19
  br label %51

27:                                               ; preds = %20, %15
  %28 = tail call fastcc ptr @gimple_bb(ptr noundef %17) #20
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call fastcc void @expand_scalar_variables_stmt(ptr noundef %17, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %31 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %18) #19
  br label %51

32:                                               ; preds = %27
  %33 = icmp eq ptr %28, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = tail call fastcc zeroext i8 @bb_in_sese_p(ptr noundef nonnull %28, ptr noundef %3) #20, !range !26
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %32
  %38 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %18) #19
  br label %51

39:                                               ; preds = %34
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %17) #20, !range !118
  %41 = trunc i32 %40 to i8
  switch i8 %41, label %50 [
    i8 6, label %42
    i8 8, label %48
  ]

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %17) #20
  %44 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %17) #20, !range !185
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %17) #20
  %46 = tail call fastcc ptr @gimple_expr_type(ptr noundef %17) #20
  %47 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %46, ptr noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %51

48:                                               ; preds = %39
  %49 = tail call fastcc ptr @expand_scalar_variables_call(ptr noundef %17, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %51

50:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 833, ptr noundef nonnull @.str.1) #19
  br label %51

51:                                               ; preds = %50, %48, %42, %37, %30, %25, %12
  %52 = phi ptr [ %14, %12 ], [ %26, %25 ], [ %31, %30 ], [ %18, %50 ], [ %49, %48 ], [ %47, %42 ], [ %38, %37 ]
  ret ptr %52
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_parameter(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #16 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #20, !range !25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %12

8:                                                ; preds = %12
  %9 = add nuw nsw i32 %13, 1
  %10 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %3) #20, !range !25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !llvm.loop !186

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !5
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %8, %2
  %17 = phi i8 [ 0, %2 ], [ 0, %8 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_iv(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #20, !range !118
  %5 = icmp eq i32 %4, 16
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !185
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !118
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !118
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !185
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #19
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !5
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @expand_scalar_variables_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %7 = tail call fastcc ptr @VEC_tree_gc_alloc(i32 noundef %6) #20
  %8 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %12 = icmp sgt i32 %6, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %5, %13
  %14 = phi i32 [ %25, %13 ], [ 0, %5 ]
  %15 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %14) #20
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = tail call ptr @create_tmp_var(ptr noundef %17, ptr noundef nonnull @.str.2) #19
  %19 = load i64, ptr %15, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %17, ptr noundef nonnull %15, i32 noundef %21, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  %23 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %17, ptr noundef %18, ptr noundef %22) #19
  %24 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %23, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %7, ptr noundef %24) #20
  %25 = add nuw nsw i32 %14, 1
  %26 = icmp eq i32 %25, %6
  br i1 %26, label %27, label %13, !llvm.loop !187

27:                                               ; preds = %13, %5
  %28 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = tail call ptr @create_tmp_var(ptr noundef %30, ptr noundef nonnull @.str.2) #19
  %32 = tail call ptr @build_call_vec(ptr noundef %10, ptr noundef %11, ptr noundef %7) #19
  %33 = tail call ptr @gimple_build_call_from_tree(ptr noundef %32) #19
  %34 = tail call fastcc ptr @make_ssa_name(ptr noundef %31, ptr noundef %33) #20
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %33, ptr noundef %34) #20
  tail call void @gsi_insert_before(ptr noundef %4, ptr noundef %33, i32 noundef 1) #19
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !26
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !118
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_gc_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !82
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !82
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @build_call_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_call_from_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rename_variables_in_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  %6 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %0) #20
  %7 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %3, %51
  %10 = phi ptr [ %52, %51 ], [ %6, %3 ]
  %11 = call fastcc ptr @get_use_from_ptr(ptr noundef %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = call fastcc ptr @get_rename(ptr noundef %1, ptr noundef nonnull %11) #20
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %51, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i64, ptr %16, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %11) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %28, %18
  %32 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %0) #20, !range !26
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #20
  br label %50

38:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %50

39:                                               ; preds = %31
  %40 = call ptr @create_tmp_var(ptr noundef %20, ptr noundef nonnull @.str.2) #19
  br i1 %23, label %43, label %41

41:                                               ; preds = %39
  %42 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef nonnull %16) #19
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi ptr [ %42, %41 ], [ %16, %39 ]
  %45 = call ptr @build2_stat(i32 noundef 53, ptr noundef %20, ptr noundef %40, ptr noundef %44) #19
  %46 = call ptr @force_gimple_operand(ptr noundef %45, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #19
  %47 = load ptr, ptr %5, align 8, !tbaa !5
  call void @gsi_insert_seq_before(ptr noundef %2, ptr noundef %47, i32 noundef 1) #19
  br label %48

48:                                               ; preds = %43, %28, %24
  %49 = phi ptr [ %46, %43 ], [ %16, %28 ], [ %16, %24 ]
  call void @replace_exp(ptr noundef %10, ptr noundef %49) #19
  br label %51

50:                                               ; preds = %37, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %55

51:                                               ; preds = %48, %9, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  %52 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #20
  %53 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %9, label %55, !llvm.loop !188

55:                                               ; preds = %51, %3, %50
  call fastcc void @update_stmt(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @if_region_entry(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { cold optsize }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"rename_map_elt_s", !6, i64 0, !6, i64 8}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !6, i64 8}
!13 = !{!"ivtype_map_elt_s", !6, i64 0, !6, i64 8}
!14 = !{!15, !6, i64 8}
!15 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !6, i64 128, !16, i64 136, !16, i64 137, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 138, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139, !16, i64 139}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !6, i64 0}
!18 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !16, i64 24, !16, i64 28, !16, i64 32, !6, i64 40, !16, i64 48, !7, i64 52, !7, i64 60, !16, i64 68, !16, i64 72}
!19 = !{!20, !6, i64 56}
!20 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !21, i64 72, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96}
!21 = !{!"long", !7, i64 0}
!22 = !{!18, !6, i64 8}
!23 = !{!24, !6, i64 32}
!24 = !{!"sese_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40}
!25 = !{i32 0, i32 2}
!26 = !{i8 0, i8 2}
!27 = !{!20, !6, i64 24}
!28 = !{!29, !6, i64 8}
!29 = !{!"loop", !16, i64 0, !16, i64 4, !6, i64 8, !6, i64 16, !30, i64 24, !16, i64 32, !16, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !31, i64 80, !31, i64 96, !7, i64 112, !7, i64 113, !16, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!30 = !{!"lpt_decision", !16, i64 0, !16, i64 4}
!31 = !{!"", !21, i64 0, !21, i64 8}
!32 = !{!29, !6, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!29, !16, i64 0}
!36 = distinct !{!36, !34}
!37 = !{!24, !6, i64 0}
!38 = !{!39, !6, i64 8}
!39 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !21, i64 56}
!40 = !{!24, !6, i64 8}
!41 = !{!24, !6, i64 24}
!42 = !{!43, !16, i64 0}
!43 = !{!"VEC_loop_p_base", !16, i64 0, !16, i64 4, !7, i64 8}
!44 = !{!24, !7, i64 40}
!45 = !{!24, !6, i64 16}
!46 = !{!15, !6, i64 24}
!47 = !{!48, !6, i64 16}
!48 = !{!"gimple_df", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !49, i64 32, !49, i64 48, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !16, i64 96, !50, i64 104}
!49 = !{!"pt_solution", !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !6, i64 8}
!50 = !{!"ssa_operands", !6, i64 0, !16, i64 8, !16, i64 12, !7, i64 16, !6, i64 24, !6, i64 32}
!51 = !{!16, !16, i64 0}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !34}
!54 = distinct !{!54, !34}
!55 = !{!56, !6, i64 0}
!56 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !16, i64 16, !6, i64 24}
!57 = !{!58, !6, i64 0}
!58 = !{!"", !6, i64 0, !6, i64 8, !16, i64 16, !21, i64 24}
!59 = !{!58, !6, i64 8}
!60 = !{!61, !16, i64 16}
!61 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !16, i64 16, !7, i64 24}
!62 = !{!58, !16, i64 16}
!63 = !{!21, !21, i64 0}
!64 = !{!58, !21, i64 24}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = !{!61, !6, i64 0}
!68 = !{!10, !6, i64 8}
!69 = !{!29, !6, i64 72}
!70 = distinct !{!70, !34}
!71 = !{!72, !16, i64 8}
!72 = !{!"", !6, i64 0, !16, i64 8}
!73 = !{!15, !6, i64 32}
!74 = !{!72, !6, i64 0}
!75 = !{!76, !6, i64 24}
!76 = !{!"loops", !16, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!77 = !{!29, !6, i64 48}
!78 = !{!29, !6, i64 56}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
!82 = !{!83, !16, i64 0}
!83 = !{!"VEC_tree_base", !16, i64 0, !16, i64 4, !7, i64 8}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !34}
!87 = !{!88, !6, i64 0}
!88 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!89 = !{!90, !6, i64 0}
!90 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!91 = !{!18, !16, i64 32}
!92 = !{!93, !6, i64 0}
!93 = !{!"simple_bitmap_def", !6, i64 0, !16, i64 8, !16, i64 12, !7, i64 16}
!94 = distinct !{!94, !34}
!95 = !{!20, !6, i64 0}
!96 = !{!97, !6, i64 24}
!97 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!98 = !{!90, !6, i64 16}
!99 = !{i64 0, i64 4, !51, i64 8, i64 8, !5}
!100 = !{i64 0, i64 8, !5}
!101 = !{!39, !16, i64 48}
!102 = distinct !{!102, !34}
!103 = !{!104, !16, i64 0}
!104 = !{!"", !16, i64 0, !6, i64 8}
!105 = distinct !{!105, !34}
!106 = !{!107, !6, i64 0}
!107 = !{!"alep", !6, i64 0, !6, i64 8}
!108 = !{!107, !6, i64 8}
!109 = distinct !{!109, !34}
!110 = !{!111, !16, i64 0}
!111 = !{!"VEC_rename_map_elt_base", !16, i64 0, !16, i64 4, !7, i64 8}
!112 = !{!113, !6, i64 0}
!113 = !{!"igp", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!114 = !{!113, !6, i64 8}
!115 = !{!113, !6, i64 16}
!116 = !{!113, !6, i64 24}
!117 = !{!20, !6, i64 8}
!118 = !{i32 0, i32 256}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !34}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !34}
!124 = !{!29, !6, i64 40}
!125 = !{!39, !6, i64 0}
!126 = !{!76, !6, i64 16}
!127 = !{!128, !6, i64 16}
!128 = !{!"ifsese_s", !6, i64 0, !6, i64 8, !6, i64 16}
!129 = !{!130, !6, i64 0}
!130 = !{!"loop_exit", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!131 = !{!29, !6, i64 128}
!132 = !{!130, !6, i64 16}
!133 = !{!128, !6, i64 0}
!134 = !{!128, !6, i64 8}
!135 = distinct !{!135, !34}
!136 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!137 = !{!88, !6, i64 8}
!138 = !{!88, !6, i64 16}
!139 = !{!13, !6, i64 0}
!140 = !{!43, !16, i64 4}
!141 = !{!39, !16, i64 44}
!142 = distinct !{!142, !34}
!143 = distinct !{!143, !34}
!144 = distinct !{!144, !34}
!145 = distinct !{!145, !34}
!146 = distinct !{!146, !34}
!147 = distinct !{!147, !34}
!148 = !{!149, !16, i64 4}
!149 = !{!"ssa_operand_iterator_d", !7, i64 0, !16, i64 4, !6, i64 8, !6, i64 16, !16, i64 24, !16, i64 28, !6, i64 32}
!150 = !{!149, !7, i64 0}
!151 = !{!149, !6, i64 16}
!152 = !{!153, !6, i64 0}
!153 = !{!"use_optype_d", !6, i64 0, !97, i64 8}
!154 = !{!149, !16, i64 24}
!155 = !{!149, !16, i64 28}
!156 = !{!149, !6, i64 32}
!157 = !{!20, !16, i64 96}
!158 = !{!159, !6, i64 0}
!159 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!160 = !{!161, !6, i64 0}
!161 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!162 = !{!149, !6, i64 8}
!163 = !{!164, !6, i64 0}
!164 = !{!"def_optype_d", !6, i64 0, !6, i64 8}
!165 = !{!76, !6, i64 8}
!166 = !{!167, !16, i64 0}
!167 = !{!"VEC_int_base", !16, i64 0, !16, i64 4, !7, i64 8}
!168 = !{!20, !16, i64 80}
!169 = distinct !{!169, !34}
!170 = !{!153, !6, i64 32}
!171 = !{!97, !6, i64 0}
!172 = !{!97, !6, i64 8}
!173 = !{!174, !16, i64 0}
!174 = !{!"VEC_edge_base", !16, i64 0, !16, i64 4, !7, i64 8}
!175 = distinct !{!175, !34}
!176 = distinct !{!176, !34}
!177 = !{!178, !6, i64 8}
!178 = !{!"immediate_use_iterator_d", !6, i64 0, !6, i64 8, !97, i64 16, !6, i64 48}
!179 = !{!178, !6, i64 0}
!180 = !{!111, !16, i64 4}
!181 = !{!48, !6, i64 24}
!182 = !{!164, !6, i64 8}
!183 = distinct !{!183, !34}
!184 = distinct !{!184, !34}
!185 = !{i32 0, i32 65536}
!186 = distinct !{!186, !34}
!187 = distinct !{!187, !34}
!188 = distinct !{!188, !34}
!189 = !{!161, !6, i64 8}
