; ModuleID = 'tree-loop-distribution.c'
source_filename = "tree-loop-distribution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.loop_iterator = type { ptr, i32 }
%struct.VEC_bitmap_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.rdg_vertex = type { ptr, i8, i8 }
%struct.rdg_component = type { i32, ptr }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.VEC_rdgc_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"ldist\00", align 1
@pass_loop_distribution = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_loop_distribution, ptr @tree_loop_distribution, ptr null, ptr null, i32 0, i32 95, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8
@flag_tree_loop_distribution = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Loop %d distributed: split to %d loops.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Loop %d is the same.\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"FIXME: Loop %d not distributed: it has more than two basic blocks.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"FIXME: Loop %d not distributed: failed to build the RDG.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ldist asked to generate code for vertex %d\0A\00", align 1
@remaining_stmts = internal unnamed_addr global ptr null, align 8
@upstream_mem_writes = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"ldist useful partition:\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.11 = private unnamed_addr constant [23 x i8] c"generated memset zero\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"tree-loop-distribution.c\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rdg_partitions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call fastcc void @dump_rdg_partitions(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_rdg_partitions(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #20, !range !9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !5
  tail call void @debug_bitmap_file(ptr noundef %0, ptr noundef %8) #22
  %9 = add nuw nsw i32 %7, 1
  %10 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %3) #20, !range !9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !10

12:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_loop_distribution() #1 {
  %1 = load i32, ptr @flag_tree_loop_distribution, align 4, !tbaa !12
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_loop_distribution() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.loop_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %0, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = call fastcc ptr @VEC_gimple_heap_alloc() #20
  store ptr %8, ptr %3, align 8, !tbaa !5
  call void @stores_from_loop(ptr noundef nonnull %7, ptr noundef nonnull %3) #22
  call void @remove_similar_memory_refs(ptr noundef nonnull %3) #22
  %9 = load ptr, ptr %3, align 8, !tbaa !5
  %10 = call fastcc i32 @distribute_loop(ptr noundef nonnull %7, ptr noundef %9) #20
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %10, 1
  %19 = load i32, ptr %7, align 8, !tbaa !14
  br i1 %18, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %10) #20
  br label %24

22:                                               ; preds = %17
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.2, i32 noundef %19) #20
  br label %24

24:                                               ; preds = %20, %22, %13, %6
  call void @verify_loop_structure() #22
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %25 = load ptr, ptr %1, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !19

27:                                               ; preds = %24, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_bitmap_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !20
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare void @debug_bitmap_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !26
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !26
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !14
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !26
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #20
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !31

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #22
  ret ptr %1
}

; Function Attrs: optsize
declare void @stores_from_loop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_similar_memory_refs(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @distribute_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !32
  %7 = icmp ugt i32 %6, 2
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 8, !tbaa !14
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, i32 noundef %16) #20
  br label %66

18:                                               ; preds = %2
  %19 = tail call ptr @build_rdg(ptr noundef nonnull %0) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %66, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %0, align 8, !tbaa !14
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.4, i32 noundef %29) #20
  br label %66

31:                                               ; preds = %18
  %32 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 3) #20
  store ptr %32, ptr %4, align 8, !tbaa !5
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @dump_rdg(ptr noundef nonnull %33, ptr noundef nonnull %19) #22
  br label %40

40:                                               ; preds = %39, %35, %31
  %41 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #20, !range !9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %40, %57
  %44 = phi i32 [ %58, %57 ], [ 0, %40 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !5
  %46 = tail call i32 @rdg_vertex_for_stmt(ptr noundef nonnull %19, ptr noundef %45) #22
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %46) #20
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.5, i32 noundef %46) #20
  br label %57

57:                                               ; preds = %48, %51, %55, %43
  %58 = add i32 %44, 1
  %59 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %1, i32 noundef %58, ptr noundef nonnull %3) #20, !range !9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %43, !llvm.loop !33

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8, !tbaa !5
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi ptr [ %62, %61 ], [ %32, %40 ]
  %65 = tail call fastcc i32 @ldist_gen(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %64) #20
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %4) #20
  tail call void @free_rdg(ptr noundef nonnull %19) #22
  br label %66

66:                                               ; preds = %21, %24, %28, %8, %11, %15, %63
  %67 = phi i32 [ %65, %63 ], [ 0, %15 ], [ 0, %11 ], [ 0, %8 ], [ 0, %28 ], [ 0, %24 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %67
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @verify_loop_structure() local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
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
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !22
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !26
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #20, !range !9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !22
  %13 = load i32, ptr %3, align 4, !tbaa !12
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #20
  store ptr %14, ptr %1, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !34

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #20
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #7 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #20
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !36
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !36
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !38
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

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !39
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_rdg(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_rdg(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !41
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @rdg_vertex_for_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ldist_gen(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %9 = tail call fastcc ptr @VEC_rdgc_heap_alloc() #20
  store ptr %9, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %10 = tail call fastcc ptr @VEC_bitmap_heap_alloc() #20
  store ptr %10, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 3) #20
  store ptr %11, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %13, ptr @remaining_stmts, align 8, !tbaa !5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %14, ptr @upstream_mem_writes, align 8, !tbaa !5
  %15 = load i32, ptr %1, align 8, !tbaa !43
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %44
  %20 = phi i64 [ 0, %17 ], [ %45, %44 ]
  %21 = load ptr, ptr @remaining_stmts, align 8, !tbaa !5
  %22 = trunc i64 %20 to i32
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %22) #22
  %24 = load ptr, ptr %18, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.vertex, ptr %24, i64 %20, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.rdg_vertex, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 8, !tbaa !48
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  %31 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %8) #20, !range !9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %37

33:                                               ; preds = %37
  %34 = add i32 %38, 1
  %35 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %2, i32 noundef %34, ptr noundef nonnull %8) #20, !range !9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37, !llvm.loop !50

37:                                               ; preds = %30, %33
  %38 = phi i32 [ %34, %33 ], [ 0, %30 ]
  %39 = load i32, ptr %8, align 4, !tbaa !12
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %20, %40
  br i1 %41, label %43, label %33

42:                                               ; preds = %33, %30
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %6, i32 noundef %22) #20
  br label %43

43:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  br label %44

44:                                               ; preds = %19, %43
  %45 = add nuw nsw i64 %20, 1
  %46 = load i32, ptr %1, align 8, !tbaa !43
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %19, label %49, !llvm.loop !51

49:                                               ; preds = %44, %3
  tail call fastcc void @mark_nodes_having_upstream_mem_writes(ptr noundef nonnull %1) #20
  call fastcc void @rdg_build_components(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4) #20
  %50 = load ptr, ptr %4, align 8, !tbaa !5
  call fastcc void @rdg_build_partitions(ptr noundef nonnull %1, ptr noundef %50, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %12) #20
  tail call void @bitmap_obstack_free(ptr noundef %12) #22
  %51 = load ptr, ptr %5, align 8
  %52 = tail call fastcc i32 @VEC_bitmap_base_length(ptr noundef %51) #20
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %82, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @partition_contains_all_rw(ptr noundef nonnull %1, ptr noundef %51) #20, !range !52
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call fastcc void @dump_rdg_partitions(ptr noundef nonnull %58, ptr noundef %51) #20
  br label %65

65:                                               ; preds = %64, %60, %57
  %66 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %51, i32 noundef 0, ptr noundef nonnull %7) #20, !range !9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = add nsw i32 %52, -1
  br label %74

70:                                               ; preds = %74
  %71 = add nuw nsw i32 %75, 1
  %72 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %51, i32 noundef %71, ptr noundef nonnull %7) #20, !range !9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74, !llvm.loop !53

74:                                               ; preds = %68, %70
  %75 = phi i32 [ 0, %68 ], [ %71, %70 ]
  %76 = load ptr, ptr %7, align 8, !tbaa !5
  %77 = icmp slt i32 %75, %69
  %78 = zext i1 %77 to i8
  %79 = tail call fastcc zeroext i8 @generate_code_for_partition(ptr noundef %0, ptr noundef %76, i8 noundef zeroext %78) #20, !range !52
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %70

81:                                               ; preds = %70, %65
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #22
  tail call void @update_ssa(i32 noundef 18432) #22
  br label %82

82:                                               ; preds = %74, %49, %54, %81
  %83 = load ptr, ptr @remaining_stmts, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %83) #22
  store ptr null, ptr @remaining_stmts, align 8, !tbaa !5
  %84 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %84) #22
  store ptr null, ptr @upstream_mem_writes, align 8, !tbaa !5
  %85 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %51, i32 noundef 0, ptr noundef nonnull %7) #20, !range !9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82, %87
  %88 = phi i32 [ %90, %87 ], [ 0, %82 ]
  %89 = load ptr, ptr %7, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %89) #22
  store ptr null, ptr %7, align 8, !tbaa !5
  %90 = add nuw nsw i32 %88, 1
  %91 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %51, i32 noundef %90, ptr noundef nonnull %7) #20, !range !9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %87, !llvm.loop !54

93:                                               ; preds = %87, %82
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %6) #20
  call fastcc void @VEC_bitmap_heap_free(ptr noundef nonnull %5) #20
  tail call fastcc void @free_rdg_components(ptr noundef %50) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i32 %52
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
declare void @free_rdg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #22
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = load i32, ptr %0, align 4, !tbaa !36
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_rdgc_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #22
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

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
  %11 = load i32, ptr %10, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !12
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_nodes_having_upstream_mem_writes(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %6 = load i32, ptr %0, align 4, !tbaa !12
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %2, align 4, !tbaa !12
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %53
  %12 = phi i32 [ %7, %9 ], [ %55, %53 ]
  %13 = call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %12) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %16 = call fastcc ptr @VEC_int_heap_alloc(i32 noundef 3) #20
  store ptr %16, ptr %4, align 8, !tbaa !5
  %17 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef null) #22
  %18 = load ptr, ptr %4, align 8
  %19 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %3) #20, !range !9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %15, %47
  %22 = phi i32 [ %48, %47 ], [ 0, %15 ]
  %23 = load i32, ptr %3, align 4, !tbaa !12
  %24 = call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %23) #22
  %28 = load ptr, ptr %10, align 8, !tbaa !45
  %29 = sext i32 %23 to i64
  %30 = getelementptr inbounds %struct.vertex, ptr %28, i64 %29, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.rdg_vertex, ptr %31, i64 0, i32 1
  %33 = load i8, ptr %32, align 8, !tbaa !48
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.vertex, ptr %28, i64 %29
  %37 = call fastcc zeroext i8 @predecessor_has_mem_write(ptr noundef nonnull %0, ptr noundef %36) #20, !range !52
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %10, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.vertex, ptr %40, i64 %29
  %42 = call fastcc ptr @has_anti_dependence(ptr noundef %41) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %35, %26
  %45 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !5
  %46 = call zeroext i8 @bitmap_set_bit(ptr noundef %45, i32 noundef %23) #22
  br label %47

47:                                               ; preds = %39, %44, %21
  %48 = add i32 %22, 1
  %49 = load ptr, ptr %4, align 8
  %50 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %49, i32 noundef %48, ptr noundef nonnull %3) #20, !range !9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %21, !llvm.loop !56

52:                                               ; preds = %47, %15
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %53

53:                                               ; preds = %11, %52
  %54 = load i32, ptr %2, align 4, !tbaa !12
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %2, align 4, !tbaa !12
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %11, label %57, !llvm.loop !57

57:                                               ; preds = %53, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_build_components(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %6 = tail call i32 @graphds_scc(ptr noundef %0, ptr noundef null) #22
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr @xmalloc(i64 noundef %8) #22
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  br label %18

13:                                               ; preds = %18, %3
  %14 = load i32, ptr %0, align 8, !tbaa !43
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %29

18:                                               ; preds = %11, %18
  %19 = phi i64 [ 0, %11 ], [ %22, %18 ]
  %20 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 3) #20
  %21 = getelementptr inbounds ptr, ptr %9, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !5
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %13, label %18, !llvm.loop !58

24:                                               ; preds = %29, %13
  %25 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #20, !range !9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %44

29:                                               ; preds = %16, %29
  %30 = phi i64 [ 0, %16 ], [ %37, %29 ]
  %31 = load ptr, ptr %17, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.vertex, ptr %31, i64 %30, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %9, i64 %34
  %36 = trunc i64 %30 to i32
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %35, i32 noundef %36) #20
  %37 = add nuw nsw i64 %30, 1
  %38 = load i32, ptr %0, align 8, !tbaa !43
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %29, label %24, !llvm.loop !60

41:                                               ; preds = %60, %24
  br i1 %10, label %42, label %74

42:                                               ; preds = %41
  %43 = zext nneg i32 %6 to i64
  br label %64

44:                                               ; preds = %27, %60
  %45 = phi i32 [ 0, %27 ], [ %61, %60 ]
  %46 = load ptr, ptr %28, align 8, !tbaa !45
  %47 = load i32, ptr %4, align 4, !tbaa !12
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vertex, ptr %46, i64 %48, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !59
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %50) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #22
  store i32 %50, ptr %54, align 8, !tbaa !61
  %55 = sext i32 %50 to i64
  %56 = getelementptr inbounds ptr, ptr %9, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.rdg_component, ptr %54, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !63
  tail call fastcc void @VEC_rdgc_heap_safe_push(ptr noundef %2, ptr noundef nonnull %54) #20
  %59 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %50) #22
  br label %60

60:                                               ; preds = %53, %44
  %61 = add nuw nsw i32 %45, 1
  %62 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %1, i32 noundef %61, ptr noundef nonnull %4) #20, !range !9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %41, label %44, !llvm.loop !64

64:                                               ; preds = %42, %71
  %65 = phi i64 [ 0, %42 ], [ %72, %71 ]
  %66 = trunc i64 %65 to i32
  %67 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %66) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds ptr, ptr %9, i64 %65
  tail call fastcc void @VEC_int_heap_free(ptr noundef %70) #20
  br label %71

71:                                               ; preds = %64, %69
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %43
  br i1 %73, label %74, label %64, !llvm.loop !65

74:                                               ; preds = %71, %41
  tail call void @free(ptr noundef %9) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_build_partitions(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %11 = call fastcc i32 @VEC_rdgc_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #20, !range !9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %44, %5
  %14 = phi ptr [ %10, %5 ], [ %45, %44 ]
  %15 = load i32, ptr %0, align 8, !tbaa !43
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %49, label %61

17:                                               ; preds = %5, %44
  %18 = phi i32 [ %46, %44 ], [ 0, %5 ]
  %19 = phi ptr [ %45, %44 ], [ %10, %5 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #21
  store i8 0, ptr %7, align 1, !tbaa !66
  %20 = load ptr, ptr %6, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.rdg_component, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22) #20
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %17
  %27 = call fastcc ptr @build_rdg_partition_for_component(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %7, ptr noundef %2) #20
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %19, ptr noundef %27) #22
  %29 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %4, ptr noundef %27) #22
  tail call void @bitmap_obstack_free(ptr noundef %27) #22
  %30 = load i8, ptr %7, align 1, !tbaa !66
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr nonnull %33)
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @bitmap_print(ptr noundef %41, ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #22
  br label %42

42:                                               ; preds = %39, %35, %32
  tail call fastcc void @VEC_bitmap_heap_safe_push(ptr noundef %3, ptr noundef %19) #20
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  br label %44

44:                                               ; preds = %26, %42, %17
  %45 = phi ptr [ %19, %17 ], [ %43, %42 ], [ %19, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #21
  %46 = add nuw nsw i32 %18, 1
  %47 = call fastcc i32 @VEC_rdgc_base_iterate(ptr noundef %1, i32 noundef %46, ptr noundef nonnull %6) #20, !range !9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %13, label %17, !llvm.loop !67

49:                                               ; preds = %13, %57
  %50 = phi i32 [ %58, %57 ], [ 0, %13 ]
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %50) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = tail call zeroext i8 @rdg_defs_used_in_other_loops_p(ptr noundef nonnull %0, i32 noundef %50) #22
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %2, i32 noundef %50) #20
  br label %57

57:                                               ; preds = %49, %53, %56
  %58 = add nuw nsw i32 %50, 1
  %59 = load i32, ptr %0, align 8, !tbaa !43
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %49, label %61, !llvm.loop !68

61:                                               ; preds = %57, %13
  %62 = load ptr, ptr %2, align 8, !tbaa !5
  %63 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %62) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %66 = tail call fastcc ptr @VEC_rdgc_heap_alloc() #20
  store ptr %66, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %67 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 3) #20
  store ptr %67, ptr %9, align 8, !tbaa !5
  %68 = load ptr, ptr %2, align 8, !tbaa !5
  call fastcc void @rdg_build_components(ptr noundef nonnull %0, ptr noundef %68, ptr noundef nonnull %8) #20
  %69 = load ptr, ptr %8, align 8, !tbaa !5
  call fastcc void @rdg_build_partitions(ptr noundef nonnull %0, ptr noundef %69, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4) #20
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %9) #20
  tail call fastcc void @free_rdg_components(ptr noundef %69) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %70

70:                                               ; preds = %65, %61
  %71 = tail call i64 @bitmap_count_bits(ptr noundef %14) #22
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call fastcc void @VEC_bitmap_heap_safe_push(ptr noundef %3, ptr noundef %14) #20
  br label %75

74:                                               ; preds = %70
  tail call void @bitmap_obstack_free(ptr noundef %14) #22
  br label %75

75:                                               ; preds = %74, %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !20
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @partition_contains_all_rw(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = tail call fastcc i32 @number_of_rw_in_rdg(ptr noundef %0) #20
  %5 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #20, !range !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %11

7:                                                ; preds = %11
  %8 = add nuw nsw i32 %12, 1
  %9 = call fastcc i32 @VEC_bitmap_base_iterate(ptr noundef %1, i32 noundef %8, ptr noundef nonnull %3) #20, !range !9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !llvm.loop !69

11:                                               ; preds = %2, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !5
  %14 = tail call fastcc i32 @number_of_rw_in_partition(ptr noundef %0, ptr noundef %13) #20
  %15 = icmp eq i32 %4, %14
  br i1 %15, label %16, label %7

16:                                               ; preds = %11, %7, %2
  %17 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @generate_code_for_partition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @generate_builtin(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @generate_loops_for_partition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #20, !range !52
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8 [ %7, %6 ], [ 1, %3 ]
  ret i8 %9
}

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
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
define internal fastcc void @free_rdg_components(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = call fastcc i32 @VEC_rdgc_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #20, !range !9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rdg_component, ptr %7, i64 0, i32 1
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %8) #20
  tail call void @free(ptr noundef %7) #20
  %9 = add nuw nsw i32 %6, 1
  %10 = call fastcc i32 @VEC_rdgc_base_iterate(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %2) #20, !range !9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !llvm.loop !70

12:                                               ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @graphds_dfs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @predecessor_has_mem_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %3, %5 ], [ %24, %22 ]
  %9 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !5
  %10 = load i32, ptr %8, align 8, !tbaa !72
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %10) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %6, align 8, !tbaa !45
  %15 = load i32, ptr %8, align 8, !tbaa !72
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.vertex, ptr %14, i64 %16, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.rdg_vertex, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %7, %13
  %23 = getelementptr inbounds %struct.graph_edge, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !75

26:                                               ; preds = %22, %13, %2
  %27 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 1, %13 ]
  ret i8 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @has_anti_dependence(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.vertex, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %13, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.graph_edge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = icmp eq i32 %9, 97
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.graph_edge, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !81

15:                                               ; preds = %11, %5, %1
  %16 = phi ptr [ null, %1 ], [ null, %11 ], [ %6, %5 ]
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @graphds_scc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rdgc_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rdgc_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_rdgc_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rdgc_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_rdgc_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #22
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rdgc_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !82
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !82
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rdgc_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !84
  %6 = load i32, ptr %0, align 8, !tbaa !82
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rdgc_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !82
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rdgc_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_rdg_partition_for_component(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %9 = getelementptr inbounds %struct.rdg_component, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %5) #20, !range !9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4, %19
  %14 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %15 = load i32, ptr %5, align 4, !tbaa !12
  %16 = tail call fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %8, i32 noundef %15) #20, !range !52
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %15, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %2) #20
  br label %19

19:                                               ; preds = %13, %18
  %20 = add nuw nsw i32 %14, 1
  %21 = load ptr, ptr %9, align 8, !tbaa !63
  %22 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %5) #20, !range !9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !85

24:                                               ; preds = %19, %4
  tail call fastcc void @rdg_flag_similar_memory_accesses(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %3) #20
  tail call fastcc void @rdg_flag_loop_exits(ptr noundef %0, ptr noundef %7, ptr noundef %6, ptr noundef %8, ptr noundef %2) #20
  tail call void @bitmap_obstack_free(ptr noundef %8) #22
  tail call void @bitmap_obstack_free(ptr noundef %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_bitmap_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_bitmap_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @rdg_defs_used_in_other_loops_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !36
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %1) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load ptr, ptr @remaining_stmts, align 8, !tbaa !5
  %7 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %1) #22
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i8 [ 1, %2 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store i32 %1, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %10 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 3) #20
  store ptr %10, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  %11 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %1) #22
  tail call fastcc void @rdg_flag_uses(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %12 = load ptr, ptr @remaining_stmts, align 8, !tbaa !5
  %13 = call i32 @graphds_dfs(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %12) #22
  %14 = load i32, ptr %7, align 4, !tbaa !12
  call fastcc void @rdg_flag_vertex(ptr noundef %0, i32 noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %5) #20
  %15 = load ptr, ptr %8, align 8
  %16 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %9) #20, !range !9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %6, %24
  %19 = phi i32 [ %25, %24 ], [ 0, %6 ]
  %20 = load i32, ptr %9, align 4, !tbaa !12
  %21 = call fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %4, i32 noundef %20) #20, !range !52
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %20, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %24

24:                                               ; preds = %18, %23
  %25 = add i32 %19, 1
  %26 = load ptr, ptr %8, align 8
  %27 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %26, i32 noundef %25, ptr noundef nonnull %9) #20, !range !9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !86

29:                                               ; preds = %24, %6
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_flag_similar_memory_accesses(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %7) #20
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %9, ptr noundef nonnull %7) #20, !range !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %95, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %12, %92
  %15 = load ptr, ptr %13, align 8, !tbaa !45
  %16 = load i32, ptr %7, align 4, !tbaa !12
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vertex, ptr %15, i64 %17, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.rdg_vertex, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !48
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.rdg_vertex, ptr %19, i64 0, i32 2
  %25 = load i8, ptr %24, align 1, !tbaa !87
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %92, label %27

27:                                               ; preds = %23, %14
  %28 = load i32, ptr %0, align 8, !tbaa !43
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %27, %70
  %31 = phi i64 [ %71, %70 ], [ 0, %27 ]
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %32) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load ptr, ptr %13, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.vertex, ptr %36, i64 %31, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.rdg_vertex, ptr %38, i64 0, i32 1
  %40 = load i8, ptr %39, align 8, !tbaa !48
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rdg_vertex, ptr %38, i64 0, i32 2
  %44 = load i8, ptr %43, align 1, !tbaa !87
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %42, %35
  %47 = tail call fastcc zeroext i8 @rdg_has_similar_memory_accesses(ptr noundef nonnull %0, i32 noundef %16, i32 noundef %32) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %46
  call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef nonnull %0, i32 noundef %32, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #20
  call fastcc void @rdg_flag_all_uses(ptr noundef nonnull %0, i32 noundef %32, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #20
  %50 = load ptr, ptr %13, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.vertex, ptr %50, i64 %31, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.rdg_vertex, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !48
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 8, !tbaa !5
  %58 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %57, i32 noundef 0, ptr noundef nonnull %8) #20, !range !9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %56, %66
  %61 = phi i32 [ %67, %66 ], [ 0, %56 ]
  %62 = load i32, ptr %8, align 4, !tbaa !12
  %63 = zext i32 %62 to i64
  %64 = icmp eq i64 %31, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  tail call fastcc void @VEC_int_base_unordered_remove(ptr noundef %57, i32 noundef %61) #20
  br label %70

66:                                               ; preds = %60
  %67 = add nuw nsw i32 %61, 1
  %68 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %57, i32 noundef %67, ptr noundef nonnull %8) #20, !range !9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %60, !llvm.loop !88

70:                                               ; preds = %66, %56, %30, %42, %46, %65, %49
  %71 = add nuw nsw i64 %31, 1
  %72 = load i32, ptr %0, align 8, !tbaa !43
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %30, label %75, !llvm.loop !89

75:                                               ; preds = %70
  %76 = load ptr, ptr %13, align 8, !tbaa !45
  br label %77

77:                                               ; preds = %75, %27
  %78 = phi ptr [ %76, %75 ], [ %15, %27 ]
  %79 = getelementptr inbounds %struct.vertex, ptr %78, i64 %17, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %77, %82
  %83 = phi ptr [ %87, %82 ], [ %80, %77 ]
  %84 = phi i32 [ %86, %82 ], [ 0, %77 ]
  %85 = getelementptr inbounds %struct.graph_edge, ptr %83, i64 0, i32 3
  %86 = add i32 %84, 1
  %87 = load ptr, ptr %85, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %82, !llvm.loop !90

89:                                               ; preds = %82
  %90 = icmp ugt i32 %86, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  call fastcc void @rdg_flag_all_uses(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #20
  br label %92

92:                                               ; preds = %77, %23, %91, %89
  call fastcc void @bmp_iter_next(ptr noundef nonnull %9, ptr noundef nonnull %7) #20
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %9, ptr noundef nonnull %7) #20, !range !52
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %14, !llvm.loop !91

95:                                               ; preds = %92, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_flag_loop_exits(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %9 = tail call fastcc ptr @VEC_gimple_heap_alloc() #20
  store ptr %9, ptr %8, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6) #20
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %18

12:                                               ; preds = %18
  %13 = load ptr, ptr %8, align 8
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ %9, %5 ]
  %16 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %15) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %23

18:                                               ; preds = %5, %18
  %19 = load i32, ptr %6, align 4, !tbaa !12
  %20 = tail call fastcc ptr @get_loop(i32 noundef %19) #20
  call fastcc void @collect_condition_stmts(ptr noundef %20, ptr noundef nonnull %8) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !52
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %12, label %18, !llvm.loop !92

23:                                               ; preds = %14, %46
  %24 = phi ptr [ %47, %46 ], [ %15, %14 ]
  %25 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %24) #20
  %26 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %25) #22
  %27 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %28 = tail call fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %3, i32 noundef %26) #20, !range !52
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %26, ptr noundef %2, ptr noundef %27, ptr noundef %3, ptr noundef %4) #20
  br label %31

31:                                               ; preds = %30, %23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %27, ptr noundef nonnull %6) #20
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !52
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31, %41
  %35 = load i32, ptr %6, align 4, !tbaa !12
  %36 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %35) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %35) #22
  %40 = tail call fastcc ptr @get_loop(i32 noundef %35) #20
  call fastcc void @collect_condition_stmts(ptr noundef %40, ptr noundef nonnull %8) #20
  br label %41

41:                                               ; preds = %34, %38
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !52
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %34, !llvm.loop !93

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8
  br label %46

46:                                               ; preds = %44, %31
  %47 = phi ptr [ %45, %44 ], [ %24, %31 ]
  tail call void @bitmap_obstack_free(ptr noundef %27) #22
  %48 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %47) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %23, !llvm.loop !94

50:                                               ; preds = %46, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_flag_uses(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.immediate_use_iterator_d, align 8
  %8 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.vertex, ptr %9, i64 %10
  %12 = getelementptr inbounds %struct.vertex, ptr %9, i64 %10, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = tail call fastcc ptr @has_anti_dependence(ptr noundef %11) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.graph_edge, ptr %15, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !96
  %20 = tail call fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %4, i32 noundef %19) #20, !range !52
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef nonnull %0, i32 noundef %19, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %23

23:                                               ; preds = %17, %22, %6
  %24 = tail call fastcc i32 @gimple_code(ptr noundef %14) #20, !range !97
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %14) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %27) #20
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = tail call i32 @rdg_vertex_for_stmt(ptr noundef nonnull %0, ptr noundef %36) #22
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = tail call fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %4, i32 noundef %37) #20, !range !52
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef nonnull %0, i32 noundef %37, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %43

43:                                               ; preds = %29, %42, %39, %34, %26, %23
  %44 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %14) #20, !range !52
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @has_upstream_mem_writes(i32 noundef %1) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %14) #20
  %51 = tail call zeroext i8 @is_gimple_reg(ptr noundef %50) #22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #21
  %54 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %7, ptr noundef %50) #20
  %55 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %7) #20, !range !52
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53, %65
  %58 = phi ptr [ %66, %65 ], [ %54, %53 ]
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !66
  %61 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %60) #22
  %62 = tail call fastcc zeroext i8 @already_processed_vertex_p(ptr noundef %4, i32 noundef %61) #20, !range !52
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %61, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %65

65:                                               ; preds = %64, %57
  %66 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %7) #20
  %67 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %7) #20, !range !52
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %57, label %69, !llvm.loop !98

69:                                               ; preds = %65, %53
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #21
  br label %70

70:                                               ; preds = %49, %69, %46, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_flag_vertex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %1) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.vertex, ptr %10, i64 %11, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %14) #20
  %16 = load i32, ptr %15, align 8, !tbaa !14
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %16) #22
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %1) #22
  %19 = tail call fastcc zeroext i8 @rdg_cannot_recompute_vertex_p(ptr noundef %0, i32 noundef %1) #20, !range !52
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %8
  store i8 1, ptr %4, align 1, !tbaa !66
  %22 = load ptr, ptr @remaining_stmts, align 8, !tbaa !5
  %23 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %22, i32 noundef %1) #22
  br label %24

24:                                               ; preds = %8, %21, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !97
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_upstream_mem_writes(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @upstream_mem_writes, align 8, !tbaa !5
  %3 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %0) #22
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  store ptr %6, ptr %0, align 8, !tbaa !106
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !52
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  store ptr %4, ptr %0, align 8, !tbaa !106
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !52
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !97
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !97
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !107
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.10) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !97
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @rdg_cannot_recompute_vertex_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.vertex, ptr %4, i64 %5, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.rdg_vertex, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !48
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 {
  %4 = load ptr, ptr %1, align 8, !tbaa !110
  store ptr %4, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !114
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !112
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !118
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !118
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !119

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !12
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !12
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !117
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !112
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !117
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !107
  store i64 %35, ptr %3, align 8, !tbaa !118
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !12
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !12
  %40 = load i32, ptr %23, align 8, !tbaa !117
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !117
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !120

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !121
  store ptr %44, ptr %0, align 8, !tbaa !112
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !115
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !12
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !118
  store i32 %16, ptr %1, align 4, !tbaa !12
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @rdg_has_similar_memory_accesses(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.vertex, ptr %5, i64 %10, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = tail call zeroext i8 @have_similar_memory_accesses(ptr noundef %9, ptr noundef %13) #22
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rdg_flag_all_uses(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.vertex, ptr %8, i64 %9, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %6, %22
  %14 = phi ptr [ %24, %22 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.graph_edge, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !96
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, ptr %15, align 4, !tbaa !96
  tail call fastcc void @rdg_flag_vertex_and_dependent(ptr noundef %0, i32 noundef %20, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %21 = load i32, ptr %15, align 4, !tbaa !96
  tail call fastcc void @rdg_flag_all_uses(ptr noundef %0, i32 noundef %21, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  br label %22

22:                                               ; preds = %13, %19
  %23 = getelementptr inbounds %struct.graph_edge, ptr %14, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %13, !llvm.loop !122

26:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !36
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 4, !tbaa !36
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !12
  store i32 %9, ptr %5, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !118
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !118
  %6 = load i32, ptr %1, align 4, !tbaa !12
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @have_similar_memory_accesses(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_condition_stmts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #22
  store ptr %5, ptr %4, align 8, !tbaa !5
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #20, !range !9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %15
  %9 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = tail call ptr @last_stmt(ptr noundef %11) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %1, ptr noundef nonnull %12) #20
  br label %15

15:                                               ; preds = %14, %8
  %16 = add i32 %9, 1
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef %16, ptr noundef nonnull %3) #20, !range !9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !125

19:                                               ; preds = %15, %2
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !41
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !41
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !41
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !126
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
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
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #22
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !41
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !41
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !128
  %6 = load i32, ptr %0, align 8, !tbaa !41
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_bitmap_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #22
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !20
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !20
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !129
  %6 = load i32, ptr %0, align 8, !tbaa !20
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_rw_in_rdg(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !43
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %23, %8 ]
  %10 = phi i32 [ 0, %4 ], [ %22, %8 ]
  %11 = getelementptr inbounds %struct.vertex, ptr %6, i64 %9, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.rdg_vertex, ptr %12, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !48
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add nsw i32 %10, %16
  %18 = getelementptr inbounds %struct.rdg_vertex, ptr %12, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !87
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %17, %21
  %23 = add nuw nsw i64 %9, 1
  %24 = icmp eq i64 %23, %7
  br i1 %24, label %25, label %8, !llvm.loop !130

25:                                               ; preds = %8, %1
  %26 = phi i32 [ 0, %1 ], [ %22, %8 ]
  ret i32 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_rw_in_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #20
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ 0, %7 ], [ %25, %10 ]
  %12 = load i32, ptr %3, align 4, !tbaa !12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vertex, ptr %9, i64 %13, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.rdg_vertex, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !48
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %11, %19
  %21 = getelementptr inbounds %struct.rdg_vertex, ptr %15, i64 0, i32 2
  %22 = load i8, ptr %21, align 1, !tbaa !87
  %23 = icmp ne i8 %22, 0
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %20, %24
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #20, !range !52
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %10, !llvm.loop !131

28:                                               ; preds = %10, %2
  %29 = phi i32 [ 0, %2 ], [ %25, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @generate_builtin(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %7 = tail call ptr @number_of_exit_cond_executions(ptr noundef %0) #22
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @chrec_dont_know, align 8
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %116, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #22
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %114, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %17, %64
  %20 = phi i64 [ 0, %17 ], [ %68, %64 ]
  %21 = phi i32 [ 0, %17 ], [ %67, %64 ]
  %22 = phi ptr [ null, %17 ], [ %66, %64 ]
  %23 = phi ptr [ %7, %17 ], [ %65, %64 ]
  %24 = getelementptr inbounds ptr, ptr %13, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %25) #22
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19, %28
  %29 = phi i32 [ %30, %28 ], [ %21, %19 ]
  %30 = add i32 %29, 1
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %28, label %33, !llvm.loop !132

33:                                               ; preds = %28, %19
  %34 = phi i32 [ %21, %19 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %25) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %33, %59
  %38 = phi i32 [ %42, %59 ], [ %34, %33 ]
  %39 = phi ptr [ %61, %59 ], [ %22, %33 ]
  %40 = phi ptr [ %60, %59 ], [ %23, %33 ]
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %42 = add i32 %38, 1
  %43 = call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %38) #22
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %41) #20, !range !52
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = call fastcc ptr @gimple_assign_lhs(ptr noundef %41) #20
  %50 = call zeroext i8 @is_gimple_reg(ptr noundef %49) #22
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = icmp eq ptr %39, null
  br i1 %53, label %54, label %114

54:                                               ; preds = %52
  %55 = load ptr, ptr %18, align 8, !tbaa !134
  %56 = icmp eq ptr %25, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call ptr @number_of_latch_executions(ptr noundef nonnull %0) #22
  br label %59

59:                                               ; preds = %54, %57, %48, %45, %37
  %60 = phi ptr [ %40, %37 ], [ %40, %45 ], [ %40, %54 ], [ %58, %57 ], [ %40, %48 ]
  %61 = phi ptr [ %39, %37 ], [ %39, %45 ], [ %41, %54 ], [ %41, %57 ], [ %39, %48 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %62 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %37, label %64, !llvm.loop !135

64:                                               ; preds = %59, %33
  %65 = phi ptr [ %23, %33 ], [ %60, %59 ]
  %66 = phi ptr [ %22, %33 ], [ %61, %59 ]
  %67 = phi i32 [ %34, %33 ], [ %42, %59 ]
  %68 = add nuw nsw i64 %20, 1
  %69 = load i32, ptr %14, align 4, !tbaa !32
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %19, label %72, !llvm.loop !136

72:                                               ; preds = %64
  %73 = icmp eq ptr %66, null
  br i1 %73, label %114, label %74

74:                                               ; preds = %72
  %75 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %66) #20
  %76 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %66) #20
  %77 = load i64, ptr %75, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %114 [
    i16 45, label %79
    i16 47, label %79
  ]

79:                                               ; preds = %74, %74
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %80 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #22
  %81 = load ptr, ptr %80, align 8, !tbaa !123
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %81) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  %82 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %66) #20, !range !137
  %83 = icmp eq i32 %82, 23
  br i1 %83, label %84, label %114

84:                                               ; preds = %79
  %85 = call i32 @integer_zerop(ptr noundef %76) #22
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = call i32 @real_zerop(ptr noundef %76) #22
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %84, %87
  %91 = call fastcc zeroext i8 @generate_memset_zero(ptr noundef nonnull %66, ptr noundef nonnull %75, ptr noundef %65, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %92 = icmp eq i8 %91, 0
  %93 = icmp ne i8 %2, 0
  %94 = or i1 %93, %92
  br i1 %94, label %114, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %14, align 4, !tbaa !32
  %97 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #22
  %98 = load ptr, ptr %97, align 8, !tbaa !123
  %99 = call ptr @single_exit(ptr noundef nonnull %0) #22
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !138
  call fastcc void @prop_phis(ptr noundef %101) #20
  %102 = call ptr @make_edge(ptr noundef %98, ptr noundef %101, i32 noundef 1) #22
  call void @cancel_loop_tree(ptr noundef nonnull %0) #22
  %103 = icmp eq i32 %96, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %95
  %105 = zext i32 %96 to i64
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ 0, %104 ], [ %110, %106 ]
  %108 = getelementptr inbounds ptr, ptr %13, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  call void @delete_basic_block(ptr noundef %109) #22
  %110 = add nuw nsw i64 %107, 1
  %111 = icmp eq i64 %110, %105
  br i1 %111, label %112, label %106, !llvm.loop !139

112:                                              ; preds = %106, %95
  %113 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %101) #22
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %101, ptr noundef %113) #22
  br label %114

114:                                              ; preds = %52, %12, %79, %87, %74, %90, %112, %72
  %115 = phi i8 [ %91, %90 ], [ %91, %112 ], [ 0, %72 ], [ 0, %74 ], [ 0, %87 ], [ 0, %79 ], [ 0, %12 ], [ 0, %52 ]
  call void @free(ptr noundef %13) #20
  br label %116

116:                                              ; preds = %3, %114
  %117 = phi i8 [ %115, %114 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret i8 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @generate_loops_for_partition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @copy_loop_before(ptr noundef %0) #20
  %10 = tail call ptr @create_preheader(ptr noundef %9, i32 noundef 1) #22
  tail call fastcc void @create_bb_after_loop(ptr noundef %9) #20
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %9, %8 ], [ %0, %3 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %63, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %12) #22
  %16 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %14, %56
  %20 = phi i64 [ %58, %56 ], [ 0, %14 ]
  %21 = phi i32 [ %57, %56 ], [ 0, %14 ]
  %22 = getelementptr inbounds ptr, ptr %15, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %23) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19, %33
  %27 = phi i32 [ %28, %33 ], [ %21, %19 ]
  %28 = add i32 %27, 1
  %29 = call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %27) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 1) #22
  br label %33

32:                                               ; preds = %26
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  br label %33

33:                                               ; preds = %32, %31
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %26, label %36, !llvm.loop !140

36:                                               ; preds = %33, %19
  %37 = phi i32 [ %21, %19 ], [ %28, %33 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %23) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36, %52
  %41 = phi i32 [ %53, %52 ], [ %37, %36 ]
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %43 = call fastcc i32 @gimple_code(ptr noundef %42) #20, !range !97
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = add i32 %41, 1
  %47 = call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %41) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  br label %52

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %46, %45 ], [ %41, %40 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ %51, %50 ], [ %46, %49 ]
  %54 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %40, label %56, !llvm.loop !141

56:                                               ; preds = %52, %36
  %57 = phi i32 [ %37, %36 ], [ %53, %52 ]
  call void @mark_virtual_ops_in_bb(ptr noundef %23) #22
  %58 = add nuw nsw i64 %20, 1
  %59 = load i32, ptr %16, align 4, !tbaa !32
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %19, label %62, !llvm.loop !142

62:                                               ; preds = %56, %14
  call void @free(ptr noundef %15) #20
  br label %63

63:                                               ; preds = %11, %62
  %64 = phi i8 [ 1, %62 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret i8 %64
}

; Function Attrs: optsize
declare ptr @number_of_exit_cond_executions(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  store ptr %4, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @number_of_latch_executions(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !137
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !97
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

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @generate_memset_zero(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  %8 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #22
  %9 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  store ptr %0, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !155
  %11 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %8) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %15 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4
  %16 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !156
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %14, ptr noundef %17) #22
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %18, ptr noundef %22) #22
  %24 = tail call i32 @integer_zerop(ptr noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %13
  %27 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %28 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !157
  %30 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !158
  %32 = tail call ptr @size_binop_loc(i32 noundef %9, i32 noundef 63, ptr noundef %29, ptr noundef %31) #22
  %33 = tail call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %27, ptr noundef %32) #22
  %34 = load ptr, ptr %15, align 8, !tbaa !159
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = tail call ptr @fold_build2_stat_loc(i32 noundef %9, i32 noundef 66, ptr noundef %36, ptr noundef %34, ptr noundef %33) #22
  %38 = call fastcc ptr @build_size_arg_loc(i32 noundef %9, ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %5) #20
  br label %69

39:                                               ; preds = %13
  %40 = load ptr, ptr %19, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %44 = load ptr, ptr %16, align 8, !tbaa !156
  %45 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %43, ptr noundef %44) #22
  %46 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %42, ptr noundef %45) #22
  %47 = tail call i32 @integer_zerop(ptr noundef %46) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %95, label %49

49:                                               ; preds = %39
  %50 = call fastcc ptr @build_size_arg_loc(i32 noundef %9, ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %5) #20
  %51 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !157
  %53 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 4, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !158
  %55 = call ptr @size_binop_loc(i32 noundef %9, i32 noundef 63, ptr noundef %52, ptr noundef %54) #22
  %56 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %57 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %56, ptr noundef %55) #22
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %59 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %58, ptr noundef %50) #22
  %60 = call ptr @size_binop_loc(i32 noundef %9, i32 noundef 64, ptr noundef %57, ptr noundef %59) #22
  %61 = load ptr, ptr %19, align 8, !tbaa !66
  %62 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = call ptr @size_binop_loc(i32 noundef %9, i32 noundef 63, ptr noundef %60, ptr noundef %63) #22
  %65 = load ptr, ptr %15, align 8, !tbaa !159
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !66
  %68 = call ptr @fold_build2_stat_loc(i32 noundef %9, i32 noundef 66, ptr noundef %67, ptr noundef %65, ptr noundef %64) #22
  br label %69

69:                                               ; preds = %49, %26
  %70 = phi ptr [ %38, %26 ], [ %50, %49 ]
  %71 = phi ptr [ %37, %26 ], [ %68, %49 ]
  %72 = call ptr @force_gimple_operand(ptr noundef %71, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #22
  %73 = load ptr, ptr %6, align 8, !tbaa !5
  call void @gimple_seq_add_seq(ptr noundef nonnull %5, ptr noundef %73) #22
  %74 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 333), align 8, !tbaa !5
  %75 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %74) #22
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %77 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %75, i32 noundef 3, ptr noundef %72, ptr noundef %76, ptr noundef %70) #22
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %77) #22
  %78 = load ptr, ptr %5, align 8, !tbaa !5
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %78) #20
  %79 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #20, !range !52
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69, %81
  %82 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #20
  call fastcc void @update_stmt_if_modified(ptr noundef %82) #20
  call fastcc void @gsi_next(ptr noundef nonnull %7) #20
  %83 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #20, !range !52
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %81, label %85, !llvm.loop !160

85:                                               ; preds = %81, %69
  %86 = load ptr, ptr %5, align 8, !tbaa !5
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef %86, i32 noundef 2) #22
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i64 @fwrite(ptr nonnull @.str.11, i64 22, i64 1, ptr nonnull %87)
  br label %95

95:                                               ; preds = %85, %89, %93, %39, %4
  %96 = phi i8 [ 1, %93 ], [ 1, %89 ], [ 1, %85 ], [ 0, %39 ], [ 0, %4 ]
  call void @free_data_ref(ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret i8 %96
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prop_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1, %34
  %8 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %9 = call fastcc ptr @gimple_phi_result(ptr noundef %8) #20
  %10 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %8) #20
  %11 = call fastcc i32 @gimple_phi_num_args(ptr noundef %8) #20
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 335, ptr noundef nonnull @.str.10) #22
  br label %14

14:                                               ; preds = %7, %13
  %15 = call zeroext i8 @is_gimple_reg(ptr noundef %9) #22
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #21
  call fastcc void @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %9) #20
  %18 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !52
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17, %29
  %21 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %22 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !52
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %26, %24 ], [ %21, %20 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %25, ptr noundef %10) #20
  %26 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %27 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !52
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %24, label %29, !llvm.loop !161

29:                                               ; preds = %24, %20
  call fastcc void @next_imm_use_stmt(ptr noundef nonnull %3) #20
  %30 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !52
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %20, label %32, !llvm.loop !162

32:                                               ; preds = %29, %17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #21
  br label %34

33:                                               ; preds = %14
  call void @replace_uses_by(ptr noundef %9, ptr noundef %10) #22
  br label %34

34:                                               ; preds = %33, %32
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !52
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %7, label %37, !llvm.loop !163

37:                                               ; preds = %34, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @recompute_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !164
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !165
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !97
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.10) #22
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #13 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !66
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !66
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @dr_analyze_innermost(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_size_arg_loc(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !5
  %7 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %6, ptr noundef %1) #22
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %8, ptr noundef %12) #22
  %14 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 65, ptr noundef %6, ptr noundef %7, ptr noundef %13) #22
  %15 = call ptr @force_gimple_operand(ptr noundef %14, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #22
  %16 = load ptr, ptr %5, align 8, !tbaa !5
  call void @gimple_seq_add_seq(ptr noundef %3, ptr noundef %16) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !147
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !149
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !148
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_data_ref(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !164
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 510, ptr noundef nonnull @.str.10) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #20
  %3 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !66
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  store ptr %6, ptr %0, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !52
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !171
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  store ptr %1, ptr %4, align 8, !tbaa !5
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  store ptr %3, ptr %0, align 8, !tbaa !106
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  store ptr %8, ptr %2, align 8, !tbaa !171
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  store ptr %4, ptr %0, align 8, !tbaa !106
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !173
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %12

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  br label %12

12:                                               ; preds = %7, %10, %11
  ret void
}

; Function Attrs: optsize
declare void @replace_uses_by(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.10) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #22
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !97
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !174

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !175

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !173
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !176
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 918, ptr noundef nonnull @.str.10) #22
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #22
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !176
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !178
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !179
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !180
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i8, ptr %0, align 8, !tbaa !176
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #16 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !182
  store ptr %7, ptr %2, align 8, !tbaa !181
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !183
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !179
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !183
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !176
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 771, ptr noundef nonnull @.str.10) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !180
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !184
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !105
  store ptr %2, ptr %6, align 8, !tbaa !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  store ptr %1, ptr %0, align 8, !tbaa !184
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !105
  store ptr %0, ptr %4, align 8, !tbaa !184
  store ptr %0, ptr %3, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !176
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 747, ptr noundef nonnull @.str.10) #22
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !185
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !185
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !186
  store ptr %22, ptr %16, align 8, !tbaa !185
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !181
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !181
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !182
  store ptr %36, ptr %29, align 8, !tbaa !181
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !176
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !52
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !184
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_loop_before(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #22
  %3 = tail call ptr @single_exit(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  tail call void @initialize_original_copy_tables() #22
  %6 = tail call ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef %0, ptr noundef %2) #22
  tail call void @free_original_copy_tables() #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @update_phis_for_loop_copy(ptr noundef %0, ptr noundef nonnull %6) #20
  tail call void @rename_variables_in_loop(ptr noundef nonnull %6) #22
  br label %9

9:                                                ; preds = %5, %1, %8
  %10 = phi ptr [ %6, %8 ], [ null, %1 ], [ null, %5 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @create_preheader(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_bb_after_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @single_exit(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @split_edge(ptr noundef nonnull %2) #22
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mark_virtual_ops_in_bb(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @slpeel_tree_duplicate_loop_to_edge_cfg(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_phis_for_loop_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %5 = tail call ptr @loop_latch_edge(ptr noundef %0) #22
  %6 = tail call ptr @loop_preheader_edge(ptr noundef %0) #22
  %7 = tail call ptr @loop_preheader_edge(ptr noundef %1) #22
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %9) #22
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #22
  %12 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !52
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  %16 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 6
  br label %17

17:                                               ; preds = %14, %38
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !52
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %23 = load i32, ptr %15, align 4, !tbaa !189
  %24 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22, i32 noundef %23) #20
  %25 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %24) #20
  %26 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %22, ptr noundef %6) #20
  call void @add_phi_arg(ptr noundef %21, ptr noundef %25, ptr noundef %7, i32 noundef %26) #22
  %27 = load i32, ptr %16, align 4, !tbaa !189
  %28 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %22, i32 noundef %27) #20
  %29 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %28) #20
  %30 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %22, ptr noundef %5) #20
  %31 = load i64, ptr %29, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = call ptr @get_current_def(ptr noundef nonnull %29) #22
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr %29, ptr %35
  br label %38

38:                                               ; preds = %34, %20
  %39 = phi ptr [ %37, %34 ], [ %29, %20 ]
  %40 = call ptr @loop_latch_edge(ptr noundef %1) #22
  call void @add_phi_arg(ptr noundef %21, ptr noundef nonnull %39, ptr noundef %40, i32 noundef %30) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !52
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %17, label %43, !llvm.loop !190

43:                                               ; preds = %17, %38, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @rename_variables_in_loop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !189
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #20
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !191
  ret i32 %7
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_current_def(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize }

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
!9 = !{i32 0, i32 2}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"loop", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !16, i64 24, !13, i64 32, !13, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !17, i64 80, !17, i64 96, !7, i64 112, !7, i64 113, !13, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!16 = !{!"lpt_decision", !13, i64 0, !13, i64 4}
!17 = !{!"", !18, i64 0, !18, i64 8}
!18 = !{!"long", !7, i64 0}
!19 = distinct !{!19, !11}
!20 = !{!21, !13, i64 0}
!21 = !{!"VEC_bitmap_base", !13, i64 0, !13, i64 4, !7, i64 8}
!22 = !{!23, !13, i64 8}
!23 = !{!"", !6, i64 0, !13, i64 8}
!24 = !{!25, !6, i64 32}
!25 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !6, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!26 = !{!23, !6, i64 0}
!27 = !{!28, !6, i64 24}
!28 = !{!"loops", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!29 = !{!15, !6, i64 48}
!30 = !{!15, !6, i64 56}
!31 = distinct !{!31, !11}
!32 = !{!15, !13, i64 36}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = !{!28, !6, i64 8}
!36 = !{!37, !13, i64 0}
!37 = !{!"VEC_int_base", !13, i64 0, !13, i64 4, !7, i64 8}
!38 = !{!15, !6, i64 40}
!39 = !{!40, !13, i64 0}
!40 = !{!"VEC_loop_p_base", !13, i64 0, !13, i64 4, !7, i64 8}
!41 = !{!42, !13, i64 0}
!42 = !{!"VEC_gimple_base", !13, i64 0, !13, i64 4, !7, i64 8}
!43 = !{!44, !13, i64 0}
!44 = !{!"graph", !13, i64 0, !6, i64 8, !6, i64 16}
!45 = !{!44, !6, i64 8}
!46 = !{!47, !6, i64 24}
!47 = !{!"vertex", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !6, i64 24}
!48 = !{!49, !7, i64 8}
!49 = !{!"rdg_vertex", !6, i64 0, !7, i64 8, !7, i64 9}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = !{i8 0, i8 2}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = !{!37, !13, i64 4}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = !{!47, !13, i64 16}
!60 = distinct !{!60, !11}
!61 = !{!62, !13, i64 0}
!62 = !{!"rdg_component", !13, i64 0, !6, i64 8}
!63 = !{!62, !6, i64 8}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = !{!7, !7, i64 0}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = !{!47, !6, i64 0}
!72 = !{!73, !13, i64 0}
!73 = !{!"graph_edge", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !6, i64 24}
!74 = !{!73, !6, i64 8}
!75 = distinct !{!75, !11}
!76 = !{!47, !6, i64 8}
!77 = !{!73, !6, i64 24}
!78 = !{!79, !13, i64 0}
!79 = !{!"rdg_edge", !13, i64 0, !13, i64 4, !6, i64 8}
!80 = !{!73, !6, i64 16}
!81 = distinct !{!81, !11}
!82 = !{!83, !13, i64 0}
!83 = !{!"VEC_rdgc_base", !13, i64 0, !13, i64 4, !7, i64 8}
!84 = !{!83, !13, i64 4}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = !{!49, !7, i64 9}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = !{!49, !6, i64 0}
!96 = !{!73, !13, i64 4}
!97 = !{i32 0, i32 256}
!98 = distinct !{!98, !11}
!99 = !{!100, !6, i64 32}
!100 = !{!"use_optype_d", !6, i64 0, !101, i64 8}
!101 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!102 = !{!101, !6, i64 24}
!103 = !{!104, !6, i64 8}
!104 = !{!"immediate_use_iterator_d", !6, i64 0, !6, i64 8, !101, i64 16, !6, i64 48}
!105 = !{!101, !6, i64 8}
!106 = !{!104, !6, i64 0}
!107 = !{!18, !18, i64 0}
!108 = !{!109, !6, i64 24}
!109 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !18, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!110 = !{!111, !6, i64 0}
!111 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !13, i64 16, !6, i64 24}
!112 = !{!113, !6, i64 0}
!113 = !{!"", !6, i64 0, !6, i64 8, !13, i64 16, !18, i64 24}
!114 = !{!113, !6, i64 8}
!115 = !{!116, !13, i64 16}
!116 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !13, i64 16, !7, i64 24}
!117 = !{!113, !13, i64 16}
!118 = !{!113, !18, i64 24}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = !{!116, !6, i64 0}
!122 = distinct !{!122, !11}
!123 = !{!124, !6, i64 0}
!124 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !18, i64 56}
!125 = distinct !{!125, !11}
!126 = !{!127, !13, i64 0}
!127 = !{!"VEC_edge_base", !13, i64 0, !13, i64 4, !7, i64 8}
!128 = !{!42, !13, i64 4}
!129 = !{!21, !13, i64 4}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!134 = !{!15, !6, i64 16}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = !{i32 0, i32 65536}
!138 = !{!124, !6, i64 8}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = !{!144, !6, i64 0}
!144 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!145 = !{!146, !6, i64 16}
!146 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!147 = !{!144, !6, i64 8}
!148 = !{!144, !6, i64 16}
!149 = !{!146, !6, i64 0}
!150 = !{!151, !6, i64 0}
!151 = !{!"data_reference", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !152, i64 32, !153, i64 72, !154, i64 88, !6, i64 104}
!152 = !{!"innermost_loop_behavior", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!153 = !{!"indices", !6, i64 0, !6, i64 8}
!154 = !{!"dr_alias", !6, i64 0, !6, i64 8}
!155 = !{!151, !6, i64 8}
!156 = !{!151, !6, i64 56}
!157 = !{!151, !6, i64 40}
!158 = !{!151, !6, i64 48}
!159 = !{!151, !6, i64 32}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, !11}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11}
!164 = !{!109, !13, i64 96}
!165 = !{!166, !6, i64 0}
!166 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!167 = !{!168, !6, i64 0}
!168 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!169 = !{!168, !6, i64 8}
!170 = !{!166, !6, i64 8}
!171 = !{!104, !6, i64 48}
!172 = !{!104, !6, i64 24}
!173 = !{!104, !6, i64 16}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11}
!176 = !{!177, !7, i64 0}
!177 = !{!"ssa_operand_iterator_d", !7, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !6, i64 32}
!178 = !{!177, !6, i64 32}
!179 = !{!177, !13, i64 28}
!180 = !{!177, !13, i64 4}
!181 = !{!177, !6, i64 16}
!182 = !{!100, !6, i64 0}
!183 = !{!177, !13, i64 24}
!184 = !{!101, !6, i64 0}
!185 = !{!177, !6, i64 8}
!186 = !{!187, !6, i64 0}
!187 = !{!"def_optype_d", !6, i64 0, !6, i64 8}
!188 = !{!15, !6, i64 8}
!189 = !{!124, !13, i64 44}
!190 = distinct !{!190, !11}
!191 = !{!192, !13, i64 40}
!192 = !{!"phi_arg_d", !101, i64 0, !6, i64 32, !13, i64 40}
