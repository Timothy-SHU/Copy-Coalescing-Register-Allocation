; ModuleID = 'gimple-iterator.c'
source_filename = "gimple-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }

@.str = private unnamed_addr constant [18 x i8] c"gimple-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !218 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5, !prof !219

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !220
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10, !prof !219

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 152, ptr noundef nonnull @.str.1) #12
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call fastcc ptr @gimple_seq_first(ptr noundef nonnull %1) #13
  %12 = tail call fastcc ptr @gimple_seq_last(ptr noundef nonnull %1) #13
  tail call fastcc void @gimple_seq_set_first(ptr noundef nonnull %1, ptr noundef null) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef nonnull %1, ptr noundef null) #13
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #12
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %19, label %16, !prof !225

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %12
  br i1 %17, label %20, label %18, !prof !226

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #12
  br label %20

19:                                               ; preds = %10
  tail call fastcc void @gsi_insert_seq_nodes_before(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %2) #13
  br label %20

20:                                               ; preds = %18, %16, %3, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !227 !PGOFuncName !228 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !229

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !230
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 !prof !232 !PGOFuncName !233 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !234

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !235
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_seq_set_first(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 !prof !236 !PGOFuncName !237 {
  store ptr %1, ptr %0, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_seq_set_last(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 !prof !238 !PGOFuncName !239 {
  %3 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !235
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gsi_insert_seq_nodes_before(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !240 !PGOFuncName !241 {
  %5 = load ptr, ptr %0, align 8, !tbaa !242
  %6 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !243

8:                                                ; preds = %4
  tail call fastcc void @update_bb_for_stmts(ptr noundef %1, ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %23, label %11, !prof !244

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !245
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !245
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16, !prof !247

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  store ptr %1, ptr %17, align 8, !tbaa !248
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !220
  tail call fastcc void @gimple_seq_set_first(ptr noundef %20, ptr noundef nonnull %1) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %5, ptr %22, align 8, !tbaa !248
  store ptr %2, ptr %12, align 8, !tbaa !245
  br label %35

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  %26 = tail call fastcc ptr @gimple_seq_last(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !245
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29, !prof !249

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  store ptr %1, ptr %30, align 8, !tbaa !248
  br label %33

31:                                               ; preds = %23
  tail call fastcc void @gimple_seq_set_first(ptr noundef %25, ptr noundef nonnull %1) #13
  %32 = load ptr, ptr %24, align 8, !tbaa !220
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ %25, %29 ]
  tail call fastcc void @gimple_seq_set_last(ptr noundef %34, ptr noundef %2) #13
  br label %35

35:                                               ; preds = %33, %21
  switch i32 %3, label %37 [
    i32 0, label %36
    i32 2, label %36
    i32 1, label %38
  ], !prof !250

36:                                               ; preds = %35, %35
  store ptr %1, ptr %0, align 8, !tbaa !242
  br label %38

37:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %37, %35, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !251 !PGOFuncName !252 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bb_for_stmts(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !254 !PGOFuncName !255 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !256

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  tail call void @gimple_set_bb(ptr noundef %6, ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !248
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !prof !258, !llvm.loop !259

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !218 {
  tail call fastcc void @update_modified_stmts(ptr noundef %1) #13
  tail call void @gsi_insert_seq_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_modified_stmts(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !262 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = tail call zeroext i8 @ssa_operands_active() #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5, !prof !263

5:                                                ; preds = %1
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !264
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12, !prof !265

8:                                                ; preds = %5, %8
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  tail call fastcc void @update_stmt_if_modified(ptr noundef %9) #13
  call fastcc void @gsi_next(ptr noundef nonnull %2) #13
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !264
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %8, label %12, !prof !266, !llvm.loop !267

12:                                               ; preds = %8, %5, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ssa_operands_active() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !268 !PGOFuncName !269 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #13
  store ptr %3, ptr %0, align 8, !tbaa !242
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !220
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !270

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !257
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !271

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #13
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !272 !PGOFuncName !273 {
  %2 = load ptr, ptr %0, align 8, !tbaa !242
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #0 !prof !274 !PGOFuncName !275 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !276

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #12
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !277 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !242
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !279 !PGOFuncName !280 {
  %2 = load ptr, ptr %0, align 8, !tbaa !242
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  store ptr %4, ptr %0, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !281 !PGOFuncName !282 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !283
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !274 !PGOFuncName !284 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !285

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
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !286 !PGOFuncName !287 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !288
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !289 !PGOFuncName !290 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !291 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5, !prof !292

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !220
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10, !prof !292

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #12
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call fastcc ptr @gimple_seq_first(ptr noundef nonnull %1) #13
  %12 = tail call fastcc ptr @gimple_seq_last(ptr noundef nonnull %1) #13
  tail call fastcc void @gimple_seq_set_first(ptr noundef nonnull %1, ptr noundef null) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef nonnull %1, ptr noundef null) #13
  tail call void @gimple_seq_free(ptr noundef nonnull %1) #12
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %19, label %16, !prof !293

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %12
  br i1 %17, label %20, label %18, !prof !294

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 275, ptr noundef nonnull @.str.1) #12
  br label %20

19:                                               ; preds = %10
  tail call fastcc void @gsi_insert_seq_nodes_after(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %2) #13
  br label %20

20:                                               ; preds = %18, %16, %3, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gsi_insert_seq_nodes_after(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !295 !PGOFuncName !296 {
  %5 = load ptr, ptr %0, align 8, !tbaa !242
  %6 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !297

8:                                                ; preds = %4
  tail call fastcc void @update_bb_for_stmts(ptr noundef %1, ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %23, label %11, !prof !298

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !248
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !248
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16, !prof !299

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !245
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !220
  tail call fastcc void @gimple_seq_set_last(ptr noundef %20, ptr noundef nonnull %2) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %5, ptr %22, align 8, !tbaa !245
  store ptr %1, ptr %12, align 8, !tbaa !248
  br label %33

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  %26 = tail call fastcc ptr @gimple_seq_last(ptr noundef %25) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !300

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #12
  %29 = load ptr, ptr %24, align 8, !tbaa !220
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %25, %23 ], [ %29, %28 ]
  tail call fastcc void @gimple_seq_set_first(ptr noundef %31, ptr noundef %1) #13
  %32 = load ptr, ptr %24, align 8, !tbaa !220
  tail call fastcc void @gimple_seq_set_last(ptr noundef %32, ptr noundef %2) #13
  br label %33

33:                                               ; preds = %30, %21
  switch i32 %3, label %38 [
    i32 0, label %34
    i32 2, label %35
    i32 1, label %36
  ], !prof !301

34:                                               ; preds = %33
  store ptr %1, ptr %0, align 8, !tbaa !242
  br label %39

35:                                               ; preds = %33
  store ptr %2, ptr %0, align 8, !tbaa !242
  br label %39

36:                                               ; preds = %33
  br i1 %10, label %37, label %39, !prof !302

37:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #12
  br label %39

38:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #12
  br label %39

39:                                               ; preds = %37, %36, %38, %35, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !303 {
  tail call fastcc void @update_modified_stmts(ptr noundef %1) #13
  tail call void @gsi_insert_seq_after_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gsi_split_seq_after(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) local_unnamed_addr #0 !prof !304 {
  %2 = load ptr, ptr %0, align 8, !tbaa !242
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !248
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !248
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %6, %4 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !220
  %16 = tail call ptr @gimple_seq_alloc() #12
  tail call fastcc void @gimple_seq_set_first(ptr noundef %16, ptr noundef %12) #13
  %17 = tail call fastcc ptr @gimple_seq_last(ptr noundef %15) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %16, ptr noundef %17) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %15, ptr noundef nonnull %2) #13
  store ptr null, ptr %13, align 8, !tbaa !248
  %18 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %12, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !245
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gsi_split_seq_before(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !305 {
  %2 = load ptr, ptr %0, align 8, !tbaa !242
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !306

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !245
  %8 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !220
  %10 = tail call ptr @gimple_seq_alloc() #12
  store ptr %10, ptr %8, align 8, !tbaa !220
  tail call fastcc void @gimple_seq_set_first(ptr noundef %10, ptr noundef %2) #13
  %11 = tail call fastcc ptr @gimple_seq_last(ptr noundef %9) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %10, ptr noundef %11) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %9, ptr noundef %7) #13
  store ptr null, ptr %6, align 8, !tbaa !245
  %12 = icmp eq ptr %7, null
  br i1 %12, label %15, label %13, !prof !307

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !248
  br label %16

15:                                               ; preds = %5
  tail call fastcc void @gimple_seq_set_first(ptr noundef %9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_replace(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !308 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %24, label %6, !prof !309

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %4) #13, !range !264
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !310

9:                                                ; preds = %6
  %10 = tail call ptr @gimple_get_lhs(ptr noundef %4) #12
  %11 = tail call ptr @gimple_get_lhs(ptr noundef %1) #12
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13, !prof !311

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #12
  br label %14

14:                                               ; preds = %6, %9, %13
  %15 = tail call fastcc i32 @gimple_location(ptr noundef %4) #13
  tail call fastcc void @gimple_set_location(ptr noundef %1, i32 noundef %15) #13
  %16 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gimple_set_bb(ptr noundef %1, ptr noundef %16) #12
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %20, label %18, !prof !312

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %4, ptr noundef %1) #12
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @cfun, align 8, !tbaa !313
  tail call void @gimple_duplicate_stmt_histograms(ptr noundef %21, ptr noundef %1, ptr noundef %21, ptr noundef %4) #12
  %22 = load ptr, ptr @cfun, align 8, !tbaa !313
  tail call void @gimple_remove_stmt_histograms(ptr noundef %22, ptr noundef %4) #12
  tail call fastcc void @delink_stmt_imm_use(ptr noundef %4) #13
  %23 = tail call fastcc ptr @gsi_stmt_ptr(ptr noundef %0) #13
  store ptr %1, ptr %23, align 8, !tbaa !313
  tail call void @gimple_set_modified(ptr noundef %1, i8 noundef zeroext 1) #12
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  br label %24

24:                                               ; preds = %3, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !314 !PGOFuncName !315 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !316

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #13, !range !264
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !317

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #13
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !prof !314 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !314 !PGOFuncName !319 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !283
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delink_stmt_imm_use(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !320 !PGOFuncName !321 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = tail call zeroext i8 @ssa_operands_active() #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !322

5:                                                ; preds = %1
  %6 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0) #13
  %7 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !323

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %6, %5 ]
  tail call fastcc void @delink_imm_use(ptr noundef %10) #13
  %11 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #13
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !prof !324, !llvm.loop !325

14:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !314 !PGOFuncName !326 {
  %2 = load ptr, ptr %0, align 8, !tbaa !242
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_modified_stmt(ptr noundef %0) unnamed_addr #0 !prof !327 !PGOFuncName !328 {
  %2 = tail call zeroext i8 @ssa_operands_active() #12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !329

4:                                                ; preds = %1
  tail call fastcc void @update_stmt_if_modified(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !314 !PGOFuncName !330 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !288
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !331 !PGOFuncName !332 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !288
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !331 !PGOFuncName !333 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !331 !PGOFuncName !334 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !317

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !313
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !331 !PGOFuncName !335 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !336
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !317

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !331 !PGOFuncName !338 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !288
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !331 !PGOFuncName !339 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !340
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !342 !PGOFuncName !343 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !344
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !346 !PGOFuncName !347 {
  %2 = load i8, ptr %0, align 8, !tbaa !348
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !349 !PGOFuncName !350 {
  %2 = load ptr, ptr %0, align 8, !tbaa !351
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !353

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !354
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !354
  store ptr %2, ptr %6, align 8, !tbaa !351
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !346 !PGOFuncName !355 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !356
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !357

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !358
  store ptr %7, ptr %2, align 8, !tbaa !356
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !360
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !361
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !362

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !363
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !360
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #13
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !348
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !342 !PGOFuncName !364 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !365
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !356
  store i8 0, ptr %0, align 8, !tbaa !348
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !342 !PGOFuncName !366 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !367

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !283
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !304 !PGOFuncName !368 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !304 !PGOFuncName !369 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !283
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !370 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !257
  tail call fastcc void @gsi_insert_seq_nodes_before(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !370 {
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  tail call void @gsi_insert_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !371 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !257
  tail call fastcc void @gsi_insert_seq_nodes_after(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !372 {
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  tail call void @gsi_insert_after_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_remove(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !373 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #13, !range !288
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !374

6:                                                ; preds = %2
  tail call void @insert_debug_temps_for_defs(ptr noundef %0) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @gimple_set_bb(ptr noundef %3, ptr noundef null) #12
  tail call fastcc void @delink_stmt_imm_use(ptr noundef %3) #13
  tail call void @gimple_set_modified(ptr noundef %3, i8 noundef zeroext 1) #12
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %12, label %9, !prof !375

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %3) #12
  %11 = load ptr, ptr @cfun, align 8, !tbaa !313
  tail call void @gimple_remove_stmt_histograms(ptr noundef %11, ptr noundef %3) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !242
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !248
  %16 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !245
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !376

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %17, i64 0, i32 2
  store ptr %15, ptr %20, align 8, !tbaa !248
  br label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !220
  tail call fastcc void @gimple_seq_set_first(ptr noundef %23, ptr noundef %15) #13
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %15, null
  br i1 %25, label %28, label %26, !prof !377

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 1
  store ptr %17, ptr %27, align 8, !tbaa !245
  br label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !220
  tail call fastcc void @gimple_seq_set_last(ptr noundef %30, ptr noundef %17) #13
  br label %31

31:                                               ; preds = %28, %26
  store ptr %15, ptr %0, align 8, !tbaa !242
  ret void
}

; Function Attrs: optsize
declare void @insert_debug_temps_for_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remove_stmt_from_eh_lp(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_for_stmt(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !378 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #13
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #13, !range !288
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %7, !prof !379

6:                                                ; preds = %2
  tail call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  br label %8

8:                                                ; preds = %7, %6
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13, !range !264
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17, !prof !380

11:                                               ; preds = %8, %14
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %14, !prof !381

14:                                               ; preds = %11
  tail call fastcc void @gsi_next(ptr noundef %0) #13
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13, !range !264
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %11, label %17, !prof !382, !llvm.loop !383

17:                                               ; preds = %14, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #12
  br label %18

18:                                               ; preds = %11, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_start_phis(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !384 {
  %3 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #13
  tail call fastcc void @gsi_start(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !385 !PGOFuncName !386 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !242
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !220
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !387 !PGOFuncName !388 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !389
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !391

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !283
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !392

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !393
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_after(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !395 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %3, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_before(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !396 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %3, i32 noundef 1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_to_bb_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !395 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #13
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !264
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !397

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13
  %8 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !398

10:                                               ; preds = %6
  call void @gsi_move_before(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %12

11:                                               ; preds = %6, %2
  call void @gsi_move_after(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %12

12:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !399 !PGOFuncName !400 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !242
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !220
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !402 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gsi_insert_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !403 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !313
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !283
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !404

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13, !range !264
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !405

12:                                               ; preds = %9
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !prof !406 !PGOFuncName !407 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !408
  br label %9

9:                                                ; preds = %72, %3
  %10 = phi ptr [ %0, %3 ], [ %73, %72 ]
  %11 = phi ptr [ %8, %3 ], [ %70, %72 ]
  %12 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #13, !range !264
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %43, label %14, !prof !410

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #13
  %16 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %15) #13, !range !264
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %43, label %18, !prof !411

18:                                               ; preds = %14
  %19 = load ptr, ptr @cfun, align 8, !tbaa !313
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !412
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !414
  %24 = icmp eq ptr %11, %23
  br i1 %24, label %43, label %25, !prof !416

25:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !417
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !264
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %74, !prof !418

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %30 = tail call fastcc i32 @gimple_code(ptr noundef %29) #13, !range !288
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %39, !prof !419

32:                                               ; preds = %28, %35
  tail call fastcc void @gsi_next(ptr noundef %1) #13
  %33 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !264
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39, !prof !420

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %36) #13, !range !288
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %32, label %39, !prof !421, !llvm.loop !422

39:                                               ; preds = %35, %32, %28
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !264
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %74, label %42, !prof !423

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !417
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %74

43:                                               ; preds = %18, %14, %9
  %44 = load ptr, ptr %10, align 8, !tbaa !424
  %45 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !425
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68, !prof !426

49:                                               ; preds = %43
  %50 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %44) #13, !range !264
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %68, label %52, !prof !427

52:                                               ; preds = %49
  %53 = load ptr, ptr @cfun, align 8, !tbaa !313
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !412
  %56 = load ptr, ptr %55, align 8, !tbaa !428
  %57 = icmp eq ptr %44, %56
  br i1 %57, label %68, label %58, !prof !429

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %44) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !417
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %59 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !264
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %74, !prof !430

61:                                               ; preds = %58
  %62 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %63 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %62) #12
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %74, label %65, !prof !431

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @gimple_code(ptr noundef %62) #13, !range !288
  %67 = trunc i32 %66 to i8
  switch i8 %67, label %68 [
    i8 9, label %74
    i8 14, label %74
  ]

68:                                               ; preds = %65, %52, %49, %43
  %69 = icmp eq ptr %2, null
  %70 = tail call ptr @split_edge(ptr noundef nonnull %10) #12
  br i1 %69, label %72, label %71, !prof !432

71:                                               ; preds = %68
  store ptr %70, ptr %2, align 8, !tbaa !313
  br label %72

72:                                               ; preds = %71, %68
  %73 = tail call fastcc ptr @single_pred_edge(ptr noundef %70) #13
  br label %9

74:                                               ; preds = %65, %65, %61, %58, %39, %25, %42
  %75 = phi i8 [ 1, %42 ], [ 1, %25 ], [ 0, %39 ], [ 0, %65 ], [ 0, %65 ], [ 1, %61 ], [ 1, %58 ]
  ret i8 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !433 !PGOFuncName !434 {
  %2 = load ptr, ptr %0, align 8, !tbaa !435
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #3 !prof !436 !PGOFuncName !437 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !438

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !230
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !439 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !389
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !441

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #12
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !283
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !442

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !443
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !444 !PGOFuncName !445 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !447 !PGOFuncName !448 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !449

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !435
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #13
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !450 !PGOFuncName !451 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !452

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !453
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !455 !PGOFuncName !456 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !313
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !457 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !313
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !283
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !458

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13, !range !264
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !459

12:                                               ; preds = %9
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #0 !prof !460 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = load ptr, ptr @cfun, align 8, !tbaa !313
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !412
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = tail call fastcc ptr @single_succ_edge(ptr noundef %6) #13
  tail call void @gsi_commit_one_edge_insert(ptr noundef %7, ptr noundef null) #13
  %8 = load ptr, ptr @cfun, align 8, !tbaa !313
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !412
  %11 = load ptr, ptr %10, align 8, !tbaa !428
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !461
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !414
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %40, label %17, !prof !462

17:                                               ; preds = %0
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  br label %28

19:                                               ; preds = %34, %28
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !461
  %22 = load ptr, ptr @cfun, align 8, !tbaa !313
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !412
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !414
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %40, label %28, !prof !463, !llvm.loop !464

28:                                               ; preds = %17, %19
  %29 = phi ptr [ %13, %17 ], [ %21, %19 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %30) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !465
  store ptr %31, ptr %18, align 8, !tbaa.struct !466
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %1) #13, !range !264
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %19, label %34, !prof !467

34:                                               ; preds = %28, %34
  %35 = load ptr, ptr %1, align 8, !tbaa !313
  tail call void @gsi_commit_one_edge_insert(ptr noundef %35, ptr noundef null) #13
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %36 = load i32, ptr %2, align 8
  %37 = load ptr, ptr %18, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %1) #13, !range !264
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %19, label %34, !prof !468, !llvm.loop !469

40:                                               ; preds = %19, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_commit_one_edge_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !470 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !471

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !313
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !283
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !472

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  store ptr null, ptr %7, align 8, !tbaa !283
  %11 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #13, !range !264
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !473

13:                                               ; preds = %10
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef 0) #13
  br label %15

14:                                               ; preds = %10
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef nonnull %8, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %16

16:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !460 !PGOFuncName !474 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !264
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !475

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !446
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #13
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !476 !PGOFuncName !477 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !478 !PGOFuncName !479 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #13, !range !264
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !480

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #13
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !313
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !481 !PGOFuncName !482 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !483

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !484

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !485
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !485
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !478 !PGOFuncName !487 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !488

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #13
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !481 !PGOFuncName !489 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !483

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #13
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !490 !PGOFuncName !491 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !492

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !313
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!217}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!36 = !{ptr @gsi_insert_seq_before_without_update, ptr @fancy_abort, i64 2}
!37 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_first, i64 139727}
!38 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_last, i64 139727}
!39 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_set_first, i64 139727}
!40 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_set_last, i64 139727}
!41 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_free, i64 139727}
!42 = !{ptr @gsi_insert_seq_before_without_update, ptr @gsi_insert_seq_nodes_before, i64 139670}
!43 = !{ptr @gsi_insert_seq_nodes_before, ptr @gsi_bb, i64 207257}
!44 = !{ptr @gsi_insert_seq_nodes_before, ptr @update_bb_for_stmts, i64 165053}
!45 = !{ptr @gsi_insert_seq_nodes_before, ptr @gimple_seq_set_first, i64 155589}
!46 = !{ptr @gsi_insert_seq_nodes_before, ptr @gimple_seq_last, i64 6344}
!47 = !{ptr @gsi_insert_seq_nodes_before, ptr @gimple_seq_set_last, i64 6344}
!48 = !{ptr @gsi_insert_seq_nodes_before, ptr @fancy_abort, i64 1}
!49 = !{ptr @update_bb_for_stmts, ptr @gimple_set_bb, i64 1435666}
!50 = !{ptr @gsi_insert_seq_before, ptr @update_modified_stmts, i64 139728}
!51 = !{ptr @gsi_insert_seq_before, ptr @gsi_insert_seq_before_without_update, i64 139728}
!52 = !{ptr @update_modified_stmts, ptr @ssa_operands_active, i64 438988}
!53 = !{ptr @update_modified_stmts, ptr @gsi_start, i64 294190}
!54 = !{ptr @update_modified_stmts, ptr @gsi_end_p, i64 746309}
!55 = !{ptr @update_modified_stmts, ptr @gsi_stmt, i64 452119}
!56 = !{ptr @update_modified_stmts, ptr @update_stmt_if_modified, i64 452119}
!57 = !{ptr @update_modified_stmts, ptr @gsi_next, i64 452119}
!58 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 38376939}
!59 = !{ptr @gsi_start, ptr @gimple_bb, i64 12970815}
!60 = !{ptr @update_stmt_if_modified, ptr @gimple_modified_p, i64 1835320}
!61 = !{ptr @update_stmt_if_modified, ptr @update_stmt_operands, i64 1079008}
!62 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 1835320}
!63 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2764896}
!64 = !{ptr @gsi_insert_seq_after_without_update, ptr @fancy_abort, i64 2}
!65 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_first, i64 302358}
!66 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_last, i64 302358}
!67 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_set_first, i64 302358}
!68 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_set_last, i64 302358}
!69 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_free, i64 302358}
!70 = !{ptr @gsi_insert_seq_after_without_update, ptr @gsi_insert_seq_nodes_after, i64 286644}
!71 = !{ptr @gsi_insert_seq_nodes_after, ptr @gsi_bb, i64 2533308}
!72 = !{ptr @gsi_insert_seq_nodes_after, ptr @update_bb_for_stmts, i64 1094095}
!73 = !{ptr @gsi_insert_seq_nodes_after, ptr @gimple_seq_set_last, i64 2411597}
!74 = !{ptr @gsi_insert_seq_nodes_after, ptr @gimple_seq_last, i64 860639}
!75 = !{ptr @gsi_insert_seq_nodes_after, ptr @fancy_abort, i64 3}
!76 = !{ptr @gsi_insert_seq_nodes_after, ptr @gimple_seq_set_first, i64 860639}
!77 = !{ptr @gsi_insert_seq_after, ptr @update_modified_stmts, i64 299260}
!78 = !{ptr @gsi_insert_seq_after, ptr @gsi_insert_seq_after_without_update, i64 299260}
!79 = !{ptr @gsi_split_seq_before, ptr @fancy_abort, i64 1}
!80 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_alloc, i64 253314}
!81 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_set_first, i64 281642}
!82 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_last, i64 253314}
!83 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_set_last, i64 506628}
!84 = !{ptr @gsi_replace, ptr @gsi_stmt, i64 29029}
!85 = !{ptr @gsi_replace, ptr @gimple_has_lhs, i64 20840}
!86 = !{ptr @gsi_replace, ptr @gimple_get_lhs, i64 39132}
!87 = !{ptr @gsi_replace, ptr @fancy_abort, i64 1}
!88 = !{ptr @gsi_replace, ptr @gimple_location, i64 20840}
!89 = !{ptr @gsi_replace, ptr @gimple_set_location, i64 20840}
!90 = !{ptr @gsi_replace, ptr @gsi_bb, i64 20840}
!91 = !{ptr @gsi_replace, ptr @gimple_set_bb, i64 20840}
!92 = !{ptr @gsi_replace, ptr @maybe_clean_or_replace_eh_stmt, i64 4582}
!93 = !{ptr @gsi_replace, ptr @gimple_duplicate_stmt_histograms, i64 20840}
!94 = !{ptr @gsi_replace, ptr @gimple_remove_stmt_histograms, i64 20840}
!95 = !{ptr @gsi_replace, ptr @delink_stmt_imm_use, i64 20840}
!96 = !{ptr @gsi_replace, ptr @gsi_stmt_ptr, i64 20840}
!97 = !{ptr @gsi_replace, ptr @gimple_set_modified, i64 20840}
!98 = !{ptr @gsi_replace, ptr @update_modified_stmt, i64 20840}
!99 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 20840}
!100 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 20100}
!101 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 20099}
!102 = !{ptr @delink_stmt_imm_use, ptr @ssa_operands_active, i64 1251765}
!103 = !{ptr @delink_stmt_imm_use, ptr @op_iter_init_use, i64 909475}
!104 = !{ptr @delink_stmt_imm_use, ptr @op_iter_done, i64 2009780}
!105 = !{ptr @delink_stmt_imm_use, ptr @delink_imm_use, i64 1100305}
!106 = !{ptr @delink_stmt_imm_use, ptr @op_iter_next_use, i64 1100305}
!107 = !{ptr @update_modified_stmt, ptr @ssa_operands_active, i64 1444888}
!108 = !{ptr @update_modified_stmt, ptr @update_stmt_if_modified, i64 1383199}
!109 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 20840}
!110 = !{ptr @is_gimple_call, ptr @gimple_code, i64 20101}
!111 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 20101}
!112 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 20101}
!113 = !{ptr @gimple_op, ptr @gimple_ops, i64 20100}
!114 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 20101}
!115 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!116 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 20101}
!117 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 20101}
!118 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 909475}
!119 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 909475}
!120 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!121 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 909475}
!122 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 909475}
!123 = !{ptr @gsi_insert_before_without_update, ptr @ggc_alloc_stat, i64 67584}
!124 = !{ptr @gsi_insert_before_without_update, ptr @gsi_insert_seq_nodes_before, i64 67584}
!125 = !{ptr @gsi_insert_before, ptr @update_modified_stmt, i64 67584}
!126 = !{ptr @gsi_insert_before, ptr @gsi_insert_before_without_update, i64 67584}
!127 = !{ptr @gsi_insert_after_without_update, ptr @ggc_alloc_stat, i64 2246661}
!128 = !{ptr @gsi_insert_after_without_update, ptr @gsi_insert_seq_nodes_after, i64 2246661}
!129 = !{ptr @gsi_insert_after, ptr @update_modified_stmt, i64 1356464}
!130 = !{ptr @gsi_insert_after, ptr @gsi_insert_after_without_update, i64 1356464}
!131 = !{ptr @gsi_remove, ptr @gsi_stmt, i64 1230925}
!132 = !{ptr @gsi_remove, ptr @gimple_code, i64 1230925}
!133 = !{ptr @gsi_remove, ptr @insert_debug_temps_for_defs, i64 1024439}
!134 = !{ptr @gsi_remove, ptr @gimple_set_bb, i64 1230925}
!135 = !{ptr @gsi_remove, ptr @delink_stmt_imm_use, i64 1230925}
!136 = !{ptr @gsi_remove, ptr @gimple_set_modified, i64 1230925}
!137 = !{ptr @gsi_remove, ptr @remove_stmt_from_eh_lp, i64 943915}
!138 = !{ptr @gsi_remove, ptr @gimple_remove_stmt_histograms, i64 943915}
!139 = !{ptr @gsi_remove, ptr @gimple_seq_set_first, i64 707388}
!140 = !{ptr @gsi_remove, ptr @gimple_seq_set_last, i64 467251}
!141 = !{ptr @gsi_for_stmt, ptr @gimple_bb, i64 653535}
!142 = !{ptr @gsi_for_stmt, ptr @gimple_code, i64 653535}
!143 = !{ptr @gsi_for_stmt, ptr @gsi_start_phis, i64 59736}
!144 = !{ptr @gsi_for_stmt, ptr @gsi_start_bb, i64 593799}
!145 = !{ptr @gsi_for_stmt, ptr @gsi_end_p, i64 2647931}
!146 = !{ptr @gsi_for_stmt, ptr @gsi_stmt, i64 2642824}
!147 = !{ptr @gsi_for_stmt, ptr @gsi_next, i64 1994396}
!148 = !{ptr @gsi_for_stmt, ptr @fancy_abort, i64 5106}
!149 = !{ptr @gsi_start_phis, ptr @phi_nodes, i64 38082749}
!150 = !{ptr @gsi_start_phis, ptr @gsi_start, i64 38082749}
!151 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 751897}
!152 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 751897}
!153 = !{ptr @gsi_move_after, ptr @gsi_stmt, i64 691}
!154 = !{ptr @gsi_move_after, ptr @gsi_remove, i64 691}
!155 = !{ptr @gsi_move_after, ptr @gsi_insert_after, i64 691}
!156 = !{ptr @gsi_move_before, ptr @gsi_stmt, i64 3697}
!157 = !{ptr @gsi_move_before, ptr @gsi_remove, i64 3697}
!158 = !{ptr @gsi_move_before, ptr @gsi_insert_before, i64 3697}
!159 = !{ptr @gsi_move_to_bb_end, ptr @gsi_last_bb, i64 691}
!160 = !{ptr @gsi_move_to_bb_end, ptr @gsi_end_p, i64 691}
!161 = !{ptr @gsi_move_to_bb_end, ptr @gsi_stmt, i64 5}
!162 = !{ptr @gsi_move_to_bb_end, ptr @is_ctrl_stmt, i64 5}
!163 = !{ptr @gsi_move_to_bb_end, ptr @gsi_move_before, i64 1}
!164 = !{ptr @gsi_move_to_bb_end, ptr @gsi_move_after, i64 690}
!165 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 18542}
!166 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 18542}
!167 = !{ptr @gsi_insert_on_edge, ptr @gimple_seq_add_stmt, i64 179490}
!168 = !{ptr @gsi_insert_seq_on_edge, ptr @gimple_seq_add_seq, i64 18675}
!169 = !{ptr @gsi_insert_on_edge_immediate, ptr @fancy_abort, i64 1}
!170 = !{ptr @gsi_insert_on_edge_immediate, ptr @gimple_find_edge_insert_loc, i64 46}
!171 = !{ptr @gsi_insert_on_edge_immediate, ptr @gsi_insert_after, i64 45}
!172 = !{ptr @gsi_insert_on_edge_immediate, ptr @gsi_insert_before, i64 1}
!173 = !{ptr @gimple_find_edge_insert_loc, ptr @single_pred_p, i64 221092}
!174 = !{ptr @gimple_find_edge_insert_loc, ptr @phi_nodes, i64 168319}
!175 = !{ptr @gimple_find_edge_insert_loc, ptr @gimple_seq_empty_p, i64 168319}
!176 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_start_bb, i64 158098}
!177 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_end_p, i64 289609}
!178 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_stmt, i64 120250}
!179 = !{ptr @gimple_find_edge_insert_loc, ptr @gimple_code, i64 113652}
!180 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_next, i64 4253}
!181 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_last_bb, i64 17852}
!182 = !{ptr @gimple_find_edge_insert_loc, ptr @single_succ_p, i64 62994}
!183 = !{ptr @gimple_find_edge_insert_loc, ptr @stmt_ends_bb_p, i64 6599}
!184 = !{ptr @gimple_find_edge_insert_loc, ptr @split_edge, i64 46079}
!185 = !{ptr @gimple_find_edge_insert_loc, ptr @single_pred_edge, i64 46079}
!186 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 267163}
!187 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!188 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 90140}
!189 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 46075}
!190 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!191 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 46075}
!192 = !{ptr @gsi_insert_seq_on_edge_immediate, ptr @fancy_abort, i64 1}
!193 = !{ptr @gsi_insert_seq_on_edge_immediate, ptr @gimple_find_edge_insert_loc, i64 2206}
!194 = !{ptr @gsi_insert_seq_on_edge_immediate, ptr @gsi_insert_seq_after, i64 2173}
!195 = !{ptr @gsi_insert_seq_on_edge_immediate, ptr @gsi_insert_seq_before, i64 33}
!196 = !{ptr @gsi_commit_edge_inserts, ptr @single_succ_edge, i64 27149}
!197 = !{ptr @gsi_commit_edge_inserts, ptr @gsi_commit_one_edge_insert, i64 2397825}
!198 = !{ptr @gsi_commit_edge_inserts, ptr @ei_start_1, i64 1555507}
!199 = !{ptr @gsi_commit_edge_inserts, ptr @ei_cond, i64 3926183}
!200 = !{ptr @gsi_commit_edge_inserts, ptr @ei_next, i64 2370676}
!201 = !{ptr @gsi_commit_one_edge_insert, ptr @gimple_find_edge_insert_loc, i64 172762}
!202 = !{ptr @gsi_commit_one_edge_insert, ptr @gsi_insert_seq_after, i64 63387}
!203 = !{ptr @gsi_commit_one_edge_insert, ptr @gsi_insert_seq_before, i64 109375}
!204 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 27149}
!205 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!206 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 27149}
!207 = !{ptr @ei_cond, ptr @ei_end_p, i64 3926325}
!208 = !{ptr @ei_cond, ptr @ei_edge, i64 2370762}
!209 = !{ptr @ei_next, ptr @ei_container, i64 4741523}
!210 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 2370762}
!211 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!212 = !{ptr @ei_end_p, ptr @ei_container, i64 7852649}
!213 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 3926325}
!214 = !{ptr @ei_edge, ptr @ei_container, i64 4741523}
!215 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 2370762}
!216 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!217 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!218 = !{!"function_entry_count", i64 139728}
!219 = !{!"branch_weights", i32 1, i32 139729}
!220 = !{!221, !222, i64 8}
!221 = !{!"", !222, i64 0, !222, i64 8, !222, i64 16}
!222 = !{!"any pointer", !223, i64 0}
!223 = !{!"omnipotent char", !224, i64 0}
!224 = !{!"Simple C/C++ TBAA"}
!225 = !{!"branch_weights", i32 -1856364012, i32 995184}
!226 = !{!"branch_weights", i32 56, i32 1}
!227 = !{!"function_entry_count", i64 39570923}
!228 = !{!"gimple-iterator.c:gimple_seq_first"}
!229 = !{!"branch_weights", i32 24746308, i32 14824617}
!230 = !{!231, !222, i64 0}
!231 = !{!"gimple_seq_d", !222, i64 0, !222, i64 8, !222, i64 16}
!232 = !{!"function_entry_count", i64 1580925}
!233 = !{!"gimple-iterator.c:gimple_seq_last"}
!234 = !{!"branch_weights", i32 1, i32 1580926}
!235 = !{!231, !222, i64 8}
!236 = !{!"function_entry_count", i64 2447345}
!237 = !{!"gimple-iterator.c:gimple_seq_set_first"}
!238 = !{!"function_entry_count", i64 3833907}
!239 = !{!"gimple-iterator.c:gimple_seq_set_last"}
!240 = !{!"function_entry_count", i64 207257}
!241 = !{!"gimple-iterator.c:gsi_insert_seq_nodes_before"}
!242 = !{!221, !222, i64 0}
!243 = !{!"branch_weights", i32 42204, i32 165055}
!244 = !{!"branch_weights", i32 6344, i32 200915}
!245 = !{!246, !222, i64 8}
!246 = !{!"gimple_seq_node_d", !222, i64 0, !222, i64 8, !222, i64 16}
!247 = !{!"branch_weights", i32 149320, i32 51596}
!248 = !{!246, !222, i64 16}
!249 = !{!"branch_weights", i32 6272, i32 73}
!250 = !{!"branch_weights", i32 1, i32 144647, i32 1, i32 62612}
!251 = !{!"function_entry_count", i64 2761405}
!252 = !{!"gimple-iterator.c:gsi_bb"}
!253 = !{!221, !222, i64 16}
!254 = !{!"function_entry_count", i64 1259149}
!255 = !{!"gimple-iterator.c:update_bb_for_stmts"}
!256 = !{!"branch_weights", i32 1, i32 1259149}
!257 = !{!246, !222, i64 0}
!258 = !{!"branch_weights", i32 1259149, i32 176518}
!259 = distinct !{!259, !260}
!260 = !{!"llvm.loop.mustprogress"}
!261 = !{!"function_entry_count", i64 438988}
!262 = !{!"gimple-iterator.c:update_modified_stmts"}
!263 = !{!"branch_weights", i32 144799, i32 294191}
!264 = !{i8 0, i8 2}
!265 = !{!"branch_weights", i32 294190, i32 1}
!266 = !{!"branch_weights", i32 157931, i32 294190}
!267 = distinct !{!267, !260}
!268 = !{!"function_entry_count", i64 38376939}
!269 = !{!"gimple-iterator.c:gsi_start"}
!270 = !{!"branch_weights", i32 25406124, i32 12970817}
!271 = !{!"branch_weights", i32 1, i32 12970817}
!272 = !{!"function_entry_count", i64 3700211}
!273 = !{!"gimple-iterator.c:gsi_end_p"}
!274 = !{!"function_entry_count", i64 1835320}
!275 = !{!"gimple-iterator.c:update_stmt_if_modified"}
!276 = !{!"branch_weights", i32 756313, i32 1079009}
!277 = !{!"function_entry_count", i64 4500327}
!278 = !{!"gimple-iterator.c:gsi_stmt"}
!279 = !{!"function_entry_count", i64 2466440}
!280 = !{!"gimple-iterator.c:gsi_next"}
!281 = !{!"function_entry_count", i64 13624351}
!282 = !{!"gimple-iterator.c:gimple_bb"}
!283 = !{!223, !223, i64 0}
!284 = !{!"gimple-iterator.c:gimple_modified_p"}
!285 = !{!"branch_weights", i32 309812, i32 1525510}
!286 = !{!"function_entry_count", i64 2764896}
!287 = !{!"gimple-iterator.c:gimple_has_ops"}
!288 = !{i32 0, i32 256}
!289 = !{!"function_entry_count", i64 7588917}
!290 = !{!"gimple-iterator.c:gimple_code"}
!291 = !{!"function_entry_count", i64 302359}
!292 = !{!"branch_weights", i32 1, i32 302360}
!293 = !{!"branch_weights", i32 -1727246174, i32 140762574}
!294 = !{!"branch_weights", i32 15713, i32 1}
!295 = !{!"function_entry_count", i64 2533308}
!296 = !{!"gimple-iterator.c:gsi_insert_seq_nodes_after"}
!297 = !{!"branch_weights", i32 1439214, i32 1094096}
!298 = !{!"branch_weights", i32 860640, i32 1672670}
!299 = !{!"branch_weights", i32 1550960, i32 121711}
!300 = !{!"branch_weights", i32 860640, i32 1}
!301 = !{!"branch_weights", i32 1, i32 2380062, i32 14780, i32 138469}
!302 = !{!"branch_weights", i32 1, i32 138469}
!303 = !{!"function_entry_count", i64 299260}
!304 = !{!"function_entry_count", i64 0}
!305 = !{!"function_entry_count", i64 253314}
!306 = !{!"branch_weights", i32 1, i32 253315}
!307 = !{!"branch_weights", i32 28328, i32 224988}
!308 = !{!"function_entry_count", i64 29029}
!309 = !{!"branch_weights", i32 8190, i32 20841}
!310 = !{!"branch_weights", i32 1274, i32 19568}
!311 = !{!"branch_weights", i32 19568, i32 1}
!312 = !{!"branch_weights", i32 16259, i32 4583}
!313 = !{!222, !222, i64 0}
!314 = !{!"function_entry_count", i64 20840}
!315 = !{!"gimple-iterator.c:gimple_has_lhs"}
!316 = !{!"branch_weights", i32 20102, i32 740}
!317 = !{!"branch_weights", i32 1, i32 20102}
!318 = !{!"gimple-iterator.c:gimple_set_location"}
!319 = !{!"gimple-iterator.c:gimple_location"}
!320 = !{!"function_entry_count", i64 1251765}
!321 = !{!"gimple-iterator.c:delink_stmt_imm_use"}
!322 = !{!"branch_weights", i32 342291, i32 909476}
!323 = !{!"branch_weights", i32 909475, i32 1}
!324 = !{!"branch_weights", i32 190832, i32 909475}
!325 = distinct !{!325, !260}
!326 = !{!"gimple-iterator.c:gsi_stmt_ptr"}
!327 = !{!"function_entry_count", i64 1444888}
!328 = !{!"gimple-iterator.c:update_modified_stmt"}
!329 = !{!"branch_weights", i32 61689, i32 1383201}
!330 = !{!"gimple-iterator.c:is_gimple_assign"}
!331 = !{!"function_entry_count", i64 20101}
!332 = !{!"gimple-iterator.c:is_gimple_call"}
!333 = !{!"gimple-iterator.c:gimple_call_lhs"}
!334 = !{!"gimple-iterator.c:gimple_op"}
!335 = !{!"gimple-iterator.c:gimple_ops"}
!336 = !{!337, !337, i64 0}
!337 = !{!"long", !223, i64 0}
!338 = !{!"gimple-iterator.c:gimple_statement_structure"}
!339 = !{!"gimple-iterator.c:gss_for_code"}
!340 = !{!341, !341, i64 0}
!341 = !{!"int", !223, i64 0}
!342 = !{!"function_entry_count", i64 909475}
!343 = !{!"gimple-iterator.c:op_iter_init_use"}
!344 = !{!345, !341, i64 4}
!345 = !{!"ssa_operand_iterator_d", !223, i64 0, !341, i64 4, !222, i64 8, !222, i64 16, !341, i64 24, !341, i64 28, !222, i64 32}
!346 = !{!"function_entry_count", i64 2009781}
!347 = !{!"gimple-iterator.c:op_iter_done"}
!348 = !{!345, !223, i64 0}
!349 = !{!"function_entry_count", i64 1100306}
!350 = !{!"gimple-iterator.c:delink_imm_use"}
!351 = !{!352, !222, i64 0}
!352 = !{!"ssa_use_operand_d", !222, i64 0, !222, i64 8, !223, i64 16, !222, i64 24}
!353 = !{!"branch_weights", i32 27627, i32 1072681}
!354 = !{!352, !222, i64 8}
!355 = !{!"gimple-iterator.c:op_iter_next_use"}
!356 = !{!345, !222, i64 16}
!357 = !{!"branch_weights", i32 909476, i32 1100307}
!358 = !{!359, !222, i64 0}
!359 = !{!"use_optype_d", !222, i64 0, !352, i64 8}
!360 = !{!345, !341, i64 24}
!361 = !{!345, !341, i64 28}
!362 = !{!"branch_weights", i32 1, i32 909476}
!363 = !{!345, !222, i64 32}
!364 = !{!"gimple-iterator.c:op_iter_init"}
!365 = !{!345, !222, i64 8}
!366 = !{!"gimple-iterator.c:gimple_use_ops"}
!367 = !{!"branch_weights", i32 207798, i32 701679}
!368 = !{!"gimple-iterator.c:gimple_phi_arg_imm_use_ptr"}
!369 = !{!"gimple-iterator.c:gimple_phi_arg"}
!370 = !{!"function_entry_count", i64 67584}
!371 = !{!"function_entry_count", i64 2246661}
!372 = !{!"function_entry_count", i64 1356464}
!373 = !{!"function_entry_count", i64 1230925}
!374 = !{!"branch_weights", i32 206486, i32 1024441}
!375 = !{!"branch_weights", i32 287010, i32 943917}
!376 = !{!"branch_weights", i32 707389, i32 523538}
!377 = !{!"branch_weights", i32 467252, i32 763675}
!378 = !{!"function_entry_count", i64 653535}
!379 = !{!"branch_weights", i32 59736, i32 593801}
!380 = !{!"branch_weights", i32 127, i32 1}
!381 = !{!"branch_weights", i32 653536, i32 2010105}
!382 = !{!"branch_weights", i32 340945793, i32 127}
!383 = distinct !{!383, !260}
!384 = !{!"function_entry_count", i64 38082749}
!385 = !{!"function_entry_count", i64 751897}
!386 = !{!"gimple-iterator.c:gsi_start_bb"}
!387 = !{!"function_entry_count", i64 770439}
!388 = !{!"gimple-iterator.c:bb_seq"}
!389 = !{!390, !341, i64 96}
!390 = !{!"basic_block_def", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !223, i64 32, !222, i64 48, !222, i64 56, !223, i64 64, !337, i64 72, !341, i64 80, !341, i64 84, !341, i64 88, !341, i64 92, !341, i64 96}
!391 = !{!"branch_weights", i32 770440, i32 1}
!392 = !{!"branch_weights", i32 1, i32 770440}
!393 = !{!394, !222, i64 0}
!394 = !{!"gimple_bb_info", !222, i64 0, !222, i64 8}
!395 = !{!"function_entry_count", i64 691}
!396 = !{!"function_entry_count", i64 3697}
!397 = !{!"branch_weights", i32 5, i32 688}
!398 = !{!"branch_weights", i32 5, i32 1}
!399 = !{!"function_entry_count", i64 18542}
!400 = !{!"gimple-iterator.c:gsi_last_bb"}
!401 = !{!"function_entry_count", i64 179490}
!402 = !{!"function_entry_count", i64 18675}
!403 = !{!"function_entry_count", i64 46}
!404 = !{!"branch_weights", i32 47, i32 1}
!405 = !{!"branch_weights", i32 1, i32 47}
!406 = !{!"function_entry_count", i64 175013}
!407 = !{!"gimple-iterator.c:gimple_find_edge_insert_loc"}
!408 = !{!409, !222, i64 8}
!409 = !{!"edge_def", !222, i64 0, !222, i64 8, !223, i64 16, !222, i64 24, !222, i64 32, !341, i64 40, !341, i64 44, !341, i64 48, !341, i64 52, !337, i64 56}
!410 = !{!"branch_weights", i32 52773, i32 168317}
!411 = !{!"branch_weights", i32 10220, i32 158098}
!412 = !{!413, !222, i64 8}
!413 = !{!"function", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !222, i64 32, !222, i64 40, !222, i64 48, !222, i64 56, !222, i64 64, !222, i64 72, !222, i64 80, !222, i64 88, !222, i64 96, !341, i64 104, !341, i64 108, !341, i64 112, !341, i64 116, !341, i64 120, !341, i64 124, !222, i64 128, !341, i64 136, !341, i64 137, !341, i64 138, !341, i64 138, !341, i64 138, !341, i64 138, !341, i64 138, !341, i64 138, !341, i64 138, !341, i64 139, !341, i64 139, !341, i64 139, !341, i64 139, !341, i64 139, !341, i64 139, !341, i64 139}
!414 = !{!415, !222, i64 8}
!415 = !{!"control_flow_graph", !222, i64 0, !222, i64 8, !222, i64 16, !341, i64 24, !341, i64 28, !341, i64 32, !222, i64 40, !341, i64 48, !223, i64 52, !223, i64 60, !341, i64 68, !341, i64 72}
!416 = !{!"branch_weights", i32 1, i32 158098}
!417 = !{i64 0, i64 8, !313, i64 8, i64 8, !313, i64 16, i64 8, !313}
!418 = !{!"branch_weights", i32 110343, i32 47756}
!419 = !{!"branch_weights", i32 4217, i32 105191}
!420 = !{!"branch_weights", i32 3282, i32 936}
!421 = !{!"branch_weights", i32 0, i32 4217}
!422 = distinct !{!422, !260}
!423 = !{!"branch_weights", i32 109408, i32 936}
!424 = !{!409, !222, i64 0}
!425 = !{!409, !341, i64 48}
!426 = !{!"branch_weights", i32 62992, i32 1}
!427 = !{!"branch_weights", i32 46076, i32 16917}
!428 = !{!415, !222, i64 0}
!429 = !{!"branch_weights", i32 1, i32 16917}
!430 = !{!"branch_weights", i32 6600, i32 10318}
!431 = !{!"branch_weights", i32 6600, i32 1}
!432 = !{!"branch_weights", i32 46076, i32 1}
!433 = !{!"function_entry_count", i64 267163}
!434 = !{!"gimple-iterator.c:single_pred_p"}
!435 = !{!390, !222, i64 0}
!436 = !{!"function_entry_count", i64 168316}
!437 = !{!"gimple-iterator.c:gimple_seq_empty_p"}
!438 = !{!"branch_weights", i32 156733, i32 11585}
!439 = !{!"function_entry_count", i64 38251065}
!440 = !{!"gimple-iterator.c:phi_nodes"}
!441 = !{!"branch_weights", i32 38251066, i32 1}
!442 = !{!"branch_weights", i32 279596, i32 37971471}
!443 = !{!394, !222, i64 8}
!444 = !{!"function_entry_count", i64 90140}
!445 = !{!"gimple-iterator.c:single_succ_p"}
!446 = !{!390, !222, i64 8}
!447 = !{!"function_entry_count", i64 46075}
!448 = !{!"gimple-iterator.c:single_pred_edge"}
!449 = !{!"branch_weights", i32 1, i32 46076}
!450 = !{!"function_entry_count", i64 6654390}
!451 = !{!"gimple-iterator.c:VEC_edge_base_length"}
!452 = !{!"branch_weights", i32 1, i32 6654391}
!453 = !{!454, !341, i64 0}
!454 = !{!"VEC_edge_base", !341, i64 0, !341, i64 4, !223, i64 8}
!455 = !{!"function_entry_count", i64 2443986}
!456 = !{!"gimple-iterator.c:VEC_edge_base_index"}
!457 = !{!"function_entry_count", i64 2206}
!458 = !{!"branch_weights", i32 2207, i32 1}
!459 = !{!"branch_weights", i32 33, i32 2175}
!460 = !{!"function_entry_count", i64 27149}
!461 = !{!390, !222, i64 56}
!462 = !{!"branch_weights", i32 1, i32 27149}
!463 = !{!"branch_weights", i32 27149, i32 1528415}
!464 = distinct !{!464, !260}
!465 = !{i64 0, i64 4, !340, i64 8, i64 8, !313}
!466 = !{i64 0, i64 8, !313}
!467 = !{!"branch_weights", i32 1, i32 1555563}
!468 = !{!"branch_weights", i32 1555563, i32 815200}
!469 = distinct !{!469, !260}
!470 = !{!"function_entry_count", i64 2397911}
!471 = !{!"branch_weights", i32 2397912, i32 1}
!472 = !{!"branch_weights", i32 2225151, i32 172762}
!473 = !{!"branch_weights", i32 109376, i32 63387}
!474 = !{!"gimple-iterator.c:single_succ_edge"}
!475 = !{!"branch_weights", i32 1, i32 27150}
!476 = !{!"function_entry_count", i64 1555563}
!477 = !{!"gimple-iterator.c:ei_start_1"}
!478 = !{!"function_entry_count", i64 3926325}
!479 = !{!"gimple-iterator.c:ei_cond"}
!480 = !{!"branch_weights", i32 2370763, i32 1555564}
!481 = !{!"function_entry_count", i64 2370762}
!482 = !{!"gimple-iterator.c:ei_next"}
!483 = !{!"branch_weights", i32 1, i32 2370763}
!484 = !{!"branch_weights", i32 2370763, i32 1}
!485 = !{!486, !341, i64 0}
!486 = !{!"", !341, i64 0, !222, i64 8}
!487 = !{!"gimple-iterator.c:ei_end_p"}
!488 = !{!"branch_weights", i32 1, i32 3926326}
!489 = !{!"gimple-iterator.c:ei_edge"}
!490 = !{!"function_entry_count", i64 17335698}
!491 = !{!"gimple-iterator.c:ei_container"}
!492 = !{!"branch_weights", i32 1, i32 17335699}
