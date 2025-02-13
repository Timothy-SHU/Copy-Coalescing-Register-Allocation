; ModuleID = 'tree-ssa-sink.c'
source_filename = "tree-ssa-sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-sink.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@pass_sink_code = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_sink, ptr @do_sink, ptr null, ptr null, i32 0, i32 72, i32 104, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_sink = external local_unnamed_addr global i32, align 4
@sink_stats.0 = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Sunk statements\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Sinking \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" from bb %d to bb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"Not moving store, common dominator post-dominates from block.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Common dominator of all uses is %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_hidden_global_store(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #14, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #14, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %4, %7, %10
  %12 = tail call ptr @gimple_get_lhs(ptr noundef %0) #15
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !6
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = tail call ptr @get_base_address(ptr noundef nonnull %12) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !6
  br label %26

26:                                               ; preds = %21, %11
  %27 = phi i32 [ %25, %21 ], [ %16, %11 ]
  %28 = phi i64 [ %22, %21 ], [ %13, %11 ]
  %29 = phi ptr [ %19, %21 ], [ %12, %11 ]
  %30 = icmp eq i32 %27, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %29) #14, !range !5
  br label %43

33:                                               ; preds = %26
  %34 = trunc i64 %28 to i32
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -47
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef %40) #15
  br label %43

42:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.1) #15
  br label %43

43:                                               ; preds = %31, %18, %38, %1, %42
  %44 = phi i8 [ 0, %42 ], [ 0, %1 ], [ 1, %18 ], [ %41, %38 ], [ %32, %31 ]
  ret i8 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_sink() #4 {
  %1 = load i32, ptr @flag_tree_sink, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @do_sink() #0 {
  tail call fastcc void @execute_sink_code() #14
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_sink_code() unnamed_addr #0 {
  tail call void @loop_optimizer_init(i32 noundef 7) #15
  tail call void @connect_infinite_loops_to_exit() #15
  store i32 0, ptr @sink_stats.0, align 4
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  tail call void @calculate_dominance_info(i32 noundef 2) #15
  %1 = load ptr, ptr @cfun, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  tail call fastcc void @sink_code_in_bb(ptr noundef %5) #14
  %6 = load ptr, ptr @cfun, align 8, !tbaa !12
  %7 = load i32, ptr @sink_stats.0, align 4, !tbaa !18
  tail call void @statistics_counter_event(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %7) #15
  tail call void @free_dominance_info(i32 noundef 2) #15
  tail call void @remove_fake_exit_edges() #15
  tail call void @loop_optimizer_finalize() #15
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @connect_infinite_loops_to_exit() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sink_code_in_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %7 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !20
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !21
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %4) #14, !range !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %4, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %4) #14, !range !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !25

26:                                               ; preds = %21, %9
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #14
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  br label %31

31:                                               ; preds = %29, %67
  %32 = phi i8 [ 1, %29 ], [ %68, %67 ]
  %33 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %34 = call fastcc zeroext i8 @statement_sink_location(ptr noundef %33, ptr noundef %0, ptr noundef nonnull %5) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67, !llvm.loop !27

39:                                               ; preds = %36
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #14
  br label %67, !llvm.loop !27

40:                                               ; preds = %31
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr nonnull %41)
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !12
  call void @print_gimple_stmt(ptr noundef %45, ptr noundef %33, i32 noundef 0, i32 noundef 64) #15
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %47 = load i32, ptr %30, align 8, !tbaa !28
  %48 = call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !28
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.5, i32 noundef %47, i32 noundef %50) #14
  br label %52

52:                                               ; preds = %43, %40
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14, !range !5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14
  call void @gsi_move_to_bb_end(ptr noundef nonnull %2, ptr noundef %56) #15
  br label %58

57:                                               ; preds = %52
  call void @gsi_move_before(ptr noundef nonnull %2, ptr noundef nonnull %5) #15
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, ptr @sink_stats.0, align 4, !tbaa !18
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr @sink_stats.0, align 4, !tbaa !18
  %61 = icmp eq i8 %32, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %67, !llvm.loop !27

63:                                               ; preds = %58
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !5
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #14
  br label %67

67:                                               ; preds = %63, %66, %36, %39, %62
  %68 = phi i8 [ 1, %62 ], [ 0, %39 ], [ 0, %36 ], [ 0, %66 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !5
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %31, label %71

71:                                               ; preds = %15, %67, %26, %1
  %72 = call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #15
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71, %74
  %75 = phi ptr [ %76, %74 ], [ %72, %71 ]
  call fastcc void @sink_code_in_bb(ptr noundef nonnull %75) #14
  %76 = call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %75) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %74, !llvm.loop !31

78:                                               ; preds = %74, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !32
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @statement_sink_location(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  %10 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0) #14
  %11 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %203

13:                                               ; preds = %3, %31
  %14 = phi ptr [ %32, %31 ], [ %10, %3 ]
  %15 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef %14) #14
  %16 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #14, !range !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13, %24
  %19 = phi ptr [ %25, %24 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %21) #14, !range !5
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #14
  %26 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #14, !range !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %18, label %28, !llvm.loop !40

28:                                               ; preds = %24, %13
  %29 = phi ptr [ %15, %13 ], [ %25, %24 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #14
  %33 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %13, label %203, !llvm.loop !41

35:                                               ; preds = %28, %18
  %36 = phi ptr [ %19, %18 ], [ %29, %28 ]
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %39, label %203

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %203

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %203

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @is_hidden_global_store(ptr noundef %0) #14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %203

48:                                               ; preds = %45
  %49 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #14, !range !5
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %203

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %203

54:                                               ; preds = %51
  %55 = load ptr, ptr @cfun, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 20
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %54
  %61 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #14
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !10
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  %67 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #14
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  br i1 %66, label %70, label %72

70:                                               ; preds = %60
  %71 = tail call i32 @vector_type_mode(ptr noundef %69) #15
  br label %77

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  br label %77

77:                                               ; preds = %72, %70
  %78 = phi i32 [ %71, %70 ], [ %76, %72 ]
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %203, label %80

80:                                               ; preds = %77, %54
  %81 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %4, ptr noundef %0) #14
  %82 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80, %95
  %85 = phi ptr [ %96, %95 ], [ %81, %80 ]
  %86 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %85) #14
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !10
  %89 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %88) #14, !range !5
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %203

91:                                               ; preds = %84
  %92 = load i64, ptr %86, align 8
  %93 = and i64 %92, 4194304
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %203

95:                                               ; preds = %91
  %96 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %4) #14
  %97 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %84, label %99, !llvm.loop !42

99:                                               ; preds = %95, %80
  %100 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %0) #14
  %101 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99, %109
  %104 = phi ptr [ %110, %109 ], [ %100, %99 ]
  %105 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %104) #14
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 4194304
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %203

109:                                              ; preds = %103
  %110 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #14
  %111 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %103, label %113, !llvm.loop !43

113:                                              ; preds = %109, %99
  %114 = tail call fastcc zeroext i8 @all_immediate_uses_same_place(ptr noundef %0) #14, !range !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %117 = call fastcc ptr @nearest_common_dominator_of_uses(ptr noundef %0, ptr noundef nonnull %6) #14
  %118 = icmp eq ptr %117, %1
  br i1 %118, label %152, label %119

119:                                              ; preds = %116
  %120 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %117, ptr noundef %1) #15
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %152, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %1, ptr noundef %117) #15
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %127 = icmp eq ptr %126, null
  br i1 %127, label %152, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %128
  %133 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 62, i64 1, ptr nonnull %126)
  br label %152

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 10
  %136 = load i32, ptr %135, align 4, !tbaa !44
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %138 = load i32, ptr %137, align 4, !tbaa !44
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %145 = and i32 %144, 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !28
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %141, ptr noundef nonnull @.str.8, i32 noundef %149) #14
  br label %151

151:                                              ; preds = %147, %143, %140
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %117) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %152

152:                                              ; preds = %134, %125, %128, %132, %119, %116, %151
  %153 = phi i8 [ 1, %151 ], [ 0, %116 ], [ 0, %119 ], [ 0, %132 ], [ 0, %128 ], [ 0, %125 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %203

154:                                              ; preds = %113
  %155 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !10
  %157 = tail call fastcc i32 @gimple_code(ptr noundef %156) #14, !range !11
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %178, label %159

159:                                              ; preds = %154
  %160 = tail call fastcc ptr @gimple_bb(ptr noundef %156) #14
  %161 = icmp eq ptr %160, %1
  br i1 %161, label %203, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 10
  %164 = load i32, ptr %163, align 4, !tbaa !44
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %166 = load i32, ptr %165, align 4, !tbaa !44
  %167 = icmp sgt i32 %164, %166
  br i1 %167, label %203, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !45
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !45
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %168
  %175 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %160) #15
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %156) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %203

178:                                              ; preds = %154
  %179 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0) #14
  %180 = tail call fastcc ptr @find_bb_for_arg(ptr noundef %156, ptr noundef %179) #14
  %181 = icmp eq ptr %180, null
  br i1 %181, label %203, label %182

182:                                              ; preds = %178
  %183 = tail call fastcc ptr @gimple_bb(ptr noundef %156) #14
  %184 = icmp eq ptr %183, %1
  %185 = icmp eq ptr %180, %1
  %186 = or i1 %185, %184
  br i1 %186, label %203, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 10
  %189 = load i32, ptr %188, align 4, !tbaa !44
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %191 = load i32, ptr %190, align 4, !tbaa !44
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !45
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !45
  %198 = icmp eq ptr %195, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %180) #15
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %180) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %203

203:                                              ; preds = %31, %91, %84, %103, %3, %199, %187, %193, %182, %178, %174, %159, %162, %168, %39, %42, %45, %48, %51, %77, %35, %202, %177, %152
  %204 = phi i8 [ 1, %177 ], [ 1, %202 ], [ %153, %152 ], [ 0, %35 ], [ 0, %77 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ], [ 0, %42 ], [ 0, %39 ], [ 0, %168 ], [ 0, %162 ], [ 0, %159 ], [ 0, %174 ], [ 0, %178 ], [ 0, %182 ], [ 0, %193 ], [ 0, %187 ], [ 0, %199 ], [ 0, %3 ], [ 0, %103 ], [ 0, %84 ], [ 0, %91 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret i8 %204
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  store ptr %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_move_to_bb_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #14
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !47
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !49
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !54
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i8, ptr %0, align 8, !tbaa !56
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  store ptr %6, ptr %0, align 8, !tbaa !61
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #14, !range !5
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  store ptr %4, ptr %0, align 8, !tbaa !61
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #14, !range !5
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %8, ptr %2, align 8, !tbaa !62
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #14
  %17 = load ptr, ptr %11, align 8, !tbaa !68
  store ptr %17, ptr %10, align 8, !tbaa !65
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #14
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !54
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = load ptr, ptr %3, align 8, !tbaa !68
  store ptr %8, ptr %2, align 8, !tbaa !65
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !56
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !54
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %7, ptr %2, align 8, !tbaa !62
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !71
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !70
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #14
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !56
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @all_immediate_uses_same_place(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  %4 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #14
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1, %29
  %8 = phi ptr [ %31, %29 ], [ %4, %1 ]
  %9 = phi ptr [ %30, %29 ], [ null, %1 ]
  %10 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %8) #14
  %11 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #14, !range !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7, %24
  %14 = phi ptr [ %26, %24 ], [ %10, %7 ]
  %15 = phi ptr [ %25, %24 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %17) #14, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = icmp eq ptr %15, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = icmp eq ptr %15, %17
  br i1 %23, label %24, label %34

24:                                               ; preds = %20, %22, %13
  %25 = phi ptr [ %15, %13 ], [ %15, %22 ], [ %17, %20 ]
  %26 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #14
  %27 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #14, !range !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %13, label %29, !llvm.loop !73

29:                                               ; preds = %24, %7
  %30 = phi ptr [ %9, %7 ], [ %25, %24 ]
  %31 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #14
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %7, label %34, !llvm.loop !74

34:                                               ; preds = %29, %22, %1
  %35 = phi i8 [ 1, %1 ], [ 0, %22 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @nearest_common_dominator_of_uses(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.immediate_use_iterator_d, align 8
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  tail call void @bitmap_clear(ptr noundef %7) #15
  %8 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %5, ptr noundef %0) #14
  %9 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %2, %48
  %12 = phi ptr [ %49, %48 ], [ %8, %2 ]
  %13 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %6, ptr noundef %12) #14
  %14 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #14, !range !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %11, %44
  %17 = phi ptr [ %45, %44 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %19) #14, !range !11
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %17) #14
  %24 = sext i32 %23 to i64
  %25 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %19, i64 noundef %24) #14
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  br label %33

27:                                               ; preds = %16
  %28 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %19) #14, !range !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i8 1, ptr %1, align 1, !tbaa !10
  br label %44

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %19) #14
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %26, %22 ], [ %32, %31 ]
  %35 = load ptr, ptr @cfun, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = icmp eq ptr %34, %38
  br i1 %39, label %74, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !28
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %42) #15
  br label %44

44:                                               ; preds = %40, %30
  %45 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %6) #14
  %46 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #14, !range !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %16, label %48, !llvm.loop !77

48:                                               ; preds = %44, %11
  %49 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %5) #14
  %50 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %11, label %52, !llvm.loop !78

52:                                               ; preds = %48, %2
  %53 = load ptr, ptr @cfun, align 8, !tbaa !12
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !14
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !79
  %58 = tail call i32 @bitmap_first_set_bit(ptr noundef %7) #15
  %59 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %57, i32 noundef %58) #14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %3) #14
  %60 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !5
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %52, %62
  %63 = phi ptr [ %71, %62 ], [ %59, %52 ]
  %64 = load ptr, ptr @cfun, align 8, !tbaa !12
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !79
  %69 = load i32, ptr %3, align 4, !tbaa !6
  %70 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %68, i32 noundef %69) #14
  %71 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %63, ptr noundef %70) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !5
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %62, !llvm.loop !80

74:                                               ; preds = %33, %62, %52
  %75 = phi ptr [ %59, %52 ], [ %71, %62 ], [ null, %33 ]
  tail call void @bitmap_obstack_free(ptr noundef %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %75
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #14
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !11
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14, !range !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !81

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bb_for_arg(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2, %18
  %6 = phi ptr [ %20, %18 ], [ null, %2 ]
  %7 = phi i8 [ %19, %18 ], [ 0, %2 ]
  %8 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %9) #14
  %11 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %10) #14
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %8) #14
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i8 [ 1, %15 ], [ %7, %5 ]
  %20 = phi ptr [ %17, %15 ], [ %6, %5 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %5, label %25, !llvm.loop !82

25:                                               ; preds = %13, %18, %2
  %26 = phi ptr [ null, %2 ], [ %20, %18 ], [ null, %13 ]
  ret ptr %26
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 747, ptr noundef nonnull @.str.1) #15
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !65
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #14
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !65
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !68
  store ptr %25, ptr %18, align 8, !tbaa !65
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !62
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #14
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !62
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !63
  store ptr %41, ptr %32, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.1) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !11
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #14, !range !11
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 544, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %3, i32 noundef 0) #14
  %9 = ptrtoint ptr %0 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 48
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #14
  ret ptr %6
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %4, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !89
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !90
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !93
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !6
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !94

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !6
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !6
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !87
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !92
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !83
  store i64 %35, ptr %3, align 8, !tbaa !93
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !6
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !6
  %40 = load i32, ptr %23, align 8, !tbaa !92
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !92
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !95

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !96
  store ptr %44, ptr %0, align 8, !tbaa !87
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !90
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !6
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !93
  store i32 %16, ptr %1, align 4, !tbaa !6
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !93
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !93
  %6 = load i32, ptr %1, align 4, !tbaa !6
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  store ptr %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !10
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i8 0, i8 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{i32 0, i32 256}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !13, i64 8}
!15 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !13, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!16 = !{!17, !13, i64 8}
!17 = !{!"control_flow_graph", !13, i64 0, !13, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0}
!20 = !{i64 0, i64 4, !6, i64 8, i64 8, !12}
!21 = !{i64 0, i64 8, !12}
!22 = !{!23, !7, i64 48}
!23 = !{!"edge_def", !13, i64 0, !13, i64 8, !8, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !24, i64 56}
!24 = !{!"long", !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!29, !7, i64 80}
!29 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !13, i64 48, !13, i64 56, !8, i64 64, !24, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!30 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12}
!31 = distinct !{!31, !26}
!32 = !{!33, !7, i64 0}
!33 = !{!"", !7, i64 0, !13, i64 8}
!34 = !{!35, !13, i64 0}
!35 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!36 = !{!35, !13, i64 8}
!37 = !{!35, !13, i64 16}
!38 = !{!39, !13, i64 0}
!39 = !{!"gimple_seq_node_d", !13, i64 0, !13, i64 8, !13, i64 16}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = !{!29, !7, i64 84}
!45 = !{!29, !13, i64 24}
!46 = !{!39, !13, i64 8}
!47 = !{!48, !7, i64 0}
!48 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!49 = !{!29, !7, i64 96}
!50 = !{!51, !13, i64 0}
!51 = !{!"gimple_bb_info", !13, i64 0, !13, i64 8}
!52 = !{!53, !13, i64 8}
!53 = !{!"gimple_seq_d", !13, i64 0, !13, i64 8, !13, i64 16}
!54 = !{!55, !7, i64 4}
!55 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !13, i64 32}
!56 = !{!55, !8, i64 0}
!57 = !{!58, !13, i64 8}
!58 = !{!"immediate_use_iterator_d", !13, i64 0, !13, i64 8, !59, i64 16, !13, i64 48}
!59 = !{!"ssa_use_operand_d", !13, i64 0, !13, i64 8, !8, i64 16, !13, i64 24}
!60 = !{!59, !13, i64 8}
!61 = !{!58, !13, i64 0}
!62 = !{!55, !13, i64 16}
!63 = !{!64, !13, i64 0}
!64 = !{!"use_optype_d", !13, i64 0, !59, i64 8}
!65 = !{!55, !13, i64 8}
!66 = !{!67, !13, i64 8}
!67 = !{!"def_optype_d", !13, i64 0, !13, i64 8}
!68 = !{!67, !13, i64 0}
!69 = !{!59, !13, i64 24}
!70 = !{!55, !7, i64 24}
!71 = !{!55, !7, i64 28}
!72 = !{!55, !13, i64 32}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
!75 = !{!23, !13, i64 0}
!76 = !{!17, !13, i64 0}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
!79 = !{!17, !13, i64 16}
!80 = distinct !{!80, !26}
!81 = distinct !{!81, !26}
!82 = distinct !{!82, !26}
!83 = !{!24, !24, i64 0}
!84 = !{!29, !13, i64 0}
!85 = !{!86, !13, i64 0}
!86 = !{!"bitmap_head_def", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!87 = !{!88, !13, i64 0}
!88 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16, !24, i64 24}
!89 = !{!88, !13, i64 8}
!90 = !{!91, !7, i64 16}
!91 = !{!"bitmap_element_def", !13, i64 0, !13, i64 8, !7, i64 16, !8, i64 24}
!92 = !{!88, !7, i64 16}
!93 = !{!88, !24, i64 24}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = !{!91, !13, i64 0}
!97 = !{!39, !13, i64 16}
!98 = !{!53, !13, i64 0}
