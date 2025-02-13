; ModuleID = 'tree-ssa-dse.c'
source_filename = "tree-ssa-dse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.dse_global_data = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@pass_dse = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_dse, ptr @tree_ssa_dse, ptr null, ptr null, i32 0, i32 79, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@.str = private unnamed_addr constant [4 x i8] c"dse\00", align 1
@flag_tree_dse = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  Deleted dead store '\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dse() #0 !prof !154 !PGOFuncName !155 {
  %1 = load i32, ptr @flag_tree_dse, align 4, !tbaa !156
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_dse() #1 !prof !154 !PGOFuncName !160 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.dse_global_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  tail call void @renumber_gimple_stmt_uids() #16
  tail call void @calculate_dominance_info(i32 noundef 2) #16
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  store i8 2, ptr %1, align 8
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr @dse_initialize_block_local_data, ptr %3, align 8, !tbaa !161
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @dse_enter_block, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @dse_leave_block, ptr %5, align 8, !tbaa !166
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 8, ptr %6, align 8, !tbaa !167
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %7, ptr %2, align 8, !tbaa !168
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr %2, ptr %8, align 8, !tbaa !170
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #16
  %9 = load ptr, ptr @cfun, align 8, !tbaa !171
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !174
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %13) #16
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #16
  %14 = load ptr, ptr %2, align 8, !tbaa !168
  call void @bitmap_obstack_free(ptr noundef %14) #16
  store ptr null, ptr %2, align 8, !tbaa !168
  call void @free_dominance_info(i32 noundef 2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_initialize_block_local_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i8 noundef zeroext %2) #1 !prof !176 !PGOFuncName !177 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %12, label %5, !prof !178

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = tail call fastcc ptr @VEC_void_p_base_last(ptr noundef %7) #17
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !182

11:                                               ; preds = %5
  tail call void @bitmap_clear(ptr noundef nonnull %9) #16
  br label %12

12:                                               ; preds = %5, %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_enter_block(ptr nocapture noundef readonly %0, ptr noundef %1) #1 !prof !176 !PGOFuncName !183 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = tail call fastcc ptr @VEC_void_p_base_last(ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %10 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %10) #17
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !184
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !185

13:                                               ; preds = %2, %13
  tail call fastcc void @dse_optimize_stmt(ptr noundef %9, ptr noundef %7, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #17
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !184
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %13, label %16, !prof !186, !llvm.loop !187

16:                                               ; preds = %13, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !184
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23, !prof !190

19:                                               ; preds = %16, %19
  %20 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  call fastcc void @dse_record_phi(ptr noundef %9, ptr noundef %7, ptr noundef %20) #17
  call fastcc void @gsi_next(ptr noundef nonnull %3) #17
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !184
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %19, label %23, !prof !191, !llvm.loop !192

23:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_leave_block(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 !prof !176 !PGOFuncName !193 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = tail call fastcc ptr @VEC_void_p_base_last(ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = load ptr, ptr %9, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %11 = load ptr, ptr %7, align 8, !tbaa !180
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !194

13:                                               ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %3) #17
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #17, !range !184
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16, !prof !195

16:                                               ; preds = %13, %16
  %17 = load i32, ptr %3, align 4, !tbaa !156
  %18 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %10, i32 noundef %17) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #17, !range !184
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %16, !prof !196, !llvm.loop !197

21:                                               ; preds = %16, %13, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_void_p_base_last(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !198 !PGOFuncName !199 {
  %2 = load i32, ptr %0, align 8, !tbaa !200
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  ret ptr %6
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !176 !PGOFuncName !202 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #17
  store ptr %3, ptr %0, align 8, !tbaa !203
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !205
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !206

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !207
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !209

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !176 !PGOFuncName !211 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !212
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !214

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !215
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !216

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !217
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !219 !PGOFuncName !220 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_optimize_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #1 !prof !221 !PGOFuncName !222 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %6 = tail call fastcc ptr @gimple_vdef(ptr noundef %5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %71, label %8, !prof !223

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %5) #17, !range !184
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11, !prof !224

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %5) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %71, !prof !225

14:                                               ; preds = %11, %8
  %15 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %5) #17, !range !184
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %71, !prof !226

17:                                               ; preds = %14
  %18 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #17, !range !184
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %71, label %20, !prof !227

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !168
  %22 = tail call fastcc i32 @gimple_uid(ptr noundef %5) #17
  tail call fastcc void @record_voperand_set(ptr noundef %21, ptr noundef %1, i32 noundef %22) #17
  %23 = call fastcc zeroext i8 @dse_possible_dead_store_p(ptr noundef %5, ptr noundef nonnull %4) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %70, label %25, !prof !228

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 8, !tbaa !168
  %27 = load ptr, ptr %4, align 8, !tbaa !171
  %28 = tail call fastcc i32 @get_stmt_uid(ptr noundef %27) #17
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %28) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %69, label %31, !prof !229

31:                                               ; preds = %25
  %32 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #17
  %33 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #17
  %34 = tail call i32 @operand_equal_p(ptr noundef %32, ptr noundef %33, i32 noundef 0) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %69, label %36, !prof !230

36:                                               ; preds = %31
  %37 = icmp eq ptr %5, %27
  br i1 %37, label %54, label %38, !prof !231

38:                                               ; preds = %36
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %27) #17
  %40 = tail call zeroext i8 @is_gimple_reg(ptr noundef %39) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %54, !prof !232

42:                                               ; preds = %38
  %43 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %27) #17
  %44 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %43) #16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %54, !prof !233

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %27) #17, !range !234
  %48 = icmp eq i32 %47, 51
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #17
  %51 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %27) #17
  %52 = tail call zeroext i8 @refs_may_alias_p(ptr noundef %50, ptr noundef %51) #16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49, %46, %42, %38, %36
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57, !prof !235

57:                                               ; preds = %54
  %58 = load i32, ptr @dump_flags, align 4, !tbaa !156
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr nonnull %55)
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %64 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !156
  tail call void @print_gimple_stmt(ptr noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef 0) #16
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !171
  %67 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %66)
  br label %68

68:                                               ; preds = %61, %57, %54
  tail call void @unlink_stmt_vdef(ptr noundef %5) #16
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #16
  call void @release_defs(ptr noundef %5) #16
  br label %69

69:                                               ; preds = %25, %31, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %71

70:                                               ; preds = %49, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %71

71:                                               ; preds = %17, %69, %70, %14, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #5 !prof !221 !PGOFuncName !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  store ptr %4, ptr %0, align 8, !tbaa !203
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_record_phi(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !238 !PGOFuncName !239 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %2) #17
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !240

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !168
  %9 = tail call fastcc i32 @get_stmt_uid(ptr noundef %2) #17
  tail call fastcc void @record_voperand_set(ptr noundef %8, ptr noundef %1, i32 noundef %9) #17
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !241 !PGOFuncName !242 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !238 !PGOFuncName !243 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  store ptr %4, ptr %0, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !176 !PGOFuncName !245 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !216

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !246
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !248 !PGOFuncName !249 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !250 !PGOFuncName !251 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !184
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !252

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !253 !PGOFuncName !254 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !256 !PGOFuncName !257 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !258

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !215
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !259 !PGOFuncName !260 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !184
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !261

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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !263 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_voperand_set(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 !prof !264 !PGOFuncName !265 {
  %4 = load ptr, ptr %1, align 8, !tbaa !171
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !266

6:                                                ; preds = %3
  %7 = tail call ptr @bitmap_gc_alloc_stat() #16
  store ptr %7, ptr %1, align 8, !tbaa !171
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %2) #16
  %11 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !267 !PGOFuncName !268 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !215
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dse_possible_dead_store_p(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !269 !PGOFuncName !270 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  store ptr null, ptr %1, align 8, !tbaa !171
  br label %4

4:                                                ; preds = %67, %2
  %5 = phi ptr [ %0, %2 ], [ %55, %67 ]
  %6 = phi i32 [ 0, %2 ], [ %26, %67 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  %7 = add i32 %6, 1
  %8 = icmp ugt i32 %7, 256
  br i1 %8, label %65, label %9, !prof !271

9:                                                ; preds = %4
  %10 = call fastcc i32 @gimple_code(ptr noundef %5) #17, !range !255
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %12, label %15, !prof !272

12:                                               ; preds = %9
  %13 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %5) #17
  %14 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %13) #17
  br label %17

15:                                               ; preds = %9
  %16 = call fastcc ptr @gimple_vdef(ptr noundef %5) #17
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %14, %12 ], [ %16, %15 ]
  %19 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %18) #17
  %20 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #17, !range !184
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %61, !prof !273

22:                                               ; preds = %17, %54
  %23 = phi ptr [ %56, %54 ], [ %19, %17 ]
  %24 = phi i32 [ %26, %54 ], [ %7, %17 ]
  %25 = phi ptr [ %55, %54 ], [ null, %17 ]
  %26 = add i32 %24, 1
  %27 = icmp eq ptr %23, %0
  br i1 %27, label %64, label %28, !prof !274

28:                                               ; preds = %22
  %29 = call fastcc i32 @gimple_code(ptr noundef %23) #17, !range !255
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %45, !prof !275

31:                                               ; preds = %28
  %32 = icmp eq ptr %25, null
  br i1 %32, label %33, label %64, !prof !276

33:                                               ; preds = %31
  %34 = call fastcc ptr @gimple_bb(ptr noundef %0) #17
  %35 = call fastcc ptr @gimple_bb(ptr noundef %23) #17
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %64, label %37, !prof !277

37:                                               ; preds = %33
  %38 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %34, ptr noundef %35) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %64, !prof !278

40:                                               ; preds = %37
  %41 = call fastcc ptr @gimple_bb(ptr noundef %0) #17
  %42 = call fastcc ptr @gimple_bb(ptr noundef %23) #17
  %43 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %41, ptr noundef %42) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %64, label %54, !prof !279

45:                                               ; preds = %28
  %46 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #17
  %47 = call zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef %23, ptr noundef %46) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64, !prof !280

49:                                               ; preds = %45
  %50 = call fastcc ptr @gimple_vdef(ptr noundef %23) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !281

52:                                               ; preds = %49
  %53 = icmp eq ptr %25, null
  br i1 %53, label %54, label %64, !prof !282

54:                                               ; preds = %52, %40, %49
  %55 = phi ptr [ %25, %49 ], [ %23, %40 ], [ %23, %52 ]
  %56 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #17
  %57 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #17, !range !184
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %22, label %59, !prof !283, !llvm.loop !284

59:                                               ; preds = %54
  %60 = icmp eq ptr %55, null
  br i1 %60, label %61, label %67, !prof !285

61:                                               ; preds = %17, %59
  %62 = call zeroext i8 @is_hidden_global_store(ptr noundef %0) #16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %65, !prof !286

64:                                               ; preds = %52, %45, %31, %33, %37, %40, %22
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %3) #17
  br label %65

65:                                               ; preds = %4, %64, %61
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  br label %76

66:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  br label %71

67:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  %68 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #17
  %69 = call zeroext i8 @stmt_may_clobber_ref_p(ptr noundef nonnull %55, ptr noundef %68) #16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %4, label %71, !prof !287, !llvm.loop !288

71:                                               ; preds = %67, %66
  %72 = phi ptr [ %0, %66 ], [ %55, %67 ]
  %73 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %72) #17, !range !184
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75, !prof !289

75:                                               ; preds = %71
  store ptr %72, ptr %1, align 8, !tbaa !171
  br label %76

76:                                               ; preds = %65, %71, %75
  %77 = phi i8 [ 1, %75 ], [ 0, %71 ], [ 0, %65 ]
  ret i8 %77
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_stmt_uid(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !290 !PGOFuncName !291 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %11, !prof !292

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !215
  %8 = load ptr, ptr @cfun, align 8, !tbaa !171
  %9 = tail call fastcc i32 @gimple_stmt_max_uid(ptr noundef %8) #17
  %10 = add i32 %9, %7
  br label %13

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #17
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %10, %4 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !293 !PGOFuncName !294 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !295 !PGOFuncName !296 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !297 !PGOFuncName !298 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !234
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !255
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !299 !PGOFuncName !300 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !301 !PGOFuncName !302 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !256 !PGOFuncName !303 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !304 !PGOFuncName !305 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !184
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !306

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !304 !PGOFuncName !307 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !304 !PGOFuncName !308 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !309
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !306

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !304 !PGOFuncName !310 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !304 !PGOFuncName !311 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !156
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !312 !PGOFuncName !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 !prof !312 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !315 !PGOFuncName !316 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !317
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !320
  store ptr %6, ptr %0, align 8, !tbaa !321
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #17, !range !184
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !322

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !321
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !215
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !323 !PGOFuncName !324 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !317
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #9 !prof !325 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !327 !PGOFuncName !328 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  store ptr %4, ptr %0, align 8, !tbaa !321
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #17, !range !184
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !330

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !331
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !332

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #17
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !321
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !215
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare zeroext i8 @is_hidden_global_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @stmt_may_clobber_ref_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !333 !PGOFuncName !334 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !215
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #16
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #17, !range !255
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !275

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #17
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !335

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #17
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !336

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #17
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #17
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !337, !llvm.loop !338

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !339

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #17
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #17
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #17
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #17
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !340

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !341

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #17
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53, !prof !339

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #17
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !331
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !342

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #17
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !343 !PGOFuncName !344 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !345
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !346 !PGOFuncName !347 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !348
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !350

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 918, ptr noundef nonnull @.str.4) #16
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #16
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !350

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !348
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !351
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !352
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !353
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !354 !PGOFuncName !355 {
  %2 = load i8, ptr %0, align 8, !tbaa !348
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #9 !prof !356 !PGOFuncName !357 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !358

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !320
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !359

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #17
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #17
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !354 !PGOFuncName !360 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !362

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !363
  store ptr %7, ptr %2, align 8, !tbaa !361
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !365
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !352
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !366

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !351
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !365
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !348
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !297 !PGOFuncName !367 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 771, ptr noundef nonnull @.str.4) #16
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !353
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 !prof !368 !PGOFuncName !369 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !184
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !341

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !341

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !370
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null, !prof !339
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !371 !PGOFuncName !372 {
  %2 = load ptr, ptr %0, align 8, !tbaa !373
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !374

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !320
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !320
  store ptr %2, ptr %6, align 8, !tbaa !373
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !371 !PGOFuncName !375 {
  store ptr %1, ptr %0, align 8, !tbaa !373
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !320
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !320
  store ptr %0, ptr %4, align 8, !tbaa !373
  store ptr %0, ptr %3, align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !376 !PGOFuncName !377 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !346 !PGOFuncName !378 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !348
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !346 !PGOFuncName !379 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !215
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !380 !PGOFuncName !381 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !380 !PGOFuncName !382 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !215
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !383

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.4) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !297 !PGOFuncName !384 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 747, ptr noundef nonnull @.str.4) #16
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !385
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #17
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !385
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !386
  store ptr %22, ptr %16, align 8, !tbaa !385
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !361
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #17
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !361
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !363
  store ptr %36, ptr %29, align 8, !tbaa !361
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !348
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !297 !PGOFuncName !388 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !184
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !297 !PGOFuncName !389 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !184
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !297 !PGOFuncName !390 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !184
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_stmt_max_uid(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !391 !PGOFuncName !392 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !393
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !297 !PGOFuncName !394 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !255
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.4) #16
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 !prof !297 !PGOFuncName !395 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !215
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !396 !PGOFuncName !397 {
  %4 = load ptr, ptr %1, align 8, !tbaa !398
  store ptr %4, ptr %0, align 8, !tbaa !400
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !402
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !403

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !400
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !404
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !406
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !309
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !407
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !156
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !408 !PGOFuncName !409 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !407
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !410

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !411

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !156
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !412, !llvm.loop !413

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !156
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !156
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !406
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !400
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !406
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !414

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !309
  store i64 %35, ptr %3, align 8, !tbaa !407
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !415

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !156
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !156
  %40 = load i32, ptr %23, align 8, !tbaa !406
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !406
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !416, !llvm.loop !417

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !418
  store ptr %44, ptr %0, align 8, !tbaa !400
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !419

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !404
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !156
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !407
  store i32 %16, ptr %1, align 4, !tbaa !156
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !264 !PGOFuncName !420 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !407
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !407
  %6 = load i32, ptr %1, align 4, !tbaa !156
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !156
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!153}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!36 = !{ptr @tree_ssa_dse, ptr @renumber_gimple_stmt_uids, i64 13304}
!37 = !{ptr @tree_ssa_dse, ptr @calculate_dominance_info, i64 26608}
!38 = !{ptr @tree_ssa_dse, ptr @bitmap_obstack_alloc_stat, i64 13304}
!39 = !{ptr @tree_ssa_dse, ptr @init_walk_dominator_tree, i64 13304}
!40 = !{ptr @tree_ssa_dse, ptr @walk_dominator_tree, i64 13304}
!41 = !{ptr @tree_ssa_dse, ptr @fini_walk_dominator_tree, i64 13304}
!42 = !{ptr @tree_ssa_dse, ptr @bitmap_obstack_free, i64 13304}
!43 = !{ptr @tree_ssa_dse, ptr @free_dominance_info, i64 13304}
!44 = !{ptr @dse_initialize_block_local_data, ptr @VEC_void_p_base_last, i64 417399}
!45 = !{ptr @dse_initialize_block_local_data, ptr @bitmap_clear, i64 334085}
!46 = !{ptr @dse_enter_block, ptr @VEC_void_p_base_last, i64 483520}
!47 = !{ptr @dse_enter_block, ptr @bb_seq, i64 483520}
!48 = !{ptr @dse_enter_block, ptr @gsi_last, i64 483520}
!49 = !{ptr @dse_enter_block, ptr @gsi_end_p, i64 2558436}
!50 = !{ptr @dse_enter_block, ptr @dse_optimize_stmt, i64 1374644}
!51 = !{ptr @dse_enter_block, ptr @gsi_prev, i64 1374644}
!52 = !{ptr @dse_enter_block, ptr @gsi_start_phis, i64 483520}
!53 = !{ptr @dse_enter_block, ptr @gsi_stmt, i64 216752}
!54 = !{ptr @dse_enter_block, ptr @dse_record_phi, i64 216752}
!55 = !{ptr @dse_enter_block, ptr @gsi_next, i64 216752}
!56 = !{ptr @dse_leave_block, ptr @VEC_void_p_base_last, i64 483520}
!57 = !{ptr @dse_leave_block, ptr @bmp_iter_set_init, i64 367714}
!58 = !{ptr @dse_leave_block, ptr @bmp_iter_set, i64 580904}
!59 = !{ptr @dse_leave_block, ptr @bitmap_clear_bit, i64 213190}
!60 = !{ptr @dse_leave_block, ptr @bmp_iter_next, i64 213190}
!61 = !{ptr @gsi_last, ptr @gimple_seq_last, i64 483520}
!62 = !{ptr @gsi_last, ptr @gimple_bb, i64 444851}
!63 = !{ptr @dse_optimize_stmt, ptr @gsi_stmt, i64 1374646}
!64 = !{ptr @dse_optimize_stmt, ptr @gimple_vdef, i64 1374646}
!65 = !{ptr @dse_optimize_stmt, ptr @is_gimple_call, i64 286376}
!66 = !{ptr @dse_optimize_stmt, ptr @gimple_call_fndecl, i64 167527}
!67 = !{ptr @dse_optimize_stmt, ptr @gimple_has_volatile_ops, i64 125365}
!68 = !{ptr @dse_optimize_stmt, ptr @is_gimple_assign, i64 125356}
!69 = !{ptr @dse_optimize_stmt, ptr @gimple_uid, i64 118839}
!70 = !{ptr @dse_optimize_stmt, ptr @record_voperand_set, i64 118839}
!71 = !{ptr @dse_optimize_stmt, ptr @dse_possible_dead_store_p, i64 118839}
!72 = !{ptr @dse_optimize_stmt, ptr @get_stmt_uid, i64 7005}
!73 = !{ptr @dse_optimize_stmt, ptr @bitmap_bit_p, i64 7005}
!74 = !{ptr @dse_optimize_stmt, ptr @gimple_assign_lhs, i64 13774}
!75 = !{ptr @dse_optimize_stmt, ptr @operand_equal_p, i64 6887}
!76 = !{ptr @dse_optimize_stmt, ptr @gimple_assign_rhs1, i64 602}
!77 = !{ptr @dse_optimize_stmt, ptr @is_gimple_reg, i64 524}
!78 = !{ptr @dse_optimize_stmt, ptr @is_gimple_min_invariant, i64 78}
!79 = !{ptr @dse_optimize_stmt, ptr @gimple_assign_rhs_code, i64 1}
!80 = !{ptr @dse_optimize_stmt, ptr @unlink_stmt_vdef, i64 537}
!81 = !{ptr @dse_optimize_stmt, ptr @gsi_remove, i64 537}
!82 = !{ptr @dse_optimize_stmt, ptr @release_defs, i64 537}
!83 = !{ptr @dse_record_phi, ptr @gimple_phi_result, i64 216751}
!84 = !{ptr @dse_record_phi, ptr @is_gimple_reg, i64 216751}
!85 = !{ptr @dse_record_phi, ptr @get_stmt_uid, i64 94350}
!86 = !{ptr @dse_record_phi, ptr @record_voperand_set, i64 94350}
!87 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 1923496}
!88 = !{ptr @is_gimple_call, ptr @gimple_code, i64 286375}
!89 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 167527}
!90 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 125364}
!91 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 133469}
!92 = !{ptr @record_voperand_set, ptr @bitmap_gc_alloc_stat, i64 33630}
!93 = !{ptr @record_voperand_set, ptr @bitmap_set_bit, i64 426380}
!94 = !{ptr @dse_possible_dead_store_p, ptr @gimple_code, i64 726320}
!95 = !{ptr @dse_possible_dead_store_p, ptr @gimple_phi_result_ptr, i64 42748}
!96 = !{ptr @dse_possible_dead_store_p, ptr @get_def_from_ptr, i64 42748}
!97 = !{ptr @dse_possible_dead_store_p, ptr @gimple_vdef, i64 526136}
!98 = !{ptr @dse_possible_dead_store_p, ptr @first_imm_use_stmt, i64 284428}
!99 = !{ptr @dse_possible_dead_store_p, ptr @end_imm_use_stmt_p, i64 624711}
!100 = !{ptr @dse_possible_dead_store_p, ptr @gimple_bb, i64 339422}
!101 = !{ptr @dse_possible_dead_store_p, ptr @dominated_by_p, i64 166694}
!102 = !{ptr @dse_possible_dead_store_p, ptr @gimple_assign_lhs, i64 518716}
!103 = !{ptr @dse_possible_dead_store_p, ptr @ref_maybe_used_by_stmt_p, i64 346508}
!104 = !{ptr @dse_possible_dead_store_p, ptr @next_imm_use_stmt, i64 340283}
!105 = !{ptr @dse_possible_dead_store_p, ptr @is_hidden_global_store, i64 10611}
!106 = !{ptr @dse_possible_dead_store_p, ptr @end_imm_use_stmt_traverse, i64 101610}
!107 = !{ptr @dse_possible_dead_store_p, ptr @stmt_may_clobber_ref_p, i64 172208}
!108 = !{ptr @dse_possible_dead_store_p, ptr @is_gimple_assign, i64 6518}
!109 = !{ptr @get_stmt_uid, ptr @gimple_code, i64 101354}
!110 = !{ptr @get_stmt_uid, ptr @gimple_phi_result, i64 94349}
!111 = !{ptr @get_stmt_uid, ptr @gimple_stmt_max_uid, i64 94349}
!112 = !{ptr @get_stmt_uid, ptr @gimple_uid, i64 7005}
!113 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 560342}
!114 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 601}
!115 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 2381044}
!116 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 167527}
!117 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 728470}
!118 = !{ptr @gimple_op, ptr @gimple_ops, i64 728469}
!119 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 728470}
!120 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 728470}
!121 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!122 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 728470}
!123 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 728470}
!124 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 324997}
!125 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 312116}
!126 = !{ptr @end_imm_use_stmt_traverse, ptr @delink_imm_use, i64 97404}
!127 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 326220}
!128 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 214712}
!129 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 111507}
!130 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 1704376}
!131 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 423624}
!132 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 423624}
!133 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 91441}
!134 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 1040013}
!135 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 431708}
!136 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 948571}
!137 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 1}
!138 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 332182}
!139 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 111507}
!140 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 423624}
!141 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 91440}
!142 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 91440}
!143 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!144 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 91440}
!145 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 91439}
!146 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 91439}
!147 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 3301}
!148 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 3301}
!149 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 948560}
!150 = !{ptr @gimple_vuse_op, ptr @gimple_has_mem_ops, i64 332184}
!151 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 948562}
!152 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!153 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!154 = !{!"function_entry_count", i64 13304}
!155 = !{!"tree-ssa-dse.c:gate_dse"}
!156 = !{!157, !157, i64 0}
!157 = !{!"int", !158, i64 0}
!158 = !{!"omnipotent char", !159, i64 0}
!159 = !{!"Simple C/C++ TBAA"}
!160 = !{!"tree-ssa-dse.c:tree_ssa_dse"}
!161 = !{!162, !163, i64 8}
!162 = !{!"dom_walk_data", !157, i64 0, !163, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !163, i64 40, !164, i64 48, !163, i64 56}
!163 = !{!"any pointer", !158, i64 0}
!164 = !{!"long", !158, i64 0}
!165 = !{!162, !163, i64 16}
!166 = !{!162, !163, i64 24}
!167 = !{!162, !164, i64 48}
!168 = !{!169, !163, i64 0}
!169 = !{!"dse_global_data", !163, i64 0}
!170 = !{!162, !163, i64 32}
!171 = !{!163, !163, i64 0}
!172 = !{!173, !163, i64 8}
!173 = !{!"function", !163, i64 0, !163, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !163, i64 40, !163, i64 48, !163, i64 56, !163, i64 64, !163, i64 72, !163, i64 80, !163, i64 88, !163, i64 96, !157, i64 104, !157, i64 108, !157, i64 112, !157, i64 116, !157, i64 120, !157, i64 124, !163, i64 128, !157, i64 136, !157, i64 137, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139}
!174 = !{!175, !163, i64 8}
!175 = !{!"control_flow_graph", !163, i64 0, !163, i64 8, !163, i64 16, !157, i64 24, !157, i64 28, !157, i64 32, !163, i64 40, !157, i64 48, !158, i64 52, !158, i64 60, !157, i64 68, !157, i64 72}
!176 = !{!"function_entry_count", i64 483520}
!177 = !{!"tree-ssa-dse.c:dse_initialize_block_local_data"}
!178 = !{!"branch_weights", i32 66121, i32 417401}
!179 = !{!162, !163, i64 40}
!180 = !{!181, !163, i64 0}
!181 = !{!"dse_block_local_data", !163, i64 0}
!182 = !{!"branch_weights", i32 83315, i32 334087}
!183 = !{!"tree-ssa-dse.c:dse_enter_block"}
!184 = !{i8 0, i8 2}
!185 = !{!"branch_weights", i32 483520, i32 1}
!186 = !{!"branch_weights", i32 891127, i32 483520}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{i64 0, i64 8, !171, i64 8, i64 8, !171, i64 16, i64 8, !171}
!190 = !{!"branch_weights", i32 216752, i32 266769}
!191 = !{!"branch_weights", i32 0, i32 216752}
!192 = distinct !{!192, !188}
!193 = !{!"tree-ssa-dse.c:dse_leave_block"}
!194 = !{!"branch_weights", i32 115806, i32 367716}
!195 = !{!"branch_weights", i32 154525, i32 213191}
!196 = !{!"branch_weights", i32 213191, i32 0}
!197 = distinct !{!197, !188}
!198 = !{!"function_entry_count", i64 1450560}
!199 = !{!"tree-ssa-dse.c:VEC_void_p_base_last"}
!200 = !{!201, !157, i64 0}
!201 = !{!"VEC_void_p_base", !157, i64 0, !157, i64 4, !158, i64 8}
!202 = !{!"tree-ssa-dse.c:gsi_last"}
!203 = !{!204, !163, i64 0}
!204 = !{!"", !163, i64 0, !163, i64 8, !163, i64 16}
!205 = !{!204, !163, i64 8}
!206 = !{!"branch_weights", i32 38668, i32 444854}
!207 = !{!208, !163, i64 0}
!208 = !{!"gimple_seq_node_d", !163, i64 0, !163, i64 8, !163, i64 16}
!209 = !{!"branch_weights", i32 1, i32 444854}
!210 = !{!204, !163, i64 16}
!211 = !{!"tree-ssa-dse.c:bb_seq"}
!212 = !{!213, !157, i64 96}
!213 = !{!"basic_block_def", !163, i64 0, !163, i64 8, !163, i64 16, !163, i64 24, !158, i64 32, !163, i64 48, !163, i64 56, !158, i64 64, !164, i64 72, !157, i64 80, !157, i64 84, !157, i64 88, !157, i64 92, !157, i64 96}
!214 = !{!"branch_weights", i32 483521, i32 1}
!215 = !{!158, !158, i64 0}
!216 = !{!"branch_weights", i32 13305, i32 470217}
!217 = !{!218, !163, i64 0}
!218 = !{!"gimple_bb_info", !163, i64 0, !163, i64 8}
!219 = !{!"function_entry_count", i64 2558437}
!220 = !{!"tree-ssa-dse.c:gsi_end_p"}
!221 = !{!"function_entry_count", i64 1374646}
!222 = !{!"tree-ssa-dse.c:dse_optimize_stmt"}
!223 = !{!"branch_weights", i32 1088272, i32 286376}
!224 = !{!"branch_weights", i32 118849, i32 167528}
!225 = !{!"branch_weights", i32 6517, i32 161012}
!226 = !{!"branch_weights", i32 125357, i32 9}
!227 = !{!"branch_weights", i32 6517, i32 118841}
!228 = !{!"branch_weights", i32 111837, i32 7005}
!229 = !{!"branch_weights", i32 118, i32 6888}
!230 = !{!"branch_weights", i32 6352, i32 537}
!231 = !{!"branch_weights", i32 13, i32 525}
!232 = !{!"branch_weights", i32 78, i32 448}
!233 = !{!"branch_weights", i32 1, i32 78}
!234 = !{i32 0, i32 65536}
!235 = !{!"branch_weights", i32 537, i32 1}
!236 = !{!"tree-ssa-dse.c:gsi_prev"}
!237 = !{!208, !163, i64 8}
!238 = !{!"function_entry_count", i64 216751}
!239 = !{!"tree-ssa-dse.c:dse_record_phi"}
!240 = !{!"branch_weights", i32 94351, i32 122402}
!241 = !{!"function_entry_count", i64 1591397}
!242 = !{!"tree-ssa-dse.c:gsi_stmt"}
!243 = !{!"tree-ssa-dse.c:gsi_next"}
!244 = !{!208, !163, i64 16}
!245 = !{!"tree-ssa-dse.c:gimple_seq_last"}
!246 = !{!247, !163, i64 8}
!247 = !{!"gimple_seq_d", !163, i64 0, !163, i64 8, !163, i64 16}
!248 = !{!"function_entry_count", i64 939441}
!249 = !{!"tree-ssa-dse.c:gimple_bb"}
!250 = !{!"function_entry_count", i64 1923496}
!251 = !{!"tree-ssa-dse.c:gimple_vdef"}
!252 = !{!"branch_weights", i32 337032, i32 1586466}
!253 = !{!"function_entry_count", i64 286375}
!254 = !{!"tree-ssa-dse.c:is_gimple_call"}
!255 = !{i32 0, i32 256}
!256 = !{!"function_entry_count", i64 167527}
!257 = !{!"tree-ssa-dse.c:gimple_call_fndecl"}
!258 = !{!"branch_weights", i32 161012, i32 6517}
!259 = !{!"function_entry_count", i64 125364}
!260 = !{!"tree-ssa-dse.c:gimple_has_volatile_ops"}
!261 = !{!"branch_weights", i32 1, i32 125365}
!262 = !{!"function_entry_count", i64 133469}
!263 = !{!"tree-ssa-dse.c:is_gimple_assign"}
!264 = !{!"function_entry_count", i64 213190}
!265 = !{!"tree-ssa-dse.c:record_voperand_set"}
!266 = !{!"branch_weights", i32 33630, i32 179562}
!267 = !{!"function_entry_count", i64 125844}
!268 = !{!"tree-ssa-dse.c:gimple_uid"}
!269 = !{!"function_entry_count", i64 118840}
!270 = !{!"tree-ssa-dse.c:dse_possible_dead_store_p"}
!271 = !{!"branch_weights", i32 127, i32 324998}
!272 = !{!"branch_weights", i32 48846, i32 276153}
!273 = !{!"branch_weights", i32 227593, i32 1}
!274 = !{!"branch_weights", i32 1, i32 423625}
!275 = !{!"branch_weights", i32 91441, i32 332185}
!276 = !{!"branch_weights", i32 87489, i32 3953}
!277 = !{!"branch_weights", i32 2893, i32 84597}
!278 = !{!"branch_weights", i32 75211, i32 9387}
!279 = !{!"branch_weights", i32 13195, i32 62017}
!280 = !{!"branch_weights", i32 272699, i32 59487}
!281 = !{!"branch_weights", i32 90153, i32 182547}
!282 = !{!"branch_weights", i32 174053, i32 8495}
!283 = !{!"branch_weights", i32 196032, i32 227593}
!284 = distinct !{!284, !188}
!285 = !{!"branch_weights", i32 124629766, i32 2022853882}
!286 = !{!"branch_weights", i32 13, i32 13198}
!287 = !{!"branch_weights", i32 206284, i32 8102}
!288 = distinct !{!288, !188}
!289 = !{!"branch_weights", i32 1110, i32 7005}
!290 = !{!"function_entry_count", i64 101354}
!291 = !{!"tree-ssa-dse.c:get_stmt_uid"}
!292 = !{!"branch_weights", i32 94351, i32 7005}
!293 = !{!"function_entry_count", i64 560342}
!294 = !{!"tree-ssa-dse.c:gimple_assign_lhs"}
!295 = !{!"function_entry_count", i64 601}
!296 = !{!"tree-ssa-dse.c:gimple_assign_rhs1"}
!297 = !{!"function_entry_count", i64 0}
!298 = !{!"tree-ssa-dse.c:gimple_assign_rhs_code"}
!299 = !{!"function_entry_count", i64 2381044}
!300 = !{!"tree-ssa-dse.c:gimple_has_mem_ops"}
!301 = !{!"function_entry_count", i64 8303910}
!302 = !{!"tree-ssa-dse.c:gimple_code"}
!303 = !{!"tree-ssa-dse.c:gimple_call_fn"}
!304 = !{!"function_entry_count", i64 728470}
!305 = !{!"tree-ssa-dse.c:gimple_op"}
!306 = !{!"branch_weights", i32 1, i32 728471}
!307 = !{!"tree-ssa-dse.c:gimple_has_ops"}
!308 = !{!"tree-ssa-dse.c:gimple_ops"}
!309 = !{!164, !164, i64 0}
!310 = !{!"tree-ssa-dse.c:gimple_statement_structure"}
!311 = !{!"tree-ssa-dse.c:gss_for_code"}
!312 = !{!"function_entry_count", i64 48845}
!313 = !{!"tree-ssa-dse.c:get_def_from_ptr"}
!314 = !{!"tree-ssa-dse.c:gimple_phi_result_ptr"}
!315 = !{!"function_entry_count", i64 324997}
!316 = !{!"tree-ssa-dse.c:first_imm_use_stmt"}
!317 = !{!318, !163, i64 8}
!318 = !{!"immediate_use_iterator_d", !163, i64 0, !163, i64 8, !319, i64 16, !163, i64 48}
!319 = !{!"ssa_use_operand_d", !163, i64 0, !163, i64 8, !158, i64 16, !163, i64 24}
!320 = !{!319, !163, i64 8}
!321 = !{!318, !163, i64 0}
!322 = !{!"branch_weights", i32 312118, i32 12881}
!323 = !{!"function_entry_count", i64 1302434}
!324 = !{!"tree-ssa-dse.c:end_imm_use_stmt_p"}
!325 = !{!"function_entry_count", i64 97404}
!326 = !{!"tree-ssa-dse.c:end_imm_use_stmt_traverse"}
!327 = !{!"function_entry_count", i64 326220}
!328 = !{!"tree-ssa-dse.c:next_imm_use_stmt"}
!329 = !{!318, !163, i64 24}
!330 = !{!"branch_weights", i32 111508, i32 214714}
!331 = !{!318, !163, i64 16}
!332 = !{!"branch_weights", i32 1, i32 214714}
!333 = !{!"function_entry_count", i64 423624}
!334 = !{!"tree-ssa-dse.c:link_use_stmts_after"}
!335 = !{!"branch_weights", i32 91440, i32 1}
!336 = !{!"branch_weights", i32 99524, i32 849040}
!337 = !{!"branch_weights", i32 857123, i32 91440}
!338 = distinct !{!338, !188}
!339 = !{!"branch_weights", i32 332185, i32 1}
!340 = distinct !{!340, !188}
!341 = !{!"branch_weights", i32 1, i32 332185}
!342 = !{!"branch_weights", i32 312118, i32 111508}
!343 = !{!"function_entry_count", i64 1704370}
!344 = !{!"tree-ssa-dse.c:get_use_from_ptr"}
!345 = !{!319, !163, i64 24}
!346 = !{!"function_entry_count", i64 91440}
!347 = !{!"tree-ssa-dse.c:op_iter_init_phiuse"}
!348 = !{!349, !158, i64 0}
!349 = !{!"ssa_operand_iterator_d", !158, i64 0, !157, i64 4, !163, i64 8, !163, i64 16, !157, i64 24, !157, i64 28, !163, i64 32}
!350 = !{!"branch_weights", i32 1, i32 91441}
!351 = !{!349, !163, i64 32}
!352 = !{!349, !157, i64 28}
!353 = !{!349, !157, i64 4}
!354 = !{!"function_entry_count", i64 1040002}
!355 = !{!"tree-ssa-dse.c:op_iter_done"}
!356 = !{!"function_entry_count", i64 431707}
!357 = !{!"tree-ssa-dse.c:move_use_after_head"}
!358 = !{!"branch_weights", i32 423625, i32 8084}
!359 = !{!"branch_weights", i32 4784, i32 3301}
!360 = !{!"tree-ssa-dse.c:op_iter_next_use"}
!361 = !{!349, !163, i64 16}
!362 = !{!"branch_weights", i32 1040003, i32 1}
!363 = !{!364, !163, i64 0}
!364 = !{!"use_optype_d", !163, i64 0, !319, i64 8}
!365 = !{!349, !157, i64 24}
!366 = !{!"branch_weights", i32 948563, i32 91441}
!367 = !{!"tree-ssa-dse.c:op_iter_init_use"}
!368 = !{!"function_entry_count", i64 332184}
!369 = !{!"tree-ssa-dse.c:gimple_vuse_op"}
!370 = !{!364, !163, i64 32}
!371 = !{!"function_entry_count", i64 426924}
!372 = !{!"tree-ssa-dse.c:delink_imm_use"}
!373 = !{!319, !163, i64 0}
!374 = !{!"branch_weights", i32 1, i32 426925}
!375 = !{!"tree-ssa-dse.c:link_imm_use_to_list"}
!376 = !{!"function_entry_count", i64 402541}
!377 = !{!"tree-ssa-dse.c:gimple_phi_result"}
!378 = !{!"tree-ssa-dse.c:clear_and_done_ssa_iter"}
!379 = !{!"tree-ssa-dse.c:gimple_phi_num_args"}
!380 = !{!"function_entry_count", i64 948562}
!381 = !{!"tree-ssa-dse.c:gimple_phi_arg_imm_use_ptr"}
!382 = !{!"tree-ssa-dse.c:gimple_phi_arg"}
!383 = !{!"branch_weights", i32 1, i32 948563}
!384 = !{!"tree-ssa-dse.c:op_iter_init"}
!385 = !{!349, !163, i64 8}
!386 = !{!387, !163, i64 0}
!387 = !{!"def_optype_d", !163, i64 0, !163, i64 8}
!388 = !{!"tree-ssa-dse.c:gimple_def_ops"}
!389 = !{!"tree-ssa-dse.c:gimple_use_ops"}
!390 = !{!"tree-ssa-dse.c:gimple_vuse"}
!391 = !{!"function_entry_count", i64 94350}
!392 = !{!"tree-ssa-dse.c:gimple_stmt_max_uid"}
!393 = !{!173, !157, i64 104}
!394 = !{!"tree-ssa-dse.c:gimple_expr_code"}
!395 = !{!"tree-ssa-dse.c:get_gimple_rhs_class"}
!396 = !{!"function_entry_count", i64 367715}
!397 = !{!"tree-ssa-dse.c:bmp_iter_set_init"}
!398 = !{!399, !163, i64 0}
!399 = !{!"bitmap_head_def", !163, i64 0, !163, i64 8, !157, i64 16, !163, i64 24}
!400 = !{!401, !163, i64 0}
!401 = !{!"", !163, i64 0, !163, i64 8, !157, i64 16, !164, i64 24}
!402 = !{!401, !163, i64 8}
!403 = !{!"branch_weights", i32 225775, i32 141942}
!404 = !{!405, !157, i64 16}
!405 = !{!"bitmap_element_def", !163, i64 0, !163, i64 8, !157, i64 16, !158, i64 24}
!406 = !{!401, !157, i64 16}
!407 = !{!401, !164, i64 24}
!408 = !{!"function_entry_count", i64 580905}
!409 = !{!"tree-ssa-dse.c:bmp_iter_set"}
!410 = !{!"branch_weights", i32 449518, i32 131389}
!411 = !{!"branch_weights", i32 213190, i32 1}
!412 = !{!"branch_weights", i32 4665411, i32 213190}
!413 = distinct !{!413, !188}
!414 = !{!"branch_weights", i32 1, i32 382753}
!415 = !{!"branch_weights", i32 315990, i32 81803}
!416 = !{!"branch_weights", i32 382753, i32 15039}
!417 = distinct !{!417, !188}
!418 = !{!405, !163, i64 0}
!419 = !{!"branch_weights", i32 367716, i32 15039}
!420 = !{!"tree-ssa-dse.c:bmp_iter_next"}
