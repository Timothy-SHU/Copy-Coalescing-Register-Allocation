; ModuleID = 'tree-outof-ssa.c'
source_filename = "tree-outof-ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssaexpand = type { ptr, ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct._elim_graph = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_source_location_base = type { i32, i32, [1 x i32] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_tree_ter = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"tree-outof-ssa.c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Inserting a temp copy on edge BB%d->BB%d : \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"= PART.%d\0A\00", align 1
@SA = external local_unnamed_addr global %struct.ssaexpand, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"Inserting a temp copy on edge BB%d->BB%d : PART.%d = \00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Inserting a partition copy on edge BB%d->BB%d :PART.%d = PART.%d\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Inserting a value copy on edge BB%d->BB%d : PART.%d = \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Removing Dead PHI definition: \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"After Coalescing:\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_phi_nodes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !210 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct._var_map, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !216
  %7 = tail call fastcc ptr @new_elim_graph(i32 noundef %6) #19
  %8 = load ptr, ptr %0, align 8, !tbaa !211
  %9 = getelementptr inbounds %struct._elim_graph, ptr %7, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !219
  %10 = load ptr, ptr @cfun, align 8, !tbaa !221
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !229
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %78, label %19, !prof !230

19:                                               ; preds = %1
  %20 = getelementptr inbounds i8, ptr %3, i64 8
  br label %21

21:                                               ; preds = %19, %69
  %22 = phi ptr [ %15, %19 ], [ %71, %69 ]
  %23 = tail call fastcc ptr @phi_nodes(ptr noundef %22) #19
  %24 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %23) #19, !range !231
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %69, !prof !232

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %27 = tail call fastcc ptr @ei_start_1(ptr noundef %22) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !233
  store ptr %27, ptr %20, align 8, !tbaa.struct !235
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %2) #19, !range !231
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30, !prof !236

30:                                               ; preds = %26, %30
  %31 = load ptr, ptr %2, align 8, !tbaa !221
  tail call fastcc void @eliminate_phi(ptr noundef %31, ptr noundef %7) #19
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %32 = load i32, ptr %3, align 8
  %33 = load ptr, ptr %20, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %2) #19, !range !231
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %30, !prof !237, !llvm.loop !238

36:                                               ; preds = %30, %26
  tail call fastcc void @set_phi_nodes(ptr noundef %22) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !233
  store ptr %27, ptr %20, align 8, !tbaa.struct !235
  %37 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %27) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39, !prof !236

39:                                               ; preds = %36, %63
  %40 = phi ptr [ %64, %63 ], [ %27, %36 ]
  %41 = phi i32 [ %65, %63 ], [ 0, %36 ]
  %42 = phi ptr [ %66, %63 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !240
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46, !prof !241

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !242
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51, !prof !244

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !245
  %54 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %53) #19, !range !231
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  store ptr null, ptr %43, align 8, !tbaa !240
  %57 = tail call ptr @split_edge(ptr noundef nonnull %42) #21
  %58 = tail call fastcc ptr @single_pred_edge(ptr noundef %57) #19
  %59 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 2
  store ptr %44, ptr %59, align 8, !tbaa !240
  br label %63

60:                                               ; preds = %51, %46, %39
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %61 = load i32, ptr %3, align 8
  %62 = load ptr, ptr %20, align 8
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ %62, %60 ], [ %40, %56 ]
  %65 = phi i32 [ %61, %60 ], [ %41, %56 ]
  %66 = tail call fastcc ptr @ei_safe_edge(i32 %65, ptr %64) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %39, !prof !237, !llvm.loop !246

68:                                               ; preds = %63, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %69

69:                                               ; preds = %21, %68
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !226
  %72 = load ptr, ptr @cfun, align 8, !tbaa !221
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !222
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !229
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %78, label %21, !prof !247, !llvm.loop !248

78:                                               ; preds = %69, %1
  tail call fastcc void @delete_elim_graph(ptr noundef %7) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_elim_graph(i32 noundef %0) unnamed_addr #0 !prof !210 !PGOFuncName !249 {
  %2 = tail call ptr @xmalloc(i64 noundef 88) #21
  %3 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 30) #19
  %4 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !250
  %5 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 20) #19
  %6 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 8
  store ptr %5, ptr %6, align 8, !tbaa !251
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc() #19
  %8 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 9
  store ptr %7, ptr %8, align 8, !tbaa !252
  %9 = tail call fastcc ptr @VEC_source_location_heap_alloc() #19
  %10 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 10
  store ptr %9, ptr %10, align 8, !tbaa !253
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 20) #19
  %12 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !254
  %13 = tail call fastcc ptr @VEC_source_location_heap_alloc() #19
  %14 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !255
  %15 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef 30) #19
  %16 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !256
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %0) #21
  %18 = getelementptr inbounds %struct._elim_graph, ptr %2, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !257
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #2 !prof !258 !PGOFuncName !259 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !260

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !261
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !258 !PGOFuncName !263 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !264
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !265

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !266

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !269 !PGOFuncName !270 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !271 !PGOFuncName !272 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !231
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !273

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !221
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_phi(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !274 !PGOFuncName !275 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !276

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 656, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !253
  %12 = tail call fastcc i32 @VEC_source_location_base_length(ptr noundef %11) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !276

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 657, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !242
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %94, !prof !276

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 7
  store ptr %0, ptr %21, align 8, !tbaa !277
  tail call fastcc void @eliminate_build(ptr noundef nonnull %1) #19
  %22 = tail call fastcc i32 @elim_graph_size(ptr noundef nonnull %1) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %78, label %24, !prof !276

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %25 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !257
  tail call void @sbitmap_zero(ptr noundef %26) #21
  %27 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !256
  tail call fastcc void @VEC_int_base_truncate(ptr noundef %28) #19
  %29 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !250
  %31 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %3) #19, !range !278
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %24, %49
  %34 = phi ptr [ %50, %49 ], [ %30, %24 ]
  %35 = phi i32 [ %51, %49 ], [ 0, %24 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !257
  %37 = load i32, ptr %3, align 4, !tbaa !234
  %38 = lshr i32 %37, 6
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.simple_bitmap_def, ptr %36, i64 0, i32 3, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !279
  %42 = and i32 %37, 63
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = and i64 %44, %41
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  tail call fastcc void @elim_forward(ptr noundef nonnull %1, i32 noundef %37) #19
  %48 = load ptr, ptr %29, align 8, !tbaa !250
  br label %49

49:                                               ; preds = %33, %47
  %50 = phi ptr [ %34, %33 ], [ %48, %47 ]
  %51 = add nuw nsw i32 %35, 1
  %52 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %50, i32 noundef %51, ptr noundef nonnull %3) #19, !range !278
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %33, !llvm.loop !280

54:                                               ; preds = %49, %24
  %55 = load ptr, ptr %25, align 8, !tbaa !257
  tail call void @sbitmap_zero(ptr noundef %55) #21
  %56 = load ptr, ptr %27, align 8, !tbaa !256
  %57 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %56) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54, %73
  %60 = phi ptr [ %74, %73 ], [ %56, %54 ]
  %61 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %60) #19
  %62 = load ptr, ptr %25, align 8, !tbaa !257
  %63 = lshr i32 %61, 6
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !279
  %67 = and i32 %61, 63
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = and i64 %69, %66
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  tail call fastcc void @elim_create(ptr noundef nonnull %1, i32 noundef %61) #19
  br label %73

73:                                               ; preds = %72, %59
  %74 = load ptr, ptr %27, align 8, !tbaa !256
  %75 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %74) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %59, !llvm.loop !281

77:                                               ; preds = %73, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %78

78:                                               ; preds = %77, %20
  %79 = load ptr, ptr %4, align 8, !tbaa !252
  %80 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %79) #19
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82, !prof !282

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct._elim_graph, ptr %1, i64 0, i32 8
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi ptr [ %79, %82 ], [ %91, %84 ]
  %86 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %85) #19
  %87 = load ptr, ptr %83, align 8, !tbaa !251
  %88 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %87) #19
  %89 = load ptr, ptr %10, align 8, !tbaa !253
  %90 = tail call fastcc i32 @VEC_source_location_base_pop(ptr noundef %89) #19
  tail call fastcc void @insert_value_copy_on_edge(ptr noundef %0, i32 noundef %88, ptr noundef %86, i32 noundef %90) #19
  %91 = load ptr, ptr %4, align 8, !tbaa !252
  %92 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %91) #19
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %84, !prof !283, !llvm.loop !284

94:                                               ; preds = %84, %78, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !285 !PGOFuncName !286 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !287

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !288

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !289
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !291 !PGOFuncName !292 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !264
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !293

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !267
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !271 !PGOFuncName !294 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !231
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !273

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !295 !PGOFuncName !296 {
  %2 = load ptr, ptr %0, align 8, !tbaa !297
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !298 !PGOFuncName !299 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !231
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !300

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !297
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @delete_elim_graph(ptr nocapture noundef %0) unnamed_addr #7 !prof !210 !PGOFuncName !301 {
  %2 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !257
  %4 = load ptr, ptr %3, align 8, !tbaa !302
  tail call void @free(ptr noundef %4) #19
  %5 = load ptr, ptr %2, align 8, !tbaa !257
  tail call void @free(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %7) #19
  %8 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 9
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 8
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %9) #19
  %10 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 10
  tail call fastcc void @VEC_source_location_heap_free(ptr noundef nonnull %11) #19
  %12 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  tail call fastcc void @VEC_source_location_heap_free(ptr noundef nonnull %12) #19
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_out_of_ssa(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !210 {
  %2 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !304
  tail call void @free(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !306

7:                                                ; preds = %1
  tail call void @bitmap_obstack_free(ptr noundef nonnull %5) #21
  store ptr null, ptr %4, align 8, !tbaa !305
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %0, align 8, !tbaa !211
  tail call void @delete_var_map(ptr noundef %9) #21
  %10 = getelementptr inbounds %struct.ssaexpand, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !307
  tail call void @bitmap_obstack_free(ptr noundef %11) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @delete_var_map(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @rewrite_out_of_ssa(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !210 {
  tail call fastcc void @insert_backedge_copies() #19
  tail call fastcc void @eliminate_useless_phis() #19
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4, !prof !308

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i32 %5, -9
  tail call void @gimple_dump_cfg(ptr noundef nonnull %2, i32 noundef %9) #21
  br label %10

10:                                               ; preds = %8, %4, %1
  %11 = load i32, ptr @flag_tree_ter, align 4, !tbaa !234
  %12 = trunc i32 %11 to i8
  tail call fastcc void @remove_ssa_form(i8 noundef zeroext %12, ptr noundef %0) #19
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !308

15:                                               ; preds = %10
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = and i32 %16, -9
  tail call void @gimple_dump_cfg(ptr noundef nonnull %13, i32 noundef %20) #21
  br label %21

21:                                               ; preds = %19, %15, %10
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_backedge_copies() unnamed_addr #0 !prof !210 !PGOFuncName !309 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #20
  %4 = load ptr, ptr @cfun, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = load ptr, ptr %6, align 8, !tbaa !224
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %103, label %13, !prof !230

13:                                               ; preds = %0, %94
  %14 = phi ptr [ %96, %94 ], [ %9, %0 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 2
  store ptr %15, ptr %15, align 8, !tbaa !310
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %14) #21
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !231
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %94, !prof !311

18:                                               ; preds = %13, %91
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %19) #19
  %21 = call zeroext i8 @is_gimple_reg(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %91, label %23, !prof !312

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !240
  %26 = call fastcc i32 @gimple_phi_num_args(ptr noundef %19) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %91, label %28, !prof !313

28:                                               ; preds = %23, %86
  %29 = phi i64 [ %87, %86 ], [ 0, %23 ]
  %30 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %19, i64 noundef %29) #19
  %31 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %19, i64 noundef %29) #19
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !242
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %86, label %36, !prof !314

36:                                               ; preds = %28
  %37 = load i64, ptr %30, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !240
  %43 = icmp eq ptr %42, %25
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call fastcc zeroext i8 @trivially_conflicts_p(ptr noundef %14, ptr noundef %20, ptr noundef nonnull %30) #19
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %44, %40, %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %48 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %19, i64 noundef %29) #19
  %49 = load ptr, ptr %48, align 8, !tbaa !315
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %49) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %53) #21
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %30, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !240
  %65 = icmp eq ptr %64, %53
  br i1 %65, label %85, label %66

66:                                               ; preds = %47, %58, %62, %55, %52
  %67 = phi i1 [ false, %58 ], [ false, %62 ], [ false, %55 ], [ true, %52 ], [ true, %47 ]
  %68 = phi ptr [ %53, %58 ], [ %53, %62 ], [ %53, %55 ], [ null, %52 ], [ null, %47 ]
  %69 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %19, i64 noundef %29) #19
  %70 = call ptr @gimple_build_assign_stat(ptr noundef %25, ptr noundef %69) #21
  %71 = call fastcc ptr @make_ssa_name(ptr noundef %25, ptr noundef %70) #19
  call fastcc void @gimple_assign_set_lhs(ptr noundef %70, ptr noundef %71) #19
  %72 = call fastcc zeroext i8 @gimple_phi_arg_has_location(ptr noundef %19, i64 noundef %29) #19, !range !231
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %19, i64 noundef %29) #19
  call fastcc void @gimple_set_location(ptr noundef %70, i32 noundef %75) #19
  br label %76

76:                                               ; preds = %74, %66
  br i1 %67, label %81, label %77

77:                                               ; preds = %76
  %78 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %68) #21
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %70, i32 noundef 0) #21
  br label %82

81:                                               ; preds = %77, %76
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %70, i32 noundef 0) #21
  br label %82

82:                                               ; preds = %81, %80
  %83 = trunc i64 %29 to i32
  %84 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %19, i32 noundef %83) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %84, ptr noundef %71) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %86

85:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %86

86:                                               ; preds = %28, %44, %82, %85
  %87 = add nuw nsw i64 %29, 1
  %88 = call fastcc i32 @gimple_phi_num_args(ptr noundef %19) #19
  %89 = zext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %28, label %91, !prof !317, !llvm.loop !318

91:                                               ; preds = %86, %23, %18
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !231
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %18, label %94, !prof !319, !llvm.loop !320

94:                                               ; preds = %91, %13
  store ptr null, ptr %15, align 8, !tbaa !310
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !226
  %97 = load ptr, ptr @cfun, align 8, !tbaa !221
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !222
  %100 = getelementptr inbounds %struct.control_flow_graph, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !229
  %102 = icmp eq ptr %96, %101
  br i1 %102, label %103, label %13, !prof !247, !llvm.loop !321

103:                                              ; preds = %94, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_useless_phis() unnamed_addr #0 !prof !210 !PGOFuncName !322 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !221
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = load ptr, ptr %5, align 8, !tbaa !224
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %41, label %21, !prof !230

12:                                               ; preds = %38, %21
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = load ptr, ptr @cfun, align 8, !tbaa !221
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !229
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %41, label %21, !prof !247, !llvm.loop !323

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %14, %12 ], [ %8, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %22) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !231
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %12, !prof !311

25:                                               ; preds = %21, %38
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  %27 = call fastcc ptr @gimple_phi_result(ptr noundef %26) #19
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !240
  %30 = call zeroext i8 @is_gimple_reg(ptr noundef %29) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33, !prof !312

32:                                               ; preds = %25
  call void @remove_phi_node(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %38

33:                                               ; preds = %25
  %34 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %27) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36, !prof !324

36:                                               ; preds = %33
  call fastcc void @remove_gimple_phi_args(ptr noundef %26) #19
  call void @remove_phi_node(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  br label %38

37:                                               ; preds = %33
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  br label %38

38:                                               ; preds = %36, %37, %32
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !231
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %25, label %12, !prof !319, !llvm.loop !325

41:                                               ; preds = %12, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_ssa_form(i8 noundef zeroext %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !210 !PGOFuncName !326 {
  %3 = tail call ptr @coalesce_ssa_name() #21
  tail call void @partition_view_normal(ptr noundef %3, i8 noundef zeroext 0) #21
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !308

6:                                                ; preds = %2
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 18, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !221
  tail call void @dump_var_map(ptr noundef %12, ptr noundef %3) #21
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = icmp eq i8 %0, 0
  br i1 %14, label %26, label %15, !prof !306

15:                                               ; preds = %13
  %16 = tail call ptr @find_replaceable_exprs(ptr noundef %3) #21
  %17 = icmp ne ptr %16, null
  %18 = load ptr, ptr @dump_file, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %26, !prof !327

21:                                               ; preds = %15
  %22 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @dump_replaceable_exprs(ptr noundef nonnull %18, ptr noundef nonnull %16) #21
  br label %26

26:                                               ; preds = %15, %21, %25, %13
  %27 = phi ptr [ %16, %25 ], [ %16, %21 ], [ %16, %15 ], [ null, %13 ]
  store ptr %3, ptr %1, align 8, !tbaa !211
  %28 = getelementptr inbounds %struct.ssaexpand, ptr %1, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !305
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %30 = getelementptr inbounds %struct.ssaexpand, ptr %1, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !307
  %31 = load ptr, ptr @cfun, align 8, !tbaa !221
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !328
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !329
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #19
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %62, !prof !333

38:                                               ; preds = %26, %53
  %39 = phi ptr [ %59, %53 ], [ %35, %26 ]
  %40 = phi i32 [ %54, %53 ], [ 1, %26 ]
  %41 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %39, i32 noundef %40) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43, !prof !334

43:                                               ; preds = %38
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 4294967296
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %53, label %47, !prof !335

47:                                               ; preds = %43
  %48 = tail call fastcc i32 @var_to_partition(ptr noundef %3, ptr noundef nonnull %41) #19
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50, !prof !336

50:                                               ; preds = %47
  %51 = load ptr, ptr %30, align 8, !tbaa !307
  %52 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %48) #21
  br label %53

53:                                               ; preds = %47, %50, %43, %38
  %54 = add nuw i32 %40, 1
  %55 = load ptr, ptr @cfun, align 8, !tbaa !221
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !328
  %58 = getelementptr inbounds %struct.gimple_df, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !329
  %60 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #19
  %61 = icmp ult i32 %54, %60
  br i1 %61, label %38, label %62, !prof !337, !llvm.loop !338

62:                                               ; preds = %53, %26
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !339 !PGOFuncName !340 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !210 !PGOFuncName !341 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_source_location_heap_alloc() unnamed_addr #0 !prof !342 !PGOFuncName !343 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 10, i64 noundef 8, i64 noundef 4) #21
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !344 !PGOFuncName !345 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !346

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !285 !PGOFuncName !347 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !287

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !348 !PGOFuncName !349 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !350

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !351
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !353 !PGOFuncName !354 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !355

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !356 !PGOFuncName !357 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !358 !PGOFuncName !359 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !360

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !361
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_source_location_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !274 !PGOFuncName !363 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !364

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !365
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_build(ptr nocapture noundef %0) unnamed_addr #0 !prof !274 !PGOFuncName !367 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  tail call fastcc void @clear_elim_graph(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !277
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %6) #21
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %47, !prof !368

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 6
  br label %11

11:                                               ; preds = %9, %44
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !219
  %14 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #19
  %15 = call fastcc i32 @var_to_partition(ptr noundef %13, ptr noundef %14) #19
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %44, label %17, !prof !369

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8, !tbaa !277
  %19 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !370
  %21 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %12, i32 noundef %20) #19
  %22 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %21) #19
  %23 = load ptr, ptr %3, align 8, !tbaa !277
  %24 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %12, ptr noundef %23) #19
  %25 = call fastcc zeroext i8 @phi_ssa_name_p(ptr noundef %22) #19, !range !231
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27, !prof !371

27:                                               ; preds = %17
  %28 = load i64, ptr %22, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %39, !prof !372

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 8, !tbaa !219
  %33 = call fastcc i32 @var_to_partition(ptr noundef %32, ptr noundef nonnull %22) #19
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39, !prof !373

35:                                               ; preds = %31, %17
  %36 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 8
  %37 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 9
  %38 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 10
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %36, i32 noundef %15) #19
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %37, ptr noundef %22) #19
  call fastcc void @VEC_source_location_heap_safe_push(ptr noundef nonnull %38, i32 noundef %24) #19
  br label %44

39:                                               ; preds = %31, %27
  %40 = load ptr, ptr %10, align 8, !tbaa !219
  %41 = call fastcc i32 @var_to_partition(ptr noundef %40, ptr noundef nonnull %22) #19
  %42 = icmp eq i32 %15, %41
  br i1 %42, label %44, label %43, !prof !372

43:                                               ; preds = %39
  call fastcc void @eliminate_name(ptr noundef nonnull %0, i32 noundef %15) #19
  call fastcc void @eliminate_name(ptr noundef nonnull %0, i32 noundef %41) #19
  call fastcc void @elim_graph_add_edge(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %41, i32 noundef %24) #19
  br label %44

44:                                               ; preds = %35, %43, %39, %11
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %45 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %11, label %47, !prof !374, !llvm.loop !375

47:                                               ; preds = %44, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @elim_graph_size(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !274 !PGOFuncName !376 {
  %2 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_int_base_truncate(ptr noundef writeonly %0) unnamed_addr #10 !prof !285 !PGOFuncName !377 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !287

3:                                                ; preds = %1
  store i32 0, ptr %0, align 4, !tbaa !378
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !380 !PGOFuncName !381 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !378
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !234
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !234
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @elim_forward(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !382 {
  %3 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !257
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %1) #19
  %5 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !254
  %7 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %2, %29
  %10 = phi ptr [ %30, %29 ], [ %6, %2 ]
  %11 = phi i32 [ %31, %29 ], [ 0, %2 ]
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %11) #19
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = or disjoint i32 %11, 1
  %16 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %15) #19
  %17 = load ptr, ptr %3, align 8, !tbaa !257
  %18 = lshr i32 %16, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !279
  %22 = and i32 %16, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  tail call fastcc void @elim_forward(ptr noundef nonnull %0, i32 noundef %16) #19
  %28 = load ptr, ptr %5, align 8, !tbaa !254
  br label %29

29:                                               ; preds = %14, %27, %9
  %30 = phi ptr [ %10, %14 ], [ %28, %27 ], [ %10, %9 ]
  %31 = add i32 %11, 2
  %32 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %30) #19
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %9, label %34, !llvm.loop !383

34:                                               ; preds = %29, %2
  %35 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %35, i32 noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !274 !PGOFuncName !384 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !364

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !378
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_int_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !385 !PGOFuncName !386 {
  %2 = load i32, ptr %0, align 4, !tbaa !378
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !378
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !234
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @elim_create(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !387 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = tail call fastcc i32 @elim_unvisited_predecessor(ptr noundef %0, i32 noundef %1) #19, !range !278
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  %9 = tail call fastcc ptr @partition_to_var(ptr noundef %8, i32 noundef %1) #19
  %10 = tail call fastcc ptr @get_temp_reg(ptr noundef %9) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !240
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = lshr i32 %14, 21
  %16 = and i32 %15, 1
  %17 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !277
  tail call fastcc void @insert_part_to_rtx_on_edge(ptr noundef %18, ptr noundef %10, i32 noundef %1) #19
  %19 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !254
  %21 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %20) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %64, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %23, %50
  %27 = phi ptr [ %20, %23 ], [ %51, %50 ]
  %28 = phi i32 [ 0, %23 ], [ %52, %50 ]
  %29 = or disjoint i32 %28, 1
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %29) #19
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #19
  %34 = load ptr, ptr %25, align 8, !tbaa !257
  %35 = lshr i32 %33, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !279
  %39 = and i32 %33, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %38, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load ptr, ptr %24, align 8, !tbaa !255
  %46 = lshr exact i32 %28, 1
  %47 = tail call fastcc i32 @VEC_source_location_base_index(ptr noundef %45, i32 noundef %46) #19
  tail call fastcc void @elim_backward(ptr noundef nonnull %0, i32 noundef %33) #19
  %48 = load ptr, ptr %17, align 8, !tbaa !277
  tail call fastcc void @insert_rtx_to_part_on_edge(ptr noundef %48, i32 noundef %33, ptr noundef %10, i32 noundef %16, i32 noundef %47) #19
  %49 = load ptr, ptr %19, align 8, !tbaa !254
  br label %50

50:                                               ; preds = %32, %44, %26
  %51 = phi ptr [ %27, %32 ], [ %49, %44 ], [ %27, %26 ]
  %52 = add i32 %28, 2
  %53 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %51) #19
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %26, label %64, !llvm.loop !388

55:                                               ; preds = %2
  %56 = call fastcc i32 @elim_graph_remove_succ_edge(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #19
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !257
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %1) #19
  %61 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !277
  %63 = load i32, ptr %3, align 4, !tbaa !234
  tail call fastcc void @insert_partition_copy_on_edge(ptr noundef %62, i32 noundef %1, i32 noundef %56, i32 noundef %63) #19
  br label %64

64:                                               ; preds = %50, %6, %55, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !385 !PGOFuncName !389 {
  %2 = load i32, ptr %0, align 8, !tbaa !361
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !361
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_source_location_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !385 !PGOFuncName !390 {
  %2 = load i32, ptr %0, align 4, !tbaa !365
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !365
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !234
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_value_copy_on_edge(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !385 !PGOFuncName !391 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8, !prof !244

8:                                                ; preds = %4
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !315
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !392
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !245
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !392
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.11, i32 noundef %15, i32 noundef %19, i32 noundef %1) #19
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !221
  tail call void @print_generic_expr(ptr noundef %21, ptr noundef %2, i32 noundef 2) #21
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  br label %24

24:                                               ; preds = %12, %8, %4
  %25 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !393

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 225, ptr noundef nonnull @.str.1) #21
  br label %31

31:                                               ; preds = %24, %30
  tail call fastcc void @set_location_for_edge(ptr noundef %0) #19
  %32 = icmp eq i32 %3, 0
  br i1 %32, label %34, label %33, !prof !394

33:                                               ; preds = %31
  tail call void @set_curr_insn_source_location(i32 noundef %3) #21
  br label %34

34:                                               ; preds = %33, %31
  tail call void @start_sequence() #21
  %35 = load ptr, ptr @SA, align 8, !tbaa !211
  %36 = tail call fastcc ptr @partition_to_var(ptr noundef %35, i32 noundef %1) #19
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !240
  %39 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !240
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46, !prof !393

44:                                               ; preds = %34
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %40) #21
  br label %51

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = call i32 @promote_decl_mode(ptr noundef %38, ptr noundef nonnull %5) #21
  %54 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !240
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %61, !prof !393

59:                                               ; preds = %51
  %60 = call i32 @vector_type_mode(ptr noundef nonnull %55) #21
  br label %66

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  %68 = icmp eq i32 %52, %67
  br i1 %68, label %70, label %69, !prof !244

69:                                               ; preds = %66
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 237, ptr noundef nonnull @.str.1) #21
  br label %70

70:                                               ; preds = %66, %69
  %71 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %72 = getelementptr inbounds ptr, ptr %71, i64 %26
  %73 = load ptr, ptr %72, align 8, !tbaa !221
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %53, %76
  br i1 %77, label %79, label %78, !prof !244

78:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 238, ptr noundef nonnull @.str.1) #21
  br label %79

79:                                               ; preds = %70, %78
  %80 = icmp eq i32 %52, %53
  br i1 %80, label %85, label %81, !prof !244

81:                                               ; preds = %79
  %82 = call fastcc ptr @expand_expr(ptr noundef nonnull %2, ptr noundef null, i32 noundef %52) #19
  %83 = load i32, ptr %5, align 4, !tbaa !234
  %84 = call ptr @convert_modes(i32 noundef %53, i32 noundef %52, ptr noundef %82, i32 noundef %83) #21
  br label %94

85:                                               ; preds = %79
  %86 = icmp eq i32 %52, 1
  %87 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %88 = getelementptr inbounds ptr, ptr %87, i64 %26
  %89 = load ptr, ptr %88, align 8, !tbaa !221
  br i1 %86, label %90, label %92, !prof !393

90:                                               ; preds = %85
  %91 = call ptr @store_expr(ptr noundef nonnull %2, ptr noundef %89, i32 noundef 0, i8 noundef zeroext 0) #21
  br label %94

92:                                               ; preds = %85
  %93 = call fastcc ptr @expand_expr(ptr noundef nonnull %2, ptr noundef %89, i32 noundef %52) #19
  br label %94

94:                                               ; preds = %90, %92, %81
  %95 = phi ptr [ %84, %81 ], [ %89, %90 ], [ %93, %92 ]
  %96 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %97 = getelementptr inbounds ptr, ptr %96, i64 %26
  %98 = load ptr, ptr %97, align 8, !tbaa !221
  %99 = icmp eq ptr %95, %98
  br i1 %99, label %102, label %100, !prof !393

100:                                              ; preds = %94
  %101 = call ptr @emit_move_insn(ptr noundef %98, ptr noundef %95) #21
  br label %102

102:                                              ; preds = %100, %94
  %103 = call ptr @get_insns() #21
  call void @end_sequence() #21
  call void @insert_insn_on_edge(ptr noundef %103, ptr noundef %0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_elim_graph(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !274 !PGOFuncName !395 {
  %2 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  tail call fastcc void @VEC_int_base_truncate(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !254
  tail call fastcc void @VEC_int_base_truncate(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  tail call fastcc void @VEC_source_location_base_truncate(ptr noundef %7) #19
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !396 !PGOFuncName !397 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !400 !PGOFuncName !401 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = load ptr, ptr %2, align 8, !tbaa !402
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !404 !PGOFuncName !405 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6, !prof !406

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 147, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !407
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !240
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !408
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !410
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !411

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !234
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !412 !PGOFuncName !413 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !414 !PGOFuncName !415 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !416
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !418 !PGOFuncName !419 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !418 !PGOFuncName !420 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !370
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !421
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @phi_ssa_name_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !418 !PGOFuncName !423 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !385 !PGOFuncName !424 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !385 !PGOFuncName !425 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_source_location_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !385 !PGOFuncName !426 {
  tail call fastcc void @VEC_source_location_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  tail call fastcc void @VEC_source_location_base_quick_push(ptr noundef %3, i32 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_name(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !427 {
  tail call fastcc void @elim_graph_add_node(ptr noundef %0, i32 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @elim_graph_add_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !380 !PGOFuncName !428 {
  %5 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %5, i32 noundef %1) #19
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %5, i32 noundef %2) #19
  %6 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  tail call fastcc void @VEC_source_location_heap_safe_push(ptr noundef nonnull %6, i32 noundef %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #13 !prof !429 !PGOFuncName !430 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !431
  store ptr %4, ptr %0, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_source_location_base_truncate(ptr noundef writeonly %0) unnamed_addr #10 !prof !274 !PGOFuncName !432 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !364

3:                                                ; preds = %1
  store i32 0, ptr %0, align 4, !tbaa !365
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !433 !PGOFuncName !434 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !240
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !435

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !385 !PGOFuncName !436 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !393

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #21
  store ptr %6, ptr %0, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !385 !PGOFuncName !437 {
  %3 = load i32, ptr %0, align 4, !tbaa !378
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !378
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !385 !PGOFuncName !438 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !393

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !439
  %6 = load i32, ptr %0, align 4, !tbaa !378
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !385 !PGOFuncName !440 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !393

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !385 !PGOFuncName !441 {
  %3 = load i32, ptr %0, align 8, !tbaa !361
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !361
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !385 !PGOFuncName !442 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !393

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !443
  %6 = load i32, ptr %0, align 8, !tbaa !361
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_source_location_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !385 !PGOFuncName !444 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_source_location_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !393

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #21
  store ptr %6, ptr %0, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_source_location_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !385 !PGOFuncName !445 {
  %3 = load i32, ptr %0, align 4, !tbaa !365
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !365
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_source_location_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !385 !PGOFuncName !446 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !393

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !447
  %6 = load i32, ptr %0, align 4, !tbaa !365
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @elim_graph_add_node(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !448 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !250
  %6 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #19, !range !278
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %12

8:                                                ; preds = %12
  %9 = add nuw nsw i32 %13, 1
  %10 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %3) #19, !range !278
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !llvm.loop !449

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %14 = load i32, ptr %3, align 4, !tbaa !234
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %17, label %8

16:                                               ; preds = %8, %2
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %1) #19
  br label %17

17:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !380 !PGOFuncName !450 {
  %3 = load ptr, ptr %0, align 8, !tbaa !302
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
  %15 = load i64, ptr %14, align 8, !tbaa !279
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !240
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !240
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !279
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !380 !PGOFuncName !451 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !234
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_source_location_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !380 !PGOFuncName !452 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !234
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @elim_unvisited_predecessor(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 !prof !380 !PGOFuncName !453 {
  %3 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !254
  %5 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %4) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %26
  %10 = phi i32 [ 0, %7 ], [ %27, %26 ]
  %11 = or disjoint i32 %10, 1
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %11) #19
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %10) #19
  %16 = load ptr, ptr %8, align 8, !tbaa !257
  %17 = lshr i32 %15, 6
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !279
  %21 = and i32 %15, 63
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %20
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %14, %9
  %27 = add i32 %10, 2
  %28 = icmp ult i32 %27, %5
  br i1 %28, label %9, label %29, !llvm.loop !454

29:                                               ; preds = %14, %26, %2
  %30 = phi i32 [ 0, %2 ], [ 0, %26 ], [ 1, %14 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !385 !PGOFuncName !455 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !456
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !393

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !234
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !407
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !408
  %16 = load ptr, ptr @cfun, align 8, !tbaa !221
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !328
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !329
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #19
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_temp_reg(ptr noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !457 {
  %2 = alloca i32, align 4
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !240
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %13 = call i32 @promote_decl_mode(ptr noundef %10, ptr noundef nonnull %2) #21
  %14 = call ptr @gen_reg_rtx(i32 noundef %13) #21
  %15 = load i64, ptr %12, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %23 [
    i16 10, label %17
    i16 12, label %17
  ]

17:                                               ; preds = %9, %9
  %18 = load ptr, ptr %11, align 8, !tbaa !240
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !240
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !240
  call void @mark_reg_pointer(ptr noundef %14, i32 noundef %22) #21
  br label %23

23:                                               ; preds = %9, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_part_to_rtx_on_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !380 !PGOFuncName !458 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !315
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !392
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !245
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !392
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i32 noundef %13, i32 noundef %17) #19
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !221
  tail call void @print_simple_rtl(ptr noundef %19, ptr noundef %1) #21
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.7, i32 noundef %2) #19
  br label %22

22:                                               ; preds = %10, %6, %3
  %23 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !221
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 316, ptr noundef nonnull @.str.1) #21
  br label %29

29:                                               ; preds = %22, %28
  tail call fastcc void @set_location_for_edge(ptr noundef %0) #19
  %30 = load ptr, ptr @SA, align 8, !tbaa !211
  %31 = tail call fastcc ptr @partition_to_var(ptr noundef %30, i32 noundef %2) #19
  %32 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %33 = getelementptr inbounds ptr, ptr %32, i64 %24
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !240
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = lshr i32 %38, 21
  %40 = and i32 %39, 1
  %41 = tail call fastcc ptr @emit_partition_copy(ptr noundef %1, ptr noundef %34, i32 noundef %40, ptr noundef %31) #19
  tail call void @insert_insn_on_edge(ptr noundef %41, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @elim_backward(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !459 {
  %3 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !257
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %1) #19
  %5 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !254
  %7 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %9, %36
  %13 = phi ptr [ %6, %9 ], [ %37, %36 ]
  %14 = phi i32 [ 0, %9 ], [ %38, %36 ]
  %15 = or disjoint i32 %14, 1
  %16 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %13, i32 noundef %15) #19
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %13, i32 noundef %14) #19
  %20 = load ptr, ptr %3, align 8, !tbaa !257
  %21 = lshr i32 %19, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %20, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !279
  %25 = and i32 %19, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load ptr, ptr %10, align 8, !tbaa !255
  %32 = lshr exact i32 %14, 1
  %33 = tail call fastcc i32 @VEC_source_location_base_index(ptr noundef %31, i32 noundef %32) #19
  tail call fastcc void @elim_backward(ptr noundef nonnull %0, i32 noundef %19) #19
  %34 = load ptr, ptr %11, align 8, !tbaa !277
  tail call fastcc void @insert_partition_copy_on_edge(ptr noundef %34, i32 noundef %19, i32 noundef %1, i32 noundef %33) #19
  %35 = load ptr, ptr %5, align 8, !tbaa !254
  br label %36

36:                                               ; preds = %18, %30, %12
  %37 = phi ptr [ %13, %18 ], [ %35, %30 ], [ %13, %12 ]
  %38 = add i32 %14, 2
  %39 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %37) #19
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %12, label %41, !llvm.loop !460

41:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_rtx_to_part_on_edge(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !380 !PGOFuncName !461 {
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !315
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !392
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !245
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !392
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.8, i32 noundef %15, i32 noundef %19, i32 noundef %1) #19
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !221
  tail call void @print_simple_rtl(ptr noundef %21, ptr noundef %2) #21
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  br label %24

24:                                               ; preds = %12, %8, %5
  %25 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 280, ptr noundef nonnull @.str.1) #21
  br label %31

31:                                               ; preds = %24, %30
  tail call fastcc void @set_location_for_edge(ptr noundef %0) #19
  %32 = icmp eq i32 %4, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  tail call void @set_curr_insn_source_location(i32 noundef %4) #21
  br label %34

34:                                               ; preds = %33, %31
  %35 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %36 = getelementptr inbounds ptr, ptr %35, i64 %26
  %37 = load ptr, ptr %36, align 8, !tbaa !221
  %38 = load ptr, ptr @SA, align 8, !tbaa !211
  %39 = tail call fastcc ptr @partition_to_var(ptr noundef %38, i32 noundef %1) #19
  %40 = tail call fastcc ptr @emit_partition_copy(ptr noundef %37, ptr noundef %2, i32 noundef %3, ptr noundef %39) #19
  tail call void @insert_insn_on_edge(ptr noundef %40, ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @elim_graph_remove_succ_edge(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 !prof !380 !PGOFuncName !462 {
  %4 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !254
  %6 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3, %20
  %9 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %9) #19
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  tail call fastcc void @VEC_int_base_replace(ptr noundef %5, i32 noundef %9) #19
  %13 = load ptr, ptr %4, align 8, !tbaa !254
  %14 = or disjoint i32 %9, 1
  %15 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %13, i32 noundef %14) #19
  tail call fastcc void @VEC_int_base_replace(ptr noundef %13, i32 noundef %14) #19
  %16 = getelementptr inbounds %struct._elim_graph, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !255
  %18 = lshr exact i32 %9, 1
  %19 = tail call fastcc i32 @VEC_source_location_base_index(ptr noundef %17, i32 noundef %18) #19
  store i32 %19, ptr %2, align 4, !tbaa !234
  tail call fastcc void @VEC_source_location_base_replace(ptr noundef %17, i32 noundef %18) #19
  br label %24

20:                                               ; preds = %8
  %21 = add i32 %9, 2
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %8, label %23, !llvm.loop !463

23:                                               ; preds = %20, %3
  store i32 0, ptr %2, align 4, !tbaa !234
  br label %24

24:                                               ; preds = %23, %12
  %25 = phi i32 [ %15, %12 ], [ -1, %23 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_partition_copy_on_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !380 !PGOFuncName !464 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !315
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !392
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !245
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !392
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, i32 noundef %14, i32 noundef %18, i32 noundef %1, i32 noundef %2) #19
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  br label %22

22:                                               ; preds = %11, %7, %4
  %23 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !221
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 187, ptr noundef nonnull @.str.1) #21
  %29 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  br label %30

30:                                               ; preds = %22, %28
  %31 = phi ptr [ %23, %22 ], [ %29, %28 ]
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 188, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %30, %36
  tail call fastcc void @set_location_for_edge(ptr noundef %0) #19
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @set_curr_insn_source_location(i32 noundef %3) #21
  br label %40

40:                                               ; preds = %39, %37
  %41 = load ptr, ptr @SA, align 8, !tbaa !211
  %42 = tail call fastcc ptr @partition_to_var(ptr noundef %41, i32 noundef %2) #19
  %43 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !304
  %44 = getelementptr inbounds ptr, ptr %43, i64 %24
  %45 = load ptr, ptr %44, align 8, !tbaa !221
  %46 = getelementptr inbounds ptr, ptr %43, i64 %32
  %47 = load ptr, ptr %46, align 8, !tbaa !221
  %48 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !240
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = lshr i32 %51, 21
  %53 = and i32 %52, 1
  %54 = tail call fastcc ptr @emit_partition_copy(ptr noundef %45, ptr noundef %47, i32 noundef %53, ptr noundef %42) #19
  tail call void @insert_insn_on_edge(ptr noundef %54, ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !465 !PGOFuncName !466 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: optsize
declare void @print_simple_rtl(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_location_for_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !385 !PGOFuncName !467 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !468
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !469

6:                                                ; preds = %1
  tail call void @set_curr_insn_source_location(i32 noundef %4) #21
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !470
  tail call void @set_curr_insn_block(ptr noundef %8) #21
  br label %39

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  br label %11

11:                                               ; preds = %34, %9
  %12 = phi ptr [ %10, %9 ], [ %35, %34 ]
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %12) #19
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %31, !prof !471

15:                                               ; preds = %11, %28
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %17 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #19, !range !231
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28, !prof !472

19:                                               ; preds = %15
  %20 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %16) #19, !range !231
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25, !prof !473

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_block(ptr noundef %16) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !474

25:                                               ; preds = %19, %22
  %26 = tail call fastcc i32 @gimple_location(ptr noundef %16) #19
  tail call void @set_curr_insn_source_location(i32 noundef %26) #21
  %27 = tail call fastcc ptr @gimple_block(ptr noundef %16) #19
  tail call void @set_curr_insn_block(ptr noundef %27) #21
  br label %38

28:                                               ; preds = %15, %22
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #19
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %15, label %31, !prof !475, !llvm.loop !476

31:                                               ; preds = %28, %11
  %32 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %12) #19, !range !231
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34, !prof !477

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @single_pred(ptr noundef %12) #19
  %36 = load ptr, ptr %0, align 8, !tbaa !315
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %11, !prof !478, !llvm.loop !479

38:                                               ; preds = %31, %34, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %39

39:                                               ; preds = %38, %6
  ret void
}

; Function Attrs: optsize
declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_partition_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !380 !PGOFuncName !480 {
  tail call void @start_sequence() #21
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @convert_to_mode(i32 noundef %12, ptr noundef nonnull %1, i32 noundef %2) #21
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %9, %4
  %18 = phi i32 [ %16, %14 ], [ %5, %9 ], [ %5, %4 ]
  %19 = phi ptr [ %15, %14 ], [ %1, %9 ], [ %1, %4 ]
  %20 = and i32 %18, 16711680
  %21 = icmp eq i32 %20, 65536
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 65536
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 158, ptr noundef nonnull @.str.1) #21
  br label %27

27:                                               ; preds = %22, %26
  %28 = tail call ptr @expr_size(ptr noundef %3) #21
  %29 = tail call ptr @emit_block_move(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef %28, i32 noundef 0) #21
  br label %32

30:                                               ; preds = %17
  %31 = tail call ptr @emit_move_insn(ptr noundef %0, ptr noundef nonnull %19) #21
  br label %32

32:                                               ; preds = %30, %27
  %33 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  ret ptr %33
}

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_curr_insn_block(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #13 !prof !481 !PGOFuncName !482 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !483
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !484
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !485 !PGOFuncName !486 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !487
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !485 !PGOFuncName !488 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !485 !PGOFuncName !489 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !490 !PGOFuncName !491 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !240
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #13 !prof !492 !PGOFuncName !493 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !494
  store ptr %4, ptr %0, align 8, !tbaa !398
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !298 !PGOFuncName !495 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !481 !PGOFuncName !496 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !264
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !497

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !240
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !498

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !499
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #2 !prof !481 !PGOFuncName !500 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !498

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !501
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !485 !PGOFuncName !502 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @expr_size(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #6

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !380 !PGOFuncName !503 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  store i32 -1, ptr %4, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_source_location_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !380 !PGOFuncName !504 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 2, i64 %3
  store i32 0, ptr %4, align 4, !tbaa !234
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !385 !PGOFuncName !505 {
  %4 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef null) #21
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @store_expr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !506 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !261
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !414 !PGOFuncName !507 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !339 !PGOFuncName !508 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !509

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !210 !PGOFuncName !510 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !306

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_source_location_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !342 !PGOFuncName !511 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !512

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !513 !PGOFuncName !514 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !240
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !418 !PGOFuncName !515 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #5 !prof !418 !PGOFuncName !516 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #19
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @trivially_conflicts_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #16 !prof !380 !PGOFuncName !517 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !240
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #19
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %1) #19
  %11 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #19, !range !231
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9, %32
  %14 = phi ptr [ %33, %32 ], [ %10, %9 ]
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !240
  %17 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #19, !range !231
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = tail call fastcc ptr @gimple_bb(ptr noundef %16) #19
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @gimple_code(ptr noundef %16) #19, !range !487
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !487
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  tail call fastcc void @maybe_renumber_stmts_bb(ptr noundef %0) #19
  %29 = tail call fastcc i32 @gimple_uid(ptr noundef %6) #19
  %30 = tail call fastcc i32 @gimple_uid(ptr noundef %16) #19
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %13, %22, %28
  %33 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #19
  %34 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #19, !range !231
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %13, label %36, !llvm.loop !518

36:                                               ; preds = %32, %19, %25, %28, %9, %3
  %37 = phi i8 [ 0, %3 ], [ 0, %9 ], [ 0, %32 ], [ 1, %19 ], [ 1, %25 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #20
  ret i8 %37
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !519 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !221
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !520 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !240
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_phi_arg_has_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !521 {
  %3 = tail call fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) #19
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !380 !PGOFuncName !522 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !240
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !523 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !421
  ret i32 %6
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !380 !PGOFuncName !524 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !416
  store ptr %1, ptr %4, align 8, !tbaa !221
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !380 !PGOFuncName !525 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !526
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !528
  store ptr %6, ptr %0, align 8, !tbaa !529
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !231
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !530 {
  %2 = load ptr, ptr %0, align 8, !tbaa !529
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !526
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @maybe_renumber_stmts_bb(ptr noundef %0) unnamed_addr #16 !prof !380 !PGOFuncName !531 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !310
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  store ptr null, ptr %3, align 8, !tbaa !310
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %0) #19
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %6 ]
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  tail call fastcc void @gimple_set_uid(ptr noundef %11, i32 noundef %10) #19
  %12 = add i32 %10, 1
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !231
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %9, label %15, !llvm.loop !532

15:                                               ; preds = %9, %6, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !533 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !240
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #13 !prof !380 !PGOFuncName !534 {
  %2 = load ptr, ptr %0, align 8, !tbaa !529
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !528
  store ptr %4, ptr %0, align 8, !tbaa !529
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !231
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #13 !prof !380 !PGOFuncName !535 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !483
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !484
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !380 !PGOFuncName !536 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !240
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !537 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !231
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  store ptr %1, ptr %10, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !538 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !487
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !539 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !240
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !380 !PGOFuncName !540 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !541 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !487
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #3 !prof !380 !PGOFuncName !542 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !234
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !380 !PGOFuncName !543 {
  %2 = load ptr, ptr %0, align 8, !tbaa !544
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !528
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !528
  store ptr %2, ptr %6, align 8, !tbaa !544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !380 !PGOFuncName !545 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !544
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !380 !PGOFuncName !546 {
  store ptr %1, ptr %0, align 8, !tbaa !544
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !528
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !528
  store ptr %0, ptr %4, align 8, !tbaa !544
  store ptr %0, ptr %3, align 8, !tbaa !528
  ret void
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !547 !PGOFuncName !548 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !528
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !549

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !234
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !324

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #21
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_gimple_phi_args(ptr noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !550 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !221
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !234
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !221
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef 2) #21
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %2, ptr noundef %0) #19
  %16 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14, %34
  %19 = phi ptr [ %35, %34 ], [ %15, %14 ]
  %20 = call fastcc ptr @get_use_from_ptr(ptr noundef %19) #19
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %19, ptr noundef null) #19
  %25 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %20) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !240
  %30 = call fastcc i32 @gimple_code(ptr noundef %29) #19, !range !487
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call fastcc void @remove_gimple_phi_args(ptr noundef %29) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %29) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  br label %33

33:                                               ; preds = %32, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %34

34:                                               ; preds = %24, %33, %18
  %35 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #19
  %36 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %18, label %38, !llvm.loop !551

38:                                               ; preds = %34, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !380 !PGOFuncName !552 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !553
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !553
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !555
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !556
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !557
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !380 !PGOFuncName !558 {
  %2 = load i8, ptr %0, align 8, !tbaa !553
  ret i8 %2
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !559 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !560
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !561
  store ptr %7, ptr %2, align 8, !tbaa !560
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !563
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !556
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !555
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !563
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !553
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !380 !PGOFuncName !564 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !553
  ret void
}

; Function Attrs: optsize
declare ptr @coalesce_ssa_name() local_unnamed_addr #6

; Function Attrs: optsize
declare void @partition_view_normal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @dump_var_map(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @find_replaceable_exprs(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @dump_replaceable_exprs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!209}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!35 = !{ptr @expand_phi_nodes, ptr @new_elim_graph, i64 38}
!36 = !{ptr @expand_phi_nodes, ptr @phi_nodes, i64 150111}
!37 = !{ptr @expand_phi_nodes, ptr @gimple_seq_empty_p, i64 150111}
!38 = !{ptr @expand_phi_nodes, ptr @ei_start_1, i64 2141}
!39 = !{ptr @expand_phi_nodes, ptr @ei_cond, i64 70864}
!40 = !{ptr @expand_phi_nodes, ptr @eliminate_phi, i64 68723}
!41 = !{ptr @expand_phi_nodes, ptr @ei_next, i64 137446}
!42 = !{ptr @expand_phi_nodes, ptr @set_phi_nodes, i64 2141}
!43 = !{ptr @expand_phi_nodes, ptr @ei_safe_edge, i64 70864}
!44 = !{ptr @expand_phi_nodes, ptr @single_pred_p, i64 1}
!45 = !{ptr @expand_phi_nodes, ptr @delete_elim_graph, i64 38}
!46 = !{ptr @new_elim_graph, ptr @xmalloc, i64 38}
!47 = !{ptr @new_elim_graph, ptr @VEC_int_heap_alloc, i64 152}
!48 = !{ptr @new_elim_graph, ptr @VEC_tree_heap_alloc, i64 38}
!49 = !{ptr @new_elim_graph, ptr @VEC_source_location_heap_alloc, i64 76}
!50 = !{ptr @new_elim_graph, ptr @sbitmap_alloc, i64 38}
!51 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!52 = !{ptr @ei_cond, ptr @ei_end_p, i64 72727}
!53 = !{ptr @ei_cond, ptr @ei_edge, i64 70530}
!54 = !{ptr @eliminate_phi, ptr @VEC_tree_base_length, i64 205826}
!55 = !{ptr @eliminate_phi, ptr @fancy_abort, i64 2}
!56 = !{ptr @eliminate_phi, ptr @VEC_source_location_base_length, i64 70531}
!57 = !{ptr @eliminate_phi, ptr @eliminate_build, i64 70530}
!58 = !{ptr @eliminate_phi, ptr @elim_graph_size, i64 70530}
!59 = !{ptr @eliminate_phi, ptr @sbitmap_zero, i64 2}
!60 = !{ptr @eliminate_phi, ptr @VEC_int_base_truncate, i64 1}
!61 = !{ptr @eliminate_phi, ptr @VEC_int_base_iterate, i64 21}
!62 = !{ptr @eliminate_phi, ptr @elim_forward, i64 7}
!63 = !{ptr @eliminate_phi, ptr @VEC_int_base_length, i64 21}
!64 = !{ptr @eliminate_phi, ptr @VEC_int_base_pop, i64 64785}
!65 = !{ptr @eliminate_phi, ptr @elim_create, i64 7}
!66 = !{ptr @eliminate_phi, ptr @VEC_tree_base_pop, i64 64765}
!67 = !{ptr @eliminate_phi, ptr @VEC_source_location_base_pop, i64 64765}
!68 = !{ptr @eliminate_phi, ptr @insert_value_copy_on_edge, i64 64765}
!69 = !{ptr @ei_next, ptr @ei_container, i64 282123}
!70 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 141062}
!71 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!72 = !{ptr @set_phi_nodes, ptr @fancy_abort, i64 1}
!73 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 72727}
!74 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 70530}
!75 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 4532}
!76 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 1908}
!77 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!78 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 1908}
!79 = !{ptr @delete_elim_graph, ptr @free, i64 114}
!80 = !{ptr @delete_elim_graph, ptr @VEC_int_heap_free, i64 152}
!81 = !{ptr @delete_elim_graph, ptr @VEC_tree_heap_free, i64 38}
!82 = !{ptr @delete_elim_graph, ptr @VEC_source_location_heap_free, i64 76}
!83 = !{ptr @finish_out_of_ssa, ptr @free, i64 38}
!84 = !{ptr @finish_out_of_ssa, ptr @bitmap_obstack_free, i64 75}
!85 = !{ptr @finish_out_of_ssa, ptr @delete_var_map, i64 38}
!86 = !{ptr @rewrite_out_of_ssa, ptr @insert_backedge_copies, i64 38}
!87 = !{ptr @rewrite_out_of_ssa, ptr @eliminate_useless_phis, i64 38}
!88 = !{ptr @rewrite_out_of_ssa, ptr @remove_ssa_form, i64 38}
!89 = !{ptr @insert_backedge_copies, ptr @gsi_start_phis, i64 150111}
!90 = !{ptr @insert_backedge_copies, ptr @gsi_end_p, i64 195930}
!91 = !{ptr @insert_backedge_copies, ptr @gsi_stmt, i64 45818}
!92 = !{ptr @insert_backedge_copies, ptr @gimple_phi_result, i64 45818}
!93 = !{ptr @insert_backedge_copies, ptr @is_gimple_reg, i64 45818}
!94 = !{ptr @insert_backedge_copies, ptr @gimple_phi_num_args, i64 71199}
!95 = !{ptr @insert_backedge_copies, ptr @gimple_phi_arg_def, i64 68971}
!96 = !{ptr @insert_backedge_copies, ptr @gimple_phi_arg_edge, i64 68971}
!97 = !{ptr @insert_backedge_copies, ptr @gsi_last_bb, i64 1}
!98 = !{ptr @insert_backedge_copies, ptr @gimple_build_assign_stat, i64 1}
!99 = !{ptr @insert_backedge_copies, ptr @make_ssa_name, i64 1}
!100 = !{ptr @insert_backedge_copies, ptr @gimple_assign_set_lhs, i64 1}
!101 = !{ptr @insert_backedge_copies, ptr @gimple_phi_arg_has_location, i64 1}
!102 = !{ptr @insert_backedge_copies, ptr @gimple_phi_arg_location, i64 1}
!103 = !{ptr @insert_backedge_copies, ptr @gimple_set_location, i64 1}
!104 = !{ptr @insert_backedge_copies, ptr @gsi_insert_after, i64 1}
!105 = !{ptr @insert_backedge_copies, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!106 = !{ptr @insert_backedge_copies, ptr @set_ssa_use_from_ptr, i64 1}
!107 = !{ptr @insert_backedge_copies, ptr @gsi_next, i64 45818}
!108 = !{ptr @eliminate_useless_phis, ptr @gsi_start_phis, i64 150111}
!109 = !{ptr @eliminate_useless_phis, ptr @gsi_end_p, i64 195929}
!110 = !{ptr @eliminate_useless_phis, ptr @gsi_stmt, i64 45818}
!111 = !{ptr @eliminate_useless_phis, ptr @gimple_phi_result, i64 45818}
!112 = !{ptr @eliminate_useless_phis, ptr @is_gimple_reg, i64 45818}
!113 = !{ptr @eliminate_useless_phis, ptr @remove_phi_node, i64 43590}
!114 = !{ptr @eliminate_useless_phis, ptr @has_zero_uses, i64 2229}
!115 = !{ptr @eliminate_useless_phis, ptr @remove_gimple_phi_args, i64 1}
!116 = !{ptr @eliminate_useless_phis, ptr @gsi_next, i64 2228}
!117 = !{ptr @remove_ssa_form, ptr @coalesce_ssa_name, i64 38}
!118 = !{ptr @remove_ssa_form, ptr @partition_view_normal, i64 38}
!119 = !{ptr @remove_ssa_form, ptr @find_replaceable_exprs, i64 37}
!120 = !{ptr @remove_ssa_form, ptr @bitmap_obstack_alloc_stat, i64 38}
!121 = !{ptr @remove_ssa_form, ptr @VEC_tree_base_length, i64 415543}
!122 = !{ptr @remove_ssa_form, ptr @VEC_tree_base_index, i64 415505}
!123 = !{ptr @remove_ssa_form, ptr @var_to_partition, i64 75}
!124 = !{ptr @remove_ssa_form, ptr @bitmap_set_bit, i64 38}
!125 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 152}
!126 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 38}
!127 = !{ptr @VEC_source_location_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 76}
!128 = !{ptr @ei_end_p, ptr @ei_container, i64 290907}
!129 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 145454}
!130 = !{ptr @ei_edge, ptr @ei_container, i64 282123}
!131 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 141062}
!132 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!133 = !{ptr @eliminate_build, ptr @clear_elim_graph, i64 70531}
!134 = !{ptr @eliminate_build, ptr @gsi_start_phis, i64 70531}
!135 = !{ptr @eliminate_build, ptr @gsi_end_p, i64 141317}
!136 = !{ptr @eliminate_build, ptr @gsi_stmt, i64 70786}
!137 = !{ptr @eliminate_build, ptr @gimple_phi_result, i64 70786}
!138 = !{ptr @eliminate_build, ptr @var_to_partition, i64 82826}
!139 = !{ptr @eliminate_build, ptr @gimple_phi_arg_imm_use_ptr, i64 70785}
!140 = !{ptr @eliminate_build, ptr @get_use_from_ptr, i64 70785}
!141 = !{ptr @eliminate_build, ptr @gimple_phi_arg_location_from_edge, i64 70785}
!142 = !{ptr @eliminate_build, ptr @phi_ssa_name_p, i64 70785}
!143 = !{ptr @eliminate_build, ptr @VEC_int_heap_safe_push, i64 64765}
!144 = !{ptr @eliminate_build, ptr @VEC_tree_heap_safe_push, i64 64765}
!145 = !{ptr @eliminate_build, ptr @VEC_source_location_heap_safe_push, i64 64765}
!146 = !{ptr @eliminate_build, ptr @eliminate_name, i64 2}
!147 = !{ptr @eliminate_build, ptr @elim_graph_add_edge, i64 1}
!148 = !{ptr @eliminate_build, ptr @gsi_next, i64 70786}
!149 = !{ptr @elim_graph_size, ptr @VEC_int_base_length, i64 70531}
!150 = !{ptr @insert_value_copy_on_edge, ptr @fancy_abort, i64 3}
!151 = !{ptr @insert_value_copy_on_edge, ptr @set_location_for_edge, i64 64766}
!152 = !{ptr @insert_value_copy_on_edge, ptr @set_curr_insn_source_location, i64 64662}
!153 = !{ptr @insert_value_copy_on_edge, ptr @start_sequence, i64 64766}
!154 = !{ptr @insert_value_copy_on_edge, ptr @partition_to_var, i64 64766}
!155 = !{ptr @insert_value_copy_on_edge, ptr @vector_type_mode, i64 2}
!156 = !{ptr @insert_value_copy_on_edge, ptr @promote_decl_mode, i64 64766}
!157 = !{ptr @insert_value_copy_on_edge, ptr @expand_expr, i64 64765}
!158 = !{ptr @insert_value_copy_on_edge, ptr @convert_modes, i64 1}
!159 = !{ptr @insert_value_copy_on_edge, ptr @store_expr, i64 1}
!160 = !{ptr @insert_value_copy_on_edge, ptr @emit_move_insn, i64 64765}
!161 = !{ptr @insert_value_copy_on_edge, ptr @get_insns, i64 64766}
!162 = !{ptr @insert_value_copy_on_edge, ptr @end_sequence, i64 64766}
!163 = !{ptr @insert_value_copy_on_edge, ptr @insert_insn_on_edge, i64 64766}
!164 = !{ptr @clear_elim_graph, ptr @VEC_int_base_truncate, i64 141062}
!165 = !{ptr @clear_elim_graph, ptr @VEC_source_location_base_truncate, i64 70531}
!166 = !{ptr @var_to_partition, ptr @fancy_abort, i64 1}
!167 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 70786}
!168 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 70786}
!169 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 64766}
!170 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 64766}
!171 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 64766}
!172 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 64766}
!173 = !{ptr @VEC_source_location_heap_safe_push, ptr @VEC_source_location_heap_reserve, i64 64766}
!174 = !{ptr @VEC_source_location_heap_safe_push, ptr @VEC_source_location_base_quick_push, i64 64766}
!175 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!176 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 64766}
!177 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!178 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 64766}
!179 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!180 = !{ptr @VEC_source_location_heap_reserve, ptr @VEC_source_location_base_space, i64 64766}
!181 = !{ptr @VEC_source_location_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!182 = !{ptr @partition_to_var, ptr @VEC_tree_base_index, i64 64766}
!183 = !{ptr @set_location_for_edge, ptr @set_curr_insn_source_location, i64 64759}
!184 = !{ptr @set_location_for_edge, ptr @set_curr_insn_block, i64 64759}
!185 = !{ptr @set_location_for_edge, ptr @gsi_last_bb, i64 64639}
!186 = !{ptr @set_location_for_edge, ptr @gsi_end_p, i64 64672}
!187 = !{ptr @set_location_for_edge, ptr @gsi_stmt, i64 64646}
!188 = !{ptr @set_location_for_edge, ptr @is_gimple_debug, i64 64646}
!189 = !{ptr @set_location_for_edge, ptr @gimple_has_location, i64 64645}
!190 = !{ptr @set_location_for_edge, ptr @gimple_block, i64 64646}
!191 = !{ptr @set_location_for_edge, ptr @gimple_location, i64 64613}
!192 = !{ptr @set_location_for_edge, ptr @gsi_prev, i64 33}
!193 = !{ptr @set_location_for_edge, ptr @single_pred_p, i64 26}
!194 = !{ptr @set_location_for_edge, ptr @single_pred, i64 19}
!195 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 66529}
!196 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 66529}
!197 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 63937}
!198 = !{ptr @gimple_has_location, ptr @gimple_location, i64 63937}
!199 = !{ptr @single_pred, ptr @single_pred_edge, i64 1908}
!200 = !{ptr @expand_expr, ptr @expand_expr_real, i64 64766}
!201 = !{ptr @VEC_int_heap_free, ptr @free, i64 151}
!202 = !{ptr @VEC_tree_heap_free, ptr @free, i64 37}
!203 = !{ptr @VEC_source_location_heap_free, ptr @free, i64 75}
!204 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 70786}
!205 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 70786}
!206 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 70786}
!207 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 70786}
!208 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!209 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!210 = !{!"function_entry_count", i64 38}
!211 = !{!212, !213, i64 0}
!212 = !{!"ssaexpand", !213, i64 0, !213, i64 8, !213, i64 16, !213, i64 24}
!213 = !{!"any pointer", !214, i64 0}
!214 = !{!"omnipotent char", !215, i64 0}
!215 = !{!"Simple C/C++ TBAA"}
!216 = !{!217, !218, i64 24}
!217 = !{!"_var_map", !213, i64 0, !213, i64 8, !213, i64 16, !218, i64 24, !218, i64 28, !218, i64 32, !213, i64 40, !213, i64 48}
!218 = !{!"int", !214, i64 0}
!219 = !{!220, !213, i64 48}
!220 = !{!"_elim_graph", !218, i64 0, !213, i64 8, !213, i64 16, !213, i64 24, !213, i64 32, !213, i64 40, !213, i64 48, !213, i64 56, !213, i64 64, !213, i64 72, !213, i64 80}
!221 = !{!213, !213, i64 0}
!222 = !{!223, !213, i64 8}
!223 = !{!"function", !213, i64 0, !213, i64 8, !213, i64 16, !213, i64 24, !213, i64 32, !213, i64 40, !213, i64 48, !213, i64 56, !213, i64 64, !213, i64 72, !213, i64 80, !213, i64 88, !213, i64 96, !218, i64 104, !218, i64 108, !218, i64 112, !218, i64 116, !218, i64 120, !218, i64 124, !213, i64 128, !218, i64 136, !218, i64 137, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 138, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139, !218, i64 139}
!224 = !{!225, !213, i64 0}
!225 = !{!"control_flow_graph", !213, i64 0, !213, i64 8, !213, i64 16, !218, i64 24, !218, i64 28, !218, i64 32, !213, i64 40, !218, i64 48, !214, i64 52, !214, i64 60, !218, i64 68, !218, i64 72}
!226 = !{!227, !213, i64 56}
!227 = !{!"basic_block_def", !213, i64 0, !213, i64 8, !213, i64 16, !213, i64 24, !214, i64 32, !213, i64 48, !213, i64 56, !214, i64 64, !228, i64 72, !218, i64 80, !218, i64 84, !218, i64 88, !218, i64 92, !218, i64 96}
!228 = !{!"long", !214, i64 0}
!229 = !{!225, !213, i64 8}
!230 = !{!"branch_weights", i32 1, i32 155}
!231 = !{i8 0, i8 2}
!232 = !{!"branch_weights", i32 2197, i32 151865}
!233 = !{i64 0, i64 4, !234, i64 8, i64 8, !221}
!234 = !{!218, !218, i64 0}
!235 = !{i64 0, i64 8, !221}
!236 = !{!"branch_weights", i32 1, i32 2196}
!237 = !{!"branch_weights", i32 2196, i32 68336}
!238 = distinct !{!238, !239}
!239 = !{!"llvm.loop.mustprogress"}
!240 = !{!214, !214, i64 0}
!241 = !{!"branch_weights", i32 5766, i32 64767}
!242 = !{!243, !218, i64 48}
!243 = !{!"edge_def", !213, i64 0, !213, i64 8, !214, i64 16, !213, i64 24, !213, i64 32, !218, i64 40, !218, i64 44, !218, i64 48, !218, i64 52, !228, i64 56}
!244 = !{!"branch_weights", i32 64767, i32 1}
!245 = !{!243, !213, i64 8}
!246 = distinct !{!246, !239}
!247 = !{!"branch_weights", i32 155, i32 616089}
!248 = distinct !{!248, !239}
!249 = !{!"tree-outof-ssa.c:new_elim_graph"}
!250 = !{!220, !213, i64 8}
!251 = !{!220, !213, i64 64}
!252 = !{!220, !213, i64 72}
!253 = !{!220, !213, i64 80}
!254 = !{!220, !213, i64 16}
!255 = !{!220, !213, i64 24}
!256 = !{!220, !213, i64 40}
!257 = !{!220, !213, i64 32}
!258 = !{!"function_entry_count", i64 154060}
!259 = !{!"tree-outof-ssa.c:gimple_seq_empty_p"}
!260 = !{!"branch_weights", i32 91627, i32 62435}
!261 = !{!262, !213, i64 0}
!262 = !{!"gimple_seq_d", !213, i64 0, !213, i64 8, !213, i64 16}
!263 = !{!"tree-outof-ssa.c:phi_nodes"}
!264 = !{!227, !218, i64 96}
!265 = !{!"branch_weights", i32 154061, i32 1}
!266 = !{!"branch_weights", i32 1, i32 154061}
!267 = !{!268, !213, i64 8}
!268 = !{!"gimple_bb_info", !213, i64 0, !213, i64 8}
!269 = !{!"function_entry_count", i64 4392}
!270 = !{!"tree-outof-ssa.c:ei_start_1"}
!271 = !{!"function_entry_count", i64 72727}
!272 = !{!"tree-outof-ssa.c:ei_cond"}
!273 = !{!"branch_weights", i32 70532, i32 2197}
!274 = !{!"function_entry_count", i64 70531}
!275 = !{!"tree-outof-ssa.c:eliminate_phi"}
!276 = !{!"branch_weights", i32 70532, i32 1}
!277 = !{!220, !213, i64 56}
!278 = !{i32 0, i32 2}
!279 = !{!228, !228, i64 0}
!280 = distinct !{!280, !239}
!281 = distinct !{!281, !239}
!282 = !{!"branch_weights", i32 5765, i32 64767}
!283 = !{!"branch_weights", i32 64767, i32 0}
!284 = distinct !{!284, !239}
!285 = !{!"function_entry_count", i64 141062}
!286 = !{!"tree-outof-ssa.c:ei_next"}
!287 = !{!"branch_weights", i32 1, i32 141063}
!288 = !{!"branch_weights", i32 141063, i32 1}
!289 = !{!290, !218, i64 0}
!290 = !{!"", !218, i64 0, !213, i64 8}
!291 = !{!"function_entry_count", i64 2196}
!292 = !{!"tree-outof-ssa.c:set_phi_nodes"}
!293 = !{!"branch_weights", i32 2197, i32 1}
!294 = !{!"tree-outof-ssa.c:ei_safe_edge"}
!295 = !{!"function_entry_count", i64 4532}
!296 = !{!"tree-outof-ssa.c:single_pred_p"}
!297 = !{!227, !213, i64 0}
!298 = !{!"function_entry_count", i64 1908}
!299 = !{!"tree-outof-ssa.c:single_pred_edge"}
!300 = !{!"branch_weights", i32 1, i32 1909}
!301 = !{!"tree-outof-ssa.c:delete_elim_graph"}
!302 = !{!303, !213, i64 0}
!303 = !{!"simple_bitmap_def", !213, i64 0, !218, i64 8, !218, i64 12, !214, i64 16}
!304 = !{!212, !213, i64 16}
!305 = !{!212, !213, i64 8}
!306 = !{!"branch_weights", i32 1, i32 39}
!307 = !{!212, !213, i64 24}
!308 = !{!"branch_weights", i32 39, i32 1}
!309 = !{!"tree-outof-ssa.c:insert_backedge_copies"}
!310 = !{!227, !213, i64 16}
!311 = !{!"branch_weights", i32 47024, i32 107037}
!312 = !{!"branch_weights", i32 44737, i32 2288}
!313 = !{!"branch_weights", i32 1, i32 2287}
!314 = !{!"branch_weights", i32 70787, i32 1}
!315 = !{!243, !213, i64 0}
!316 = !{i64 0, i64 8, !221, i64 8, i64 8, !221, i64 16, i64 8, !221}
!317 = !{!"branch_weights", i32 68500, i32 2287}
!318 = distinct !{!318, !239}
!319 = !{!"branch_weights", i32 0, i32 47024}
!320 = distinct !{!320, !239}
!321 = distinct !{!321, !239}
!322 = !{!"tree-outof-ssa.c:eliminate_useless_phis"}
!323 = distinct !{!323, !239}
!324 = !{!"branch_weights", i32 2288, i32 1}
!325 = distinct !{!325, !239}
!326 = !{!"tree-outof-ssa.c:remove_ssa_form"}
!327 = !{!"branch_weights", i32 39, i32 1561}
!328 = !{!223, !213, i64 24}
!329 = !{!330, !213, i64 16}
!330 = !{!"gimple_df", !213, i64 0, !213, i64 8, !213, i64 16, !213, i64 24, !331, i64 32, !331, i64 48, !213, i64 64, !213, i64 72, !213, i64 80, !213, i64 88, !218, i64 96, !332, i64 104}
!331 = !{!"pt_solution", !218, i64 0, !218, i64 0, !218, i64 0, !218, i64 0, !218, i64 0, !218, i64 0, !213, i64 8}
!332 = !{!"ssa_operands", !213, i64 0, !218, i64 8, !218, i64 12, !214, i64 16, !213, i64 24, !213, i64 32}
!333 = !{!"branch_weights", i32 155, i32 1}
!334 = !{!"branch_weights", i32 162405, i32 264036}
!335 = !{!"branch_weights", i32 263960, i32 77}
!336 = !{!"branch_weights", i32 39, i32 39}
!337 = !{!"branch_weights", i32 1705605, i32 155}
!338 = distinct !{!338, !239}
!339 = !{!"function_entry_count", i64 152}
!340 = !{!"tree-outof-ssa.c:VEC_int_heap_alloc"}
!341 = !{!"tree-outof-ssa.c:VEC_tree_heap_alloc"}
!342 = !{!"function_entry_count", i64 76}
!343 = !{!"tree-outof-ssa.c:VEC_source_location_heap_alloc"}
!344 = !{!"function_entry_count", i64 145454}
!345 = !{!"tree-outof-ssa.c:ei_end_p"}
!346 = !{!"branch_weights", i32 1, i32 145455}
!347 = !{!"tree-outof-ssa.c:ei_edge"}
!348 = !{!"function_entry_count", i64 291048}
!349 = !{!"tree-outof-ssa.c:VEC_edge_base_length"}
!350 = !{!"branch_weights", i32 1, i32 291049}
!351 = !{!352, !218, i64 0}
!352 = !{!"VEC_edge_base", !218, i64 0, !218, i64 4, !214, i64 8}
!353 = !{!"function_entry_count", i64 855156}
!354 = !{!"tree-outof-ssa.c:ei_container"}
!355 = !{!"branch_weights", i32 1, i32 855157}
!356 = !{!"function_entry_count", i64 213756}
!357 = !{!"tree-outof-ssa.c:VEC_edge_base_index"}
!358 = !{!"function_entry_count", i64 632305}
!359 = !{!"tree-outof-ssa.c:VEC_tree_base_length"}
!360 = !{!"branch_weights", i32 1, i32 632306}
!361 = !{!362, !218, i64 0}
!362 = !{!"VEC_tree_base", !218, i64 0, !218, i64 4, !214, i64 8}
!363 = !{!"tree-outof-ssa.c:VEC_source_location_base_length"}
!364 = !{!"branch_weights", i32 1, i32 70532}
!365 = !{!366, !218, i64 0}
!366 = !{!"VEC_source_location_base", !218, i64 0, !218, i64 4, !214, i64 8}
!367 = !{!"tree-outof-ssa.c:eliminate_build"}
!368 = !{!"branch_weights", i32 70531, i32 1}
!369 = !{!"branch_weights", i32 1, i32 70787}
!370 = !{!243, !218, i64 44}
!371 = !{!"branch_weights", i32 64767, i32 6021}
!372 = !{!"branch_weights", i32 6021, i32 1}
!373 = !{!"branch_weights", i32 1, i32 6021}
!374 = !{!"branch_weights", i32 256, i32 70531}
!375 = distinct !{!375, !239}
!376 = !{!"tree-outof-ssa.c:elim_graph_size"}
!377 = !{!"tree-outof-ssa.c:VEC_int_base_truncate"}
!378 = !{!379, !218, i64 0}
!379 = !{!"VEC_int_base", !218, i64 0, !218, i64 4, !214, i64 8}
!380 = !{!"function_entry_count", i64 0}
!381 = !{!"tree-outof-ssa.c:VEC_int_base_iterate"}
!382 = !{!"tree-outof-ssa.c:elim_forward"}
!383 = distinct !{!383, !239}
!384 = !{!"tree-outof-ssa.c:VEC_int_base_length"}
!385 = !{!"function_entry_count", i64 64766}
!386 = !{!"tree-outof-ssa.c:VEC_int_base_pop"}
!387 = !{!"tree-outof-ssa.c:elim_create"}
!388 = distinct !{!388, !239}
!389 = !{!"tree-outof-ssa.c:VEC_tree_base_pop"}
!390 = !{!"tree-outof-ssa.c:VEC_source_location_base_pop"}
!391 = !{!"tree-outof-ssa.c:insert_value_copy_on_edge"}
!392 = !{!227, !218, i64 80}
!393 = !{!"branch_weights", i32 1, i32 64767}
!394 = !{!"branch_weights", i32 104, i32 64664}
!395 = !{!"tree-outof-ssa.c:clear_elim_graph"}
!396 = !{!"function_entry_count", i64 610044}
!397 = !{!"tree-outof-ssa.c:gsi_end_p"}
!398 = !{!399, !213, i64 0}
!399 = !{!"", !213, i64 0, !213, i64 8, !213, i64 16}
!400 = !{!"function_entry_count", i64 228769}
!401 = !{!"tree-outof-ssa.c:gsi_stmt"}
!402 = !{!403, !213, i64 0}
!403 = !{!"gimple_seq_node_d", !213, i64 0, !213, i64 8, !213, i64 16}
!404 = !{!"function_entry_count", i64 82902}
!405 = !{!"tree-outof-ssa.c:var_to_partition"}
!406 = !{!"branch_weights", i32 82903, i32 1}
!407 = !{!217, !213, i64 0}
!408 = !{!409, !218, i64 0}
!409 = !{!"partition_elem", !218, i64 0, !213, i64 8, !218, i64 16}
!410 = !{!217, !213, i64 8}
!411 = !{!"branch_weights", i32 1, i32 82903}
!412 = !{!"function_entry_count", i64 164832}
!413 = !{!"tree-outof-ssa.c:gimple_phi_result"}
!414 = !{!"function_entry_count", i64 141572}
!415 = !{!"tree-outof-ssa.c:get_use_from_ptr"}
!416 = !{!417, !213, i64 24}
!417 = !{!"ssa_use_operand_d", !213, i64 0, !213, i64 8, !214, i64 16, !213, i64 24}
!418 = !{!"function_entry_count", i64 70786}
!419 = !{!"tree-outof-ssa.c:gimple_phi_arg_imm_use_ptr"}
!420 = !{!"tree-outof-ssa.c:gimple_phi_arg_location_from_edge"}
!421 = !{!422, !218, i64 40}
!422 = !{!"phi_arg_d", !417, i64 0, !213, i64 32, !218, i64 40}
!423 = !{!"tree-outof-ssa.c:phi_ssa_name_p"}
!424 = !{!"tree-outof-ssa.c:VEC_int_heap_safe_push"}
!425 = !{!"tree-outof-ssa.c:VEC_tree_heap_safe_push"}
!426 = !{!"tree-outof-ssa.c:VEC_source_location_heap_safe_push"}
!427 = !{!"tree-outof-ssa.c:eliminate_name"}
!428 = !{!"tree-outof-ssa.c:elim_graph_add_edge"}
!429 = !{!"function_entry_count", i64 120096}
!430 = !{!"tree-outof-ssa.c:gsi_next"}
!431 = !{!403, !213, i64 16}
!432 = !{!"tree-outof-ssa.c:VEC_source_location_base_truncate"}
!433 = !{!"function_entry_count", i64 212358}
!434 = !{!"tree-outof-ssa.c:gimple_phi_arg"}
!435 = !{!"branch_weights", i32 1, i32 212359}
!436 = !{!"tree-outof-ssa.c:VEC_int_heap_reserve"}
!437 = !{!"tree-outof-ssa.c:VEC_int_base_quick_push"}
!438 = !{!"tree-outof-ssa.c:VEC_int_base_space"}
!439 = !{!379, !218, i64 4}
!440 = !{!"tree-outof-ssa.c:VEC_tree_heap_reserve"}
!441 = !{!"tree-outof-ssa.c:VEC_tree_base_quick_push"}
!442 = !{!"tree-outof-ssa.c:VEC_tree_base_space"}
!443 = !{!362, !218, i64 4}
!444 = !{!"tree-outof-ssa.c:VEC_source_location_heap_reserve"}
!445 = !{!"tree-outof-ssa.c:VEC_source_location_base_quick_push"}
!446 = !{!"tree-outof-ssa.c:VEC_source_location_base_space"}
!447 = !{!366, !218, i64 4}
!448 = !{!"tree-outof-ssa.c:elim_graph_add_node"}
!449 = distinct !{!449, !239}
!450 = !{!"tree-outof-ssa.c:SET_BIT"}
!451 = !{!"tree-outof-ssa.c:VEC_int_base_index"}
!452 = !{!"tree-outof-ssa.c:VEC_source_location_base_index"}
!453 = !{!"tree-outof-ssa.c:elim_unvisited_predecessor"}
!454 = distinct !{!454, !239}
!455 = !{!"tree-outof-ssa.c:partition_to_var"}
!456 = !{!217, !213, i64 16}
!457 = !{!"tree-outof-ssa.c:get_temp_reg"}
!458 = !{!"tree-outof-ssa.c:insert_part_to_rtx_on_edge"}
!459 = !{!"tree-outof-ssa.c:elim_backward"}
!460 = distinct !{!460, !239}
!461 = !{!"tree-outof-ssa.c:insert_rtx_to_part_on_edge"}
!462 = !{!"tree-outof-ssa.c:elim_graph_remove_succ_edge"}
!463 = distinct !{!463, !239}
!464 = !{!"tree-outof-ssa.c:insert_partition_copy_on_edge"}
!465 = !{!"function_entry_count", i64 491205}
!466 = !{!"tree-outof-ssa.c:VEC_tree_base_index"}
!467 = !{!"tree-outof-ssa.c:set_location_for_edge"}
!468 = !{!243, !218, i64 40}
!469 = !{!"branch_weights", i32 64622, i32 146}
!470 = !{!243, !213, i64 32}
!471 = !{!"branch_weights", i32 2624, i32 1}
!472 = !{!"branch_weights", i32 63938, i32 1}
!473 = !{!"branch_weights", i32 33, i32 63906}
!474 = !{!"branch_weights", i32 33, i32 1}
!475 = !{!"branch_weights", i32 61314, i32 2624}
!476 = distinct !{!476, !239}
!477 = !{!"branch_weights", i32 717, i32 1909}
!478 = !{!"branch_weights", i32 0, i32 -2147483648}
!479 = distinct !{!479, !239}
!480 = !{!"tree-outof-ssa.c:emit_partition_copy"}
!481 = !{!"function_entry_count", i64 66529}
!482 = !{!"tree-outof-ssa.c:gsi_last_bb"}
!483 = !{!399, !213, i64 8}
!484 = !{!399, !213, i64 16}
!485 = !{!"function_entry_count", i64 63937}
!486 = !{!"tree-outof-ssa.c:is_gimple_debug"}
!487 = !{i32 0, i32 256}
!488 = !{!"tree-outof-ssa.c:gimple_has_location"}
!489 = !{!"tree-outof-ssa.c:gimple_block"}
!490 = !{!"function_entry_count", i64 127842}
!491 = !{!"tree-outof-ssa.c:gimple_location"}
!492 = !{!"function_entry_count", i64 32}
!493 = !{!"tree-outof-ssa.c:gsi_prev"}
!494 = !{!403, !213, i64 8}
!495 = !{!"tree-outof-ssa.c:single_pred"}
!496 = !{!"tree-outof-ssa.c:bb_seq"}
!497 = !{!"branch_weights", i32 66530, i32 1}
!498 = !{!"branch_weights", i32 1, i32 66530}
!499 = !{!268, !213, i64 0}
!500 = !{!"tree-outof-ssa.c:gimple_seq_last"}
!501 = !{!262, !213, i64 8}
!502 = !{!"tree-outof-ssa.c:gimple_code"}
!503 = !{!"tree-outof-ssa.c:VEC_int_base_replace"}
!504 = !{!"tree-outof-ssa.c:VEC_source_location_base_replace"}
!505 = !{!"tree-outof-ssa.c:expand_expr"}
!506 = !{!"tree-outof-ssa.c:gimple_seq_first"}
!507 = !{!"tree-outof-ssa.c:gimple_bb"}
!508 = !{!"tree-outof-ssa.c:VEC_int_heap_free"}
!509 = !{!"branch_weights", i32 1, i32 153}
!510 = !{!"tree-outof-ssa.c:VEC_tree_heap_free"}
!511 = !{!"tree-outof-ssa.c:VEC_source_location_heap_free"}
!512 = !{!"branch_weights", i32 1, i32 77}
!513 = !{!"function_entry_count", i64 73073}
!514 = !{!"tree-outof-ssa.c:gimple_phi_num_args"}
!515 = !{!"tree-outof-ssa.c:gimple_phi_arg_def"}
!516 = !{!"tree-outof-ssa.c:gimple_phi_arg_edge"}
!517 = !{!"tree-outof-ssa.c:trivially_conflicts_p"}
!518 = distinct !{!518, !239}
!519 = !{!"tree-outof-ssa.c:make_ssa_name"}
!520 = !{!"tree-outof-ssa.c:gimple_assign_set_lhs"}
!521 = !{!"tree-outof-ssa.c:gimple_phi_arg_has_location"}
!522 = !{!"tree-outof-ssa.c:gimple_set_location"}
!523 = !{!"tree-outof-ssa.c:gimple_phi_arg_location"}
!524 = !{!"tree-outof-ssa.c:set_ssa_use_from_ptr"}
!525 = !{!"tree-outof-ssa.c:first_readonly_imm_use"}
!526 = !{!527, !213, i64 8}
!527 = !{!"immediate_use_iterator_d", !213, i64 0, !213, i64 8, !417, i64 16, !213, i64 48}
!528 = !{!417, !213, i64 8}
!529 = !{!527, !213, i64 0}
!530 = !{!"tree-outof-ssa.c:end_readonly_imm_use_p"}
!531 = !{!"tree-outof-ssa.c:maybe_renumber_stmts_bb"}
!532 = distinct !{!532, !239}
!533 = !{!"tree-outof-ssa.c:gimple_uid"}
!534 = !{!"tree-outof-ssa.c:next_readonly_imm_use"}
!535 = !{!"tree-outof-ssa.c:gsi_start_bb"}
!536 = !{!"tree-outof-ssa.c:gimple_set_uid"}
!537 = !{!"tree-outof-ssa.c:gimple_set_op"}
!538 = !{!"tree-outof-ssa.c:gimple_has_ops"}
!539 = !{!"tree-outof-ssa.c:gimple_num_ops"}
!540 = !{!"tree-outof-ssa.c:gimple_ops"}
!541 = !{!"tree-outof-ssa.c:gimple_statement_structure"}
!542 = !{!"tree-outof-ssa.c:gss_for_code"}
!543 = !{!"tree-outof-ssa.c:delink_imm_use"}
!544 = !{!417, !213, i64 0}
!545 = !{!"tree-outof-ssa.c:link_imm_use"}
!546 = !{!"tree-outof-ssa.c:link_imm_use_to_list"}
!547 = !{!"function_entry_count", i64 2287}
!548 = !{!"tree-outof-ssa.c:has_zero_uses"}
!549 = !{!"branch_weights", i32 1, i32 2288}
!550 = !{!"tree-outof-ssa.c:remove_gimple_phi_args"}
!551 = distinct !{!551, !239}
!552 = !{!"tree-outof-ssa.c:op_iter_init_phiuse"}
!553 = !{!554, !214, i64 0}
!554 = !{!"ssa_operand_iterator_d", !214, i64 0, !218, i64 4, !213, i64 8, !213, i64 16, !218, i64 24, !218, i64 28, !213, i64 32}
!555 = !{!554, !213, i64 32}
!556 = !{!554, !218, i64 28}
!557 = !{!554, !218, i64 4}
!558 = !{!"tree-outof-ssa.c:op_iter_done"}
!559 = !{!"tree-outof-ssa.c:op_iter_next_use"}
!560 = !{!554, !213, i64 16}
!561 = !{!562, !213, i64 0}
!562 = !{!"use_optype_d", !213, i64 0, !417, i64 8}
!563 = !{!554, !218, i64 24}
!564 = !{!"tree-outof-ssa.c:clear_and_done_ssa_iter"}
