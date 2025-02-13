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
%struct.gimple_seq_d = type { ptr, ptr, ptr }
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
define dso_local void @set_ssa_name_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !208 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !209
  %5 = load ptr, ptr @ssa_name_values, align 8
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #13
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %12, label %8, !prof !212

8:                                                ; preds = %2
  %9 = add i32 %4, 1
  tail call fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %9) #13
  %10 = load ptr, ptr @ssa_name_values, align 8
  %11 = load i32, ptr %3, align 8, !tbaa !209
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %4, %2 ]
  %14 = phi ptr [ %10, %8 ], [ %5, %2 ]
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %14, i32 noundef %13, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !213 !PGOFuncName !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !215

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !216
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !219 !PGOFuncName !220 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #13
  tail call fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) #13
  %4 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221
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
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 !prof !208 !PGOFuncName !223 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !219 !PGOFuncName !224 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !225

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !216
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %8) #13
  %9 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221, !nonnull !226, !noundef !226
  store i32 %0, ptr %9, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #4 !prof !219 !PGOFuncName !227 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !225
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !219 !PGOFuncName !228 {
  %2 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #13, !range !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !225

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #14
  store ptr %6, ptr @ssa_name_values, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !230 !PGOFuncName !231 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !232

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !233
  %7 = load i32, ptr %0, align 8, !tbaa !216
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @threadedge_initialize_values() local_unnamed_addr #0 !prof !234 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !235

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.1) #14
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !236
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !238
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #13
  %11 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %10) #13
  store ptr %11, ptr @ssa_name_values, align 8, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !234 !PGOFuncName !242 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @threadedge_finalize_values() local_unnamed_addr #7 !prof !234 {
  tail call fastcc void @VEC_tree_heap_free() #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #7 !prof !234 !PGOFuncName !243 {
  %1 = load ptr, ptr @ssa_name_values, align 8, !tbaa !221
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !244

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @ssa_name_values, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @potentially_threadable_block(ptr noundef %0) local_unnamed_addr #9 !prof !245 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !246
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23, !prof !247

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !246
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23, !prof !248

8:                                                ; preds = %5
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !246
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23, !prof !249

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !250

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #13, !range !251
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !245 !PGOFuncName !252 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !256 !PGOFuncName !257 {
  %2 = load ptr, ptr %0, align 8, !tbaa !258
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !259 !PGOFuncName !260 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !263
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !265 !PGOFuncName !266 {
  %2 = load ptr, ptr %0, align 8, !tbaa !261
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !267 !PGOFuncName !268 {
  %2 = load ptr, ptr %0, align 8, !tbaa !261
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !271 !PGOFuncName !272 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !273 !PGOFuncName !274 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !275

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !276
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !278 !PGOFuncName !279 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !280
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !281

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !282

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !283
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 !prof !259 !PGOFuncName !285 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !286

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @thread_across_edge(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !prof !289 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !290
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12, !prof !292

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  %13 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !293
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %14) #13
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #13
  %16 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %6, ptr noundef %15) #13
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !294

19:                                               ; preds = %35, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %40

20:                                               ; preds = %12, %35
  %21 = phi ptr [ %36, %35 ], [ %16, %12 ]
  %22 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %21) #13
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %35, !prof !295

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !209
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %28) #13, !range !251
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %35, label %31, !prof !296

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #13
  %33 = load ptr, ptr %13, align 8, !tbaa !293
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %39, label %35, !prof !297

35:                                               ; preds = %20, %26, %31
  %36 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %6) #13
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %20, label %19, !prof !298, !llvm.loop !299

39:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %68

40:                                               ; preds = %19, %5
  store i32 0, ptr @stmt_count, align 4, !tbaa !301
  %41 = tail call fastcc zeroext i8 @record_temporary_equivalences_from_phis(ptr noundef %1, ptr noundef %3) #13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %68, label %43, !prof !302

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @record_temporary_equivalences_from_stmts_at_dest(ptr noundef %1, ptr noundef %3, ptr noundef %4) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46, !prof !303

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %44) #13, !range !251
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %68 [
    i8 1, label %49
    i8 3, label %49
    i8 5, label %49
  ], !prof !304

49:                                               ; preds = %46, %46, %46
  %50 = tail call fastcc ptr @simplify_control_stmt_condition(ptr noundef %1, ptr noundef nonnull %44, ptr noundef %0, ptr noundef %4, i8 noundef zeroext %2) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52, !prof !305

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %50) #14
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %68, label %55, !prof !306

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !293
  %58 = tail call ptr @find_taken_edge(ptr noundef %57, ptr noundef nonnull %50) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !307

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !293
  br label %63

63:                                               ; preds = %55, %60
  %64 = phi ptr [ %62, %60 ], [ null, %55 ]
  %65 = load ptr, ptr %56, align 8, !tbaa !293
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %68, label %67, !prof !307

67:                                               ; preds = %63
  tail call fastcc void @remove_temporary_equivalences(ptr noundef %3) #13
  tail call void @register_jump_thread(ptr noundef nonnull %1, ptr noundef %58) #14
  br label %68

68:                                               ; preds = %46, %39, %67, %52, %49, %63, %43, %40
  tail call fastcc void @remove_temporary_equivalences(ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !308 !PGOFuncName !309 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !310
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !312 !PGOFuncName !313 {
  %2 = load i8, ptr %0, align 8, !tbaa !314
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !315 !PGOFuncName !316 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !319 !PGOFuncName !320 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !321 !PGOFuncName !322 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !324

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !325
  store ptr %7, ptr %2, align 8, !tbaa !323
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !327
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !328
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !329

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !330
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !327
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #13
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !314
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @record_temporary_equivalences_from_phis(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !331 !PGOFuncName !332 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !293
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #14
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !246
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39, !prof !333

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %36
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13
  %12 = load i32, ptr %9, align 4, !tbaa !334
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #13
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #13
  %15 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #13
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %30, label %17, !prof !335

17:                                               ; preds = %10
  %18 = load i64, ptr %14, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %30, !prof !336

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !209
  %24 = call fastcc i32 @gimple_code(ptr noundef %23) #13, !range !251
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %30, !prof !337

26:                                               ; preds = %21
  %27 = call fastcc ptr @gimple_bb(ptr noundef %23) #13
  %28 = load ptr, ptr %4, align 8, !tbaa !293
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %39, label %30, !prof !338

30:                                               ; preds = %26, %21, %17, %10
  %31 = call zeroext i8 @is_gimple_reg(ptr noundef %15) #14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33, !prof !339

33:                                               ; preds = %30
  %34 = load i32, ptr @stmt_count, align 4, !tbaa !301
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @stmt_count, align 4, !tbaa !301
  br label %36

36:                                               ; preds = %33, %30
  call fastcc void @record_temporary_equivalence(ptr noundef %15, ptr noundef %14, ptr noundef %1) #13
  call fastcc void @gsi_next(ptr noundef nonnull %3) #13
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !246
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %10, label %39, !prof !340, !llvm.loop !341

39:                                               ; preds = %26, %36, %2
  %40 = phi i8 [ 1, %2 ], [ 1, %36 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @record_temporary_equivalences_from_stmts_at_dest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !342 !PGOFuncName !343 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 94, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !344
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %10) #13
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13, !range !246
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %164, !prof !346

13:                                               ; preds = %3, %161
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %14) #13, !range !251
  %16 = trunc i32 %15 to i8
  switch i8 %16, label %17 [
    i8 18, label %161
    i8 4, label %161
  ], !prof !347

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %14) #13, !range !246
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %161, !prof !348

20:                                               ; preds = %17
  %21 = icmp eq i32 %15, 7
  br i1 %21, label %22, label %25, !prof !349

22:                                               ; preds = %20
  %23 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %14) #13, !range !246
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %164

25:                                               ; preds = %20
  %26 = load i32, ptr @stmt_count, align 4, !tbaa !301
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr @stmt_count, align 4, !tbaa !301
  %28 = icmp slt i32 %26, %8
  br i1 %28, label %33, label %164, !prof !350

29:                                               ; preds = %22
  %30 = load i32, ptr @stmt_count, align 4, !tbaa !301
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @stmt_count, align 4, !tbaa !301
  %32 = icmp slt i32 %30, %8
  br i1 %32, label %40, label %164, !prof !350

33:                                               ; preds = %25
  %34 = icmp eq i32 %15, 6
  br i1 %34, label %35, label %40, !prof !351

35:                                               ; preds = %33
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %14) #13
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %51, label %40, !prof !352

40:                                               ; preds = %29, %35, %33
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %14) #13, !range !251
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %161, !prof !353

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %14) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %161, label %46, !prof !354

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %14) #13
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %161, !prof !355

51:                                               ; preds = %46, %35
  %52 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %14) #13, !range !246
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54, !prof !356

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %14) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !357

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_function_decl, ptr %55, i64 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 2047
  switch i32 %60, label %61 [
    i32 528, label %161
    i32 428, label %161
  ], !prof !358

61:                                               ; preds = %57, %54, %51
  %62 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %14) #14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64, !prof !359

64:                                               ; preds = %61
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 141
  br i1 %68, label %69, label %71, !prof !360

69:                                               ; preds = %64
  %70 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  br label %149

71:                                               ; preds = %64, %61
  %72 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %14) #14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %83, label %74, !prof !361

74:                                               ; preds = %71
  %75 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 148
  br i1 %78, label %79, label %83, !prof !362

79:                                               ; preds = %74
  %80 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #13
  %81 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !209
  br label %149

83:                                               ; preds = %74, %71
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  %84 = tail call fastcc i32 @num_ssa_operands(ptr noundef %14) #13
  %85 = zext i32 %84 to i64
  %86 = tail call ptr @xcalloc(i64 noundef %85, i64 noundef 8) #14
  %87 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %14) #13
  %88 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %114, !prof !363

90:                                               ; preds = %83, %110
  %91 = phi i32 [ %94, %110 ], [ 0, %83 ]
  %92 = phi ptr [ %111, %110 ], [ %87, %83 ]
  %93 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %92) #13
  %94 = add i32 %91, 1
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds ptr, ptr %86, i64 %95
  store ptr %93, ptr %96, align 8, !tbaa !221
  %97 = load i64, ptr %93, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 141
  br i1 %99, label %100, label %110, !prof !364

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %93, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !209
  %103 = load ptr, ptr @ssa_name_values, align 8
  %104 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #13
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %110, !prof !365

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %103, i32 noundef %102) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !366

109:                                              ; preds = %106
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %92, ptr noundef nonnull %107) #13
  br label %110

110:                                              ; preds = %100, %90, %109, %106
  %111 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #13
  %112 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %90, label %114, !prof !367, !llvm.loop !368

114:                                              ; preds = %110, %83
  %115 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %14) #13, !range !246
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117, !prof !369

117:                                              ; preds = %114
  %118 = tail call ptr @fold_call_stmt(ptr noundef %14, i8 noundef zeroext 0) #14
  br label %121

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @fold_assignment_stmt(ptr noundef %14) #13
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi ptr [ %118, %117 ], [ %120, %119 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124, !prof !370

124:                                              ; preds = %121
  %125 = load i64, ptr %122, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %133, label %128, !prof !371

128:                                              ; preds = %124
  %129 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %122) #14
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133, !prof !372

131:                                              ; preds = %128, %121
  %132 = tail call ptr %2(ptr noundef %14, ptr noundef %14) #14
  br label %133

133:                                              ; preds = %131, %128, %124
  %134 = phi ptr [ %122, %128 ], [ %132, %131 ], [ %122, %124 ]
  %135 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %5, ptr noundef %14) #13
  %136 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %148, !prof !363

138:                                              ; preds = %133, %138
  %139 = phi i32 [ %141, %138 ], [ 0, %133 ]
  %140 = phi ptr [ %145, %138 ], [ %135, %133 ]
  %141 = add i32 %139, 1
  %142 = zext i32 %139 to i64
  %143 = getelementptr inbounds ptr, ptr %86, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !221
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %140, ptr noundef %144) #13
  %145 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #13
  %146 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #13
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %138, label %148, !prof !367, !llvm.loop !373

148:                                              ; preds = %138, %133
  tail call void @free(ptr noundef %86) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %149

149:                                              ; preds = %79, %148, %69
  %150 = phi ptr [ %70, %69 ], [ %82, %79 ], [ %134, %148 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152, !prof !374

152:                                              ; preds = %149
  %153 = load i64, ptr %150, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 141
  br i1 %155, label %159, label %156, !prof !375

156:                                              ; preds = %152
  %157 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %150) #14
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %161, label %159, !prof !376

159:                                              ; preds = %156, %152
  %160 = tail call ptr @gimple_get_lhs(ptr noundef %14) #14
  tail call fastcc void @record_temporary_equivalence(ptr noundef %160, ptr noundef nonnull %150, ptr noundef %1) #13
  br label %161

161:                                              ; preds = %13, %13, %17, %46, %43, %40, %159, %156, %149, %57, %57
  call fastcc void @gsi_next(ptr noundef nonnull %4) #13
  %162 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #13, !range !246
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %13, label %164, !prof !377, !llvm.loop !378

164:                                              ; preds = %161, %29, %25, %22, %3
  %165 = phi ptr [ null, %3 ], [ null, %22 ], [ null, %25 ], [ null, %29 ], [ %14, %161 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret ptr %165
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_control_stmt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !379 !PGOFuncName !380 {
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #13, !range !251
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %94 [
    i8 1, label %8
    i8 5, label %90
    i8 3, label %92
  ], !prof !381

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #13
  %10 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #13
  %11 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #13, !range !382
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %27, !prof !383

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !209
  %18 = load ptr, ptr @ssa_name_values, align 8
  %19 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %18) #13
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %23, !prof !384

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %17) #13
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi ptr [ %22, %21 ], [ null, %15 ]
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %9, ptr %24, !prof !385
  br label %27

27:                                               ; preds = %23, %8
  %28 = phi ptr [ %26, %23 ], [ %9, %8 ]
  %29 = load i64, ptr %10, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %44, !prof !386

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !209
  %35 = load ptr, ptr @ssa_name_values, align 8
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #13
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %40, !prof !387

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %35, i32 noundef %34) #13
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi ptr [ %39, %38 ], [ null, %32 ]
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %10, ptr %41, !prof !388
  br label %44

44:                                               ; preds = %40, %27
  %45 = phi ptr [ %43, %40 ], [ %10, %27 ]
  %46 = icmp eq i8 %4, 0
  br i1 %46, label %62, label %47, !prof !389

47:                                               ; preds = %44
  %48 = load i64, ptr %28, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %54, !prof !390

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !391
  %53 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %28, ptr noundef %52, ptr noundef %1) #13
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %53, %51 ], [ %28, %47 ]
  %56 = load i64, ptr %45, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %62, !prof !392

59:                                               ; preds = %54
  %60 = load ptr, ptr %0, align 8, !tbaa !391
  %61 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %45, ptr noundef %60, ptr noundef %1) #13
  br label %62

62:                                               ; preds = %54, %59, %44
  %63 = phi ptr [ %55, %59 ], [ %55, %54 ], [ %28, %44 ]
  %64 = phi ptr [ %61, %59 ], [ %45, %54 ], [ %45, %44 ]
  %65 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %63, ptr noundef %64, i8 noundef zeroext 0) #14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67, !prof !393

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
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !221
  %74 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %72, ptr noundef %73, ptr noundef %70, ptr noundef %71) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76, !prof !394

76:                                               ; preds = %69, %80
  %77 = phi ptr [ %82, %80 ], [ %74, %69 ]
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %83 [
    i16 116, label %80
    i16 113, label %80
  ], !prof !395

80:                                               ; preds = %76, %76
  %81 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !209
  br label %76, !llvm.loop !396

83:                                               ; preds = %76
  %84 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #14
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %86, ptr noundef %1, i32 noundef 2) #14
  %87 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %125, label %128, !prof !397

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
  br i1 %99, label %100, label %128, !prof !398

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %96, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !209
  %103 = load ptr, ptr @ssa_name_values, align 8
  %104 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #13
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %110, !prof !399

106:                                              ; preds = %100
  %107 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %103, i32 noundef %102) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !398

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %100, %106
  %111 = phi ptr [ %96, %106 ], [ %96, %100 ], [ %107, %109 ]
  %112 = icmp eq i8 %4, 0
  br i1 %112, label %121, label %113, !prof !398

113:                                              ; preds = %110
  %114 = load i64, ptr %111, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 141
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 8, !tbaa !391
  %119 = tail call fastcc ptr @lhs_of_dominating_assert(ptr noundef nonnull %111, ptr noundef %118, ptr noundef %1) #13
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121, !prof !400

121:                                              ; preds = %110, %113, %117
  %122 = phi ptr [ %119, %117 ], [ %111, %113 ], [ %111, %110 ]
  %123 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %122) #14
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128, !prof !401

125:                                              ; preds = %121, %83, %89
  %126 = phi ptr [ %2, %89 ], [ %2, %83 ], [ %1, %121 ]
  %127 = tail call ptr %3(ptr noundef %126, ptr noundef %1) #14
  br label %128

128:                                              ; preds = %125, %121, %117, %95, %83
  %129 = phi ptr [ %77, %83 ], [ %122, %121 ], [ null, %117 ], [ null, %95 ], [ %127, %125 ]
  ret ptr %129
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_temporary_equivalences(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !402 !PGOFuncName !403 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5, !prof !404

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %12, %9 ], [ %2, %1 ]
  %7 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !405

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !221
  %11 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %10) #13
  tail call void @set_ssa_name_value(ptr noundef nonnull %7, ptr noundef %11) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !221
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5, !prof !406

15:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @register_jump_thread(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !407 !PGOFuncName !408 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !409
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !323
  store i8 0, ptr %0, align 8, !tbaa !314
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !407 !PGOFuncName !410 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !246
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !411

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !412 !PGOFuncName !413 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !251
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !414 !PGOFuncName !415 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !414 !PGOFuncName !416 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !209
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !417

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !414 !PGOFuncName !418 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_temporary_equivalence(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !419 !PGOFuncName !420 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !209
  %6 = load ptr, ptr @ssa_name_values, align 8
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #13
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %11, !prof !421

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %5) #13
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %10, %9 ], [ null, %3 ]
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %26, !prof !422

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !209
  %19 = icmp ult i32 %18, %7
  br i1 %19, label %20, label %22, !prof !423

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %18) #13
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %21, %20 ], [ null, %16 ]
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %1, ptr %23, !prof !424
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi ptr [ %25, %22 ], [ %1, %11 ]
  tail call void @set_ssa_name_value(ptr noundef nonnull %0, ptr noundef %27) #13
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %2) #13
  %28 = load ptr, ptr %2, align 8, !tbaa !221
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %28, ptr noundef %12) #13
  %29 = load ptr, ptr %2, align 8, !tbaa !221
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %29, ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !425 !PGOFuncName !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !261
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  store ptr %4, ptr %0, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !428 !PGOFuncName !429 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !419 !PGOFuncName !430 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 2) #13, !range !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !431

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 2) #14
  store ptr %6, ptr %0, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !432 !PGOFuncName !433 {
  %3 = load i32, ptr %0, align 8, !tbaa !216
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !216
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !342 !PGOFuncName !434 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !263
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !435 !PGOFuncName !436 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !251
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !437 !PGOFuncName !438 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !439 !PGOFuncName !440 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !441 !PGOFuncName !442 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !443 !PGOFuncName !444 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !251
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !445 !PGOFuncName !446 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #13
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !447

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !448 !PGOFuncName !449 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @num_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !450 !PGOFuncName !451 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call fastcc void @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #13
  %3 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10, !prof !363

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %7 = add nuw nsw i32 %6, 1
  call fastcc void @op_iter_next_tree(ptr noundef nonnull %2) #13
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %5, label %10, !prof !367, !llvm.loop !452

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !453 !PGOFuncName !454 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !317
  store ptr %1, ptr %4, align 8, !tbaa !221
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_assignment_stmt(ptr noundef %0) unnamed_addr #0 !prof !455 !PGOFuncName !456 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !382
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !251
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %42 [
    i8 3, label %5
    i8 2, label %29
    i8 1, label %35
  ], !prof !457

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 56
  br i1 %9, label %10, label %26, !prof !458

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = tail call ptr @fold(ptr noundef %12) #14
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !221
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18, !prof !459

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !221
  %20 = icmp eq ptr %13, %19
  br i1 %20, label %21, label %26, !prof !459

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !209
  br label %26

26:                                               ; preds = %23, %18, %5
  %27 = phi ptr [ %6, %5 ], [ %6, %18 ], [ %25, %23 ]
  %28 = tail call ptr @fold(ptr noundef %27) #14
  br label %43

29:                                               ; preds = %1
  %30 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #13
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !209
  %34 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %2, ptr noundef %33, ptr noundef %31) #14
  br label %43

35:                                               ; preds = %1
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #13
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %38 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #13
  %39 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !209
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
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 !prof !342 !PGOFuncName !460 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !461

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !462
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !463 !PGOFuncName !464 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !246
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !465

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !466 !PGOFuncName !467 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !468
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !469

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !466 !PGOFuncName !470 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !251
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 !prof !466 !PGOFuncName !471 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !301
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !445 !PGOFuncName !472 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !450 !PGOFuncName !473 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !310
  tail call fastcc void @op_iter_next_tree(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 !prof !474 !PGOFuncName !475 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !476

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !325
  store ptr %6, ptr %2, align 8, !tbaa !323
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !409
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !477

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !478
  store ptr %12, ptr %8, align 8, !tbaa !409
  br label %14

13:                                               ; preds = %7
  store i8 1, ptr %0, align 8, !tbaa !314
  br label %14

14:                                               ; preds = %13, %11, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !453 !PGOFuncName !480 {
  %2 = load ptr, ptr %0, align 8, !tbaa !481
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !482

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !483
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !483
  store ptr %2, ptr %6, align 8, !tbaa !481
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !453 !PGOFuncName !484 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !485

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !486

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !481
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #13
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !487 !PGOFuncName !488 {
  store ptr %1, ptr %0, align 8, !tbaa !481
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !483
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !483
  store ptr %0, ptr %4, align 8, !tbaa !481
  store ptr %0, ptr %3, align 8, !tbaa !483
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !455 !PGOFuncName !489 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #13, !range !382
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !251
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !490

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 !prof !491 !PGOFuncName !492 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !209
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !493 !PGOFuncName !494 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !495

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !455 !PGOFuncName !496 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !251
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !497

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
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !498 !PGOFuncName !499 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !209
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !501 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !502 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !500 !PGOFuncName !503 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lhs_of_dominating_assert(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 !prof !504 !PGOFuncName !505 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %5 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %0) #13
  %6 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #13, !range !246
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %36, !prof !506

8:                                                ; preds = %3, %32
  %9 = phi ptr [ %33, %32 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !209
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %32, label %13, !prof !507

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %11) #14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16, !prof !508

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #13
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 148
  br i1 %20, label %21, label %32, !prof !509

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !209
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32, !prof !510

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #13
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef %27) #14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30, !prof !511

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %11) #13
  br label %36

32:                                               ; preds = %8, %13, %16, %21, %26
  %33 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #13
  %34 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #13, !range !246
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %8, label %36, !prof !512, !llvm.loop !513

36:                                               ; preds = %32, %3, %30
  %37 = phi ptr [ %31, %30 ], [ %0, %3 ], [ %0, %32 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  ret ptr %37
}

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !500 !PGOFuncName !514 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !500 !PGOFuncName !515 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !500 !PGOFuncName !516 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #6

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !517 !PGOFuncName !518 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !437 !PGOFuncName !519 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !504 !PGOFuncName !520 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !521
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !483
  store ptr %6, ptr %0, align 8, !tbaa !523
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #13, !range !246
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !524
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !525 !PGOFuncName !526 {
  %2 = load ptr, ptr %0, align 8, !tbaa !523
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !527 !PGOFuncName !528 {
  %2 = load ptr, ptr %0, align 8, !tbaa !523
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !483
  store ptr %4, ptr %0, align 8, !tbaa !523
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #13, !range !246
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !529
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !530 !PGOFuncName !531 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !246
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !532

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !533

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #2 !prof !534 !PGOFuncName !535 {
  %2 = load i32, ptr %0, align 8, !tbaa !216
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !216
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  ret ptr %6
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!207}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!36 = !{ptr @set_ssa_name_value, ptr @VEC_tree_base_length, i64 1880744}
!37 = !{ptr @set_ssa_name_value, ptr @VEC_tree_heap_safe_grow_cleared, i64 78114}
!38 = !{ptr @set_ssa_name_value, ptr @VEC_tree_base_replace, i64 1880744}
!39 = !{ptr @VEC_tree_heap_safe_grow_cleared, ptr @VEC_tree_base_length, i64 78113}
!40 = !{ptr @VEC_tree_heap_safe_grow_cleared, ptr @VEC_tree_heap_safe_grow, i64 78113}
!41 = !{ptr @VEC_tree_heap_safe_grow_cleared, ptr @VEC_tree_base_address, i64 78113}
!42 = !{ptr @VEC_tree_heap_safe_grow, ptr @VEC_tree_heap_reserve_exact, i64 78113}
!43 = !{ptr @VEC_tree_heap_reserve_exact, ptr @VEC_tree_base_space, i64 78113}
!44 = !{ptr @VEC_tree_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 1}
!45 = !{ptr @threadedge_initialize_values, ptr @fancy_abort, i64 1}
!46 = !{ptr @threadedge_initialize_values, ptr @VEC_tree_base_length, i64 26608}
!47 = !{ptr @threadedge_initialize_values, ptr @VEC_tree_heap_alloc, i64 26608}
!48 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 26608}
!49 = !{ptr @threadedge_finalize_values, ptr @VEC_tree_heap_free, i64 26608}
!50 = !{ptr @VEC_tree_heap_free, ptr @free, i64 26607}
!51 = !{ptr @potentially_threadable_block, ptr @single_succ_p, i64 1343538}
!52 = !{ptr @potentially_threadable_block, ptr @single_pred_p, i64 778581}
!53 = !{ptr @potentially_threadable_block, ptr @gsi_last_bb, i64 391681}
!54 = !{ptr @potentially_threadable_block, ptr @gsi_end_p, i64 391681}
!55 = !{ptr @potentially_threadable_block, ptr @gsi_stmt, i64 391680}
!56 = !{ptr @potentially_threadable_block, ptr @gimple_code, i64 391679}
!57 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 1343538}
!58 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 778581}
!59 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 419310}
!60 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 419310}
!61 = !{ptr @thread_across_edge, ptr @gsi_last_bb, i64 27630}
!62 = !{ptr @thread_across_edge, ptr @gsi_stmt, i64 27630}
!63 = !{ptr @thread_across_edge, ptr @op_iter_init_use, i64 27630}
!64 = !{ptr @thread_across_edge, ptr @op_iter_done, i64 37035}
!65 = !{ptr @thread_across_edge, ptr @get_use_from_ptr, i64 35649}
!66 = !{ptr @thread_across_edge, ptr @gimple_code, i64 453069}
!67 = !{ptr @thread_across_edge, ptr @gimple_bb, i64 29135}
!68 = !{ptr @thread_across_edge, ptr @op_iter_next_use, i64 9405}
!69 = !{ptr @thread_across_edge, ptr @record_temporary_equivalences_from_phis, i64 422526}
!70 = !{ptr @thread_across_edge, ptr @record_temporary_equivalences_from_stmts_at_dest, i64 422385}
!71 = !{ptr @thread_across_edge, ptr @simplify_control_stmt_condition, i64 417422}
!72 = !{ptr @thread_across_edge, ptr @is_gimple_min_invariant, i64 41274}
!73 = !{ptr @thread_across_edge, ptr @find_taken_edge, i64 40263}
!74 = !{ptr @thread_across_edge, ptr @remove_temporary_equivalences, i64 489031}
!75 = !{ptr @thread_across_edge, ptr @register_jump_thread, i64 40262}
!76 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 1500803}
!77 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 1500803}
!78 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!79 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_start_phis, i64 425733}
!80 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_end_p, i64 1025497}
!81 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_stmt, i64 599906}
!82 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 599906}
!83 = !{ptr @record_temporary_equivalences_from_phis, ptr @get_use_from_ptr, i64 599906}
!84 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_phi_result, i64 599906}
!85 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_code, i64 518501}
!86 = !{ptr @record_temporary_equivalences_from_phis, ptr @gimple_bb, i64 187684}
!87 = !{ptr @record_temporary_equivalences_from_phis, ptr @is_gimple_reg, i64 599764}
!88 = !{ptr @record_temporary_equivalences_from_phis, ptr @record_temporary_equivalence, i64 599764}
!89 = !{ptr @record_temporary_equivalences_from_phis, ptr @gsi_next, i64 599764}
!90 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_start_bb, i64 425592}
!91 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_end_p, i64 1775967}
!92 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_stmt, i64 1355393}
!93 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_code, i64 1943388}
!94 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @is_gimple_debug, i64 1307299}
!95 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_asm_volatile_p, i64 1}
!96 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_assign_lhs, i64 783889}
!97 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_call_lhs, i64 160568}
!98 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @is_gimple_call, i64 1517817}
!99 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_call_fndecl, i64 64252}
!100 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_assign_single_p, i64 1550251}
!101 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_assign_rhs1, i64 870545}
!102 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @num_ssa_operands, i64 739281}
!103 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @xcalloc, i64 739281}
!104 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @op_iter_init_use, i64 1478562}
!105 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @op_iter_done, i64 3787548}
!106 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @get_use_from_ptr, i64 1154493}
!107 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @VEC_tree_base_length, i64 1154492}
!108 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @VEC_tree_base_index, i64 1096226}
!109 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @set_ssa_use_from_ptr, i64 1545473}
!110 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @op_iter_next_use, i64 2308986}
!111 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @fold_call_stmt, i64 64252}
!112 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @fold_assignment_stmt, i64 675029}
!113 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @is_gimple_min_invariant, i64 443329}
!114 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @free, i64 739281}
!115 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gimple_get_lhs, i64 90718}
!116 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @record_temporary_equivalence, i64 90718}
!117 = !{ptr @record_temporary_equivalences_from_stmts_at_dest, ptr @gsi_next, i64 1350375}
!118 = !{ptr @simplify_control_stmt_condition, ptr @gimple_code, i64 420593}
!119 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_lhs, i64 416025}
!120 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_rhs, i64 416025}
!121 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_code, i64 416025}
!122 = !{ptr @simplify_control_stmt_condition, ptr @VEC_tree_base_length, i64 477135}
!123 = !{ptr @simplify_control_stmt_condition, ptr @VEC_tree_base_index, i64 459030}
!124 = !{ptr @simplify_control_stmt_condition, ptr @lhs_of_dominating_assert, i64 157567}
!125 = !{ptr @simplify_control_stmt_condition, ptr @tree_swap_operands_p, i64 416025}
!126 = !{ptr @simplify_control_stmt_condition, ptr @swap_tree_comparison, i64 12907}
!127 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_set_code, i64 416025}
!128 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_set_lhs, i64 416025}
!129 = !{ptr @simplify_control_stmt_condition, ptr @gimple_cond_set_rhs, i64 416025}
!130 = !{ptr @simplify_control_stmt_condition, ptr @fold_defer_overflow_warnings, i64 416025}
!131 = !{ptr @simplify_control_stmt_condition, ptr @fold_binary_loc, i64 416025}
!132 = !{ptr @simplify_control_stmt_condition, ptr @is_gimple_min_invariant, i64 112150}
!133 = !{ptr @simplify_control_stmt_condition, ptr @fold_undefer_overflow_warnings, i64 416025}
!134 = !{ptr @simplify_control_stmt_condition, ptr @gimple_switch_index, i64 4567}
!135 = !{ptr @remove_temporary_equivalences, ptr @VEC_tree_base_length, i64 1390871}
!136 = !{ptr @remove_temporary_equivalences, ptr @VEC_tree_base_pop, i64 2123616}
!137 = !{ptr @remove_temporary_equivalences, ptr @set_ssa_name_value, i64 901533}
!138 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2237390}
!139 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2237390}
!140 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 7775513}
!141 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 599766}
!142 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!143 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_base_length, i64 690012}
!144 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_base_index, i64 1156706}
!145 = !{ptr @record_temporary_equivalence, ptr @set_ssa_name_value, i64 690012}
!146 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_heap_reserve, i64 690012}
!147 = !{ptr @record_temporary_equivalence, ptr @VEC_tree_base_quick_push, i64 1380024}
!148 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 690012}
!149 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 1245}
!150 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 425592}
!151 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 425592}
!152 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1302523}
!153 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 1081489}
!154 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 159981}
!155 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1512282}
!156 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 64017}
!157 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2349664}
!158 = !{ptr @num_ssa_operands, ptr @op_iter_init_tree, i64 736587}
!159 = !{ptr @num_ssa_operands, ptr @op_iter_done, i64 1886872}
!160 = !{ptr @num_ssa_operands, ptr @op_iter_next_tree, i64 1150285}
!161 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 1539841}
!162 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 1539841}
!163 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_rhs_code, i64 672570}
!164 = !{ptr @fold_assignment_stmt, ptr @get_gimple_rhs_class, i64 672570}
!165 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_rhs1, i64 672570}
!166 = !{ptr @fold_assignment_stmt, ptr @fold, i64 378464}
!167 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_lhs, i64 294153}
!168 = !{ptr @fold_assignment_stmt, ptr @fold_unary_loc, i64 79852}
!169 = !{ptr @fold_assignment_stmt, ptr @gimple_assign_rhs2, i64 214301}
!170 = !{ptr @fold_assignment_stmt, ptr @fold_binary_loc, i64 214301}
!171 = !{ptr @fold_assignment_stmt, ptr @fancy_abort, i64 1}
!172 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 4706071}
!173 = !{ptr @gimple_op, ptr @gimple_ops, i64 4706070}
!174 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 5538123}
!175 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!176 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 5538123}
!177 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 5538123}
!178 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 64017}
!179 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 736587}
!180 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 736587}
!181 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1503143}
!182 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 672570}
!183 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 672570}
!184 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 378418}
!185 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 214301}
!186 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 214300}
!187 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 672570}
!188 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 416026}
!189 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 416026}
!190 = !{ptr @lhs_of_dominating_assert, ptr @first_readonly_imm_use, i64 157567}
!191 = !{ptr @lhs_of_dominating_assert, ptr @end_readonly_imm_use_p, i64 623789}
!192 = !{ptr @lhs_of_dominating_assert, ptr @gimple_assign_single_p, i64 332098}
!193 = !{ptr @lhs_of_dominating_assert, ptr @gimple_assign_rhs1, i64 436975}
!194 = !{ptr @lhs_of_dominating_assert, ptr @gimple_bb, i64 200994}
!195 = !{ptr @lhs_of_dominating_assert, ptr @dominated_by_p, i64 200994}
!196 = !{ptr @lhs_of_dominating_assert, ptr @gimple_assign_lhs, i64 6394}
!197 = !{ptr @lhs_of_dominating_assert, ptr @next_readonly_imm_use, i64 466222}
!198 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 416026}
!199 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 416026}
!200 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 4567}
!201 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 157567}
!202 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 460173}
!203 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 832052}
!204 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 832051}
!205 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!206 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 832052}
!207 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!208 = !{!"function_entry_count", i64 1880744}
!209 = !{!210, !210, i64 0}
!210 = !{!"omnipotent char", !211, i64 0}
!211 = !{!"Simple C/C++ TBAA"}
!212 = !{!"branch_weights", i32 1802632, i32 78114}
!213 = !{!"function_entry_count", i64 6259903}
!214 = !{!"tree-ssa-threadedge.c:VEC_tree_base_length"}
!215 = !{!"branch_weights", i32 1, i32 6259904}
!216 = !{!217, !218, i64 0}
!217 = !{!"VEC_tree_base", !218, i64 0, !218, i64 4, !210, i64 8}
!218 = !{!"int", !210, i64 0}
!219 = !{!"function_entry_count", i64 78113}
!220 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_safe_grow_cleared"}
!221 = !{!222, !222, i64 0}
!222 = !{!"any pointer", !210, i64 0}
!223 = !{!"tree-ssa-threadedge.c:VEC_tree_base_replace"}
!224 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_safe_grow"}
!225 = !{!"branch_weights", i32 1, i32 78114}
!226 = !{}
!227 = !{!"tree-ssa-threadedge.c:VEC_tree_base_address"}
!228 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_reserve_exact"}
!229 = !{i32 0, i32 2}
!230 = !{!"function_entry_count", i64 768125}
!231 = !{!"tree-ssa-threadedge.c:VEC_tree_base_space"}
!232 = !{!"branch_weights", i32 1, i32 768126}
!233 = !{!217, !218, i64 4}
!234 = !{!"function_entry_count", i64 26608}
!235 = !{!"branch_weights", i32 26609, i32 1}
!236 = !{!237, !222, i64 24}
!237 = !{!"function", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !222, i64 32, !222, i64 40, !222, i64 48, !222, i64 56, !222, i64 64, !222, i64 72, !222, i64 80, !222, i64 88, !222, i64 96, !218, i64 104, !218, i64 108, !218, i64 112, !218, i64 116, !218, i64 120, !218, i64 124, !222, i64 128, !218, i64 136, !218, i64 137, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139}
!238 = !{!239, !222, i64 16}
!239 = !{!"gimple_df", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !240, i64 32, !240, i64 48, !222, i64 64, !222, i64 72, !222, i64 80, !222, i64 88, !218, i64 96, !241, i64 104}
!240 = !{!"pt_solution", !218, i64 0, !218, i64 0, !218, i64 0, !218, i64 0, !218, i64 0, !218, i64 0, !222, i64 8}
!241 = !{!"ssa_operands", !222, i64 0, !218, i64 8, !218, i64 12, !210, i64 16, !222, i64 24, !222, i64 32}
!242 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_alloc"}
!243 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_free"}
!244 = !{!"branch_weights", i32 1, i32 26609}
!245 = !{!"function_entry_count", i64 1343538}
!246 = !{i8 0, i8 2}
!247 = !{!"branch_weights", i32 778582, i32 564958}
!248 = !{!"branch_weights", i32 391682, i32 386901}
!249 = !{!"branch_weights", i32 391682, i32 1}
!250 = !{!"branch_weights", i32 1, i32 391682}
!251 = !{i32 0, i32 256}
!252 = !{!"tree-ssa-threadedge.c:single_succ_p"}
!253 = !{!254, !222, i64 8}
!254 = !{!"basic_block_def", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !210, i64 32, !222, i64 48, !222, i64 56, !210, i64 64, !255, i64 72, !218, i64 80, !218, i64 84, !218, i64 88, !218, i64 92, !218, i64 96}
!255 = !{!"long", !210, i64 0}
!256 = !{!"function_entry_count", i64 778581}
!257 = !{!"tree-ssa-threadedge.c:single_pred_p"}
!258 = !{!254, !222, i64 0}
!259 = !{!"function_entry_count", i64 419310}
!260 = !{!"tree-ssa-threadedge.c:gsi_last_bb"}
!261 = !{!262, !222, i64 0}
!262 = !{!"", !222, i64 0, !222, i64 8, !222, i64 16}
!263 = !{!262, !222, i64 8}
!264 = !{!262, !222, i64 16}
!265 = !{!"function_entry_count", i64 3188071}
!266 = !{!"tree-ssa-threadedge.c:gsi_end_p"}
!267 = !{!"function_entry_count", i64 2782830}
!268 = !{!"tree-ssa-threadedge.c:gsi_stmt"}
!269 = !{!270, !222, i64 0}
!270 = !{!"gimple_seq_node_d", !222, i64 0, !222, i64 8, !222, i64 16}
!271 = !{!"function_entry_count", i64 32276600}
!272 = !{!"tree-ssa-threadedge.c:gimple_code"}
!273 = !{!"function_entry_count", i64 2122119}
!274 = !{!"tree-ssa-threadedge.c:VEC_edge_base_length"}
!275 = !{!"branch_weights", i32 13257, i32 2108864}
!276 = !{!277, !218, i64 0}
!277 = !{!"VEC_edge_base", !218, i64 0, !218, i64 4, !210, i64 8}
!278 = !{!"function_entry_count", i64 844902}
!279 = !{!"tree-ssa-threadedge.c:bb_seq"}
!280 = !{!254, !218, i64 96}
!281 = !{!"branch_weights", i32 844903, i32 1}
!282 = !{!"branch_weights", i32 1, i32 844903}
!283 = !{!284, !222, i64 0}
!284 = !{!"gimple_bb_info", !222, i64 0, !222, i64 8}
!285 = !{!"tree-ssa-threadedge.c:gimple_seq_last"}
!286 = !{!"branch_weights", i32 1, i32 419311}
!287 = !{!288, !222, i64 8}
!288 = !{!"gimple_seq_d", !222, i64 0, !222, i64 8, !222, i64 16}
!289 = !{!"function_entry_count", i64 448769}
!290 = !{!291, !218, i64 48}
!291 = !{!"edge_def", !222, i64 0, !222, i64 8, !210, i64 16, !222, i64 24, !222, i64 32, !218, i64 40, !218, i64 44, !218, i64 48, !218, i64 52, !255, i64 56}
!292 = !{!"branch_weights", i32 421141, i32 27630}
!293 = !{!291, !222, i64 8}
!294 = !{!"branch_weights", i32 4593, i32 1}
!295 = !{!"branch_weights", i32 31290, i32 1}
!296 = !{!"branch_weights", i32 5717, i32 25574}
!297 = !{!"branch_weights", i32 23037, i32 2538}
!298 = !{!"branch_weights", i32 26697, i32 4593}
!299 = distinct !{!299, !300}
!300 = !{!"llvm.loop.mustprogress"}
!301 = !{!218, !218, i64 0}
!302 = !{!"branch_weights", i32 142, i32 425593}
!303 = !{!"branch_weights", i32 5000, i32 420594}
!304 = !{!"branch_weights", i32 10188, i32 -54303126, i32 10191, i32 46542352}
!305 = !{!"branch_weights", i32 379007, i32 41588}
!306 = !{!"branch_weights", i32 1019, i32 40570}
!307 = !{!"branch_weights", i32 1, i32 40570}
!308 = !{!"function_entry_count", i64 1500803}
!309 = !{!"tree-ssa-threadedge.c:op_iter_init_use"}
!310 = !{!311, !218, i64 4}
!311 = !{!"ssa_operand_iterator_d", !210, i64 0, !218, i64 4, !222, i64 8, !222, i64 16, !218, i64 24, !218, i64 28, !222, i64 32}
!312 = !{!"function_entry_count", i64 5696501}
!313 = !{!"tree-ssa-threadedge.c:op_iter_done"}
!314 = !{!311, !210, i64 0}
!315 = !{!"function_entry_count", i64 2931627}
!316 = !{!"tree-ssa-threadedge.c:get_use_from_ptr"}
!317 = !{!318, !222, i64 24}
!318 = !{!"ssa_use_operand_d", !222, i64 0, !222, i64 8, !210, i64 16, !222, i64 24}
!319 = !{!"function_entry_count", i64 411601}
!320 = !{!"tree-ssa-threadedge.c:gimple_bb"}
!321 = !{!"function_entry_count", i64 3809628}
!322 = !{!"tree-ssa-threadedge.c:op_iter_next_use"}
!323 = !{!311, !222, i64 16}
!324 = !{!"branch_weights", i32 1477768, i32 2331862}
!325 = !{!326, !222, i64 0}
!326 = !{!"use_optype_d", !222, i64 0, !318, i64 8}
!327 = !{!311, !218, i64 24}
!328 = !{!311, !218, i64 28}
!329 = !{!"branch_weights", i32 1, i32 1477768}
!330 = !{!311, !222, i64 32}
!331 = !{!"function_entry_count", i64 425733}
!332 = !{!"tree-ssa-threadedge.c:record_temporary_equivalences_from_phis"}
!333 = !{!"branch_weights", i32 425592, i32 1}
!334 = !{!291, !218, i64 44}
!335 = !{!"branch_weights", i32 12, i32 599756}
!336 = !{!"branch_weights", i32 518382, i32 81375}
!337 = !{!"branch_weights", i32 187641, i32 330742}
!338 = !{!"branch_weights", i32 142, i32 187500}
!339 = !{!"branch_weights", i32 286362, i32 313265}
!340 = !{!"branch_weights", i32 174175, i32 425592}
!341 = distinct !{!341, !300}
!342 = !{!"function_entry_count", i64 425592}
!343 = !{!"tree-ssa-threadedge.c:record_temporary_equivalences_from_stmts_at_dest"}
!344 = !{!345, !218, i64 8}
!345 = !{!"param_info", !222, i64 0, !218, i64 8, !210, i64 12, !218, i64 16, !218, i64 20, !222, i64 24}
!346 = !{!"branch_weights", i32 420593, i32 1}
!347 = !{!"branch_weights", i32 -859458487, i32 2637, i32 126384831}
!348 = !{!"branch_weights", i32 1302524, i32 1}
!349 = !{!"branch_weights", i32 1, i32 1302524}
!350 = !{!"branch_weights", i32 1297525, i32 5000}
!351 = !{!"branch_weights", i32 1292648734, i32 854834914}
!352 = !{!"branch_weights", i32 711679, i32 69350}
!353 = !{!"branch_weights", i32 95905, i32 489943}
!354 = !{!"branch_weights", i32 31828, i32 64078}
!355 = !{!"branch_weights", i32 64018, i32 61}
!356 = !{!"branch_weights", i32 711679, i32 64018}
!357 = !{!"branch_weights", i32 2068, i32 61951}
!358 = !{!"branch_weights", i32 -457040895, i32 61952, i32 61951}
!359 = !{!"branch_weights", i32 358170, i32 417527}
!360 = !{!"branch_weights", i32 6792, i32 410736}
!361 = !{!"branch_weights", i32 358170, i32 410736}
!362 = !{!"branch_weights", i32 32318, i32 378419}
!363 = !{!"branch_weights", i32 736587, i32 1}
!364 = !{!"branch_weights", i32 1150287, i32 1}
!365 = !{!"branch_weights", i32 1092234, i32 58054}
!366 = !{!"branch_weights", i32 1381561815, i32 765921833}
!367 = !{!"branch_weights", i32 413700, i32 736587}
!368 = distinct !{!368, !300}
!369 = !{!"branch_weights", i32 672571, i32 64018}
!370 = !{!"branch_weights", i32 314825, i32 421764}
!371 = !{!"branch_weights", i32 3121, i32 418644}
!372 = !{!"branch_weights", i32 400089, i32 18556}
!373 = distinct !{!373, !300}
!374 = !{!"branch_weights", i32 685294, i32 90403}
!375 = !{!"branch_weights", i32 67332, i32 23072}
!376 = !{!"branch_weights", i32 16, i32 23057}
!377 = !{!"branch_weights", i32 929847, i32 420593}
!378 = distinct !{!378, !300}
!379 = !{!"function_entry_count", i64 420593}
!380 = !{!"tree-ssa-threadedge.c:simplify_control_stmt_condition"}
!381 = !{!"branch_weights", i32 4568, i32 -493312570, i32 41733248, i32 4568}
!382 = !{i32 0, i32 65536}
!383 = !{!"branch_weights", i32 415778, i32 250}
!384 = !{!"branch_weights", i32 404402, i32 11377}
!385 = !{!"branch_weights", i32 339315, i32 76464}
!386 = !{!"branch_weights", i32 56793, i32 359235}
!387 = !{!"branch_weights", i32 54632, i32 2162}
!388 = !{!"branch_weights", i32 41544, i32 15250}
!389 = !{!"branch_weights", i32 253926, i32 162102}
!390 = !{!"branch_weights", i32 142379, i32 19724}
!391 = !{!291, !222, i64 0}
!392 = !{!"branch_weights", i32 15190, i32 146913}
!393 = !{!"branch_weights", i32 403121, i32 12907}
!394 = !{!"branch_weights", i32 362236, i32 53792}
!395 = !{!"branch_weights", i32 -1401388032, i32 53793, i32 53792}
!396 = distinct !{!396, !300}
!397 = !{!"branch_weights", i32 1, i32 -1}
!398 = !{!"branch_weights", i32 4568, i32 1}
!399 = !{!"branch_weights", i32 1, i32 4568}
!400 = !{!"branch_weights", i32 -2147483648, i32 0}
!401 = !{!"branch_weights", i32 4301, i32 268}
!402 = !{!"function_entry_count", i64 489338}
!403 = !{!"tree-ssa-threadedge.c:remove_temporary_equivalences"}
!404 = !{!"branch_weights", i32 1, i32 203805}
!405 = !{!"branch_weights", i32 285534, i32 803051}
!406 = !{!"branch_weights", i32 203805, i32 884779}
!407 = !{!"function_entry_count", i64 2237390}
!408 = !{!"tree-ssa-threadedge.c:op_iter_init"}
!409 = !{!311, !222, i64 8}
!410 = !{!"tree-ssa-threadedge.c:gimple_use_ops"}
!411 = !{!"branch_weights", i32 1, i32 2237391}
!412 = !{!"function_entry_count", i64 7775513}
!413 = !{!"tree-ssa-threadedge.c:gimple_has_ops"}
!414 = !{!"function_entry_count", i64 599766}
!415 = !{!"tree-ssa-threadedge.c:gimple_phi_arg_imm_use_ptr"}
!416 = !{!"tree-ssa-threadedge.c:gimple_phi_arg"}
!417 = !{!"branch_weights", i32 1, i32 599767}
!418 = !{!"tree-ssa-threadedge.c:gimple_phi_result"}
!419 = !{!"function_entry_count", i64 690012}
!420 = !{!"tree-ssa-threadedge.c:record_temporary_equivalence"}
!421 = !{!"branch_weights", i32 640397, i32 49617}
!422 = !{!"branch_weights", i32 585583, i32 104431}
!423 = !{!"branch_weights", i32 516313, i32 69271}
!424 = !{!"branch_weights", i32 573343, i32 12241}
!425 = !{!"function_entry_count", i64 1945065}
!426 = !{!"tree-ssa-threadedge.c:gsi_next"}
!427 = !{!270, !222, i64 16}
!428 = !{!"function_entry_count", i64 2713343}
!429 = !{!"tree-ssa-threadedge.c:VEC_tree_base_index"}
!430 = !{!"tree-ssa-threadedge.c:VEC_tree_heap_reserve"}
!431 = !{!"branch_weights", i32 1245, i32 688769}
!432 = !{!"function_entry_count", i64 1380024}
!433 = !{!"tree-ssa-threadedge.c:VEC_tree_base_quick_push"}
!434 = !{!"tree-ssa-threadedge.c:gsi_start_bb"}
!435 = !{!"function_entry_count", i64 1302523}
!436 = !{!"tree-ssa-threadedge.c:is_gimple_debug"}
!437 = !{!"function_entry_count", i64 0}
!438 = !{!"tree-ssa-threadedge.c:gimple_asm_volatile_p"}
!439 = !{!"function_entry_count", i64 1081489}
!440 = !{!"tree-ssa-threadedge.c:gimple_assign_lhs"}
!441 = !{!"function_entry_count", i64 159981}
!442 = !{!"tree-ssa-threadedge.c:gimple_call_lhs"}
!443 = !{!"function_entry_count", i64 1512282}
!444 = !{!"tree-ssa-threadedge.c:is_gimple_call"}
!445 = !{!"function_entry_count", i64 64017}
!446 = !{!"tree-ssa-threadedge.c:gimple_call_fndecl"}
!447 = !{!"branch_weights", i32 61951, i32 2068}
!448 = !{!"function_entry_count", i64 2349664}
!449 = !{!"tree-ssa-threadedge.c:gimple_assign_rhs1"}
!450 = !{!"function_entry_count", i64 736587}
!451 = !{!"tree-ssa-threadedge.c:num_ssa_operands"}
!452 = distinct !{!452, !300}
!453 = !{!"function_entry_count", i64 1539841}
!454 = !{!"tree-ssa-threadedge.c:set_ssa_use_from_ptr"}
!455 = !{!"function_entry_count", i64 672570}
!456 = !{!"tree-ssa-threadedge.c:fold_assignment_stmt"}
!457 = !{!"branch_weights", i32 1, i32 378419, i32 79852, i32 214302}
!458 = !{!"branch_weights", i32 47, i32 378373}
!459 = !{!"branch_weights", i32 1, i32 47}
!460 = !{!"tree-ssa-threadedge.c:gimple_seq_first"}
!461 = !{!"branch_weights", i32 1, i32 425593}
!462 = !{!288, !222, i64 0}
!463 = !{!"function_entry_count", i64 4706071}
!464 = !{!"tree-ssa-threadedge.c:gimple_op"}
!465 = !{!"branch_weights", i32 1, i32 4706072}
!466 = !{!"function_entry_count", i64 5538123}
!467 = !{!"tree-ssa-threadedge.c:gimple_ops"}
!468 = !{!255, !255, i64 0}
!469 = !{!"branch_weights", i32 1, i32 5538124}
!470 = !{!"tree-ssa-threadedge.c:gimple_statement_structure"}
!471 = !{!"tree-ssa-threadedge.c:gss_for_code"}
!472 = !{!"tree-ssa-threadedge.c:gimple_call_fn"}
!473 = !{!"tree-ssa-threadedge.c:op_iter_init_tree"}
!474 = !{!"function_entry_count", i64 1886873}
!475 = !{!"tree-ssa-threadedge.c:op_iter_next_tree"}
!476 = !{!"branch_weights", i32 736588, i32 1150287}
!477 = !{!"branch_weights", i32 736588, i32 1}
!478 = !{!479, !222, i64 0}
!479 = !{!"def_optype_d", !222, i64 0, !222, i64 8}
!480 = !{!"tree-ssa-threadedge.c:delink_imm_use"}
!481 = !{!318, !222, i64 0}
!482 = !{!"branch_weights", i32 36697, i32 1503146}
!483 = !{!318, !222, i64 8}
!484 = !{!"tree-ssa-threadedge.c:link_imm_use"}
!485 = !{!"branch_weights", i32 1, i32 1539842}
!486 = !{!"branch_weights", i32 1503146, i32 36697}
!487 = !{!"function_entry_count", i64 1503145}
!488 = !{!"tree-ssa-threadedge.c:link_imm_use_to_list"}
!489 = !{!"tree-ssa-threadedge.c:gimple_assign_rhs_code"}
!490 = !{!"branch_weights", i32 378419, i32 294153}
!491 = !{!"function_entry_count", i64 1345140}
!492 = !{!"tree-ssa-threadedge.c:get_gimple_rhs_class"}
!493 = !{!"function_entry_count", i64 214301}
!494 = !{!"tree-ssa-threadedge.c:gimple_assign_rhs2"}
!495 = !{!"branch_weights", i32 214302, i32 1}
!496 = !{!"tree-ssa-threadedge.c:gimple_expr_code"}
!497 = !{!"branch_weights", i32 1, i32 2690284, i32 2, i32 1}
!498 = !{!"function_entry_count", i64 1046353}
!499 = !{!"tree-ssa-threadedge.c:gimple_num_ops"}
!500 = !{!"function_entry_count", i64 416026}
!501 = !{!"tree-ssa-threadedge.c:gimple_cond_lhs"}
!502 = !{!"tree-ssa-threadedge.c:gimple_cond_rhs"}
!503 = !{!"tree-ssa-threadedge.c:gimple_cond_code"}
!504 = !{!"function_entry_count", i64 157567}
!505 = !{!"tree-ssa-threadedge.c:lhs_of_dominating_assert"}
!506 = !{!"branch_weights", i32 151257, i32 1}
!507 = !{!"branch_weights", i32 138695, i32 327790}
!508 = !{!"branch_weights", i32 109734, i32 218057}
!509 = !{!"branch_weights", i32 213252, i32 4806}
!510 = !{!"branch_weights", i32 198389, i32 14864}
!511 = !{!"branch_weights", i32 192079, i32 6311}
!512 = !{!"branch_weights", i32 315227, i32 151257}
!513 = distinct !{!513, !300}
!514 = !{!"tree-ssa-threadedge.c:gimple_cond_set_code"}
!515 = !{!"tree-ssa-threadedge.c:gimple_cond_set_lhs"}
!516 = !{!"tree-ssa-threadedge.c:gimple_cond_set_rhs"}
!517 = !{!"function_entry_count", i64 4567}
!518 = !{!"tree-ssa-threadedge.c:gimple_switch_index"}
!519 = !{!"tree-ssa-threadedge.c:gimple_goto_dest"}
!520 = !{!"tree-ssa-threadedge.c:first_readonly_imm_use"}
!521 = !{!522, !222, i64 8}
!522 = !{!"immediate_use_iterator_d", !222, i64 0, !222, i64 8, !318, i64 16, !222, i64 48}
!523 = !{!522, !222, i64 0}
!524 = !{!"branch_weights", i32 157568, i32 1}
!525 = !{!"function_entry_count", i64 1235480}
!526 = !{!"tree-ssa-threadedge.c:end_readonly_imm_use_p"}
!527 = !{!"function_entry_count", i64 460173}
!528 = !{!"tree-ssa-threadedge.c:next_readonly_imm_use"}
!529 = !{!"branch_weights", i32 308917, i32 151258}
!530 = !{!"function_entry_count", i64 832052}
!531 = !{!"tree-ssa-threadedge.c:gimple_set_op"}
!532 = !{!"branch_weights", i32 1, i32 832053}
!533 = !{!"branch_weights", i32 832053, i32 1}
!534 = !{!"function_entry_count", i64 1891633}
!535 = !{!"tree-ssa-threadedge.c:VEC_tree_base_pop"}
