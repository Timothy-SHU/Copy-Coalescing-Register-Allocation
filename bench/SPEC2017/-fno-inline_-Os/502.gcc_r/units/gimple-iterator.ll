; ModuleID = 'gimple-iterator.c'
source_filename = "gimple-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [18 x i8] c"gimple-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !200 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5, !prof !201

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10, !prof !201

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
  br i1 %15, label %19, label %16, !prof !207

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %12
  br i1 %17, label %20, label %18

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
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !208 !PGOFuncName !209 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !210

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !211
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 !prof !213 !PGOFuncName !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !215

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_seq_set_first(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 !prof !217 !PGOFuncName !218 {
  store ptr %1, ptr %0, align 8, !tbaa !211
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_seq_set_last(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 !prof !219 !PGOFuncName !220 {
  %3 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !216
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gsi_insert_seq_nodes_before(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !221 !PGOFuncName !222 {
  %5 = load ptr, ptr %0, align 8, !tbaa !223
  %6 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !224

8:                                                ; preds = %4
  tail call fastcc void @update_bb_for_stmts(ptr noundef %1, ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %23, label %11, !prof !225

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !226
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16, !prof !228

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  store ptr %1, ptr %17, align 8, !tbaa !229
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  tail call fastcc void @gimple_seq_set_first(ptr noundef %20, ptr noundef nonnull %1) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %5, ptr %22, align 8, !tbaa !229
  store ptr %2, ptr %12, align 8, !tbaa !226
  br label %35

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !202
  %26 = tail call fastcc ptr @gimple_seq_last(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !226
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29, !prof !230

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  store ptr %1, ptr %30, align 8, !tbaa !229
  br label %33

31:                                               ; preds = %23
  tail call fastcc void @gimple_seq_set_first(ptr noundef %25, ptr noundef nonnull %1) #13
  %32 = load ptr, ptr %24, align 8, !tbaa !202
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
  ], !prof !231

36:                                               ; preds = %35, %35
  store ptr %1, ptr %0, align 8, !tbaa !223
  br label %38

37:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %37, %35, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !200 {
  tail call fastcc void @update_modified_stmts(ptr noundef %1) #13
  tail call void @gsi_insert_seq_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_modified_stmts(ptr noundef %0) unnamed_addr #0 !prof !232 !PGOFuncName !233 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = tail call zeroext i8 @ssa_operands_active() #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5, !prof !234

5:                                                ; preds = %1
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !235
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12, !prof !236

8:                                                ; preds = %5, %8
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  tail call fastcc void @update_stmt_if_modified(ptr noundef %9) #13
  call fastcc void @gsi_next(ptr noundef nonnull %2) #13
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !235
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %8, label %12, !prof !237, !llvm.loop !238

12:                                               ; preds = %8, %5, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !240 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5, !prof !241

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10, !prof !241

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
  br i1 %15, label %19, label %16, !prof !242

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, %12
  br i1 %17, label %20, label %18, !prof !243

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
define internal fastcc void @gsi_insert_seq_nodes_after(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !244 !PGOFuncName !245 {
  %5 = load ptr, ptr %0, align 8, !tbaa !223
  %6 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !246

8:                                                ; preds = %4
  tail call fastcc void @update_bb_for_stmts(ptr noundef %1, ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %23, label %11, !prof !247

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !229
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !229
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16, !prof !248

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !226
  br label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  tail call fastcc void @gimple_seq_set_last(ptr noundef %20, ptr noundef nonnull %2) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  store ptr %5, ptr %22, align 8, !tbaa !226
  store ptr %1, ptr %12, align 8, !tbaa !229
  br label %33

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !202
  %26 = tail call fastcc ptr @gimple_seq_last(ptr noundef %25) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !249

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @.str.1) #12
  %29 = load ptr, ptr %24, align 8, !tbaa !202
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %25, %23 ], [ %29, %28 ]
  tail call fastcc void @gimple_seq_set_first(ptr noundef %31, ptr noundef %1) #13
  %32 = load ptr, ptr %24, align 8, !tbaa !202
  tail call fastcc void @gimple_seq_set_last(ptr noundef %32, ptr noundef %2) #13
  br label %33

33:                                               ; preds = %30, %21
  switch i32 %3, label %38 [
    i32 0, label %34
    i32 2, label %35
    i32 1, label %36
  ], !prof !250

34:                                               ; preds = %33
  store ptr %1, ptr %0, align 8, !tbaa !223
  br label %39

35:                                               ; preds = %33
  store ptr %2, ptr %0, align 8, !tbaa !223
  br label %39

36:                                               ; preds = %33
  br i1 %10, label %37, label %39, !prof !251

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
define dso_local void @gsi_insert_seq_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !252 {
  tail call fastcc void @update_modified_stmts(ptr noundef %1) #13
  tail call void @gsi_insert_seq_after_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gsi_split_seq_after(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) local_unnamed_addr #0 !prof !253 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %6, %4 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !202
  %16 = tail call ptr @gimple_seq_alloc() #12
  tail call fastcc void @gimple_seq_set_first(ptr noundef %16, ptr noundef %12) #13
  %17 = tail call fastcc ptr @gimple_seq_last(ptr noundef %15) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %16, ptr noundef %17) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %15, ptr noundef nonnull %2) #13
  store ptr null, ptr %13, align 8, !tbaa !229
  %18 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %12, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !226
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gsi_split_seq_before(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !255

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !226
  %8 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = tail call ptr @gimple_seq_alloc() #12
  store ptr %10, ptr %8, align 8, !tbaa !202
  tail call fastcc void @gimple_seq_set_first(ptr noundef %10, ptr noundef %2) #13
  %11 = tail call fastcc ptr @gimple_seq_last(ptr noundef %9) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %10, ptr noundef %11) #13
  tail call fastcc void @gimple_seq_set_last(ptr noundef %9, ptr noundef %7) #13
  store ptr null, ptr %6, align 8, !tbaa !226
  %12 = icmp eq ptr %7, null
  br i1 %12, label %15, label %13, !prof !255

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %7, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !229
  br label %16

15:                                               ; preds = %5
  tail call fastcc void @gimple_seq_set_first(ptr noundef %9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %13
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_replace(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !256 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %24, label %6, !prof !257

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %4) #13, !range !235
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !257

9:                                                ; preds = %6
  %10 = tail call ptr @gimple_get_lhs(ptr noundef %4) #12
  %11 = tail call ptr @gimple_get_lhs(ptr noundef %1) #12
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13, !prof !258

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #12
  br label %14

14:                                               ; preds = %6, %9, %13
  %15 = tail call fastcc i32 @gimple_location(ptr noundef %4) #13
  tail call fastcc void @gimple_set_location(ptr noundef %1, i32 noundef %15) #13
  %16 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gimple_set_bb(ptr noundef %1, ptr noundef %16) #12
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %20, label %18, !prof !259

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %4, ptr noundef %1) #12
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @cfun, align 8, !tbaa !260
  tail call void @gimple_duplicate_stmt_histograms(ptr noundef %21, ptr noundef %1, ptr noundef %21, ptr noundef %4) #12
  %22 = load ptr, ptr @cfun, align 8, !tbaa !260
  tail call void @gimple_remove_stmt_histograms(ptr noundef %22, ptr noundef %4) #12
  tail call fastcc void @delink_stmt_imm_use(ptr noundef %4) #13
  %23 = tail call fastcc ptr @gsi_stmt_ptr(ptr noundef %0) #13
  store ptr %1, ptr %23, align 8, !tbaa !260
  tail call void @gimple_set_modified(ptr noundef %1, i8 noundef zeroext 1) #12
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  br label %24

24:                                               ; preds = %3, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !261 !PGOFuncName !262 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !256 !PGOFuncName !264 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !259

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #13, !range !235
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !265

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
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !prof !256 !PGOFuncName !266 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !256 !PGOFuncName !268 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !267
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !269 !PGOFuncName !270 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delink_stmt_imm_use(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !272 !PGOFuncName !273 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = tail call zeroext i8 @ssa_operands_active() #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !274

5:                                                ; preds = %1
  %6 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0) #13
  %7 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !275

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %6, %5 ]
  tail call fastcc void @delink_imm_use(ptr noundef %10) #13
  %11 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #13
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !prof !276, !llvm.loop !277

14:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !256 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_modified_stmt(ptr noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !280 {
  %2 = tail call zeroext i8 @ssa_operands_active() #12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !281

4:                                                ; preds = %1
  tail call fastcc void @update_stmt_if_modified(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_before_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !282 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !263
  tail call fastcc void @gsi_insert_seq_nodes_before(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_before(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !282 {
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  tail call void @gsi_insert_before_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_after_without_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !283 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !263
  tail call fastcc void @gsi_insert_seq_nodes_after(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_after(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !284 {
  tail call fastcc void @update_modified_stmt(ptr noundef %1) #13
  tail call void @gsi_insert_after_without_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_remove(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !285 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #13, !range !286
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !287

6:                                                ; preds = %2
  tail call void @insert_debug_temps_for_defs(ptr noundef %0) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call void @gimple_set_bb(ptr noundef %3, ptr noundef null) #12
  tail call fastcc void @delink_stmt_imm_use(ptr noundef %3) #13
  tail call void @gimple_set_modified(ptr noundef %3, i8 noundef zeroext 1) #12
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %12, label %9, !prof !288

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @remove_stmt_from_eh_lp(ptr noundef %3) #12
  %11 = load ptr, ptr @cfun, align 8, !tbaa !260
  tail call void @gimple_remove_stmt_histograms(ptr noundef %11, ptr noundef %3) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !223
  %14 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !229
  %16 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !226
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !289

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %17, i64 0, i32 2
  store ptr %15, ptr %20, align 8, !tbaa !229
  br label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !202
  tail call fastcc void @gimple_seq_set_first(ptr noundef %23, ptr noundef %15) #13
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %15, null
  br i1 %25, label %28, label %26, !prof !290

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 1
  store ptr %17, ptr %27, align 8, !tbaa !226
  br label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !202
  tail call fastcc void @gimple_seq_set_last(ptr noundef %30, ptr noundef %17) #13
  br label %31

31:                                               ; preds = %28, %26
  store ptr %15, ptr %0, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !291 !PGOFuncName !292 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @insert_debug_temps_for_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remove_stmt_from_eh_lp(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_for_stmt(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !293 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #13
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %1) #13, !range !286
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %7, !prof !294

6:                                                ; preds = %2
  tail call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  br label %8

8:                                                ; preds = %7, %6
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #13, !range !235
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17, !prof !295

11:                                               ; preds = %8, %14
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %14, !prof !296

14:                                               ; preds = %11
  tail call fastcc void @gsi_next(ptr noundef %0) #13
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13, !range !235
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %11, label %17, !prof !297, !llvm.loop !298

17:                                               ; preds = %14, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #12
  br label %18

18:                                               ; preds = %11, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !299 !PGOFuncName !300 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_start_phis(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !301 {
  %3 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #13
  tail call fastcc void @gsi_start(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !302 !PGOFuncName !303 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !223
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !202
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !304 !PGOFuncName !305 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !306 !PGOFuncName !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  store ptr %4, ptr %0, align 8, !tbaa !223
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_after(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !253 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @gsi_insert_after(ptr noundef %1, ptr noundef %3, i32 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_before(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !308 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %3, i32 noundef 1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_move_to_bb_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !253 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #13
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13, !range !235
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #13
  %8 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

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
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !309 !PGOFuncName !310 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !223
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !202
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !271
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_ctrl_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !311 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !312 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  tail call void @gimple_seq_add_seq(ptr noundef nonnull %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gsi_insert_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !253 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !260
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13, !range !235
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_find_edge_insert_loc(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !prof !313 !PGOFuncName !314 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !315
  br label %9

9:                                                ; preds = %72, %3
  %10 = phi ptr [ %0, %3 ], [ %73, %72 ]
  %11 = phi ptr [ %8, %3 ], [ %70, %72 ]
  %12 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #13, !range !235
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %43, label %14, !prof !319

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @phi_nodes(ptr noundef %11) #13
  %16 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %15) #13, !range !235
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %43, label %18, !prof !320

18:                                               ; preds = %14
  %19 = load ptr, ptr @cfun, align 8, !tbaa !260
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !321
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !323
  %24 = icmp eq ptr %11, %23
  br i1 %24, label %43, label %25, !prof !320

25:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !325
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !235
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %74, !prof !326

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %30 = tail call fastcc i32 @gimple_code(ptr noundef %29) #13, !range !286
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %39, !prof !327

32:                                               ; preds = %28, %35
  tail call fastcc void @gsi_next(ptr noundef %1) #13
  %33 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !235
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %37 = tail call fastcc i32 @gimple_code(ptr noundef %36) #13, !range !286
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %32, label %39, !prof !328, !llvm.loop !329

39:                                               ; preds = %35, %32, %28
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !235
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %74, label %42, !prof !330

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !325
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %74

43:                                               ; preds = %18, %14, %9
  %44 = load ptr, ptr %10, align 8, !tbaa !331
  %45 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !332
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68, !prof !333

49:                                               ; preds = %43
  %50 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %44) #13, !range !235
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %68, label %52, !prof !334

52:                                               ; preds = %49
  %53 = load ptr, ptr @cfun, align 8, !tbaa !260
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !321
  %56 = load ptr, ptr %55, align 8, !tbaa !335
  %57 = icmp eq ptr %44, %56
  br i1 %57, label %68, label %58, !prof !336

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %44) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !325
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %59 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #13, !range !235
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %74, !prof !336

61:                                               ; preds = %58
  %62 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %63 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %62) #12
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @gimple_code(ptr noundef %62) #13, !range !286
  %67 = trunc i32 %66 to i8
  switch i8 %67, label %68 [
    i8 9, label %74
    i8 14, label %74
  ]

68:                                               ; preds = %65, %52, %49, %43
  %69 = icmp eq ptr %2, null
  %70 = tail call ptr @split_edge(ptr noundef nonnull %10) #12
  br i1 %69, label %72, label %71, !prof !337

71:                                               ; preds = %68
  store ptr %70, ptr %2, align 8, !tbaa !260
  br label %72

72:                                               ; preds = %71, %68
  %73 = tail call fastcc ptr @single_pred_edge(ptr noundef %70) #13
  br label %9

74:                                               ; preds = %65, %65, %61, %58, %39, %25, %42
  %75 = phi i8 [ 1, %42 ], [ 1, %25 ], [ 0, %39 ], [ 0, %65 ], [ 0, %65 ], [ 1, %61 ], [ 1, %58 ]
  ret i8 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !253 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !260
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %2, %8
  %10 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13, !range !235
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

13:                                               ; preds = %9
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #0 !prof !338 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = load ptr, ptr @cfun, align 8, !tbaa !260
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !321
  %6 = load ptr, ptr %5, align 8, !tbaa !335
  %7 = tail call fastcc ptr @single_succ_edge(ptr noundef %6) #13
  tail call void @gsi_commit_one_edge_insert(ptr noundef %7, ptr noundef null) #13
  %8 = load ptr, ptr @cfun, align 8, !tbaa !260
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !321
  %11 = load ptr, ptr %10, align 8, !tbaa !335
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !339
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !323
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %40, label %17, !prof !341

17:                                               ; preds = %0
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  br label %28

19:                                               ; preds = %34, %28
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !339
  %22 = load ptr, ptr @cfun, align 8, !tbaa !260
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !321
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !323
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %40, label %28, !prof !342, !llvm.loop !343

28:                                               ; preds = %17, %19
  %29 = phi ptr [ %13, %17 ], [ %21, %19 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %30) #13
  store i32 0, ptr %2, align 8, !tbaa.struct !344
  store ptr %31, ptr %18, align 8, !tbaa.struct !346
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %1) #13, !range !235
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %19, label %34, !prof !347

34:                                               ; preds = %28, %34
  %35 = load ptr, ptr %1, align 8, !tbaa !260
  tail call void @gsi_commit_one_edge_insert(ptr noundef %35, ptr noundef null) #13
  call fastcc void @ei_next(ptr noundef nonnull %2) #13
  %36 = load i32, ptr %2, align 8
  %37 = load ptr, ptr %18, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %1) #13, !range !235
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %19, label %34, !prof !348, !llvm.loop !349

40:                                               ; preds = %19, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gsi_commit_one_edge_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !350 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !351

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !260
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !267
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !352

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  store ptr null, ptr %7, align 8, !tbaa !267
  %11 = call fastcc zeroext i8 @gimple_find_edge_insert_loc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #13, !range !235
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !353

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
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !338 !PGOFuncName !354 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !355

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !356
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #13
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !357 !PGOFuncName !358 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !359 !PGOFuncName !360 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #13, !range !235
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !361

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #13
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !260
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !362 !PGOFuncName !363 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !364

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #13
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !365

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !366
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !368 !PGOFuncName !369 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #13
  store ptr %3, ptr %0, align 8, !tbaa !223
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !202
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !370

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !263
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !371

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #13
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !271
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !372 !PGOFuncName !373 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !374
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !375

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #12
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !376

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !377
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bb_for_stmts(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !379 !PGOFuncName !380 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !381

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !263
  tail call void @gimple_set_bb(ptr noundef %6, ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !prof !382, !llvm.loop !383

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ssa_operands_active() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #0 !prof !384 !PGOFuncName !385 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !386

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #12
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !384 !PGOFuncName !387 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !388

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
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !389 !PGOFuncName !390 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !286
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !256 !PGOFuncName !391 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !286
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !392 !PGOFuncName !393 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !286
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !392 !PGOFuncName !394 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !392 !PGOFuncName !395 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !265

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !260
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !392 !PGOFuncName !396 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !397
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !265

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !392 !PGOFuncName !398 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !286
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !392 !PGOFuncName !399 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !345
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !400 !PGOFuncName !401 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !402
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !404 !PGOFuncName !405 {
  %2 = load i8, ptr %0, align 8, !tbaa !406
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !407 !PGOFuncName !408 {
  %2 = load ptr, ptr %0, align 8, !tbaa !409
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !411

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !412
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !412
  store ptr %2, ptr %6, align 8, !tbaa !409
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !404 !PGOFuncName !413 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !414
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !415

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !416
  store ptr %7, ptr %2, align 8, !tbaa !414
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !418
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !419
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !420

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !421
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !418
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #13
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !406
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !400 !PGOFuncName !422 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !423
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !414
  store i8 0, ptr %0, align 8, !tbaa !406
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !400 !PGOFuncName !424 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !425

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !253 !PGOFuncName !426 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !253 !PGOFuncName !427 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !267
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !429 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !374
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !430

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !267
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !431

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !432
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !433 !PGOFuncName !434 {
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
  %4 = load ptr, ptr %0, align 8, !tbaa !211
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !439 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !356
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
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !441 !PGOFuncName !442 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #13, !range !235
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !443

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !435
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #13
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !444 !PGOFuncName !445 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !446

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !447
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !450 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !260
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !359 !PGOFuncName !451 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !452

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !362 !PGOFuncName !453 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !364

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #13
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #13
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !454 !PGOFuncName !455 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !456

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !260
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!199}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!35 = !{ptr @gsi_insert_seq_before_without_update, ptr @fancy_abort, i64 2}
!36 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_first, i64 21165}
!37 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_last, i64 21165}
!38 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_set_first, i64 21165}
!39 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_set_last, i64 21165}
!40 = !{ptr @gsi_insert_seq_before_without_update, ptr @gimple_seq_free, i64 21165}
!41 = !{ptr @gsi_insert_seq_before_without_update, ptr @gsi_insert_seq_nodes_before, i64 21163}
!42 = !{ptr @gsi_insert_seq_nodes_before, ptr @gsi_bb, i64 65770}
!43 = !{ptr @gsi_insert_seq_nodes_before, ptr @update_bb_for_stmts, i64 22222}
!44 = !{ptr @gsi_insert_seq_nodes_before, ptr @gimple_seq_set_first, i64 20759}
!45 = !{ptr @gsi_insert_seq_nodes_before, ptr @gimple_seq_last, i64 43}
!46 = !{ptr @gsi_insert_seq_nodes_before, ptr @gimple_seq_set_last, i64 43}
!47 = !{ptr @gsi_insert_seq_nodes_before, ptr @fancy_abort, i64 1}
!48 = !{ptr @gsi_insert_seq_before, ptr @update_modified_stmts, i64 21166}
!49 = !{ptr @gsi_insert_seq_before, ptr @gsi_insert_seq_before_without_update, i64 21166}
!50 = !{ptr @update_modified_stmts, ptr @ssa_operands_active, i64 215547}
!51 = !{ptr @update_modified_stmts, ptr @gsi_start, i64 33726}
!52 = !{ptr @update_modified_stmts, ptr @gsi_end_p, i64 71590}
!53 = !{ptr @update_modified_stmts, ptr @gsi_stmt, i64 37864}
!54 = !{ptr @update_modified_stmts, ptr @update_stmt_if_modified, i64 37864}
!55 = !{ptr @update_modified_stmts, ptr @gsi_next, i64 37864}
!56 = !{ptr @gsi_insert_seq_after_without_update, ptr @fancy_abort, i64 2}
!57 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_first, i64 194418}
!58 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_last, i64 194418}
!59 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_set_first, i64 194418}
!60 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_set_last, i64 194418}
!61 = !{ptr @gsi_insert_seq_after_without_update, ptr @gimple_seq_free, i64 194418}
!62 = !{ptr @gsi_insert_seq_after_without_update, ptr @gsi_insert_seq_nodes_after, i64 194095}
!63 = !{ptr @gsi_insert_seq_nodes_after, ptr @gsi_bb, i64 1068563}
!64 = !{ptr @gsi_insert_seq_nodes_after, ptr @update_bb_for_stmts, i64 106867}
!65 = !{ptr @gsi_insert_seq_nodes_after, ptr @gimple_seq_set_last, i64 1068312}
!66 = !{ptr @gsi_insert_seq_nodes_after, ptr @gimple_seq_last, i64 352871}
!67 = !{ptr @gsi_insert_seq_nodes_after, ptr @fancy_abort, i64 3}
!68 = !{ptr @gsi_insert_seq_nodes_after, ptr @gimple_seq_set_first, i64 352871}
!69 = !{ptr @gsi_insert_seq_after, ptr @update_modified_stmts, i64 194381}
!70 = !{ptr @gsi_insert_seq_after, ptr @gsi_insert_seq_after_without_update, i64 194381}
!71 = !{ptr @gsi_split_seq_before, ptr @fancy_abort, i64 1}
!72 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_alloc, i64 187878}
!73 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_set_first, i64 187879}
!74 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_last, i64 187878}
!75 = !{ptr @gsi_split_seq_before, ptr @gimple_seq_set_last, i64 375756}
!76 = !{ptr @gsi_replace, ptr @gsi_stmt, i64 330}
!77 = !{ptr @gsi_replace, ptr @gimple_has_lhs, i64 329}
!78 = !{ptr @gsi_replace, ptr @gimple_get_lhs, i64 656}
!79 = !{ptr @gsi_replace, ptr @fancy_abort, i64 1}
!80 = !{ptr @gsi_replace, ptr @gimple_location, i64 329}
!81 = !{ptr @gsi_replace, ptr @gimple_set_location, i64 329}
!82 = !{ptr @gsi_replace, ptr @gsi_bb, i64 329}
!83 = !{ptr @gsi_replace, ptr @gimple_set_bb, i64 329}
!84 = !{ptr @gsi_replace, ptr @maybe_clean_or_replace_eh_stmt, i64 280}
!85 = !{ptr @gsi_replace, ptr @gimple_duplicate_stmt_histograms, i64 329}
!86 = !{ptr @gsi_replace, ptr @gimple_remove_stmt_histograms, i64 329}
!87 = !{ptr @gsi_replace, ptr @delink_stmt_imm_use, i64 329}
!88 = !{ptr @gsi_replace, ptr @gsi_stmt_ptr, i64 329}
!89 = !{ptr @gsi_replace, ptr @gimple_set_modified, i64 329}
!90 = !{ptr @gsi_replace, ptr @update_modified_stmt, i64 329}
!91 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 330}
!92 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 49}
!93 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 48}
!94 = !{ptr @delink_stmt_imm_use, ptr @ssa_operands_active, i64 578899}
!95 = !{ptr @delink_stmt_imm_use, ptr @op_iter_init_use, i64 283132}
!96 = !{ptr @delink_stmt_imm_use, ptr @op_iter_done, i64 467412}
!97 = !{ptr @delink_stmt_imm_use, ptr @delink_imm_use, i64 184280}
!98 = !{ptr @delink_stmt_imm_use, ptr @op_iter_next_use, i64 184280}
!99 = !{ptr @update_modified_stmt, ptr @ssa_operands_active, i64 262747}
!100 = !{ptr @update_modified_stmt, ptr @update_stmt_if_modified, i64 219078}
!101 = !{ptr @gsi_insert_before_without_update, ptr @ggc_alloc_stat, i64 44604}
!102 = !{ptr @gsi_insert_before_without_update, ptr @gsi_insert_seq_nodes_before, i64 44604}
!103 = !{ptr @gsi_insert_before, ptr @update_modified_stmt, i64 44604}
!104 = !{ptr @gsi_insert_before, ptr @gsi_insert_before_without_update, i64 44604}
!105 = !{ptr @gsi_insert_after_without_update, ptr @ggc_alloc_stat, i64 874465}
!106 = !{ptr @gsi_insert_after_without_update, ptr @gsi_insert_seq_nodes_after, i64 874465}
!107 = !{ptr @gsi_insert_after, ptr @update_modified_stmt, i64 217813}
!108 = !{ptr @gsi_insert_after, ptr @gsi_insert_after_without_update, i64 217813}
!109 = !{ptr @gsi_remove, ptr @gsi_stmt, i64 578569}
!110 = !{ptr @gsi_remove, ptr @gimple_code, i64 578569}
!111 = !{ptr @gsi_remove, ptr @insert_debug_temps_for_defs, i64 486862}
!112 = !{ptr @gsi_remove, ptr @gimple_set_bb, i64 578569}
!113 = !{ptr @gsi_remove, ptr @delink_stmt_imm_use, i64 578569}
!114 = !{ptr @gsi_remove, ptr @gimple_set_modified, i64 578569}
!115 = !{ptr @gsi_remove, ptr @remove_stmt_from_eh_lp, i64 443030}
!116 = !{ptr @gsi_remove, ptr @gimple_remove_stmt_histograms, i64 443030}
!117 = !{ptr @gsi_remove, ptr @gimple_seq_set_first, i64 408375}
!118 = !{ptr @gsi_remove, ptr @gimple_seq_set_last, i64 277903}
!119 = !{ptr @gsi_for_stmt, ptr @gimple_bb, i64 399217}
!120 = !{ptr @gsi_for_stmt, ptr @gimple_code, i64 399217}
!121 = !{ptr @gsi_for_stmt, ptr @gsi_start_phis, i64 46639}
!122 = !{ptr @gsi_for_stmt, ptr @gsi_start_bb, i64 352578}
!123 = !{ptr @gsi_for_stmt, ptr @gsi_end_p, i64 806286}
!124 = !{ptr @gsi_for_stmt, ptr @gsi_stmt, i64 803167}
!125 = !{ptr @gsi_for_stmt, ptr @gsi_next, i64 407069}
!126 = !{ptr @gsi_for_stmt, ptr @fancy_abort, i64 3119}
!127 = !{ptr @gsi_start_phis, ptr @phi_nodes, i64 22894129}
!128 = !{ptr @gsi_start_phis, ptr @gsi_start, i64 22894129}
!129 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 384167}
!130 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 384167}
!131 = !{ptr @gsi_move_before, ptr @gsi_stmt, i64 236}
!132 = !{ptr @gsi_move_before, ptr @gsi_remove, i64 236}
!133 = !{ptr @gsi_move_before, ptr @gsi_insert_before, i64 236}
!134 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 56}
!135 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 56}
!136 = !{ptr @gsi_insert_on_edge, ptr @gimple_seq_add_stmt, i64 35333}
!137 = !{ptr @gsi_insert_seq_on_edge, ptr @gimple_seq_add_seq, i64 66}
!138 = !{ptr @gimple_find_edge_insert_loc, ptr @single_pred_p, i64 42766}
!139 = !{ptr @gimple_find_edge_insert_loc, ptr @phi_nodes, i64 31591}
!140 = !{ptr @gimple_find_edge_insert_loc, ptr @gimple_seq_empty_p, i64 31591}
!141 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_start_bb, i64 31589}
!142 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_end_p, i64 52117}
!143 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_stmt, i64 20473}
!144 = !{ptr @gimple_find_edge_insert_loc, ptr @gimple_code, i64 20473}
!145 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_next, i64 1}
!146 = !{ptr @gimple_find_edge_insert_loc, ptr @gsi_last_bb, i64 57}
!147 = !{ptr @gimple_find_edge_insert_loc, ptr @single_succ_p, i64 11176}
!148 = !{ptr @gimple_find_edge_insert_loc, ptr @stmt_ends_bb_p, i64 1}
!149 = !{ptr @gimple_find_edge_insert_loc, ptr @split_edge, i64 11122}
!150 = !{ptr @gimple_find_edge_insert_loc, ptr @single_pred_edge, i64 11122}
!151 = !{ptr @gsi_commit_edge_inserts, ptr @single_succ_edge, i64 143}
!152 = !{ptr @gsi_commit_edge_inserts, ptr @gsi_commit_one_edge_insert, i64 1372015}
!153 = !{ptr @gsi_commit_edge_inserts, ptr @ei_start_1, i64 796012}
!154 = !{ptr @gsi_commit_edge_inserts, ptr @ei_cond, i64 2167884}
!155 = !{ptr @gsi_commit_edge_inserts, ptr @ei_next, i64 1371872}
!156 = !{ptr @gsi_commit_one_edge_insert, ptr @gimple_find_edge_insert_loc, i64 31645}
!157 = !{ptr @gsi_commit_one_edge_insert, ptr @gsi_insert_seq_after, i64 11174}
!158 = !{ptr @gsi_commit_one_edge_insert, ptr @gsi_insert_seq_before, i64 20471}
!159 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 143}
!160 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!161 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 143}
!162 = !{ptr @ei_cond, ptr @ei_end_p, i64 2183044}
!163 = !{ptr @ei_cond, ptr @ei_edge, i64 1381466}
!164 = !{ptr @ei_next, ptr @ei_container, i64 2762931}
!165 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1381466}
!166 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!167 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 22927854}
!168 = !{ptr @gsi_start, ptr @gimple_bb, i64 7606507}
!169 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!170 = !{ptr @update_bb_for_stmts, ptr @gimple_set_bb, i64 133547}
!171 = !{ptr @update_stmt_if_modified, ptr @gimple_modified_p, i64 256942}
!172 = !{ptr @update_stmt_if_modified, ptr @update_stmt_operands, i64 125084}
!173 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 256942}
!174 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 540122}
!175 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 330}
!176 = !{ptr @is_gimple_call, ptr @gimple_code, i64 48}
!177 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 48}
!178 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 48}
!179 = !{ptr @gimple_op, ptr @gimple_ops, i64 47}
!180 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 48}
!181 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!182 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 48}
!183 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 48}
!184 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 283132}
!185 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 283132}
!186 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!187 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 283132}
!188 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 283132}
!189 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 53878}
!190 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 11316}
!191 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 11117}
!192 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!193 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 11117}
!194 = !{ptr @ei_end_p, ptr @ei_container, i64 4366087}
!195 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2183044}
!196 = !{ptr @ei_edge, ptr @ei_container, i64 2762931}
!197 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1381466}
!198 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!199 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!200 = !{!"function_entry_count", i64 21166}
!201 = !{!"branch_weights", i32 1, i32 21167}
!202 = !{!203, !204, i64 8}
!203 = !{!"", !204, i64 0, !204, i64 8, !204, i64 16}
!204 = !{!"any pointer", !205, i64 0}
!205 = !{!"omnipotent char", !206, i64 0}
!206 = !{!"Simple C/C++ TBAA"}
!207 = !{!"branch_weights", i32 448041889, i32 42335}
!208 = !{!"function_entry_count", i64 23527606}
!209 = !{!"gimple-iterator.c:gimple_seq_first"}
!210 = !{!"branch_weights", i32 14378199, i32 9149409}
!211 = !{!212, !204, i64 0}
!212 = !{!"gimple_seq_d", !204, i64 0, !204, i64 8, !204, i64 16}
!213 = !{!"function_entry_count", i64 756432}
!214 = !{!"gimple-iterator.c:gimple_seq_last"}
!215 = !{!"branch_weights", i32 1, i32 756433}
!216 = !{!212, !204, i64 8}
!217 = !{!"function_entry_count", i64 1185468}
!218 = !{!"gimple-iterator.c:gimple_seq_set_first"}
!219 = !{!"function_entry_count", i64 1937599}
!220 = !{!"gimple-iterator.c:gimple_seq_set_last"}
!221 = !{!"function_entry_count", i64 65770}
!222 = !{!"gimple-iterator.c:gsi_insert_seq_nodes_before"}
!223 = !{!203, !204, i64 0}
!224 = !{!"branch_weights", i32 43549, i32 22223}
!225 = !{!"branch_weights", i32 43, i32 65729}
!226 = !{!227, !204, i64 8}
!227 = !{!"gimple_seq_node_d", !204, i64 0, !204, i64 8, !204, i64 16}
!228 = !{!"branch_weights", i32 20718, i32 45012}
!229 = !{!227, !204, i64 16}
!230 = !{!"branch_weights", i32 43, i32 1}
!231 = !{!"branch_weights", i32 1, i32 20591, i32 1, i32 45181}
!232 = !{!"function_entry_count", i64 215547}
!233 = !{!"gimple-iterator.c:update_modified_stmts"}
!234 = !{!"branch_weights", i32 181823, i32 33726}
!235 = !{i8 0, i8 2}
!236 = !{!"branch_weights", i32 33725, i32 1}
!237 = !{!"branch_weights", i32 4139, i32 33725}
!238 = distinct !{!238, !239}
!239 = !{!"llvm.loop.mustprogress"}
!240 = !{!"function_entry_count", i64 194419}
!241 = !{!"branch_weights", i32 1, i32 194420}
!242 = !{!"branch_weights", i32 -1940315934, i32 3918393}
!243 = !{!"branch_weights", i32 322, i32 1}
!244 = !{!"function_entry_count", i64 1068563}
!245 = !{!"gimple-iterator.c:gsi_insert_seq_nodes_after"}
!246 = !{!"branch_weights", i32 961698, i32 106867}
!247 = !{!"branch_weights", i32 352872, i32 715693}
!248 = !{!"branch_weights", i32 715443, i32 251}
!249 = !{!"branch_weights", i32 352872, i32 1}
!250 = !{!"branch_weights", i32 1, i32 1068234, i32 81, i32 251}
!251 = !{!"branch_weights", i32 1, i32 251}
!252 = !{!"function_entry_count", i64 194381}
!253 = !{!"function_entry_count", i64 0}
!254 = !{!"function_entry_count", i64 187878}
!255 = !{!"branch_weights", i32 1, i32 187879}
!256 = !{!"function_entry_count", i64 330}
!257 = !{!"branch_weights", i32 1, i32 331}
!258 = !{!"branch_weights", i32 331, i32 1}
!259 = !{!"branch_weights", i32 49, i32 283}
!260 = !{!204, !204, i64 0}
!261 = !{!"function_entry_count", i64 1446961}
!262 = !{!"gimple-iterator.c:gsi_stmt"}
!263 = !{!227, !204, i64 0}
!264 = !{!"gimple-iterator.c:gimple_has_lhs"}
!265 = !{!"branch_weights", i32 1, i32 49}
!266 = !{!"gimple-iterator.c:gimple_set_location"}
!267 = !{!205, !205, i64 0}
!268 = !{!"gimple-iterator.c:gimple_location"}
!269 = !{!"function_entry_count", i64 1134663}
!270 = !{!"gimple-iterator.c:gsi_bb"}
!271 = !{!203, !204, i64 16}
!272 = !{!"function_entry_count", i64 578899}
!273 = !{!"gimple-iterator.c:delink_stmt_imm_use"}
!274 = !{!"branch_weights", i32 295768, i32 283133}
!275 = !{!"branch_weights", i32 184281, i32 98852}
!276 = !{!"branch_weights", i32 0, i32 184281}
!277 = distinct !{!277, !239}
!278 = !{!"gimple-iterator.c:gsi_stmt_ptr"}
!279 = !{!"function_entry_count", i64 262747}
!280 = !{!"gimple-iterator.c:update_modified_stmt"}
!281 = !{!"branch_weights", i32 43669, i32 219080}
!282 = !{!"function_entry_count", i64 44604}
!283 = !{!"function_entry_count", i64 874465}
!284 = !{!"function_entry_count", i64 217813}
!285 = !{!"function_entry_count", i64 578569}
!286 = !{i32 0, i32 256}
!287 = !{!"branch_weights", i32 91707, i32 486864}
!288 = !{!"branch_weights", i32 135539, i32 443032}
!289 = !{!"branch_weights", i32 408376, i32 170195}
!290 = !{!"branch_weights", i32 277904, i32 300667}
!291 = !{!"function_entry_count", i64 2078927}
!292 = !{!"gimple-iterator.c:gimple_code"}
!293 = !{!"function_entry_count", i64 399217}
!294 = !{!"branch_weights", i32 46639, i32 352580}
!295 = !{!"branch_weights", i32 127, i32 1}
!296 = !{!"branch_weights", i32 399218, i32 410276}
!297 = !{!"branch_weights", i32 103614977, i32 127}
!298 = distinct !{!298, !239}
!299 = !{!"function_entry_count", i64 8005725}
!300 = !{!"gimple-iterator.c:gimple_bb"}
!301 = !{!"function_entry_count", i64 22894129}
!302 = !{!"function_entry_count", i64 384167}
!303 = !{!"gimple-iterator.c:gsi_start_bb"}
!304 = !{!"function_entry_count", i64 933195}
!305 = !{!"gimple-iterator.c:gsi_end_p"}
!306 = !{!"function_entry_count", i64 448138}
!307 = !{!"gimple-iterator.c:gsi_next"}
!308 = !{!"function_entry_count", i64 236}
!309 = !{!"function_entry_count", i64 56}
!310 = !{!"gimple-iterator.c:gsi_last_bb"}
!311 = !{!"function_entry_count", i64 35333}
!312 = !{!"function_entry_count", i64 66}
!313 = !{!"function_entry_count", i64 31644}
!314 = !{!"gimple-iterator.c:gimple_find_edge_insert_loc"}
!315 = !{!316, !204, i64 8}
!316 = !{!"edge_def", !204, i64 0, !204, i64 8, !205, i64 16, !204, i64 24, !204, i64 32, !317, i64 40, !317, i64 44, !317, i64 48, !317, i64 52, !318, i64 56}
!317 = !{!"int", !205, i64 0}
!318 = !{!"long", !205, i64 0}
!319 = !{!"branch_weights", i32 11174, i32 31589}
!320 = !{!"branch_weights", i32 1, i32 31589}
!321 = !{!322, !204, i64 8}
!322 = !{!"function", !204, i64 0, !204, i64 8, !204, i64 16, !204, i64 24, !204, i64 32, !204, i64 40, !204, i64 48, !204, i64 56, !204, i64 64, !204, i64 72, !204, i64 80, !204, i64 88, !204, i64 96, !317, i64 104, !317, i64 108, !317, i64 112, !317, i64 116, !317, i64 120, !317, i64 124, !204, i64 128, !317, i64 136, !317, i64 137, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 138, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139, !317, i64 139}
!323 = !{!324, !204, i64 8}
!324 = !{!"control_flow_graph", !204, i64 0, !204, i64 8, !204, i64 16, !317, i64 24, !317, i64 28, !317, i64 32, !204, i64 40, !317, i64 48, !205, i64 52, !205, i64 60, !317, i64 68, !317, i64 72}
!325 = !{i64 0, i64 8, !260, i64 8, i64 8, !260, i64 16, i64 8, !260}
!326 = !{!"branch_weights", i32 20472, i32 11118}
!327 = !{!"branch_weights", i32 1, i32 20471}
!328 = !{!"branch_weights", i32 0, i32 1}
!329 = distinct !{!329, !239}
!330 = !{!"branch_weights", i32 20472, i32 1}
!331 = !{!316, !204, i64 0}
!332 = !{!316, !317, i64 48}
!333 = !{!"branch_weights", i32 11174, i32 1}
!334 = !{!"branch_weights", i32 11118, i32 57}
!335 = !{!324, !204, i64 0}
!336 = !{!"branch_weights", i32 1, i32 57}
!337 = !{!"branch_weights", i32 11118, i32 1}
!338 = !{!"function_entry_count", i64 143}
!339 = !{!340, !204, i64 56}
!340 = !{!"basic_block_def", !204, i64 0, !204, i64 8, !204, i64 16, !204, i64 24, !205, i64 32, !204, i64 48, !204, i64 56, !205, i64 64, !318, i64 72, !317, i64 80, !317, i64 84, !317, i64 88, !317, i64 92, !317, i64 96}
!341 = !{!"branch_weights", i32 1, i32 143}
!342 = !{!"branch_weights", i32 143, i32 801436}
!343 = distinct !{!343, !239}
!344 = !{i64 0, i64 4, !345, i64 8, i64 8, !260}
!345 = !{!317, !317, i64 0}
!346 = !{i64 0, i64 8, !260}
!347 = !{!"branch_weights", i32 1, i32 801578}
!348 = !{!"branch_weights", i32 801578, i32 579889}
!349 = distinct !{!349, !239}
!350 = !{!"function_entry_count", i64 1381609}
!351 = !{!"branch_weights", i32 1381610, i32 1}
!352 = !{!"branch_weights", i32 1349966, i32 31645}
!353 = !{!"branch_weights", i32 20472, i32 11174}
!354 = !{!"gimple-iterator.c:single_succ_edge"}
!355 = !{!"branch_weights", i32 1, i32 144}
!356 = !{!340, !204, i64 8}
!357 = !{!"function_entry_count", i64 801578}
!358 = !{!"gimple-iterator.c:ei_start_1"}
!359 = !{!"function_entry_count", i64 2183044}
!360 = !{!"gimple-iterator.c:ei_cond"}
!361 = !{!"branch_weights", i32 1381467, i32 801579}
!362 = !{!"function_entry_count", i64 1381466}
!363 = !{!"gimple-iterator.c:ei_next"}
!364 = !{!"branch_weights", i32 1, i32 1381467}
!365 = !{!"branch_weights", i32 1381467, i32 1}
!366 = !{!367, !317, i64 0}
!367 = !{!"", !317, i64 0, !204, i64 8}
!368 = !{!"function_entry_count", i64 22927854}
!369 = !{!"gimple-iterator.c:gsi_start"}
!370 = !{!"branch_weights", i32 15321347, i32 7606509}
!371 = !{!"branch_weights", i32 1, i32 7606509}
!372 = !{!"function_entry_count", i64 22925717}
!373 = !{!"gimple-iterator.c:phi_nodes"}
!374 = !{!340, !317, i64 96}
!375 = !{!"branch_weights", i32 22925718, i32 1}
!376 = !{!"branch_weights", i32 1365, i32 22924354}
!377 = !{!378, !204, i64 8}
!378 = !{!"gimple_bb_info", !204, i64 0, !204, i64 8}
!379 = !{!"function_entry_count", i64 129088}
!380 = !{!"gimple-iterator.c:update_bb_for_stmts"}
!381 = !{!"branch_weights", i32 1, i32 129088}
!382 = !{!"branch_weights", i32 129088, i32 4460}
!383 = distinct !{!383, !239}
!384 = !{!"function_entry_count", i64 256942}
!385 = !{!"gimple-iterator.c:update_stmt_if_modified"}
!386 = !{!"branch_weights", i32 131859, i32 125085}
!387 = !{!"gimple-iterator.c:gimple_modified_p"}
!388 = !{!"branch_weights", i32 93996, i32 162948}
!389 = !{!"function_entry_count", i64 540122}
!390 = !{!"gimple-iterator.c:gimple_has_ops"}
!391 = !{!"gimple-iterator.c:is_gimple_assign"}
!392 = !{!"function_entry_count", i64 48}
!393 = !{!"gimple-iterator.c:is_gimple_call"}
!394 = !{!"gimple-iterator.c:gimple_call_lhs"}
!395 = !{!"gimple-iterator.c:gimple_op"}
!396 = !{!"gimple-iterator.c:gimple_ops"}
!397 = !{!318, !318, i64 0}
!398 = !{!"gimple-iterator.c:gimple_statement_structure"}
!399 = !{!"gimple-iterator.c:gss_for_code"}
!400 = !{!"function_entry_count", i64 283132}
!401 = !{!"gimple-iterator.c:op_iter_init_use"}
!402 = !{!403, !317, i64 4}
!403 = !{!"ssa_operand_iterator_d", !205, i64 0, !317, i64 4, !204, i64 8, !204, i64 16, !317, i64 24, !317, i64 28, !204, i64 32}
!404 = !{!"function_entry_count", i64 467412}
!405 = !{!"gimple-iterator.c:op_iter_done"}
!406 = !{!403, !205, i64 0}
!407 = !{!"function_entry_count", i64 184280}
!408 = !{!"gimple-iterator.c:delink_imm_use"}
!409 = !{!410, !204, i64 0}
!410 = !{!"ssa_use_operand_d", !204, i64 0, !204, i64 8, !205, i64 16, !204, i64 24}
!411 = !{!"branch_weights", i32 5, i32 184277}
!412 = !{!410, !204, i64 8}
!413 = !{!"gimple-iterator.c:op_iter_next_use"}
!414 = !{!403, !204, i64 16}
!415 = !{!"branch_weights", i32 283133, i32 184281}
!416 = !{!417, !204, i64 0}
!417 = !{!"use_optype_d", !204, i64 0, !410, i64 8}
!418 = !{!403, !317, i64 24}
!419 = !{!403, !317, i64 28}
!420 = !{!"branch_weights", i32 1, i32 283133}
!421 = !{!403, !204, i64 32}
!422 = !{!"gimple-iterator.c:op_iter_init"}
!423 = !{!403, !204, i64 8}
!424 = !{!"gimple-iterator.c:gimple_use_ops"}
!425 = !{!"branch_weights", i32 91707, i32 191427}
!426 = !{!"gimple-iterator.c:gimple_phi_arg_imm_use_ptr"}
!427 = !{!"gimple-iterator.c:gimple_phi_arg"}
!428 = !{!"function_entry_count", i64 384223}
!429 = !{!"gimple-iterator.c:bb_seq"}
!430 = !{!"branch_weights", i32 384224, i32 1}
!431 = !{!"branch_weights", i32 1, i32 384224}
!432 = !{!378, !204, i64 0}
!433 = !{!"function_entry_count", i64 53878}
!434 = !{!"gimple-iterator.c:single_pred_p"}
!435 = !{!340, !204, i64 0}
!436 = !{!"function_entry_count", i64 31588}
!437 = !{!"gimple-iterator.c:gimple_seq_empty_p"}
!438 = !{!"branch_weights", i32 31589, i32 1}
!439 = !{!"function_entry_count", i64 11316}
!440 = !{!"gimple-iterator.c:single_succ_p"}
!441 = !{!"function_entry_count", i64 11117}
!442 = !{!"gimple-iterator.c:single_pred_edge"}
!443 = !{!"branch_weights", i32 1, i32 11118}
!444 = !{!"function_entry_count", i64 3629704}
!445 = !{!"gimple-iterator.c:VEC_edge_base_length"}
!446 = !{!"branch_weights", i32 1, i32 3629705}
!447 = !{!448, !317, i64 0}
!448 = !{!"VEC_edge_base", !317, i64 0, !317, i64 4, !205, i64 8}
!449 = !{!"function_entry_count", i64 1392726}
!450 = !{!"gimple-iterator.c:VEC_edge_base_index"}
!451 = !{!"gimple-iterator.c:ei_end_p"}
!452 = !{!"branch_weights", i32 1, i32 2183045}
!453 = !{!"gimple-iterator.c:ei_edge"}
!454 = !{!"function_entry_count", i64 9891952}
!455 = !{!"gimple-iterator.c:ei_container"}
!456 = !{!"branch_weights", i32 1, i32 9891953}
