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
define dso_local zeroext i8 @is_hidden_global_store(ptr noundef %0) local_unnamed_addr #0 !prof !166 {
  %2 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4, !prof !167

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #14, !range !168
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11, !prof !169

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #14, !range !168
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
  %16 = load i32, ptr %15, align 4, !tbaa !170
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %26, !prof !174

18:                                               ; preds = %11
  %19 = tail call ptr @get_base_address(ptr noundef nonnull %12) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21, !prof !175

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !170
  br label %26

26:                                               ; preds = %21, %11
  %27 = phi i32 [ %25, %21 ], [ %16, %11 ]
  %28 = phi i64 [ %22, %21 ], [ %13, %11 ]
  %29 = phi ptr [ %19, %21 ], [ %12, %11 ]
  %30 = icmp eq i32 %27, 3
  br i1 %30, label %31, label %33, !prof !169

31:                                               ; preds = %26
  %32 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %29) #14, !range !168
  br label %43

33:                                               ; preds = %26
  %34 = trunc i64 %28 to i32
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -47
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %38, label %42, !prof !176

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !177
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
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !166 !PGOFuncName !178 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !179

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !180 !PGOFuncName !181 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !183 !PGOFuncName !184 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
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
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !185 !PGOFuncName !186 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !187

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
define internal zeroext i8 @gate_sink() #4 !prof !188 !PGOFuncName !189 {
  %1 = load i32, ptr @flag_tree_sink, align 4, !tbaa !170
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @do_sink() #0 !prof !188 !PGOFuncName !190 {
  tail call fastcc void @execute_sink_code() #14
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !191 !PGOFuncName !192 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !193 !PGOFuncName !194 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_sink_code() unnamed_addr #0 !prof !188 !PGOFuncName !195 {
  tail call void @loop_optimizer_init(i32 noundef 7) #15
  tail call void @connect_infinite_loops_to_exit() #15
  store i32 0, ptr @sink_stats.0, align 4
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  tail call void @calculate_dominance_info(i32 noundef 2) #15
  %1 = load ptr, ptr @cfun, align 8, !tbaa !196
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  tail call fastcc void @sink_code_in_bb(ptr noundef %5) #14
  %6 = load ptr, ptr @cfun, align 8, !tbaa !196
  %7 = load i32, ptr @sink_stats.0, align 4, !tbaa !202
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
define internal fastcc void @sink_code_in_bb(ptr noundef %0) unnamed_addr #0 !prof !204 !PGOFuncName !205 {
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
  br i1 %8, label %70, label %9, !prof !206

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !207
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !208
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %4) #14, !range !168
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15, !prof !209

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %4, align 8, !tbaa !196
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !210
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %70, !prof !213

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %4) #14, !range !168
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !prof !214, !llvm.loop !215

26:                                               ; preds = %21, %9
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #14
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !168
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %70, !prof !217

29:                                               ; preds = %26, %66
  %30 = phi i8 [ %67, %66 ], [ 1, %26 ]
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %32 = call fastcc zeroext i8 @statement_sink_location(ptr noundef %31, ptr noundef %0, ptr noundef nonnull %5) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38, !prof !218

34:                                               ; preds = %29
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !168
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %66, !prof !218, !llvm.loop !219

37:                                               ; preds = %34
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #14
  br label %66, !llvm.loop !219

38:                                               ; preds = %29
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !196
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %43 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr nonnull %39)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !196
  call void @print_gimple_stmt(ptr noundef %44, ptr noundef %31, i32 noundef 0, i32 noundef 64) #15
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !196
  %46 = load i32, ptr %42, align 8, !tbaa !220
  %47 = call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !220
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.5, i32 noundef %46, i32 noundef %49) #14
  br label %51

51:                                               ; preds = %41, %38
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14, !range !168
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14
  call void @gsi_move_to_bb_end(ptr noundef nonnull %2, ptr noundef %55) #15
  br label %57

56:                                               ; preds = %51
  call void @gsi_move_before(ptr noundef nonnull %2, ptr noundef nonnull %5) #15
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i32, ptr @sink_stats.0, align 4, !tbaa !202
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr @sink_stats.0, align 4, !tbaa !202
  %60 = icmp eq i8 %30, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %66, !llvm.loop !219

62:                                               ; preds = %57
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !168
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #14
  br label %66

66:                                               ; preds = %62, %65, %34, %37, %61
  %67 = phi i8 [ 1, %61 ], [ 0, %37 ], [ 0, %34 ], [ 0, %65 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !168
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %29, label %70, !prof !223

70:                                               ; preds = %15, %66, %26, %1
  %71 = call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73, !prof !224

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %75, %73 ], [ %71, %70 ]
  call fastcc void @sink_code_in_bb(ptr noundef nonnull %74) #14
  %75 = call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %74) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %73, !prof !225, !llvm.loop !226

77:                                               ; preds = %73, %70
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !227 !PGOFuncName !228 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !229 !PGOFuncName !230 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !168
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !231

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !196
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !232 !PGOFuncName !233 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !234

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !213

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !235
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !235
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !227 !PGOFuncName !237 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !238
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !240
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !242 !PGOFuncName !243 {
  %2 = load ptr, ptr %0, align 8, !tbaa !238
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !244 !PGOFuncName !245 {
  %2 = load ptr, ptr %0, align 8, !tbaa !238
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @statement_sink_location(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !244 !PGOFuncName !248 {
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
  br i1 %12, label %13, label %203, !prof !249

13:                                               ; preds = %3, %31
  %14 = phi ptr [ %32, %31 ], [ %10, %3 ]
  %15 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef %14) #14
  %16 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #14, !range !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28, !prof !250

18:                                               ; preds = %13, %24
  %19 = phi ptr [ %25, %24 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !177
  %22 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %21) #14, !range !168
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24, !prof !251

24:                                               ; preds = %18
  %25 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #14
  %26 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #14, !range !168
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %18, label %28, !prof !252, !llvm.loop !253

28:                                               ; preds = %24, %13
  %29 = phi ptr [ %15, %13 ], [ %25, %24 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35, !prof !254

31:                                               ; preds = %28
  %32 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #14
  %33 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %13, label %203, !prof !255, !llvm.loop !256

35:                                               ; preds = %28, %18
  %36 = phi ptr [ %19, %18 ], [ %29, %28 ]
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %39, label %203, !prof !257

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %203, !prof !258

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %203, !prof !258

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @is_hidden_global_store(ptr noundef %0) #14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %203, !prof !258

48:                                               ; preds = %45
  %49 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #14, !range !168
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %203, !prof !258

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %203, !prof !259

54:                                               ; preds = %51
  %55 = load ptr, ptr @cfun, align 8, !tbaa !196
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 20
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60, !prof !187

60:                                               ; preds = %54
  %61 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #14
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !177
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  %67 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #14
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !177
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
  br i1 %83, label %84, label %99, !prof !260

84:                                               ; preds = %80, %95
  %85 = phi ptr [ %96, %95 ], [ %81, %80 ]
  %86 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %85) #14
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !177
  %89 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %88) #14, !range !168
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %203, !prof !187

91:                                               ; preds = %84
  %92 = load i64, ptr %86, align 8
  %93 = and i64 %92, 4194304
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %203, !prof !187

95:                                               ; preds = %91
  %96 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %4) #14
  %97 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %84, label %99, !prof !261, !llvm.loop !262

99:                                               ; preds = %95, %80
  %100 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %0) #14
  %101 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %113, !prof !260

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
  br i1 %112, label %103, label %113, !prof !263, !llvm.loop !264

113:                                              ; preds = %109, %99
  %114 = tail call fastcc zeroext i8 @all_immediate_uses_same_place(ptr noundef %0) #14, !range !168
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %154, !prof !265

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %117 = call fastcc ptr @nearest_common_dominator_of_uses(ptr noundef %0, ptr noundef nonnull %6) #14
  %118 = icmp eq ptr %117, %1
  br i1 %118, label %152, label %119, !prof !266

119:                                              ; preds = %116
  %120 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %117, ptr noundef %1) #15
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %152, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %1, ptr noundef %117) #15
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !196
  %127 = icmp eq ptr %126, null
  br i1 %127, label %152, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr @dump_flags, align 4, !tbaa !170
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %128
  %133 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 62, i64 1, ptr nonnull %126)
  br label %152

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 10
  %136 = load i32, ptr %135, align 4, !tbaa !267
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %138 = load i32, ptr %137, align 4, !tbaa !267
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !196
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr @dump_flags, align 4, !tbaa !170
  %145 = and i32 %144, 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !220
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %141, ptr noundef nonnull @.str.8, i32 noundef %149) #14
  br label %151

151:                                              ; preds = %147, %143, %140
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %117) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %152

152:                                              ; preds = %134, %125, %128, %132, %119, %116, %151
  %153 = phi i8 [ 1, %151 ], [ 0, %116 ], [ 0, %119 ], [ 0, %132 ], [ 0, %128 ], [ 0, %125 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %203

154:                                              ; preds = %113
  %155 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !177
  %157 = tail call fastcc i32 @gimple_code(ptr noundef %156) #14, !range !182
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %178, label %159, !prof !268

159:                                              ; preds = %154
  %160 = tail call fastcc ptr @gimple_bb(ptr noundef %156) #14
  %161 = icmp eq ptr %160, %1
  br i1 %161, label %203, label %162, !prof !269

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 10
  %164 = load i32, ptr %163, align 4, !tbaa !267
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %166 = load i32, ptr %165, align 4, !tbaa !267
  %167 = icmp sgt i32 %164, %166
  br i1 %167, label %203, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !270
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !270
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %168
  %175 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %160) #15
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %156) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !222
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
  %189 = load i32, ptr %188, align 4, !tbaa !267
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %191 = load i32, ptr %190, align 4, !tbaa !267
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !270
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !270
  %198 = icmp eq ptr %195, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %180) #15
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %180) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !222
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %203

203:                                              ; preds = %31, %91, %84, %103, %3, %199, %187, %193, %182, %178, %174, %159, %162, %168, %39, %42, %45, %48, %51, %77, %35, %202, %177, %152
  %204 = phi i8 [ 1, %177 ], [ 1, %202 ], [ %153, %152 ], [ 0, %35 ], [ 0, %77 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ], [ 0, %42 ], [ 0, %39 ], [ 0, %168 ], [ 0, %162 ], [ 0, %159 ], [ 0, %174 ], [ 0, %178 ], [ 0, %182 ], [ 0, %193 ], [ 0, %187 ], [ 0, %199 ], [ 0, %3 ], [ 0, %103 ], [ 0, %84 ], [ 0, %91 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret i8 %204
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #8 !prof !244 !PGOFuncName !271 {
  %2 = load ptr, ptr %0, align 8, !tbaa !238
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  store ptr %4, ptr %0, align 8, !tbaa !238
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !183 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_move_to_bb_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !229 !PGOFuncName !274 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !275

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !232 !PGOFuncName !276 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !234

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !277 !PGOFuncName !278 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !279

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !280
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !282 !PGOFuncName !283 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !284

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !196
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !285 !PGOFuncName !286 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !227 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !288
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !289

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !290

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !291
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 !prof !227 !PGOFuncName !293 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !290

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !296 !PGOFuncName !297 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !298
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !300 !PGOFuncName !301 {
  %2 = load i8, ptr %0, align 8, !tbaa !302
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !303 !PGOFuncName !304 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !305
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !308
  store ptr %6, ptr %0, align 8, !tbaa !309
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #14, !range !168
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !310
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !311 !PGOFuncName !312 {
  %2 = load ptr, ptr %0, align 8, !tbaa !309
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !305
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !313 !PGOFuncName !314 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 !prof !315 !PGOFuncName !316 {
  %2 = load ptr, ptr %0, align 8, !tbaa !309
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !308
  store ptr %4, ptr %0, align 8, !tbaa !309
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #14, !range !168
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !317
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 !prof !318 !PGOFuncName !319 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !321

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !322
  store ptr %8, ptr %2, align 8, !tbaa !320
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !324
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !325

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !326
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #14
  %17 = load ptr, ptr %11, align 8, !tbaa !328
  store ptr %17, ptr %10, align 8, !tbaa !324
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !302
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
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !329 !PGOFuncName !330 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !331

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
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !329 !PGOFuncName !332 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !331

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !183 !PGOFuncName !333 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #14
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !185 !PGOFuncName !334 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !298
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !335 !PGOFuncName !336 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #8 !prof !337 !PGOFuncName !338 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !324
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !339

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !326
  %8 = load ptr, ptr %3, align 8, !tbaa !328
  store ptr %8, ptr %2, align 8, !tbaa !324
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !302
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !185 !PGOFuncName !340 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !298
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !341 !PGOFuncName !342 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !343
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !344 !PGOFuncName !345 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !320
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !346

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !322
  store ptr %7, ptr %2, align 8, !tbaa !320
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !347
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !348
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !349

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !350
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !347
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #14
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !302
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @all_immediate_uses_same_place(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !185 !PGOFuncName !351 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  %4 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #14
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %34, !prof !352

7:                                                ; preds = %1, %29
  %8 = phi ptr [ %31, %29 ], [ %4, %1 ]
  %9 = phi ptr [ %30, %29 ], [ null, %1 ]
  %10 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %8) #14
  %11 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #14, !range !168
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %29, !prof !352

13:                                               ; preds = %7, %24
  %14 = phi ptr [ %26, %24 ], [ %10, %7 ]
  %15 = phi ptr [ %25, %24 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !177
  %18 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %17) #14, !range !168
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24, !prof !353

20:                                               ; preds = %13
  %21 = icmp eq ptr %15, null
  br i1 %21, label %24, label %22, !prof !354

22:                                               ; preds = %20
  %23 = icmp eq ptr %15, %17
  br i1 %23, label %24, label %34, !prof !355

24:                                               ; preds = %20, %22, %13
  %25 = phi ptr [ %15, %13 ], [ %15, %22 ], [ %17, %20 ]
  %26 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #14
  %27 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #14, !range !168
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %13, label %29, !prof !356, !llvm.loop !357

29:                                               ; preds = %24, %7
  %30 = phi ptr [ %9, %7 ], [ %25, %24 ]
  %31 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #14
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %7, label %34, !prof !358, !llvm.loop !359

34:                                               ; preds = %29, %22, %1
  %35 = phi i8 [ 1, %1 ], [ 0, %22 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @nearest_common_dominator_of_uses(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !360 !PGOFuncName !361 {
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
  br i1 %10, label %11, label %52, !prof !362

11:                                               ; preds = %2, %48
  %12 = phi ptr [ %49, %48 ], [ %8, %2 ]
  %13 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %6, ptr noundef %12) #14
  %14 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #14, !range !168
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %48, !prof !362

16:                                               ; preds = %11, %44
  %17 = phi ptr [ %45, %44 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %19) #14, !range !182
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %27, !prof !363

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %17) #14
  %24 = sext i32 %23 to i64
  %25 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %19, i64 noundef %24) #14
  %26 = load ptr, ptr %25, align 8, !tbaa !364
  br label %33

27:                                               ; preds = %16
  %28 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %19) #14, !range !168
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !365

30:                                               ; preds = %27
  store i8 1, ptr %1, align 1, !tbaa !177
  br label %44

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %19) #14
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %26, %22 ], [ %32, %31 ]
  %35 = load ptr, ptr @cfun, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = load ptr, ptr %37, align 8, !tbaa !366
  %39 = icmp eq ptr %34, %38
  br i1 %39, label %74, label %40, !prof !367

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !220
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %42) #15
  br label %44

44:                                               ; preds = %40, %30
  %45 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %6) #14
  %46 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #14, !range !168
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %16, label %48, !prof !368, !llvm.loop !369

48:                                               ; preds = %44, %11
  %49 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %5) #14
  %50 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %11, label %52, !prof !370, !llvm.loop !371

52:                                               ; preds = %48, %2
  %53 = load ptr, ptr @cfun, align 8, !tbaa !196
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !198
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !372
  %58 = tail call i32 @bitmap_first_set_bit(ptr noundef %7) #15
  %59 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %57, i32 noundef %58) #14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %3) #14
  %60 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !168
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62, !prof !370

62:                                               ; preds = %52, %62
  %63 = phi ptr [ %71, %62 ], [ %59, %52 ]
  %64 = load ptr, ptr @cfun, align 8, !tbaa !196
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !198
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !372
  %69 = load i32, ptr %3, align 4, !tbaa !170
  %70 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %68, i32 noundef %69) #14
  %71 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %63, ptr noundef %70) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !168
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %62, !prof !373, !llvm.loop !374

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
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !183 !PGOFuncName !375 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #14
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14, !range !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !182
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14, !range !168
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !376

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !377 !PGOFuncName !378 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bb_for_arg(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !183 !PGOFuncName !379 {
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
  %17 = load ptr, ptr %16, align 8, !tbaa !364
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i8 [ 1, %15 ], [ %7, %5 ]
  %20 = phi ptr [ %17, %15 ], [ %6, %5 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %5, label %25, !llvm.loop !380

25:                                               ; preds = %13, %18, %2
  %26 = phi ptr [ null, %2 ], [ %20, %18 ], [ null, %13 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !381 !PGOFuncName !382 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !383

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 747, ptr noundef nonnull @.str.1) #15
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !384

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !324
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #14
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !324
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !385

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !328
  store ptr %25, ptr %18, align 8, !tbaa !324
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !386

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !320
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #14
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !320
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !387

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !322
  store ptr %41, ptr %32, align 8, !tbaa !320
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !302
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !388 !PGOFuncName !389 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !390

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !185 !PGOFuncName !391 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !349

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !381 !PGOFuncName !392 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !183 !PGOFuncName !393 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !168
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !183 !PGOFuncName !394 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !395
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
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !183 !PGOFuncName !396 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !182
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !183 !PGOFuncName !397 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !170
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !183 !PGOFuncName !398 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !399 !PGOFuncName !400 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !177
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !401

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
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 !prof !399 !PGOFuncName !402 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #14, !range !182
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !403

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
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #9 !prof !399 !PGOFuncName !404 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !405
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #14
  ret ptr %6
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !406 !PGOFuncName !407 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !360 !PGOFuncName !408 {
  %4 = load ptr, ptr %1, align 8, !tbaa !409
  store ptr %4, ptr %0, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !413
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !414

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !411
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !415
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !417
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !395
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !418
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !170
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !406 !PGOFuncName !419 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !418
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !420

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !421

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !170
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !422, !llvm.loop !423

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !170
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !170
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !417
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !411
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !417
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !424

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !395
  store i64 %35, ptr %3, align 8, !tbaa !418
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !425

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !170
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !170
  %40 = load i32, ptr %23, align 8, !tbaa !417
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !417
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !426, !llvm.loop !427

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !428
  store ptr %44, ptr %0, align 8, !tbaa !411
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !429

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !415
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !170
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !418
  store i32 %16, ptr %1, align 4, !tbaa !170
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !430 !PGOFuncName !431 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !418
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !418
  %6 = load i32, ptr %1, align 4, !tbaa !170
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !183 !PGOFuncName !432 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !238
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !240
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !183 !PGOFuncName !433 {
  %2 = load ptr, ptr %0, align 8, !tbaa !238
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !434
  store ptr %4, ptr %0, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 !prof !183 !PGOFuncName !435 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !436
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !183 !PGOFuncName !437 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !177
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!165}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!35 = !{ptr @is_hidden_global_store, ptr @gimple_vdef, i64 1791814}
!36 = !{ptr @is_hidden_global_store, ptr @is_gimple_assign, i64 202}
!37 = !{ptr @is_hidden_global_store, ptr @is_gimple_call, i64 1}
!38 = !{ptr @is_hidden_global_store, ptr @gimple_get_lhs, i64 202}
!39 = !{ptr @is_hidden_global_store, ptr @get_base_address, i64 201}
!40 = !{ptr @is_hidden_global_store, ptr @is_global_var, i64 1}
!41 = !{ptr @is_hidden_global_store, ptr @ptr_deref_may_alias_global_p, i64 200}
!42 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 1791814}
!43 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 201}
!44 = !{ptr @do_sink, ptr @execute_sink_code, i64 38}
!45 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 2037336}
!46 = !{ptr @execute_sink_code, ptr @loop_optimizer_init, i64 38}
!47 = !{ptr @execute_sink_code, ptr @connect_infinite_loops_to_exit, i64 38}
!48 = !{ptr @execute_sink_code, ptr @calculate_dominance_info, i64 76}
!49 = !{ptr @execute_sink_code, ptr @sink_code_in_bb, i64 38}
!50 = !{ptr @execute_sink_code, ptr @statistics_counter_event, i64 38}
!51 = !{ptr @execute_sink_code, ptr @free_dominance_info, i64 38}
!52 = !{ptr @execute_sink_code, ptr @remove_fake_exit_edges, i64 38}
!53 = !{ptr @execute_sink_code, ptr @loop_optimizer_finalize, i64 38}
!54 = !{ptr @sink_code_in_bb, ptr @first_dom_son, i64 683934}
!55 = !{ptr @sink_code_in_bb, ptr @ei_start_1, i64 141054}
!56 = !{ptr @sink_code_in_bb, ptr @ei_cond, i64 426022}
!57 = !{ptr @sink_code_in_bb, ptr @ei_next, i64 284968}
!58 = !{ptr @sink_code_in_bb, ptr @gsi_last_bb, i64 141054}
!59 = !{ptr @sink_code_in_bb, ptr @gsi_end_p, i64 809675}
!60 = !{ptr @sink_code_in_bb, ptr @gsi_stmt, i64 334311}
!61 = !{ptr @sink_code_in_bb, ptr @statement_sink_location, i64 334311}
!62 = !{ptr @sink_code_in_bb, ptr @gsi_prev, i64 334309}
!63 = !{ptr @sink_code_in_bb, ptr @fwrite, i64 1}
!64 = !{ptr @sink_code_in_bb, ptr @print_gimple_stmt, i64 1}
!65 = !{ptr @sink_code_in_bb, ptr @gsi_bb, i64 2}
!66 = !{ptr @sink_code_in_bb, ptr @fprintf, i64 1}
!67 = !{ptr @sink_code_in_bb, ptr @gsi_move_to_bb_end, i64 1}
!68 = !{ptr @sink_code_in_bb, ptr @sink_code_in_bb, i64 341929}
!69 = !{ptr @sink_code_in_bb, ptr @next_dom_son, i64 341929}
!70 = !{ptr @ei_cond, ptr @ei_end_p, i64 426025}
!71 = !{ptr @ei_cond, ptr @ei_edge, i64 284971}
!72 = !{ptr @ei_next, ptr @ei_container, i64 569941}
!73 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 284971}
!74 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!75 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 141054}
!76 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 141054}
!77 = !{ptr @statement_sink_location, ptr @op_iter_init_tree, i64 334316}
!78 = !{ptr @statement_sink_location, ptr @op_iter_done, i64 670632}
!79 = !{ptr @statement_sink_location, ptr @first_readonly_imm_use, i64 334371}
!80 = !{ptr @statement_sink_location, ptr @end_readonly_imm_use_p, i64 334373}
!81 = !{ptr @statement_sink_location, ptr @is_gimple_debug, i64 334138}
!82 = !{ptr @statement_sink_location, ptr @next_readonly_imm_use, i64 2}
!83 = !{ptr @statement_sink_location, ptr @op_iter_next_tree, i64 234}
!84 = !{ptr @statement_sink_location, ptr @gimple_code, i64 411423}
!85 = !{ptr @statement_sink_location, ptr @stmt_ends_bb_p, i64 215262}
!86 = !{ptr @statement_sink_location, ptr @gimple_has_side_effects, i64 215260}
!87 = !{ptr @statement_sink_location, ptr @is_hidden_global_store, i64 215258}
!88 = !{ptr @statement_sink_location, ptr @gimple_has_volatile_ops, i64 215257}
!89 = !{ptr @statement_sink_location, ptr @gimple_vuse, i64 215255}
!90 = !{ptr @statement_sink_location, ptr @gimple_assign_lhs, i64 4}
!91 = !{ptr @statement_sink_location, ptr @vector_type_mode, i64 1}
!92 = !{ptr @statement_sink_location, ptr @op_iter_init_def, i64 80818}
!93 = !{ptr @statement_sink_location, ptr @get_def_from_ptr, i64 80818}
!94 = !{ptr @statement_sink_location, ptr @is_global_var, i64 80818}
!95 = !{ptr @statement_sink_location, ptr @op_iter_next_def, i64 80814}
!96 = !{ptr @statement_sink_location, ptr @op_iter_init_use, i64 80814}
!97 = !{ptr @statement_sink_location, ptr @get_use_from_ptr, i64 96659}
!98 = !{ptr @statement_sink_location, ptr @op_iter_next_use, i64 93638}
!99 = !{ptr @statement_sink_location, ptr @all_immediate_uses_same_place, i64 77794}
!100 = !{ptr @statement_sink_location, ptr @nearest_common_dominator_of_uses, i64 506}
!101 = !{ptr @statement_sink_location, ptr @dominated_by_p, i64 3}
!102 = !{ptr @statement_sink_location, ptr @gimple_bb, i64 77287}
!103 = !{ptr @statement_sink_location, ptr @find_bb_for_arg, i64 2}
!104 = !{ptr @ei_end_p, ptr @ei_container, i64 852049}
!105 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 426025}
!106 = !{ptr @ei_edge, ptr @ei_container, i64 569941}
!107 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 284971}
!108 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!109 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 380704}
!110 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 380704}
!111 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 238368}
!112 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 237563}
!113 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 46905}
!114 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!115 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 238367}
!116 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 122761}
!117 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 122761}
!118 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 46091}
!119 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 46091}
!120 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 46091}
!121 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 46091}
!122 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!123 = !{ptr @all_immediate_uses_same_place, ptr @op_iter_init_tree, i64 46091}
!124 = !{ptr @all_immediate_uses_same_place, ptr @op_iter_done, i64 92178}
!125 = !{ptr @all_immediate_uses_same_place, ptr @first_readonly_imm_use, i64 46390}
!126 = !{ptr @all_immediate_uses_same_place, ptr @end_readonly_imm_use_p, i64 93168}
!127 = !{ptr @all_immediate_uses_same_place, ptr @is_gimple_debug, i64 47081}
!128 = !{ptr @all_immediate_uses_same_place, ptr @next_readonly_imm_use, i64 46778}
!129 = !{ptr @all_immediate_uses_same_place, ptr @op_iter_next_tree, i64 46087}
!130 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_obstack_alloc_stat, i64 299}
!131 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_clear, i64 299}
!132 = !{ptr @nearest_common_dominator_of_uses, ptr @op_iter_init_tree, i64 299}
!133 = !{ptr @nearest_common_dominator_of_uses, ptr @op_iter_done, i64 597}
!134 = !{ptr @nearest_common_dominator_of_uses, ptr @first_readonly_imm_use, i64 299}
!135 = !{ptr @nearest_common_dominator_of_uses, ptr @end_readonly_imm_use_p, i64 1020}
!136 = !{ptr @nearest_common_dominator_of_uses, ptr @gimple_code, i64 722}
!137 = !{ptr @nearest_common_dominator_of_uses, ptr @phi_arg_index_from_use, i64 194}
!138 = !{ptr @nearest_common_dominator_of_uses, ptr @gimple_phi_arg_edge, i64 194}
!139 = !{ptr @nearest_common_dominator_of_uses, ptr @is_gimple_debug, i64 528}
!140 = !{ptr @nearest_common_dominator_of_uses, ptr @gimple_bb, i64 527}
!141 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_set_bit, i64 720}
!142 = !{ptr @nearest_common_dominator_of_uses, ptr @next_readonly_imm_use, i64 721}
!143 = !{ptr @nearest_common_dominator_of_uses, ptr @op_iter_next_tree, i64 298}
!144 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_first_set_bit, i64 298}
!145 = !{ptr @nearest_common_dominator_of_uses, ptr @VEC_basic_block_base_index, i64 1019}
!146 = !{ptr @nearest_common_dominator_of_uses, ptr @bmp_iter_set_init, i64 298}
!147 = !{ptr @nearest_common_dominator_of_uses, ptr @bmp_iter_set, i64 1019}
!148 = !{ptr @nearest_common_dominator_of_uses, ptr @nearest_common_dominator, i64 721}
!149 = !{ptr @nearest_common_dominator_of_uses, ptr @bmp_iter_next, i64 721}
!150 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_obstack_free, i64 299}
!151 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!152 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 426794}
!153 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!154 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 46092}
!155 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1}
!156 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 426795}
!157 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 46091}
!158 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 472886}
!159 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!160 = !{ptr @phi_arg_index_from_use, ptr @gimple_code, i64 194}
!161 = !{ptr @phi_arg_index_from_use, ptr @fancy_abort, i64 1}
!162 = !{ptr @phi_arg_index_from_use, ptr @gimple_phi_arg, i64 194}
!163 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 194}
!164 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 194}
!165 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!166 = !{!"function_entry_count", i64 1791814}
!167 = !{!"branch_weights", i32 1791614, i32 202}
!168 = !{i8 0, i8 2}
!169 = !{!"branch_weights", i32 1, i32 202}
!170 = !{!171, !171, i64 0}
!171 = !{!"int", !172, i64 0}
!172 = !{!"omnipotent char", !173, i64 0}
!173 = !{!"Simple C/C++ TBAA"}
!174 = !{!"branch_weights", i32 202, i32 1}
!175 = !{!"branch_weights", i32 10631107, i32 2136852541}
!176 = !{!"branch_weights", i32 811, i32 1}
!177 = !{!172, !172, i64 0}
!178 = !{!"tree-ssa-sink.c:gimple_vdef"}
!179 = !{!"branch_weights", i32 849491, i32 942325}
!180 = !{!"function_entry_count", i64 201}
!181 = !{!"tree-ssa-sink.c:is_gimple_assign"}
!182 = !{i32 0, i32 256}
!183 = !{!"function_entry_count", i64 0}
!184 = !{!"tree-ssa-sink.c:is_gimple_call"}
!185 = !{!"function_entry_count", i64 46091}
!186 = !{!"tree-ssa-sink.c:is_global_var"}
!187 = !{!"branch_weights", i32 46092, i32 1}
!188 = !{!"function_entry_count", i64 38}
!189 = !{!"tree-ssa-sink.c:gate_sink"}
!190 = !{!"tree-ssa-sink.c:do_sink"}
!191 = !{!"function_entry_count", i64 2037336}
!192 = !{!"tree-ssa-sink.c:gimple_has_mem_ops"}
!193 = !{!"function_entry_count", i64 4645982}
!194 = !{!"tree-ssa-sink.c:gimple_code"}
!195 = !{!"tree-ssa-sink.c:execute_sink_code"}
!196 = !{!197, !197, i64 0}
!197 = !{!"any pointer", !172, i64 0}
!198 = !{!199, !197, i64 8}
!199 = !{!"function", !197, i64 0, !197, i64 8, !197, i64 16, !197, i64 24, !197, i64 32, !197, i64 40, !197, i64 48, !197, i64 56, !197, i64 64, !197, i64 72, !197, i64 80, !197, i64 88, !197, i64 96, !171, i64 104, !171, i64 108, !171, i64 112, !171, i64 116, !171, i64 120, !171, i64 124, !197, i64 128, !171, i64 136, !171, i64 137, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139}
!200 = !{!201, !197, i64 8}
!201 = !{!"control_flow_graph", !197, i64 0, !197, i64 8, !197, i64 16, !171, i64 24, !171, i64 28, !171, i64 32, !197, i64 40, !171, i64 48, !172, i64 52, !172, i64 60, !171, i64 68, !171, i64 72}
!202 = !{!203, !171, i64 0}
!203 = !{!"", !171, i64 0}
!204 = !{!"function_entry_count", i64 341967}
!205 = !{!"tree-ssa-sink.c:sink_code_in_bb"}
!206 = !{!"branch_weights", i32 200914, i32 141055}
!207 = !{i64 0, i64 4, !170, i64 8, i64 8, !196}
!208 = !{i64 0, i64 8, !196}
!209 = !{!"branch_weights", i32 1, i32 141054}
!210 = !{!211, !171, i64 48}
!211 = !{!"edge_def", !197, i64 0, !197, i64 8, !172, i64 16, !197, i64 24, !197, i64 32, !171, i64 40, !171, i64 44, !171, i64 48, !171, i64 52, !212, i64 56}
!212 = !{!"long", !172, i64 0}
!213 = !{!"branch_weights", i32 284972, i32 1}
!214 = !{!"branch_weights", i32 141054, i32 143918}
!215 = distinct !{!215, !216}
!216 = !{!"llvm.loop.mustprogress"}
!217 = !{!"branch_weights", i32 141054, i32 1}
!218 = !{!"branch_weights", i32 334315, i32 1}
!219 = distinct !{!219, !216}
!220 = !{!221, !171, i64 80}
!221 = !{!"basic_block_def", !197, i64 0, !197, i64 8, !197, i64 16, !197, i64 24, !172, i64 32, !197, i64 48, !197, i64 56, !172, i64 64, !212, i64 72, !171, i64 80, !171, i64 84, !171, i64 88, !171, i64 92, !171, i64 96}
!222 = !{i64 0, i64 8, !196, i64 8, i64 8, !196, i64 16, i64 8, !196}
!223 = !{!"branch_weights", i32 193261, i32 141054}
!224 = !{!"branch_weights", i32 38, i32 341930}
!225 = !{!"branch_weights", i32 341930, i32 0}
!226 = distinct !{!226, !216}
!227 = !{!"function_entry_count", i64 141054}
!228 = !{!"tree-ssa-sink.c:ei_start_1"}
!229 = !{!"function_entry_count", i64 426025}
!230 = !{!"tree-ssa-sink.c:ei_cond"}
!231 = !{!"branch_weights", i32 284972, i32 141055}
!232 = !{!"function_entry_count", i64 284971}
!233 = !{!"tree-ssa-sink.c:ei_next"}
!234 = !{!"branch_weights", i32 1, i32 284972}
!235 = !{!236, !171, i64 0}
!236 = !{!"", !171, i64 0, !197, i64 8}
!237 = !{!"tree-ssa-sink.c:gsi_last_bb"}
!238 = !{!239, !197, i64 0}
!239 = !{!"", !197, i64 0, !197, i64 8, !197, i64 16}
!240 = !{!239, !197, i64 8}
!241 = !{!239, !197, i64 16}
!242 = !{!"function_entry_count", i64 809682}
!243 = !{!"tree-ssa-sink.c:gsi_end_p"}
!244 = !{!"function_entry_count", i64 334314}
!245 = !{!"tree-ssa-sink.c:gsi_stmt"}
!246 = !{!247, !197, i64 0}
!247 = !{!"gimple_seq_node_d", !197, i64 0, !197, i64 8, !197, i64 16}
!248 = !{!"tree-ssa-sink.c:statement_sink_location"}
!249 = !{!"branch_weights", i32 143761, i32 1}
!250 = !{!"branch_weights", i32 1425, i32 1}
!251 = !{!"branch_weights", i32 190554, i32 1}
!252 = !{!"branch_weights", i32 189129, i32 1425}
!253 = distinct !{!253, !216}
!254 = !{!"branch_weights", i32 2147472462, i32 11186}
!255 = !{!"branch_weights", i32 48218, i32 143761}
!256 = distinct !{!256, !216}
!257 = !{!"branch_weights", i32 122762, i32 67793}
!258 = !{!"branch_weights", i32 122762, i32 1}
!259 = !{!"branch_weights", i32 46092, i32 76671}
!260 = !{!"branch_weights", i32 46091, i32 1}
!261 = !{!"branch_weights", i32 1, i32 46091}
!262 = distinct !{!262, !216}
!263 = !{!"branch_weights", i32 9389, i32 46091}
!264 = distinct !{!264, !216}
!265 = !{!"branch_weights", i32 300, i32 45793}
!266 = !{!"branch_weights", i32 300, i32 1}
!267 = !{!221, !171, i64 84}
!268 = !{!"branch_weights", i32 1, i32 45793}
!269 = !{!"branch_weights", i32 45793, i32 1}
!270 = !{!221, !197, i64 24}
!271 = !{!"tree-ssa-sink.c:gsi_prev"}
!272 = !{!247, !197, i64 8}
!273 = !{!"tree-ssa-sink.c:gsi_bb"}
!274 = !{!"tree-ssa-sink.c:ei_end_p"}
!275 = !{!"branch_weights", i32 1, i32 426026}
!276 = !{!"tree-ssa-sink.c:ei_edge"}
!277 = !{!"function_entry_count", i64 710996}
!278 = !{!"tree-ssa-sink.c:VEC_edge_base_length"}
!279 = !{!"branch_weights", i32 1, i32 710997}
!280 = !{!281, !171, i64 0}
!281 = !{!"VEC_edge_base", !171, i64 0, !171, i64 4, !172, i64 8}
!282 = !{!"function_entry_count", i64 1991934}
!283 = !{!"tree-ssa-sink.c:ei_container"}
!284 = !{!"branch_weights", i32 1, i32 1991935}
!285 = !{!"function_entry_count", i64 285165}
!286 = !{!"tree-ssa-sink.c:VEC_edge_base_index"}
!287 = !{!"tree-ssa-sink.c:bb_seq"}
!288 = !{!221, !171, i64 96}
!289 = !{!"branch_weights", i32 141055, i32 1}
!290 = !{!"branch_weights", i32 1, i32 141055}
!291 = !{!292, !197, i64 0}
!292 = !{!"gimple_bb_info", !197, i64 0, !197, i64 8}
!293 = !{!"tree-ssa-sink.c:gimple_seq_last"}
!294 = !{!295, !197, i64 8}
!295 = !{!"gimple_seq_d", !197, i64 0, !197, i64 8, !197, i64 16}
!296 = !{!"function_entry_count", i64 380704}
!297 = !{!"tree-ssa-sink.c:op_iter_init_tree"}
!298 = !{!299, !171, i64 4}
!299 = !{!"ssa_operand_iterator_d", !172, i64 0, !171, i64 4, !197, i64 8, !197, i64 16, !171, i64 24, !171, i64 28, !197, i64 32}
!300 = !{!"function_entry_count", i64 621972}
!301 = !{!"tree-ssa-sink.c:op_iter_done"}
!302 = !{!299, !172, i64 0}
!303 = !{!"function_entry_count", i64 238368}
!304 = !{!"tree-ssa-sink.c:first_readonly_imm_use"}
!305 = !{!306, !197, i64 8}
!306 = !{!"immediate_use_iterator_d", !197, i64 0, !197, i64 8, !307, i64 16, !197, i64 48}
!307 = !{!"ssa_use_operand_d", !197, i64 0, !197, i64 8, !172, i64 16, !197, i64 24}
!308 = !{!307, !197, i64 8}
!309 = !{!306, !197, i64 0}
!310 = !{!"branch_weights", i32 236944, i32 1426}
!311 = !{!"function_entry_count", i64 570546}
!312 = !{!"tree-ssa-sink.c:end_readonly_imm_use_p"}
!313 = !{!"function_entry_count", i64 237563}
!314 = !{!"tree-ssa-sink.c:is_gimple_debug"}
!315 = !{!"function_entry_count", i64 46905}
!316 = !{!"tree-ssa-sink.c:next_readonly_imm_use"}
!317 = !{!"branch_weights", i32 815, i32 46092}
!318 = !{!"function_entry_count", i64 428220}
!319 = !{!"tree-ssa-sink.c:op_iter_next_tree"}
!320 = !{!299, !197, i64 16}
!321 = !{!"branch_weights", i32 428221, i32 1}
!322 = !{!323, !197, i64 0}
!323 = !{!"use_optype_d", !197, i64 0, !307, i64 8}
!324 = !{!299, !197, i64 8}
!325 = !{!"branch_weights", i32 189853, i32 238369}
!326 = !{!327, !197, i64 8}
!327 = !{!"def_optype_d", !197, i64 0, !197, i64 8}
!328 = !{!327, !197, i64 0}
!329 = !{!"function_entry_count", i64 122761}
!330 = !{!"tree-ssa-sink.c:gimple_has_volatile_ops"}
!331 = !{!"branch_weights", i32 1, i32 122762}
!332 = !{!"tree-ssa-sink.c:gimple_vuse"}
!333 = !{!"tree-ssa-sink.c:gimple_assign_lhs"}
!334 = !{!"tree-ssa-sink.c:op_iter_init_def"}
!335 = !{!"function_entry_count", i64 284459}
!336 = !{!"tree-ssa-sink.c:get_def_from_ptr"}
!337 = !{!"function_entry_count", i64 92182}
!338 = !{!"tree-ssa-sink.c:op_iter_next_def"}
!339 = !{!"branch_weights", i32 46092, i32 46092}
!340 = !{!"tree-ssa-sink.c:op_iter_init_use"}
!341 = !{!"function_entry_count", i64 55479}
!342 = !{!"tree-ssa-sink.c:get_use_from_ptr"}
!343 = !{!307, !197, i64 24}
!344 = !{!"function_entry_count", i64 101570}
!345 = !{!"tree-ssa-sink.c:op_iter_next_use"}
!346 = !{!"branch_weights", i32 46092, i32 55480}
!347 = !{!299, !171, i64 24}
!348 = !{!299, !171, i64 28}
!349 = !{!"branch_weights", i32 1, i32 46092}
!350 = !{!299, !197, i64 32}
!351 = !{!"tree-ssa-sink.c:all_immediate_uses_same_place"}
!352 = !{!"branch_weights", i32 45792, i32 1}
!353 = !{!"branch_weights", i32 46480, i32 1}
!354 = !{!"branch_weights", i32 46092, i32 389}
!355 = !{!"branch_weights", i32 90, i32 300}
!356 = !{!"branch_weights", i32 688, i32 45792}
!357 = distinct !{!357, !216}
!358 = !{!"branch_weights", i32 300, i32 45792}
!359 = distinct !{!359, !216}
!360 = !{!"function_entry_count", i64 299}
!361 = !{!"tree-ssa-sink.c:nearest_common_dominator_of_uses"}
!362 = !{!"branch_weights", i32 299, i32 1}
!363 = !{!"branch_weights", i32 195, i32 532}
!364 = !{!211, !197, i64 0}
!365 = !{!"branch_weights", i32 532, i32 1}
!366 = !{!201, !197, i64 0}
!367 = !{!"branch_weights", i32 1, i32 726}
!368 = !{!"branch_weights", i32 427, i32 299}
!369 = distinct !{!369, !216}
!370 = !{!"branch_weights", i32 1, i32 299}
!371 = distinct !{!371, !216}
!372 = !{!201, !197, i64 16}
!373 = !{!"branch_weights", i32 299, i32 427}
!374 = distinct !{!374, !216}
!375 = !{!"tree-ssa-sink.c:gsi_after_labels"}
!376 = distinct !{!376, !216}
!377 = !{!"function_entry_count", i64 46711}
!378 = !{!"tree-ssa-sink.c:gimple_bb"}
!379 = !{!"tree-ssa-sink.c:find_bb_for_arg"}
!380 = distinct !{!380, !216}
!381 = !{!"function_entry_count", i64 472886}
!382 = !{!"tree-ssa-sink.c:op_iter_init"}
!383 = !{!"branch_weights", i32 16919, i32 -293942370}
!384 = !{!"branch_weights", i32 46092, i32 426796}
!385 = !{!"branch_weights", i32 2147478617, i32 5031}
!386 = !{!"branch_weights", i32 426796, i32 46092}
!387 = !{!"branch_weights", i32 2147437059, i32 46589}
!388 = !{!"function_entry_count", i64 426795}
!389 = !{!"tree-ssa-sink.c:gimple_def_ops"}
!390 = !{!"branch_weights", i32 1, i32 426796}
!391 = !{!"tree-ssa-sink.c:gimple_use_ops"}
!392 = !{!"tree-ssa-sink.c:gimple_has_ops"}
!393 = !{!"tree-ssa-sink.c:gimple_op"}
!394 = !{!"tree-ssa-sink.c:gimple_ops"}
!395 = !{!212, !212, i64 0}
!396 = !{!"tree-ssa-sink.c:gimple_statement_structure"}
!397 = !{!"tree-ssa-sink.c:gss_for_code"}
!398 = !{!"tree-ssa-sink.c:gimple_phi_arg_imm_use_ptr"}
!399 = !{!"function_entry_count", i64 194}
!400 = !{!"tree-ssa-sink.c:gimple_phi_arg"}
!401 = !{!"branch_weights", i32 1, i32 195}
!402 = !{!"tree-ssa-sink.c:phi_arg_index_from_use"}
!403 = !{!"branch_weights", i32 195, i32 1}
!404 = !{!"tree-ssa-sink.c:gimple_phi_arg_edge"}
!405 = !{!221, !197, i64 0}
!406 = !{!"function_entry_count", i64 1024}
!407 = !{!"tree-ssa-sink.c:VEC_basic_block_base_index"}
!408 = !{!"tree-ssa-sink.c:bmp_iter_set_init"}
!409 = !{!410, !197, i64 0}
!410 = !{!"bitmap_head_def", !197, i64 0, !197, i64 8, !171, i64 16, !197, i64 24}
!411 = !{!412, !197, i64 0}
!412 = !{!"", !197, i64 0, !197, i64 8, !171, i64 16, !212, i64 24}
!413 = !{!412, !197, i64 8}
!414 = !{!"branch_weights", i32 1, i32 300}
!415 = !{!416, !171, i64 16}
!416 = !{!"bitmap_element_def", !197, i64 0, !197, i64 8, !171, i64 16, !172, i64 24}
!417 = !{!412, !171, i64 16}
!418 = !{!412, !212, i64 24}
!419 = !{!"tree-ssa-sink.c:bmp_iter_set"}
!420 = !{!"branch_weights", i32 552, i32 474}
!421 = !{!"branch_weights", i32 725, i32 1}
!422 = !{!"branch_weights", i32 12430, i32 725}
!423 = distinct !{!423, !216}
!424 = !{!"branch_weights", i32 1, i32 406}
!425 = !{!"branch_weights", i32 262, i32 253}
!426 = !{!"branch_weights", i32 406, i32 108}
!427 = distinct !{!427, !216}
!428 = !{!416, !197, i64 0}
!429 = !{!"branch_weights", i32 300, i32 108}
!430 = !{!"function_entry_count", i64 725}
!431 = !{!"tree-ssa-sink.c:bmp_iter_next"}
!432 = !{!"tree-ssa-sink.c:gsi_start_bb"}
!433 = !{!"tree-ssa-sink.c:gsi_next"}
!434 = !{!247, !197, i64 16}
!435 = !{!"tree-ssa-sink.c:gimple_seq_first"}
!436 = !{!295, !197, i64 0}
!437 = !{!"tree-ssa-sink.c:gimple_phi_num_args"}
