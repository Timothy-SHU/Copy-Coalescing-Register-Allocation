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
@pass_sink_code = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_sink, ptr @do_sink, ptr null, ptr null, i32 0, i32 72, i32 104, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
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
define dso_local zeroext i8 @is_hidden_global_store(ptr noundef %0) local_unnamed_addr #0 !prof !186 {
  %2 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4, !prof !187

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #14, !range !188
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11, !prof !189

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #14, !range !188
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !190

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %4, %7, %10
  %12 = tail call ptr @gimple_get_lhs(ptr noundef %0) #15
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !191
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %26, !prof !195

18:                                               ; preds = %11
  %19 = tail call ptr @get_base_address(ptr noundef nonnull %12) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21, !prof !196

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !191
  br label %26

26:                                               ; preds = %21, %11
  %27 = phi i32 [ %25, %21 ], [ %16, %11 ]
  %28 = phi i64 [ %22, %21 ], [ %13, %11 ]
  %29 = phi ptr [ %19, %21 ], [ %12, %11 ]
  %30 = icmp eq i32 %27, 3
  br i1 %30, label %31, label %33, !prof !197

31:                                               ; preds = %26
  %32 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %29) #14, !range !188
  br label %43

33:                                               ; preds = %26
  %34 = trunc i64 %28 to i32
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -47
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %38, label %42, !prof !198

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !199
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
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !186 !PGOFuncName !200 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !188
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !201

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !202 !PGOFuncName !203 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !205 !PGOFuncName !206 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
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
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !207 !PGOFuncName !208 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !209

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !210 !PGOFuncName !211 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !212 !PGOFuncName !213 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_sink() #4 !prof !214 !PGOFuncName !215 {
  %1 = load i32, ptr @flag_tree_sink, align 4, !tbaa !191
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @do_sink() #0 !prof !214 !PGOFuncName !216 {
  tail call fastcc void @execute_sink_code() #14
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_sink_code() unnamed_addr #0 !prof !214 !PGOFuncName !217 {
  tail call void @loop_optimizer_init(i32 noundef 7) #15
  tail call void @connect_infinite_loops_to_exit() #15
  store i32 0, ptr @sink_stats.0, align 4
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  tail call void @calculate_dominance_info(i32 noundef 2) #15
  %1 = load ptr, ptr @cfun, align 8, !tbaa !218
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  tail call fastcc void @sink_code_in_bb(ptr noundef %5) #14
  %6 = load ptr, ptr @cfun, align 8, !tbaa !218
  %7 = load i32, ptr @sink_stats.0, align 4, !tbaa !224
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
define internal fastcc void @sink_code_in_bb(ptr noundef %0) unnamed_addr #0 !prof !226 !PGOFuncName !227 {
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
  br i1 %8, label %70, label %9, !prof !228

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !229
  %12 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !230
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %4) #14, !range !188
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15, !prof !231

15:                                               ; preds = %9, %21
  %16 = load ptr, ptr %4, align 8, !tbaa !218
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !232
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %70, !prof !235

21:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %22 = load i32, ptr %3, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %4) #14, !range !188
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !prof !236, !llvm.loop !237

26:                                               ; preds = %21, %9
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #14
  %27 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !188
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %70, !prof !239

29:                                               ; preds = %26, %66
  %30 = phi i8 [ %67, %66 ], [ 1, %26 ]
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %32 = call fastcc zeroext i8 @statement_sink_location(ptr noundef %31, ptr noundef %0, ptr noundef nonnull %5) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38, !prof !240

34:                                               ; preds = %29
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !188
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %66, !prof !241, !llvm.loop !242

37:                                               ; preds = %34
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #14
  br label %66, !llvm.loop !242

38:                                               ; preds = %29
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !218
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41, !prof !243

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %43 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr nonnull %39)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !218
  call void @print_gimple_stmt(ptr noundef %44, ptr noundef %31, i32 noundef 0, i32 noundef 64) #15
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !218
  %46 = load i32, ptr %42, align 8, !tbaa !244
  %47 = call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !244
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.5, i32 noundef %46, i32 noundef %49) #14
  br label %51

51:                                               ; preds = %41, %38
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14, !range !188
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54, !prof !246

54:                                               ; preds = %51
  %55 = call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #14
  call void @gsi_move_to_bb_end(ptr noundef nonnull %2, ptr noundef %55) #15
  br label %57

56:                                               ; preds = %51
  call void @gsi_move_before(ptr noundef nonnull %2, ptr noundef nonnull %5) #15
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i32, ptr @sink_stats.0, align 4, !tbaa !224
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr @sink_stats.0, align 4, !tbaa !224
  %60 = icmp eq i8 %30, 0
  br i1 %60, label %62, label %61, !prof !247

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !248
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %66, !llvm.loop !242

62:                                               ; preds = %57
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !188
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66, !prof !249

65:                                               ; preds = %62
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #14
  br label %66

66:                                               ; preds = %62, %65, %34, %37, %61
  %67 = phi i8 [ 1, %61 ], [ 0, %37 ], [ 0, %34 ], [ 0, %65 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !188
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %29, label %70, !prof !250

70:                                               ; preds = %15, %66, %26, %1
  %71 = call ptr @first_dom_son(i32 noundef 2, ptr noundef %0) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73, !prof !251

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %75, %73 ], [ %71, %70 ]
  call fastcc void @sink_code_in_bb(ptr noundef nonnull %74) #14
  %75 = call ptr @next_dom_son(i32 noundef 2, ptr noundef nonnull %74) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %73, !prof !252, !llvm.loop !253

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !254 !PGOFuncName !255 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !256 !PGOFuncName !257 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !188
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !258

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !218
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !259 !PGOFuncName !260 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !261

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !235

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !262
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !262
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !264 !PGOFuncName !265 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !266
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !268
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !270 !PGOFuncName !271 {
  %2 = load ptr, ptr %0, align 8, !tbaa !266
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !272 !PGOFuncName !273 {
  %2 = load ptr, ptr %0, align 8, !tbaa !266
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @statement_sink_location(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !276 !PGOFuncName !277 {
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
  br i1 %12, label %13, label %203, !prof !278

13:                                               ; preds = %3, %31
  %14 = phi ptr [ %32, %31 ], [ %10, %3 ]
  %15 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef %14) #14
  %16 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #14, !range !188
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28, !prof !279

18:                                               ; preds = %13, %24
  %19 = phi ptr [ %25, %24 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !199
  %22 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %21) #14, !range !188
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24, !prof !280

24:                                               ; preds = %18
  %25 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #14
  %26 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #14, !range !188
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %18, label %28, !prof !281, !llvm.loop !282

28:                                               ; preds = %24, %13
  %29 = phi ptr [ %15, %13 ], [ %25, %24 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35, !prof !283

31:                                               ; preds = %28
  %32 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #14
  %33 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %13, label %203, !prof !284, !llvm.loop !285

35:                                               ; preds = %28, %18
  %36 = phi ptr [ %19, %18 ], [ %29, %28 ]
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %39, label %203, !prof !286

39:                                               ; preds = %35
  %40 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %203, !prof !287

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %203, !prof !288

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @is_hidden_global_store(ptr noundef %0) #14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %203, !prof !289

48:                                               ; preds = %45
  %49 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #14, !range !188
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %203, !prof !290

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %203, !prof !291

54:                                               ; preds = %51
  %55 = load ptr, ptr @cfun, align 8, !tbaa !218
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 20
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %60, !prof !292

60:                                               ; preds = %54
  %61 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #14
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !199
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  %67 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #14
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !199
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
  br i1 %83, label %84, label %99, !prof !293

84:                                               ; preds = %80, %95
  %85 = phi ptr [ %96, %95 ], [ %81, %80 ]
  %86 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %85) #14
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !199
  %89 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %88) #14, !range !188
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %203, !prof !292

91:                                               ; preds = %84
  %92 = load i64, ptr %86, align 8
  %93 = and i64 %92, 4194304
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %203, !prof !292

95:                                               ; preds = %91
  %96 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %4) #14
  %97 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %84, label %99, !prof !294, !llvm.loop !295

99:                                               ; preds = %95, %80
  %100 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %0) #14
  %101 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #14
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %113, !prof !293

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
  br i1 %112, label %103, label %113, !prof !296, !llvm.loop !297

113:                                              ; preds = %109, %99
  %114 = tail call fastcc zeroext i8 @all_immediate_uses_same_place(ptr noundef %0) #14, !range !188
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %154, !prof !298

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %117 = call fastcc ptr @nearest_common_dominator_of_uses(ptr noundef %0, ptr noundef nonnull %6) #14
  %118 = icmp eq ptr %117, %1
  br i1 %118, label %152, label %119, !prof !299

119:                                              ; preds = %116
  %120 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %117, ptr noundef %1) #15
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %152, label %122, !prof !300

122:                                              ; preds = %119
  %123 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %1, ptr noundef %117) #15
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125, !prof !301

125:                                              ; preds = %122
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !218
  %127 = icmp eq ptr %126, null
  br i1 %127, label %152, label %128, !prof !302

128:                                              ; preds = %125
  %129 = load i32, ptr @dump_flags, align 4, !tbaa !191
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %128
  %133 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 62, i64 1, ptr nonnull %126)
  br label %152

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 10
  %136 = load i32, ptr %135, align 4, !tbaa !303
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %138 = load i32, ptr %137, align 4, !tbaa !303
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %152, label %140, !prof !304

140:                                              ; preds = %134
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !218
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143, !prof !305

143:                                              ; preds = %140
  %144 = load i32, ptr @dump_flags, align 4, !tbaa !191
  %145 = and i32 %144, 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 9
  %149 = load i32, ptr %148, align 8, !tbaa !244
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %141, ptr noundef nonnull @.str.8, i32 noundef %149) #14
  br label %151

151:                                              ; preds = %147, %143, %140
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %117) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !248
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %152

152:                                              ; preds = %134, %125, %128, %132, %119, %116, %151
  %153 = phi i8 [ 1, %151 ], [ 0, %116 ], [ 0, %119 ], [ 0, %132 ], [ 0, %128 ], [ 0, %125 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %203

154:                                              ; preds = %113
  %155 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !199
  %157 = tail call fastcc i32 @gimple_code(ptr noundef %156) #14, !range !204
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %178, label %159, !prof !306

159:                                              ; preds = %154
  %160 = tail call fastcc ptr @gimple_bb(ptr noundef %156) #14
  %161 = icmp eq ptr %160, %1
  br i1 %161, label %203, label %162, !prof !307

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 10
  %164 = load i32, ptr %163, align 4, !tbaa !303
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %166 = load i32, ptr %165, align 4, !tbaa !303
  %167 = icmp sgt i32 %164, %166
  br i1 %167, label %203, label %168, !prof !308

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !309
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !309
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %174, label %203, !prof !310

174:                                              ; preds = %168
  %175 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %160) #15
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %203, !prof !311

177:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %156) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !248
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %203

178:                                              ; preds = %154
  %179 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0) #14
  %180 = tail call fastcc ptr @find_bb_for_arg(ptr noundef %156, ptr noundef %179) #14
  %181 = icmp eq ptr %180, null
  br i1 %181, label %203, label %182, !prof !312

182:                                              ; preds = %178
  %183 = tail call fastcc ptr @gimple_bb(ptr noundef %156) #14
  %184 = icmp eq ptr %183, %1
  %185 = icmp eq ptr %180, %1
  %186 = or i1 %185, %184
  br i1 %186, label %203, label %187, !prof !313

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 10
  %189 = load i32, ptr %188, align 4, !tbaa !303
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %191 = load i32, ptr %190, align 4, !tbaa !303
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %203, label %193, !prof !314

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !309
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !309
  %198 = icmp eq ptr %195, %197
  br i1 %198, label %199, label %203, !prof !315

199:                                              ; preds = %193
  %200 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %180) #15
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %203, !prof !316

202:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %180) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !248
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %203

203:                                              ; preds = %31, %91, %84, %103, %3, %199, %187, %193, %182, %178, %174, %159, %162, %168, %39, %42, %45, %48, %51, %77, %35, %202, %177, %152
  %204 = phi i8 [ 1, %177 ], [ 1, %202 ], [ %153, %152 ], [ 0, %35 ], [ 0, %77 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ], [ 0, %42 ], [ 0, %39 ], [ 0, %168 ], [ 0, %162 ], [ 0, %159 ], [ 0, %174 ], [ 0, %178 ], [ 0, %182 ], [ 0, %193 ], [ 0, %187 ], [ 0, %199 ], [ 0, %3 ], [ 0, %103 ], [ 0, %84 ], [ 0, %91 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #16
  ret i8 %204
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #8 !prof !317 !PGOFuncName !318 {
  %2 = load ptr, ptr %0, align 8, !tbaa !266
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !319
  store ptr %4, ptr %0, align 8, !tbaa !266
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !320 !PGOFuncName !321 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_move_to_bb_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !256 !PGOFuncName !322 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !323

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !259 !PGOFuncName !324 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !261

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !325 !PGOFuncName !326 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !327

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !328
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !330 !PGOFuncName !331 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !332

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !218
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !333 !PGOFuncName !334 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !335 !PGOFuncName !336 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !337
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !338

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !339

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !340
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 !prof !264 !PGOFuncName !342 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !343

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !344
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !346 !PGOFuncName !347 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !348
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !350 !PGOFuncName !351 {
  %2 = load i8, ptr %0, align 8, !tbaa !352
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !353 !PGOFuncName !354 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !355
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !358
  store ptr %6, ptr %0, align 8, !tbaa !359
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #14, !range !188
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !360
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !361 !PGOFuncName !362 {
  %2 = load ptr, ptr %0, align 8, !tbaa !359
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !363 !PGOFuncName !364 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 !prof !365 !PGOFuncName !366 {
  %2 = load ptr, ptr %0, align 8, !tbaa !359
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !358
  store ptr %4, ptr %0, align 8, !tbaa !359
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #14, !range !188
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !367
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 !prof !368 !PGOFuncName !369 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !371

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #14
  %8 = load ptr, ptr %3, align 8, !tbaa !372
  store ptr %8, ptr %2, align 8, !tbaa !370
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !375

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !376
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #14
  %17 = load ptr, ptr %11, align 8, !tbaa !378
  store ptr %17, ptr %10, align 8, !tbaa !374
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !352
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
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !379 !PGOFuncName !380 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !188
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !381

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
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !379 !PGOFuncName !382 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #14, !range !188
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !381

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !383 !PGOFuncName !384 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #14
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !385 !PGOFuncName !386 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !348
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !387 !PGOFuncName !388 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #8 !prof !389 !PGOFuncName !390 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !391

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !376
  %8 = load ptr, ptr %3, align 8, !tbaa !378
  store ptr %8, ptr %2, align 8, !tbaa !374
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !352
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !385 !PGOFuncName !392 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #14
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !348
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !393 !PGOFuncName !394 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !396 !PGOFuncName !397 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !398

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !372
  store ptr %7, ptr %2, align 8, !tbaa !370
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !399
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !400
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !401

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !402
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !399
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #14
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !352
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @all_immediate_uses_same_place(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !385 !PGOFuncName !403 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  %4 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #14
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %34, !prof !404

7:                                                ; preds = %1, %29
  %8 = phi ptr [ %31, %29 ], [ %4, %1 ]
  %9 = phi ptr [ %30, %29 ], [ null, %1 ]
  %10 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %8) #14
  %11 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #14, !range !188
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %29, !prof !404

13:                                               ; preds = %7, %24
  %14 = phi ptr [ %26, %24 ], [ %10, %7 ]
  %15 = phi ptr [ %25, %24 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %17) #14, !range !188
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24, !prof !405

20:                                               ; preds = %13
  %21 = icmp eq ptr %15, null
  br i1 %21, label %24, label %22, !prof !406

22:                                               ; preds = %20
  %23 = icmp eq ptr %15, %17
  br i1 %23, label %24, label %34, !prof !407

24:                                               ; preds = %20, %22, %13
  %25 = phi ptr [ %15, %13 ], [ %15, %22 ], [ %17, %20 ]
  %26 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #14
  %27 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #14, !range !188
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %13, label %29, !prof !408, !llvm.loop !409

29:                                               ; preds = %24, %7
  %30 = phi ptr [ %9, %7 ], [ %25, %24 ]
  %31 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #14
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %7, label %34, !prof !410, !llvm.loop !411

34:                                               ; preds = %29, %22, %1
  %35 = phi i8 [ 1, %1 ], [ 0, %22 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @nearest_common_dominator_of_uses(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !412 !PGOFuncName !413 {
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
  br i1 %10, label %11, label %52, !prof !414

11:                                               ; preds = %2, %48
  %12 = phi ptr [ %49, %48 ], [ %8, %2 ]
  %13 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %6, ptr noundef %12) #14
  %14 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #14, !range !188
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %48, !prof !414

16:                                               ; preds = %11, %44
  %17 = phi ptr [ %45, %44 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !199
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %19) #14, !range !204
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %27, !prof !415

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %17) #14
  %24 = sext i32 %23 to i64
  %25 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %19, i64 noundef %24) #14
  %26 = load ptr, ptr %25, align 8, !tbaa !416
  br label %33

27:                                               ; preds = %16
  %28 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %19) #14, !range !188
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !417

30:                                               ; preds = %27
  store i8 1, ptr %1, align 1, !tbaa !199
  br label %44

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %19) #14
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %26, %22 ], [ %32, %31 ]
  %35 = load ptr, ptr @cfun, align 8, !tbaa !218
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !220
  %38 = load ptr, ptr %37, align 8, !tbaa !418
  %39 = icmp eq ptr %34, %38
  br i1 %39, label %74, label %40, !prof !419

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !244
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %42) #15
  br label %44

44:                                               ; preds = %40, %30
  %45 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %6) #14
  %46 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %6) #14, !range !188
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %16, label %48, !prof !420, !llvm.loop !421

48:                                               ; preds = %44, %11
  %49 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %5) #14
  %50 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %11, label %52, !prof !422, !llvm.loop !423

52:                                               ; preds = %48, %2
  %53 = load ptr, ptr @cfun, align 8, !tbaa !218
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !220
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !424
  %58 = tail call i32 @bitmap_first_set_bit(ptr noundef %7) #15
  %59 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %57, i32 noundef %58) #14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %3) #14
  %60 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !188
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62, !prof !422

62:                                               ; preds = %52, %62
  %63 = phi ptr [ %71, %62 ], [ %59, %52 ]
  %64 = load ptr, ptr @cfun, align 8, !tbaa !218
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !220
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !424
  %69 = load i32, ptr %3, align 4, !tbaa !191
  %70 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %68, i32 noundef %69) #14
  %71 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %63, ptr noundef %70) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #14, !range !188
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %62, !prof !425, !llvm.loop !426

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
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !427 !PGOFuncName !428 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #14
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14, !range !188
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !429

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !204
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !430

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14, !range !188
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !431, !llvm.loop !432

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !433 !PGOFuncName !434 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bb_for_arg(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !435 !PGOFuncName !436 {
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5, !prof !437

5:                                                ; preds = %2, %18
  %6 = phi ptr [ %20, %18 ], [ null, %2 ]
  %7 = phi i8 [ %19, %18 ], [ 0, %2 ]
  %8 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %9) #14
  %11 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %10) #14
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %18, !prof !438

13:                                               ; preds = %5
  %14 = icmp eq i8 %7, 0
  br i1 %14, label %15, label %25, !prof !439

15:                                               ; preds = %13
  %16 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %8) #14
  %17 = load ptr, ptr %16, align 8, !tbaa !416
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i8 [ 1, %15 ], [ %7, %5 ]
  %20 = phi ptr [ %17, %15 ], [ %6, %5 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %5, label %25, !prof !440, !llvm.loop !441

25:                                               ; preds = %13, %18, %2
  %26 = phi ptr [ null, %2 ], [ %20, %18 ], [ null, %13 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !442 !PGOFuncName !443 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !444

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 747, ptr noundef nonnull @.str.1) #15
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !445

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !374
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #14
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !374
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !446

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !378
  store ptr %25, ptr %18, align 8, !tbaa !374
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !447

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !370
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #14
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !370
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !448

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !372
  store ptr %41, ptr %32, align 8, !tbaa !370
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !352
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !449 !PGOFuncName !450 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !188
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !451

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !385 !PGOFuncName !452 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !188
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !401

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !442 !PGOFuncName !453 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !383 !PGOFuncName !454 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !188
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !383 !PGOFuncName !455 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !456
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
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !383 !PGOFuncName !457 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !204
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !383 !PGOFuncName !458 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !191
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !461 !PGOFuncName !462 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !199
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !463

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
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 !prof !464 !PGOFuncName !465 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !199
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #14, !range !204
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !466

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
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #9 !prof !467 !PGOFuncName !468 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !469
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #14
  ret ptr %6
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !470 !PGOFuncName !471 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !412 !PGOFuncName !472 {
  %4 = load ptr, ptr %1, align 8, !tbaa !473
  store ptr %4, ptr %0, align 8, !tbaa !475
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !477
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !478

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !475
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !479
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !481
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !456
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !482
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !191
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !470 !PGOFuncName !483 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !482
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !484

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !485

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !191
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !486, !llvm.loop !487

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !191
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !191
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !481
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !475
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !481
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !488

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !456
  store i64 %35, ptr %3, align 8, !tbaa !482
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !489

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !191
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !191
  %40 = load i32, ptr %23, align 8, !tbaa !481
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !481
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !490, !llvm.loop !491

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !492
  store ptr %44, ptr %0, align 8, !tbaa !475
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !493

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !479
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !191
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !482
  store i32 %16, ptr %1, align 4, !tbaa !191
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !494 !PGOFuncName !495 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !482
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !482
  %6 = load i32, ptr %1, align 4, !tbaa !191
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !427 !PGOFuncName !496 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !266
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !268
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !497 !PGOFuncName !498 {
  %2 = load ptr, ptr %0, align 8, !tbaa !266
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !499
  store ptr %4, ptr %0, align 8, !tbaa !266
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 !prof !427 !PGOFuncName !500 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !501

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !502
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !503 !PGOFuncName !504 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !199
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!185}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!36 = !{ptr @is_hidden_global_store, ptr @gimple_vdef, i64 3711087}
!37 = !{ptr @is_hidden_global_store, ptr @is_gimple_assign, i64 375857}
!38 = !{ptr @is_hidden_global_store, ptr @is_gimple_call, i64 82}
!39 = !{ptr @is_hidden_global_store, ptr @fancy_abort, i64 1}
!40 = !{ptr @is_hidden_global_store, ptr @gimple_get_lhs, i64 375857}
!41 = !{ptr @is_hidden_global_store, ptr @get_base_address, i64 332723}
!42 = !{ptr @is_hidden_global_store, ptr @is_global_var, i64 135945}
!43 = !{ptr @is_hidden_global_store, ptr @ptr_deref_may_alias_global_p, i64 238115}
!44 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 3711087}
!45 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 375856}
!46 = !{ptr @is_gimple_call, ptr @gimple_code, i64 81}
!47 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 4235877}
!48 = !{ptr @do_sink, ptr @execute_sink_code, i64 6652}
!49 = !{ptr @execute_sink_code, ptr @loop_optimizer_init, i64 6652}
!50 = !{ptr @execute_sink_code, ptr @connect_infinite_loops_to_exit, i64 6652}
!51 = !{ptr @execute_sink_code, ptr @calculate_dominance_info, i64 13304}
!52 = !{ptr @execute_sink_code, ptr @sink_code_in_bb, i64 6652}
!53 = !{ptr @execute_sink_code, ptr @statistics_counter_event, i64 6652}
!54 = !{ptr @execute_sink_code, ptr @free_dominance_info, i64 6652}
!55 = !{ptr @execute_sink_code, ptr @remove_fake_exit_edges, i64 6652}
!56 = !{ptr @execute_sink_code, ptr @loop_optimizer_finalize, i64 6652}
!57 = !{ptr @sink_code_in_bb, ptr @first_dom_son, i64 792426}
!58 = !{ptr @sink_code_in_bb, ptr @ei_start_1, i64 165406}
!59 = !{ptr @sink_code_in_bb, ptr @ei_cond, i64 486843}
!60 = !{ptr @sink_code_in_bb, ptr @ei_next, i64 321437}
!61 = !{ptr @sink_code_in_bb, ptr @gsi_last_bb, i64 165415}
!62 = !{ptr @sink_code_in_bb, ptr @gsi_end_p, i64 1146650}
!63 = !{ptr @sink_code_in_bb, ptr @gsi_stmt, i64 489149}
!64 = !{ptr @sink_code_in_bb, ptr @statement_sink_location, i64 489149}
!65 = !{ptr @sink_code_in_bb, ptr @gsi_prev, i64 489137}
!66 = !{ptr @sink_code_in_bb, ptr @fwrite, i64 1}
!67 = !{ptr @sink_code_in_bb, ptr @print_gimple_stmt, i64 1}
!68 = !{ptr @sink_code_in_bb, ptr @gsi_bb, i64 693}
!69 = !{ptr @sink_code_in_bb, ptr @fprintf, i64 1}
!70 = !{ptr @sink_code_in_bb, ptr @gsi_move_to_bb_end, i64 692}
!71 = !{ptr @sink_code_in_bb, ptr @gsi_move_before, i64 2265}
!72 = !{ptr @sink_code_in_bb, ptr @sink_code_in_bb, i64 389561}
!73 = !{ptr @sink_code_in_bb, ptr @next_dom_son, i64 389561}
!74 = !{ptr @ei_cond, ptr @ei_end_p, i64 486846}
!75 = !{ptr @ei_cond, ptr @ei_edge, i64 321440}
!76 = !{ptr @ei_next, ptr @ei_container, i64 642879}
!77 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 321440}
!78 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!79 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 165415}
!80 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 165415}
!81 = !{ptr @statement_sink_location, ptr @op_iter_init_tree, i64 492328}
!82 = !{ptr @statement_sink_location, ptr @op_iter_done, i64 1123820}
!83 = !{ptr @statement_sink_location, ptr @first_readonly_imm_use, i64 489286}
!84 = !{ptr @statement_sink_location, ptr @end_readonly_imm_use_p, i64 489287}
!85 = !{ptr @statement_sink_location, ptr @is_gimple_debug, i64 489018}
!86 = !{ptr @statement_sink_location, ptr @next_readonly_imm_use, i64 1}
!87 = !{ptr @statement_sink_location, ptr @op_iter_next_tree, i64 269}
!88 = !{ptr @statement_sink_location, ptr @gimple_code, i64 597696}
!89 = !{ptr @statement_sink_location, ptr @stmt_ends_bb_p, i64 425397}
!90 = !{ptr @statement_sink_location, ptr @gimple_has_side_effects, i64 425395}
!91 = !{ptr @statement_sink_location, ptr @is_hidden_global_store, i64 425380}
!92 = !{ptr @statement_sink_location, ptr @gimple_has_volatile_ops, i64 393027}
!93 = !{ptr @statement_sink_location, ptr @gimple_vuse, i64 393025}
!94 = !{ptr @statement_sink_location, ptr @gimple_assign_lhs, i64 2}
!95 = !{ptr @statement_sink_location, ptr @vector_type_mode, i64 1}
!96 = !{ptr @statement_sink_location, ptr @op_iter_init_def, i64 153604}
!97 = !{ptr @statement_sink_location, ptr @get_def_from_ptr, i64 153604}
!98 = !{ptr @statement_sink_location, ptr @is_global_var, i64 153604}
!99 = !{ptr @statement_sink_location, ptr @op_iter_next_def, i64 153601}
!100 = !{ptr @statement_sink_location, ptr @op_iter_init_use, i64 153601}
!101 = !{ptr @statement_sink_location, ptr @get_use_from_ptr, i64 179192}
!102 = !{ptr @statement_sink_location, ptr @op_iter_next_use, i64 173592}
!103 = !{ptr @statement_sink_location, ptr @all_immediate_uses_same_place, i64 148002}
!104 = !{ptr @statement_sink_location, ptr @nearest_common_dominator_of_uses, i64 39322}
!105 = !{ptr @statement_sink_location, ptr @dominated_by_p, i64 8740}
!106 = !{ptr @statement_sink_location, ptr @fwrite, i64 1}
!107 = !{ptr @statement_sink_location, ptr @fprintf, i64 1}
!108 = !{ptr @statement_sink_location, ptr @gsi_after_labels, i64 2497}
!109 = !{ptr @statement_sink_location, ptr @gimple_bb, i64 108400}
!110 = !{ptr @statement_sink_location, ptr @gsi_for_stmt, i64 1762}
!111 = !{ptr @statement_sink_location, ptr @find_bb_for_arg, i64 3175}
!112 = !{ptr @ei_end_p, ptr @ei_container, i64 973691}
!113 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 486846}
!114 = !{ptr @ei_edge, ptr @ei_container, i64 642879}
!115 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 321440}
!116 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!117 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 621149}
!118 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 621149}
!119 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 458088}
!120 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 526413}
!121 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 190264}
!122 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!123 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 460286}
!124 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 262395}
!125 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 262395}
!126 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 102551}
!127 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 102551}
!128 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 102551}
!129 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 102551}
!130 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!131 = !{ptr @all_immediate_uses_same_place, ptr @op_iter_init_tree, i64 102551}
!132 = !{ptr @all_immediate_uses_same_place, ptr @op_iter_done, i64 188684}
!133 = !{ptr @all_immediate_uses_same_place, ptr @first_readonly_imm_use, i64 125434}
!134 = !{ptr @all_immediate_uses_same_place, ptr @end_readonly_imm_use_p, i64 275919}
!135 = !{ptr @all_immediate_uses_same_place, ptr @is_gimple_debug, i64 189787}
!136 = !{ptr @all_immediate_uses_same_place, ptr @next_readonly_imm_use, i64 150485}
!137 = !{ptr @all_immediate_uses_same_place, ptr @op_iter_next_tree, i64 86133}
!138 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_obstack_alloc_stat, i64 27246}
!139 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_clear, i64 27246}
!140 = !{ptr @nearest_common_dominator_of_uses, ptr @op_iter_init_tree, i64 27246}
!141 = !{ptr @nearest_common_dominator_of_uses, ptr @op_iter_done, i64 54491}
!142 = !{ptr @nearest_common_dominator_of_uses, ptr @first_readonly_imm_use, i64 27246}
!143 = !{ptr @nearest_common_dominator_of_uses, ptr @end_readonly_imm_use_p, i64 113182}
!144 = !{ptr @nearest_common_dominator_of_uses, ptr @gimple_code, i64 85937}
!145 = !{ptr @nearest_common_dominator_of_uses, ptr @phi_arg_index_from_use, i64 17573}
!146 = !{ptr @nearest_common_dominator_of_uses, ptr @gimple_phi_arg_edge, i64 17573}
!147 = !{ptr @nearest_common_dominator_of_uses, ptr @is_gimple_debug, i64 68364}
!148 = !{ptr @nearest_common_dominator_of_uses, ptr @gimple_bb, i64 68363}
!149 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_set_bit, i64 85935}
!150 = !{ptr @nearest_common_dominator_of_uses, ptr @next_readonly_imm_use, i64 85936}
!151 = !{ptr @nearest_common_dominator_of_uses, ptr @op_iter_next_tree, i64 27245}
!152 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_first_set_bit, i64 27245}
!153 = !{ptr @nearest_common_dominator_of_uses, ptr @VEC_basic_block_base_index, i64 97668}
!154 = !{ptr @nearest_common_dominator_of_uses, ptr @bmp_iter_set_init, i64 27245}
!155 = !{ptr @nearest_common_dominator_of_uses, ptr @bmp_iter_set, i64 97668}
!156 = !{ptr @nearest_common_dominator_of_uses, ptr @nearest_common_dominator, i64 70423}
!157 = !{ptr @nearest_common_dominator_of_uses, ptr @bmp_iter_next, i64 70423}
!158 = !{ptr @nearest_common_dominator_of_uses, ptr @bitmap_obstack_free, i64 27246}
!159 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 1734}
!160 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 1784}
!161 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 1750}
!162 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 1750}
!163 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 50}
!164 = !{ptr @find_bb_for_arg, ptr @gimple_phi_num_args, i64 6962}
!165 = !{ptr @find_bb_for_arg, ptr @gimple_phi_arg_imm_use_ptr, i64 4964}
!166 = !{ptr @find_bb_for_arg, ptr @get_use_from_ptr, i64 4964}
!167 = !{ptr @find_bb_for_arg, ptr @gimple_phi_arg_edge, i64 2281}
!168 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!169 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 723699}
!170 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!171 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 102552}
!172 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1}
!173 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 723700}
!174 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 102551}
!175 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 826251}
!176 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 4784}
!177 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!178 = !{ptr @phi_arg_index_from_use, ptr @gimple_code, i64 17573}
!179 = !{ptr @phi_arg_index_from_use, ptr @fancy_abort, i64 1}
!180 = !{ptr @phi_arg_index_from_use, ptr @gimple_phi_arg, i64 17573}
!181 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 19772}
!182 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 19772}
!183 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1734}
!184 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1734}
!185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!186 = !{!"function_entry_count", i64 3711087}
!187 = !{!"branch_weights", i32 3335232, i32 375857}
!188 = !{i8 0, i8 2}
!189 = !{!"branch_weights", i32 82, i32 375776}
!190 = !{!"branch_weights", i32 1, i32 82}
!191 = !{!192, !192, i64 0}
!192 = !{!"int", !193, i64 0}
!193 = !{!"omnipotent char", !194, i64 0}
!194 = !{!"Simple C/C++ TBAA"}
!195 = !{!"branch_weights", i32 332724, i32 43134}
!196 = !{!"branch_weights", i32 11591831, i32 2135891817}
!197 = !{!"branch_weights", i32 135946, i32 238117}
!198 = !{!"branch_weights", i32 952471, i32 1}
!199 = !{!193, !193, i64 0}
!200 = !{!"tree-ssa-sink.c:gimple_vdef"}
!201 = !{!"branch_weights", i32 863982, i32 2847107}
!202 = !{!"function_entry_count", i64 375856}
!203 = !{!"tree-ssa-sink.c:is_gimple_assign"}
!204 = !{i32 0, i32 256}
!205 = !{!"function_entry_count", i64 81}
!206 = !{!"tree-ssa-sink.c:is_gimple_call"}
!207 = !{!"function_entry_count", i64 238496}
!208 = !{!"tree-ssa-sink.c:is_global_var"}
!209 = !{!"branch_weights", i32 144478, i32 94020}
!210 = !{!"function_entry_count", i64 4235877}
!211 = !{!"tree-ssa-sink.c:gimple_has_mem_ops"}
!212 = !{!"function_entry_count", i64 10669038}
!213 = !{!"tree-ssa-sink.c:gimple_code"}
!214 = !{!"function_entry_count", i64 6652}
!215 = !{!"tree-ssa-sink.c:gate_sink"}
!216 = !{!"tree-ssa-sink.c:do_sink"}
!217 = !{!"tree-ssa-sink.c:execute_sink_code"}
!218 = !{!219, !219, i64 0}
!219 = !{!"any pointer", !193, i64 0}
!220 = !{!221, !219, i64 8}
!221 = !{!"function", !219, i64 0, !219, i64 8, !219, i64 16, !219, i64 24, !219, i64 32, !219, i64 40, !219, i64 48, !219, i64 56, !219, i64 64, !219, i64 72, !219, i64 80, !219, i64 88, !219, i64 96, !192, i64 104, !192, i64 108, !192, i64 112, !192, i64 116, !192, i64 120, !192, i64 124, !219, i64 128, !192, i64 136, !192, i64 137, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 138, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139, !192, i64 139}
!222 = !{!223, !219, i64 8}
!223 = !{!"control_flow_graph", !219, i64 0, !219, i64 8, !219, i64 16, !192, i64 24, !192, i64 28, !192, i64 32, !219, i64 40, !192, i64 48, !193, i64 52, !193, i64 60, !192, i64 68, !192, i64 72}
!224 = !{!225, !192, i64 0}
!225 = !{!"", !192, i64 0}
!226 = !{!"function_entry_count", i64 396213}
!227 = !{!"tree-ssa-sink.c:sink_code_in_bb"}
!228 = !{!"branch_weights", i32 230808, i32 165407}
!229 = !{i64 0, i64 4, !191, i64 8, i64 8, !218}
!230 = !{i64 0, i64 8, !218}
!231 = !{!"branch_weights", i32 1, i32 165406}
!232 = !{!233, !192, i64 48}
!233 = !{!"edge_def", !219, i64 0, !219, i64 8, !193, i64 16, !219, i64 24, !219, i64 32, !192, i64 40, !192, i64 44, !192, i64 48, !192, i64 52, !234, i64 56}
!234 = !{!"long", !193, i64 0}
!235 = !{!"branch_weights", i32 321441, i32 1}
!236 = !{!"branch_weights", i32 165406, i32 156035}
!237 = distinct !{!237, !238}
!238 = !{!"llvm.loop.mustprogress"}
!239 = !{!"branch_weights", i32 165406, i32 1}
!240 = !{!"branch_weights", i32 486198, i32 2957}
!241 = !{!"branch_weights", i32 486198, i32 1}
!242 = distinct !{!242, !238}
!243 = !{!"branch_weights", i32 2957, i32 1}
!244 = !{!245, !192, i64 80}
!245 = !{!"basic_block_def", !219, i64 0, !219, i64 8, !219, i64 16, !219, i64 24, !193, i64 32, !219, i64 48, !219, i64 56, !193, i64 64, !234, i64 72, !192, i64 80, !192, i64 84, !192, i64 88, !192, i64 92, !192, i64 96}
!246 = !{!"branch_weights", i32 2266, i32 692}
!247 = !{!"branch_weights", i32 2948, i32 10}
!248 = !{i64 0, i64 8, !218, i64 8, i64 8, !218, i64 16, i64 8, !218}
!249 = !{!"branch_weights", i32 2948, i32 1}
!250 = !{!"branch_weights", i32 323748, i32 165406}
!251 = !{!"branch_weights", i32 6652, i32 389562}
!252 = !{!"branch_weights", i32 389562, i32 0}
!253 = distinct !{!253, !238}
!254 = !{!"function_entry_count", i64 165406}
!255 = !{!"tree-ssa-sink.c:ei_start_1"}
!256 = !{!"function_entry_count", i64 486846}
!257 = !{!"tree-ssa-sink.c:ei_cond"}
!258 = !{!"branch_weights", i32 321441, i32 165407}
!259 = !{!"function_entry_count", i64 321440}
!260 = !{!"tree-ssa-sink.c:ei_next"}
!261 = !{!"branch_weights", i32 1, i32 321441}
!262 = !{!263, !192, i64 0}
!263 = !{!"", !192, i64 0, !219, i64 8}
!264 = !{!"function_entry_count", i64 165415}
!265 = !{!"tree-ssa-sink.c:gsi_last_bb"}
!266 = !{!267, !219, i64 0}
!267 = !{!"", !219, i64 0, !219, i64 8, !219, i64 16}
!268 = !{!267, !219, i64 8}
!269 = !{!267, !219, i64 16}
!270 = !{!"function_entry_count", i64 1148443}
!271 = !{!"tree-ssa-sink.c:gsi_end_p"}
!272 = !{!"function_entry_count", i64 490246}
!273 = !{!"tree-ssa-sink.c:gsi_stmt"}
!274 = !{!275, !219, i64 0}
!275 = !{!"gimple_seq_node_d", !219, i64 0, !219, i64 8, !219, i64 16}
!276 = !{!"function_entry_count", i64 489153}
!277 = !{!"tree-ssa-sink.c:statement_sink_location"}
!278 = !{!"branch_weights", i32 162677, i32 1}
!279 = !{!"branch_weights", i32 1815, i32 1}
!280 = !{!"branch_weights", i32 326477, i32 1}
!281 = !{!"branch_weights", i32 324662, i32 1815}
!282 = distinct !{!282, !238}
!283 = !{!"branch_weights", i32 2147477107, i32 6541}
!284 = !{!"branch_weights", i32 165615, i32 162677}
!285 = distinct !{!285, !238}
!286 = !{!"branch_weights", i32 284004, i32 42474}
!287 = !{!"branch_weights", i32 284004, i32 1}
!288 = !{!"branch_weights", i32 283995, i32 10}
!289 = !{!"branch_weights", i32 262396, i32 21600}
!290 = !{!"branch_weights", i32 262396, i32 1}
!291 = !{!"branch_weights", i32 102552, i32 159845}
!292 = !{!"branch_weights", i32 102552, i32 1}
!293 = !{!"branch_weights", i32 102551, i32 1}
!294 = !{!"branch_weights", i32 1, i32 102551}
!295 = distinct !{!295, !238}
!296 = !{!"branch_weights", i32 17733, i32 102551}
!297 = distinct !{!297, !238}
!298 = !{!"branch_weights", i32 27247, i32 75306}
!299 = !{!"branch_weights", i32 25434, i32 1814}
!300 = !{!"branch_weights", i32 1, i32 1814}
!301 = !{!"branch_weights", i32 1104, i32 711}
!302 = !{!"branch_weights", i32 711, i32 1}
!303 = !{!245, !192, i64 84}
!304 = !{!"branch_weights", i32 164, i32 941}
!305 = !{!"branch_weights", i32 941, i32 1}
!306 = !{!"branch_weights", i32 2200, i32 73107}
!307 = !{!"branch_weights", i32 70981, i32 2127}
!308 = !{!"branch_weights", i32 528, i32 1600}
!309 = !{!245, !219, i64 24}
!310 = !{!"branch_weights", i32 1583, i32 18}
!311 = !{!"branch_weights", i32 1223, i32 361}
!312 = !{!"branch_weights", i32 194, i32 2007}
!313 = !{!"branch_weights", i32 1553950, i32 1512266}
!314 = !{!"branch_weights", i32 11, i32 981}
!315 = !{!"branch_weights", i32 851, i32 131}
!316 = !{!"branch_weights", i32 795, i32 57}
!317 = !{!"function_entry_count", i64 489144}
!318 = !{!"tree-ssa-sink.c:gsi_prev"}
!319 = !{!275, !219, i64 8}
!320 = !{!"function_entry_count", i64 691}
!321 = !{!"tree-ssa-sink.c:gsi_bb"}
!322 = !{!"tree-ssa-sink.c:ei_end_p"}
!323 = !{!"branch_weights", i32 1, i32 486847}
!324 = !{!"tree-ssa-sink.c:ei_edge"}
!325 = !{!"function_entry_count", i64 808286}
!326 = !{!"tree-ssa-sink.c:VEC_edge_base_length"}
!327 = !{!"branch_weights", i32 1, i32 808287}
!328 = !{!329, !192, i64 0}
!329 = !{!"VEC_edge_base", !192, i64 0, !192, i64 4, !193, i64 8}
!330 = !{!"function_entry_count", i64 2259452}
!331 = !{!"tree-ssa-sink.c:ei_container"}
!332 = !{!"branch_weights", i32 1, i32 2259453}
!333 = !{!"function_entry_count", i64 341212}
!334 = !{!"tree-ssa-sink.c:VEC_edge_base_index"}
!335 = !{!"function_entry_count", i64 167149}
!336 = !{!"tree-ssa-sink.c:bb_seq"}
!337 = !{!245, !192, i64 96}
!338 = !{!"branch_weights", i32 167150, i32 1}
!339 = !{!"branch_weights", i32 1, i32 167150}
!340 = !{!341, !219, i64 0}
!341 = !{!"gimple_bb_info", !219, i64 0, !219, i64 8}
!342 = !{!"tree-ssa-sink.c:gimple_seq_last"}
!343 = !{!"branch_weights", i32 1, i32 165416}
!344 = !{!345, !219, i64 8}
!345 = !{!"gimple_seq_d", !219, i64 0, !219, i64 8, !219, i64 16}
!346 = !{!"function_entry_count", i64 621149}
!347 = !{!"tree-ssa-sink.c:op_iter_init_tree"}
!348 = !{!349, !192, i64 4}
!349 = !{!"ssa_operand_iterator_d", !193, i64 0, !192, i64 4, !219, i64 8, !219, i64 16, !192, i64 24, !192, i64 28, !219, i64 32}
!350 = !{!"function_entry_count", i64 1153451}
!351 = !{!"tree-ssa-sink.c:op_iter_done"}
!352 = !{!349, !193, i64 0}
!353 = !{!"function_entry_count", i64 458088}
!354 = !{!"tree-ssa-sink.c:first_readonly_imm_use"}
!355 = !{!356, !219, i64 8}
!356 = !{!"immediate_use_iterator_d", !219, i64 0, !219, i64 8, !357, i64 16, !219, i64 48}
!357 = !{!"ssa_use_operand_d", !219, i64 0, !219, i64 8, !193, i64 16, !219, i64 24}
!358 = !{!357, !219, i64 8}
!359 = !{!356, !219, i64 0}
!360 = !{!"branch_weights", i32 456274, i32 1816}
!361 = !{!"function_entry_count", i64 1296704}
!362 = !{!"tree-ssa-sink.c:end_readonly_imm_use_p"}
!363 = !{!"function_entry_count", i64 526413}
!364 = !{!"tree-ssa-sink.c:is_gimple_debug"}
!365 = !{!"function_entry_count", i64 190264}
!366 = !{!"tree-ssa-sink.c:next_readonly_imm_use"}
!367 = !{!"branch_weights", i32 87714, i32 102552}
!368 = !{!"function_entry_count", i64 725515}
!369 = !{!"tree-ssa-sink.c:op_iter_next_tree"}
!370 = !{!349, !219, i64 16}
!371 = !{!"branch_weights", i32 725516, i32 1}
!372 = !{!373, !219, i64 0}
!373 = !{!"use_optype_d", !219, i64 0, !357, i64 8}
!374 = !{!349, !219, i64 8}
!375 = !{!"branch_weights", i32 265229, i32 460288}
!376 = !{!377, !219, i64 8}
!377 = !{!"def_optype_d", !219, i64 0, !219, i64 8}
!378 = !{!377, !219, i64 0}
!379 = !{!"function_entry_count", i64 262395}
!380 = !{!"tree-ssa-sink.c:gimple_has_volatile_ops"}
!381 = !{!"branch_weights", i32 1, i32 262396}
!382 = !{!"tree-ssa-sink.c:gimple_vuse"}
!383 = !{!"function_entry_count", i64 0}
!384 = !{!"tree-ssa-sink.c:gimple_assign_lhs"}
!385 = !{!"function_entry_count", i64 102551}
!386 = !{!"tree-ssa-sink.c:op_iter_init_def"}
!387 = !{!"function_entry_count", i64 562838}
!388 = !{!"tree-ssa-sink.c:get_def_from_ptr"}
!389 = !{!"function_entry_count", i64 205102}
!390 = !{!"tree-ssa-sink.c:op_iter_next_def"}
!391 = !{!"branch_weights", i32 102552, i32 102552}
!392 = !{!"tree-ssa-sink.c:op_iter_init_use"}
!393 = !{!"function_entry_count", i64 125067}
!394 = !{!"tree-ssa-sink.c:get_use_from_ptr"}
!395 = !{!357, !219, i64 24}
!396 = !{!"function_entry_count", i64 222834}
!397 = !{!"tree-ssa-sink.c:op_iter_next_use"}
!398 = !{!"branch_weights", i32 102552, i32 120284}
!399 = !{!349, !192, i64 24}
!400 = !{!349, !192, i64 28}
!401 = !{!"branch_weights", i32 1, i32 102552}
!402 = !{!349, !219, i64 32}
!403 = !{!"tree-ssa-sink.c:all_immediate_uses_same_place"}
!404 = !{!"branch_weights", i32 75305, i32 1}
!405 = !{!"branch_weights", i32 131570, i32 1}
!406 = !{!"branch_weights", i32 102552, i32 29019}
!407 = !{!"branch_weights", i32 1773, i32 27247}
!408 = !{!"branch_weights", i32 56265, i32 75305}
!409 = distinct !{!409, !238}
!410 = !{!"branch_weights", i32 27247, i32 75305}
!411 = distinct !{!411, !238}
!412 = !{!"function_entry_count", i64 27246}
!413 = !{!"tree-ssa-sink.c:nearest_common_dominator_of_uses"}
!414 = !{!"branch_weights", i32 27246, i32 1}
!415 = !{!"branch_weights", i32 17574, i32 68369}
!416 = !{!233, !219, i64 0}
!417 = !{!"branch_weights", i32 68369, i32 1}
!418 = !{!223, !219, i64 0}
!419 = !{!"branch_weights", i32 1, i32 85942}
!420 = !{!"branch_weights", i32 58696, i32 27246}
!421 = distinct !{!421, !238}
!422 = !{!"branch_weights", i32 1, i32 27246}
!423 = distinct !{!423, !238}
!424 = !{!223, !219, i64 16}
!425 = !{!"branch_weights", i32 27246, i32 43182}
!426 = distinct !{!426, !238}
!427 = !{!"function_entry_count", i64 1734}
!428 = !{!"tree-ssa-sink.c:gsi_after_labels"}
!429 = !{!"branch_weights", i32 691, i32 1}
!430 = !{!"branch_weights", i32 51, i32 1735}
!431 = !{!"branch_weights", i32 403, i32 691}
!432 = distinct !{!432, !238}
!433 = !{!"function_entry_count", i64 183024}
!434 = !{!"tree-ssa-sink.c:gimple_bb"}
!435 = !{!"function_entry_count", i64 2199}
!436 = !{!"tree-ssa-sink.c:find_bb_for_arg"}
!437 = !{!"branch_weights", i32 1, i32 2006}
!438 = !{!"branch_weights", i32 2393, i32 2393}
!439 = !{!"branch_weights", i32 2200, i32 194}
!440 = !{!"branch_weights", i32 2779, i32 2006}
!441 = distinct !{!441, !238}
!442 = !{!"function_entry_count", i64 826251}
!443 = !{!"tree-ssa-sink.c:op_iter_init"}
!444 = !{!"branch_weights", i32 6969, i32 -1414828745}
!445 = !{!"branch_weights", i32 102552, i32 723701}
!446 = !{!"branch_weights", i32 2147480682, i32 2966}
!447 = !{!"branch_weights", i32 723701, i32 102552}
!448 = !{!"branch_weights", i32 2147462716, i32 20932}
!449 = !{!"function_entry_count", i64 723700}
!450 = !{!"tree-ssa-sink.c:gimple_def_ops"}
!451 = !{!"branch_weights", i32 1, i32 723701}
!452 = !{!"tree-ssa-sink.c:gimple_use_ops"}
!453 = !{!"tree-ssa-sink.c:gimple_has_ops"}
!454 = !{!"tree-ssa-sink.c:gimple_op"}
!455 = !{!"tree-ssa-sink.c:gimple_ops"}
!456 = !{!234, !234, i64 0}
!457 = !{!"tree-ssa-sink.c:gimple_statement_structure"}
!458 = !{!"tree-ssa-sink.c:gss_for_code"}
!459 = !{!"function_entry_count", i64 4784}
!460 = !{!"tree-ssa-sink.c:gimple_phi_arg_imm_use_ptr"}
!461 = !{!"function_entry_count", i64 22357}
!462 = !{!"tree-ssa-sink.c:gimple_phi_arg"}
!463 = !{!"branch_weights", i32 1, i32 22358}
!464 = !{!"function_entry_count", i64 17573}
!465 = !{!"tree-ssa-sink.c:phi_arg_index_from_use"}
!466 = !{!"branch_weights", i32 17574, i32 1}
!467 = !{!"function_entry_count", i64 19772}
!468 = !{!"tree-ssa-sink.c:gimple_phi_arg_edge"}
!469 = !{!245, !219, i64 0}
!470 = !{!"function_entry_count", i64 97673}
!471 = !{!"tree-ssa-sink.c:VEC_basic_block_base_index"}
!472 = !{!"tree-ssa-sink.c:bmp_iter_set_init"}
!473 = !{!474, !219, i64 0}
!474 = !{!"bitmap_head_def", !219, i64 0, !219, i64 8, !192, i64 16, !219, i64 24}
!475 = !{!476, !219, i64 0}
!476 = !{!"", !219, i64 0, !219, i64 8, !192, i64 16, !234, i64 24}
!477 = !{!476, !219, i64 8}
!478 = !{!"branch_weights", i32 1, i32 27247}
!479 = !{!480, !192, i64 16}
!480 = !{!"bitmap_element_def", !219, i64 0, !219, i64 8, !192, i64 16, !193, i64 24}
!481 = !{!476, !192, i64 16}
!482 = !{!476, !234, i64 24}
!483 = !{!"tree-ssa-sink.c:bmp_iter_set"}
!484 = !{!"branch_weights", i32 44521, i32 53154}
!485 = !{!"branch_weights", i32 70427, i32 1}
!486 = !{!"branch_weights", i32 994579, i32 70427}
!487 = distinct !{!487, !238}
!488 = !{!"branch_weights", i32 1, i32 34445}
!489 = !{!"branch_weights", i32 24371, i32 17275}
!490 = !{!"branch_weights", i32 34445, i32 7200}
!491 = distinct !{!491, !238}
!492 = !{!480, !219, i64 0}
!493 = !{!"branch_weights", i32 27247, i32 7200}
!494 = !{!"function_entry_count", i64 70427}
!495 = !{!"tree-ssa-sink.c:bmp_iter_next"}
!496 = !{!"tree-ssa-sink.c:gsi_start_bb"}
!497 = !{!"function_entry_count", i64 50}
!498 = !{!"tree-ssa-sink.c:gsi_next"}
!499 = !{!275, !219, i64 16}
!500 = !{!"tree-ssa-sink.c:gimple_seq_first"}
!501 = !{!"branch_weights", i32 1, i32 1735}
!502 = !{!345, !219, i64 0}
!503 = !{!"function_entry_count", i64 6790}
!504 = !{!"tree-ssa-sink.c:gimple_phi_num_args"}
