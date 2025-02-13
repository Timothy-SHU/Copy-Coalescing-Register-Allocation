; ModuleID = 'mcf.c'
source_filename = "mcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.fixup_graph_d = type { i32, i32, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.fixup_edge_d = type { i32, i32, i32, i8, i32, i64, i64, i64, i64, i64 }
%struct.fixup_vertex_d = type { ptr }
%struct.VEC_fixup_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.augmenting_path_d = type { %struct.queue_d, ptr, ptr }
%struct.queue_d = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"\0AVertex transformation:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mcf.c\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0AReverse edges:\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0As'->S, T->t':\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0AD(v) balance:\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\0AAdjust supply and demand:\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"supply_value=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"demand_value=%ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\0ANormalize edges:\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\0AAnti-parallel edge:\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"New vertex is %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"------------------\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"After normalization:\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"After create_fixup_graph()\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"NULL fixup graph edge.\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"flow/capacity=%ld/\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"+oo,\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%ld,\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" rflow=+oo.\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" rflow=%ld,\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c" cost=%ld.\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\09(%d->%d)\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c" @VERTEX_SPLIT_EDGE\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" @REDIRECT_EDGE\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" @SOURCE_CONNECT_EDGE\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c" @SINK_CONNECT_EDGE\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c" @REVERSE_EDGE\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" @BALANCE_EDGE\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"  @NORMALIZED_EDGE\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c" @INVALID_EDGE\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ENTRY''\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"EXIT''\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"NEW_EXIT\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"NEW_ENTRY\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"\0ADump fixup graph for %s(): %s.\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [60 x i8] c"There are %d vertices and %d edges. new_exit_index is %d.\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"vertex_list[%d]: %d succ fixup edges.\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"(f) \00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"(b) \00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"After find_minimum_cost_flow()\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"\0ADump augmenting path:\0A\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"ENTRY  (path_capacity=%ld)\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Network flow is %ld.\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"After find_max_flow()\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"\0Acompute_residual_flow():\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"\0ANegative cycle length is %d:\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c": (%ld, %ld)\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Augment cycle with %ld\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"\0Aadjust_cfg_counts():\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"BB%d: %ld\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" + %ld(\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" - %ld(\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c" = %ld\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%d->%d: %ld\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"(self edge)\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c" = %ld\09(%.1f%%)\0A\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"\0ACheck %s() CFG flow conservation:\0A\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"BB%d(%ld)  **INVALID**: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [35 x i8] c"******** BB%d(%ld)  **INVALID**: \0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"in_edges=%ld \00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"out_edges=%ld\0A\00", align 1
@reltable.print_basic_block = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.print_basic_block to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.print_basic_block to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.print_basic_block to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.print_basic_block to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @sum_edge_counts(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  store ptr %0, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = call fastcc ptr @ei_start_1(ptr noundef nonnull %2) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !40
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !43
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #16, !range !44
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1, %23
  %10 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %13, align 4
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %9
  %20 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !48
  %22 = add nsw i64 %21, %10
  br label %23

23:                                               ; preds = %15, %19
  %24 = phi i64 [ %10, %15 ], [ %22, %19 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %25 = load i32, ptr %4, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %3) #16, !range !44
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %9, !llvm.loop !49

29:                                               ; preds = %23, %1
  %30 = phi i64 [ 0, %1 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i64 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #2 !prof !35 !PGOFuncName !51 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !35 !PGOFuncName !52 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !44
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !36
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !53 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !54
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !56 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !57 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !61 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !62 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mcf_smooth_cfg() local_unnamed_addr #0 !prof !35 {
  %1 = alloca %struct.fixup_graph_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  call fastcc void @create_fixup_graph(ptr noundef nonnull %1) #16
  call fastcc void @find_minimum_cost_flow(ptr noundef nonnull %1) #16
  call fastcc void @adjust_cfg_counts(ptr noundef nonnull %1) #16
  call fastcc void @delete_fixup_graph(ptr noundef nonnull %1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_fixup_graph(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !63 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = load ptr, ptr @cfun, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = shl nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = add i32 %11, %8
  %13 = add i32 %12, 2
  %14 = add i32 %13, %9
  %15 = shl nsw i32 %12, 3
  store i32 %8, ptr %0, align 8, !tbaa !69
  %16 = sext i32 %14 to i64
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 8) #17
  %18 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !71
  %19 = sext i32 %15 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 64) #17
  %21 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !72
  %22 = or disjoint i32 %9, 1
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @xcalloc(i64 noundef %23, i64 noundef 8) #17
  %25 = load ptr, ptr @cfun, align 8, !tbaa !36
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %1, %30
  %31 = phi ptr [ %38, %30 ], [ %28, %1 ]
  %32 = phi double [ %36, %30 ], [ 0.000000e+00, %1 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !73
  %35 = sitofp i64 %34 to double
  %36 = fadd double %32, %35
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !llvm.loop !75

40:                                               ; preds = %30, %1
  %41 = phi double [ 0.000000e+00, %1 ], [ %36, %30 ]
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !66
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %41, %44
  %46 = tail call fastcc double @mcf_sqrt(double noundef %45) #16
  %47 = fmul double %46, 5.000000e+01
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 24, i64 1, ptr nonnull %48)
  br label %52

52:                                               ; preds = %50, %40
  %53 = load ptr, ptr @cfun, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = load ptr, ptr %55, align 8, !tbaa !36
  %57 = icmp eq ptr %56, null
  br i1 %57, label %112, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %3, i64 8
  br label %60

60:                                               ; preds = %58, %108
  %61 = phi ptr [ %56, %58 ], [ %110, %108 ]
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !76
  %64 = shl nsw i32 %63, 1
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 8
  %66 = load i64, ptr %65, align 8, !tbaa !73
  %67 = add nsw i64 %66, 2
  %68 = sitofp i64 %67 to double
  %69 = tail call fastcc double @mcf_ln(double noundef %68) #16
  %70 = fdiv double %46, %69
  %71 = fptosi double %70 to i64
  %72 = or disjoint i32 %64, 1
  %73 = load i64, ptr %65, align 8, !tbaa !73
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %64, i32 noundef %72, i32 noundef 1, i64 noundef %73, i64 noundef %71, i64 noundef 9223372036854775807) #16
  %74 = load i32, ptr %0, align 8, !tbaa !69
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %0, align 8, !tbaa !69
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 1
  %77 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %76) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !40
  store ptr %77, ptr %59, align 8, !tbaa.struct !43
  %78 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %77, ptr noundef nonnull %2) #16, !range !44
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %60, %103
  %81 = load ptr, ptr %2, align 8, !tbaa !36
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i8, ptr %83, align 4
  %87 = and i8 %86, 4
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %85, %80
  %90 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !77
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !76
  %94 = shl nsw i32 %93, 1
  %95 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 9
  %96 = load i64, ptr %95, align 8, !tbaa !48
  %97 = add nsw i64 %96, 2
  %98 = sitofp i64 %97 to double
  %99 = tail call fastcc double @mcf_ln(double noundef %98) #16
  %100 = fdiv double %46, %99
  %101 = fptosi double %100 to i64
  %102 = load i64, ptr %95, align 8, !tbaa !48
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %72, i32 noundef %94, i32 noundef 2, i64 noundef %102, i64 noundef %101, i64 noundef 9223372036854775807) #16
  br label %103

103:                                              ; preds = %85, %89
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %104 = load i32, ptr %3, align 8
  %105 = load ptr, ptr %59, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %2) #16, !range !44
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %80, !llvm.loop !78

108:                                              ; preds = %103, %60
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !36
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %60, !llvm.loop !79

112:                                              ; preds = %108, %52
  %113 = load i32, ptr %0, align 8, !tbaa !69
  %114 = icmp eq i32 %113, %9
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 552, ptr noundef nonnull @.str.1) #17
  br label %116

116:                                              ; preds = %112, %115
  %117 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !80
  %119 = icmp sgt i32 %118, %12
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 554, ptr noundef nonnull @.str.1) #17
  %121 = load i32, ptr %117, align 4, !tbaa !80
  br label %122

122:                                              ; preds = %116, %120
  %123 = phi i32 [ %118, %116 ], [ %121, %120 ]
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load ptr, ptr %21, align 8, !tbaa !72
  %127 = zext nneg i32 %123 to i64
  br label %131

128:                                              ; preds = %131, %122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false), !tbaa !81
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %130 = icmp eq ptr %129, null
  br i1 %130, label %152, label %150

131:                                              ; preds = %125, %131
  %132 = phi i64 [ 0, %125 ], [ %148, %131 ]
  %133 = getelementptr inbounds %struct.fixup_edge_d, ptr %126, i64 %132
  %134 = getelementptr inbounds %struct.fixup_edge_d, ptr %126, i64 %132, i32 7
  %135 = load i64, ptr %134, align 8, !tbaa !82
  %136 = load i32, ptr %133, align 8, !tbaa !84
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, ptr %24, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !81
  %140 = add nsw i64 %139, %135
  store i64 %140, ptr %138, align 8, !tbaa !81
  %141 = load i64, ptr %134, align 8, !tbaa !82
  %142 = getelementptr inbounds %struct.fixup_edge_d, ptr %126, i64 %132, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !85
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, ptr %24, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !81
  %147 = sub nsw i64 %146, %141
  store i64 %147, ptr %145, align 8, !tbaa !81
  %148 = add nuw nsw i64 %132, 1
  %149 = icmp eq i64 %148, %127
  br i1 %149, label %128, label %131, !llvm.loop !86

150:                                              ; preds = %128
  %151 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 16, i64 1, ptr nonnull %129)
  br label %152

152:                                              ; preds = %150, %128
  br i1 %124, label %153, label %181

153:                                              ; preds = %152
  %154 = zext nneg i32 %123 to i64
  br label %155

155:                                              ; preds = %153, %178
  %156 = phi i64 [ 0, %153 ], [ %179, %178 ]
  %157 = load ptr, ptr %21, align 8, !tbaa !72
  %158 = getelementptr inbounds %struct.fixup_edge_d, ptr %157, i64 %156
  %159 = load i32, ptr %158, align 8, !tbaa !84
  switch i32 %159, label %160 [
    i32 0, label %178
    i32 2, label %178
  ]

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.fixup_edge_d, ptr %157, i64 %156, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !85
  %163 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %162, i32 noundef %159) #16
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.fixup_edge_d, ptr %157, i64 %156, i32 7
  %167 = load i64, ptr %166, align 8, !tbaa !82
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  %170 = add nsw i64 %167, 2
  %171 = sitofp i64 %170 to double
  %172 = tail call fastcc double @mcf_ln(double noundef %171) #16
  %173 = fdiv double %47, %172
  %174 = fptosi double %173 to i64
  %175 = load i32, ptr %161, align 4, !tbaa !85
  %176 = load i32, ptr %158, align 8, !tbaa !84
  %177 = load i64, ptr %166, align 8, !tbaa !82
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %175, i32 noundef %176, i32 noundef 3, i64 noundef 0, i64 noundef %174, i64 noundef %177) #16
  br label %178

178:                                              ; preds = %155, %155, %160, %165, %169
  %179 = add nuw nsw i64 %156, 1
  %180 = icmp eq i64 %179, %154
  br i1 %180, label %181, label %155, !llvm.loop !87

181:                                              ; preds = %178, %152
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr nonnull %182)
  br label %186

186:                                              ; preds = %184, %181
  %187 = load i32, ptr %0, align 8, !tbaa !69
  %188 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 2
  store i32 %187, ptr %188, align 8, !tbaa !88
  %189 = add nsw i32 %187, 1
  store i32 %189, ptr %0, align 8, !tbaa !69
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %187, i32 noundef 0, i32 noundef 4, i64 noundef 1, i64 noundef 0, i64 noundef 1) #16
  %190 = load i32, ptr %0, align 8, !tbaa !69
  %191 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 3
  store i32 %190, ptr %191, align 4, !tbaa !89
  %192 = add nsw i32 %190, 1
  store i32 %192, ptr %0, align 8, !tbaa !69
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %190, i32 noundef 5, i64 noundef 0, i64 noundef 0, i64 noundef 0) #16
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %186
  %196 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr nonnull %193)
  br label %197

197:                                              ; preds = %195, %186
  %198 = icmp sgt i32 %187, 4
  br i1 %198, label %199, label %223

199:                                              ; preds = %197, %217
  %200 = phi i64 [ %220, %217 ], [ 4, %197 ]
  %201 = phi i64 [ %219, %217 ], [ 1, %197 ]
  %202 = phi i64 [ %218, %217 ], [ 0, %197 ]
  %203 = getelementptr inbounds i64, ptr %24, i64 %200
  %204 = load i64, ptr %203, align 8, !tbaa !81
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = trunc i64 %200 to i32
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %207, i32 noundef %190, i32 noundef 6, i64 noundef 0, i64 noundef 0, i64 noundef %204) #16
  %208 = load i64, ptr %203, align 8, !tbaa !81
  %209 = add nsw i64 %208, %202
  br label %217

210:                                              ; preds = %199
  %211 = icmp slt i64 %204, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %210
  %213 = sub nsw i64 0, %204
  %214 = trunc i64 %200 to i32
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %187, i32 noundef %214, i32 noundef 6, i64 noundef 0, i64 noundef 0, i64 noundef %213) #16
  %215 = load i64, ptr %203, align 8, !tbaa !81
  %216 = sub nsw i64 %201, %215
  br label %217

217:                                              ; preds = %206, %212, %210
  %218 = phi i64 [ %209, %206 ], [ %202, %212 ], [ %202, %210 ]
  %219 = phi i64 [ %201, %206 ], [ %216, %212 ], [ %201, %210 ]
  %220 = add nuw i64 %200, 2
  %221 = trunc i64 %220 to i32
  %222 = icmp sgt i32 %187, %221
  br i1 %222, label %199, label %223, !llvm.loop !90

223:                                              ; preds = %217, %197
  %224 = phi i64 [ 0, %197 ], [ %218, %217 ]
  %225 = phi i64 [ 1, %197 ], [ %219, %217 ]
  %226 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %227 = icmp eq ptr %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %223
  %229 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 27, i64 1, ptr nonnull %226)
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %231 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.8, i64 noundef %225) #16
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.9, i64 noundef %224) #16
  br label %234

234:                                              ; preds = %228, %223
  %235 = icmp sgt i64 %224, %225
  br i1 %235, label %236, label %239

236:                                              ; preds = %234
  %237 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %187, i32 noundef 0) #16
  %238 = sub i64 %224, %225
  br label %242

239:                                              ; preds = %234
  %240 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %190) #16
  %241 = sub i64 %225, %224
  br label %242

242:                                              ; preds = %239, %236
  %243 = phi ptr [ %240, %239 ], [ %237, %236 ]
  %244 = phi i64 [ %241, %239 ], [ %238, %236 ]
  %245 = getelementptr inbounds %struct.fixup_edge_d, ptr %243, i64 0, i32 9
  %246 = load i64, ptr %245, align 8, !tbaa !91
  %247 = add nsw i64 %244, %246
  store i64 %247, ptr %245, align 8, !tbaa !91
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %242
  %251 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 18, i64 1, ptr nonnull %248)
  br label %252

252:                                              ; preds = %250, %242
  %253 = load i32, ptr %117, align 4, !tbaa !80
  %254 = load ptr, ptr %21, align 8, !tbaa !72
  %255 = icmp sgt i32 %253, 0
  br i1 %255, label %256, label %317

256:                                              ; preds = %252
  %257 = zext nneg i32 %253 to i64
  br label %258

258:                                              ; preds = %256, %314
  %259 = phi i64 [ 0, %256 ], [ %315, %314 ]
  %260 = getelementptr inbounds %struct.fixup_edge_d, ptr %254, i64 %259
  %261 = getelementptr inbounds %struct.fixup_edge_d, ptr %254, i64 %259, i32 1
  %262 = load i32, ptr %261, align 4, !tbaa !85
  %263 = load i32, ptr %260, align 8, !tbaa !84
  %264 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %262, i32 noundef %263) #16
  %265 = getelementptr inbounds %struct.fixup_edge_d, ptr %254, i64 %259, i32 2
  %266 = load i32, ptr %265, align 8, !tbaa !92
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %272, label %268

268:                                              ; preds = %258
  %269 = icmp eq i32 %266, 2
  %270 = icmp ne ptr %264, null
  %271 = select i1 %269, i1 %270, i1 false
  br i1 %271, label %274, label %314

272:                                              ; preds = %258
  %273 = icmp eq ptr %264, null
  br i1 %273, label %314, label %274

274:                                              ; preds = %268, %272
  %275 = load i32, ptr %0, align 8, !tbaa !69
  %276 = add nsw i32 %275, 1
  store i32 %276, ptr %0, align 8, !tbaa !69
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %278 = icmp eq ptr %277, null
  br i1 %278, label %288, label %279

279:                                              ; preds = %274
  %280 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 21, i64 1, ptr nonnull %277)
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !36
  tail call fastcc void @dump_fixup_edge(ptr noundef %281, ptr noundef nonnull %0, ptr noundef nonnull %260) #16
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !36
  tail call fastcc void @dump_fixup_edge(ptr noundef %282, ptr noundef nonnull %0, ptr noundef nonnull %264) #16
  %283 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef nonnull @.str.12, i32 noundef %275) #16
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %286 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %285)
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !36
  br label %288

288:                                              ; preds = %279, %274
  %289 = phi ptr [ %287, %279 ], [ null, %274 ]
  %290 = getelementptr inbounds %struct.fixup_edge_d, ptr %254, i64 %259, i32 8
  %291 = load i64, ptr %290, align 8, !tbaa !93
  %292 = sdiv i64 %291, 2
  store i64 %292, ptr %290, align 8, !tbaa !93
  %293 = getelementptr inbounds %struct.fixup_edge_d, ptr %254, i64 %259, i32 4
  store i32 %275, ptr %293, align 8, !tbaa !94
  %294 = icmp eq ptr %289, null
  br i1 %294, label %298, label %295

295:                                              ; preds = %288
  %296 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %289)
  %297 = load ptr, ptr @dump_file, align 8, !tbaa !36
  tail call fastcc void @dump_fixup_edge(ptr noundef %297, ptr noundef nonnull %0, ptr noundef nonnull %260) #16
  br label %298

298:                                              ; preds = %295, %288
  %299 = load i32, ptr %260, align 8, !tbaa !84
  %300 = getelementptr inbounds %struct.fixup_edge_d, ptr %264, i64 0, i32 8
  %301 = load i64, ptr %300, align 8, !tbaa !93
  %302 = getelementptr inbounds %struct.fixup_edge_d, ptr %264, i64 0, i32 9
  %303 = load i64, ptr %302, align 8, !tbaa !91
  tail call fastcc void @add_fixup_edge(ptr noundef nonnull %0, i32 noundef %275, i32 noundef %299, i32 noundef 8, i64 noundef 0, i64 noundef %301, i64 noundef %303) #16
  %304 = load i32, ptr %0, align 8, !tbaa !69
  %305 = icmp sgt i32 %304, %14
  br i1 %305, label %306, label %307

306:                                              ; preds = %298
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 689, ptr noundef nonnull @.str.1) #17
  br label %307

307:                                              ; preds = %298, %306
  %308 = getelementptr inbounds %struct.fixup_edge_d, ptr %264, i64 0, i32 1
  store i32 %275, ptr %308, align 4, !tbaa !85
  %309 = getelementptr inbounds %struct.fixup_edge_d, ptr %264, i64 0, i32 2
  store i32 8, ptr %309, align 8, !tbaa !92
  %310 = load <2 x i64>, ptr %290, align 8, !tbaa !81
  store <2 x i64> %310, ptr %300, align 8, !tbaa !81
  %311 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %307
  tail call fastcc void @dump_fixup_edge(ptr noundef nonnull %311, ptr noundef nonnull %0, ptr noundef nonnull %264) #16
  br label %314

314:                                              ; preds = %268, %272, %313, %307
  %315 = add nuw nsw i64 %259, 1
  %316 = icmp eq i64 %315, %257
  br i1 %316, label %317, label %258, !llvm.loop !95

317:                                              ; preds = %314, %252
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %319 = icmp eq ptr %318, null
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  tail call fastcc void @dump_fixup_graph(ptr noundef nonnull %318, ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #16
  br label %321

321:                                              ; preds = %320, %317
  tail call void @free(ptr noundef %24) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_minimum_cost_flow(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !96 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1334, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i32, ptr %0, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !88
  tail call fastcc void @find_max_flow(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %7) #16
  %10 = sext i32 %5 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 4) #17
  %12 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #17
  %13 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 4) #17
  %14 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %19, %4
  %16 = phi i32 [ 0, %4 ], [ %20, %19 ]
  %17 = tail call fastcc zeroext i8 @cancel_negative_cycle(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %12, ptr noundef %13) #16, !range !44
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %16, 1
  %21 = load i32, ptr %0, align 8, !tbaa !69
  %22 = load i32, ptr %14, align 4, !tbaa !80
  %23 = mul nsw i32 %22, %21
  %24 = sdiv i32 1000000, %23
  %25 = add nsw i32 %24, 10
  %26 = icmp slt i32 %16, %25
  br i1 %26, label %15, label %27, !llvm.loop !97

27:                                               ; preds = %19, %15
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call fastcc void @dump_fixup_graph(ptr noundef nonnull %28, ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #16
  br label %31

31:                                               ; preds = %30, %27
  tail call void @free(ptr noundef %11) #16
  tail call void @free(ptr noundef %12) #16
  tail call void @free(ptr noundef %13) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_cfg_counts(ptr noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !98 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1126, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 22, i64 1, ptr nonnull %7)
  br label %11

11:                                               ; preds = %9, %6
  %12 = load ptr, ptr @cfun, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %213, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds i8, ptr %3, i64 8
  br label %21

21:                                               ; preds = %19, %202
  %22 = phi ptr [ %15, %19 ], [ %204, %202 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !76
  %25 = shl nsw i32 %24, 1
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !73
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.61, i32 noundef %24, i64 noundef %30) #16
  br label %32

32:                                               ; preds = %28, %21
  %33 = or disjoint i32 %25, 1
  %34 = tail call fastcc ptr @find_fixup_edge(ptr noundef %0, i32 noundef %25, i32 noundef %33) #16
  %35 = getelementptr inbounds %struct.fixup_edge_d, ptr %34, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !100
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !73
  %41 = add nsw i64 %40, %36
  store i64 %41, ptr %39, align 8, !tbaa !73
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.62, i64 noundef %36) #16
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !36
  tail call fastcc void @print_edge(ptr noundef %46, ptr noundef %0, i32 noundef %25, i32 noundef %33) #16
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %48 = tail call i32 @fputc(i32 41, ptr %47)
  br label %49

49:                                               ; preds = %38, %44, %32
  %50 = getelementptr inbounds %struct.fixup_edge_d, ptr %34, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !94
  %52 = tail call fastcc ptr @find_fixup_edge(ptr noundef %0, i32 noundef %33, i32 noundef %51) #16
  %53 = load i32, ptr %50, align 8, !tbaa !94
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.fixup_edge_d, ptr %52, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !100
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 8
  %61 = load i64, ptr %60, align 8, !tbaa !73
  %62 = sub nsw i64 %61, %57
  store i64 %62, ptr %60, align 8, !tbaa !73
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.64, i64 noundef %57) #16
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %68 = load i32, ptr %50, align 8, !tbaa !94
  tail call fastcc void @print_edge(ptr noundef %67, ptr noundef %0, i32 noundef %33, i32 noundef %68) #16
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %70 = tail call i32 @fputc(i32 41, ptr %69)
  br label %71

71:                                               ; preds = %65, %55, %49
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 8
  %76 = load i64, ptr %75, align 8, !tbaa !73
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %72, ptr noundef nonnull @.str.65, i64 noundef %76) #16
  br label %78

78:                                               ; preds = %59, %74, %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 1
  %80 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %79) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !40
  store ptr %80, ptr %20, align 8, !tbaa.struct !43
  %81 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %80, ptr noundef nonnull %2) #16, !range !44
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %202, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 8
  br label %85

85:                                               ; preds = %83, %197
  %86 = load ptr, ptr %2, align 8, !tbaa !36
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !45
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i8, ptr %88, align 4
  %92 = and i8 %91, 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %197

94:                                               ; preds = %90, %85
  %95 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !77
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !76
  %99 = shl nsw i32 %98, 1
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %94
  %103 = load i32, ptr %23, align 8, !tbaa !76
  %104 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 9
  %105 = load i64, ptr %104, align 8, !tbaa !48
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.66, i32 noundef %103, i32 noundef %98, i64 noundef %105) #16
  br label %107

107:                                              ; preds = %102, %94
  %108 = tail call fastcc ptr @find_fixup_edge(ptr noundef %0, i32 noundef %33, i32 noundef %99) #16
  %109 = load i32, ptr %23, align 8, !tbaa !76
  %110 = load ptr, ptr %95, align 8, !tbaa !77
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !76
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %147, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.fixup_edge_d, ptr %108, i64 0, i32 5
  %116 = load i64, ptr %115, align 8, !tbaa !100
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 9
  %120 = load i64, ptr %119, align 8, !tbaa !48
  %121 = add nsw i64 %120, %116
  store i64 %121, ptr %119, align 8, !tbaa !48
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %122, ptr noundef nonnull @.str.62, i64 noundef %116) #16
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !36
  tail call fastcc void @print_edge(ptr noundef %126, ptr noundef %0, i32 noundef %33, i32 noundef %99) #16
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %128 = tail call i32 @fputc(i32 41, ptr %127)
  br label %129

129:                                              ; preds = %118, %124, %114
  %130 = getelementptr inbounds %struct.fixup_edge_d, ptr %108, i64 0, i32 4
  %131 = load i32, ptr %130, align 8, !tbaa !94
  %132 = tail call fastcc ptr @find_fixup_edge(ptr noundef %0, i32 noundef %99, i32 noundef %131) #16
  %133 = load i32, ptr %130, align 8, !tbaa !94
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %173, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.fixup_edge_d, ptr %132, i64 0, i32 5
  %137 = load i64, ptr %136, align 8, !tbaa !100
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %173, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 9
  %141 = load i64, ptr %140, align 8, !tbaa !48
  %142 = sub nsw i64 %141, %137
  store i64 %142, ptr %140, align 8, !tbaa !48
  %143 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %144 = icmp eq ptr %143, null
  br i1 %144, label %173, label %145

145:                                              ; preds = %139
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %143, ptr noundef nonnull @.str.64, i64 noundef %137) #16
  br label %166

147:                                              ; preds = %107
  %148 = tail call fastcc ptr @find_fixup_edge(ptr noundef %0, i32 noundef %99, i32 noundef %33) #16
  %149 = getelementptr inbounds %struct.fixup_edge_d, ptr %148, i64 0, i32 4
  %150 = load i32, ptr %149, align 8, !tbaa !94
  %151 = tail call fastcc ptr @find_fixup_edge(ptr noundef %0, i32 noundef %33, i32 noundef %150) #16
  %152 = getelementptr inbounds %struct.fixup_edge_d, ptr %151, i64 0, i32 5
  %153 = load i64, ptr %152, align 8, !tbaa !100
  %154 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 9
  %155 = load i64, ptr %154, align 8, !tbaa !48
  %156 = add nsw i64 %155, %153
  store i64 %156, ptr %154, align 8, !tbaa !48
  %157 = load i64, ptr %84, align 8, !tbaa !73
  %158 = add nsw i64 %157, %153
  store i64 %158, ptr %84, align 8, !tbaa !73
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %160 = icmp eq ptr %159, null
  br i1 %160, label %175, label %161

161:                                              ; preds = %147
  %162 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 11, i64 1, ptr nonnull %159)
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %164 = load i64, ptr %152, align 8, !tbaa !100
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.62, i64 noundef %164) #16
  br label %166

166:                                              ; preds = %161, %145
  %167 = phi ptr [ %130, %145 ], [ %149, %161 ]
  %168 = phi i32 [ %99, %145 ], [ %33, %161 ]
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %170 = load i32, ptr %167, align 8, !tbaa !94
  tail call fastcc void @print_edge(ptr noundef %169, ptr noundef %0, i32 noundef %168, i32 noundef %170) #16
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %172 = tail call i32 @fputc(i32 41, ptr %171)
  br label %173

173:                                              ; preds = %166, %139, %135, %129
  %174 = load i64, ptr %84, align 8, !tbaa !73
  br label %175

175:                                              ; preds = %173, %147
  %176 = phi i64 [ %174, %173 ], [ %158, %147 ]
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 9
  %180 = load i64, ptr %179, align 8, !tbaa !48
  %181 = mul nsw i64 %180, 10000
  %182 = sdiv i64 %181, %176
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 8
  store i32 %183, ptr %184, align 4, !tbaa !101
  br label %185

185:                                              ; preds = %178, %175
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %187 = icmp eq ptr %186, null
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 9
  %190 = load i64, ptr %189, align 8, !tbaa !48
  %191 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 8
  %192 = load i32, ptr %191, align 4, !tbaa !101
  %193 = sitofp i32 %192 to double
  %194 = fmul double %193, 1.000000e+02
  %195 = fdiv double %194, 1.000000e+04
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %186, ptr noundef nonnull @.str.68, i64 noundef %190, double noundef %195) #16
  br label %197

197:                                              ; preds = %185, %188, %90
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %198 = load i32, ptr %3, align 8
  %199 = load ptr, ptr %20, align 8
  %200 = call fastcc zeroext i8 @ei_cond(i32 %198, ptr %199, ptr noundef nonnull %2) #16, !range !44
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %85, !llvm.loop !102

202:                                              ; preds = %197, %78
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %204 = load ptr, ptr %203, align 8, !tbaa !36
  %205 = load ptr, ptr @cfun, align 8, !tbaa !36
  %206 = getelementptr inbounds %struct.function, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !64
  %208 = getelementptr inbounds %struct.control_flow_graph, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !99
  %210 = icmp eq ptr %204, %209
  br i1 %210, label %211, label %21, !llvm.loop !103

211:                                              ; preds = %202
  %212 = load ptr, ptr %207, align 8, !tbaa !104
  br label %213

213:                                              ; preds = %211, %11
  %214 = phi ptr [ %15, %11 ], [ %212, %211 ]
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !105
  %217 = tail call i64 @sum_edge_counts(ptr noundef %216) #16
  %218 = load ptr, ptr @cfun, align 8, !tbaa !36
  %219 = getelementptr inbounds %struct.function, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !64
  %221 = load ptr, ptr %220, align 8, !tbaa !104
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %221, i64 0, i32 8
  store i64 %217, ptr %222, align 8, !tbaa !73
  %223 = getelementptr inbounds %struct.control_flow_graph, ptr %220, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !99
  %225 = load ptr, ptr %224, align 8, !tbaa !106
  %226 = tail call i64 @sum_edge_counts(ptr noundef %225) #16
  %227 = load ptr, ptr @cfun, align 8, !tbaa !36
  %228 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !64
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !99
  %232 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 8
  store i64 %226, ptr %232, align 8, !tbaa !73
  %233 = load ptr, ptr %229, align 8, !tbaa !36
  %234 = icmp eq ptr %233, null
  br i1 %234, label %312, label %235

235:                                              ; preds = %213
  %236 = getelementptr inbounds i8, ptr %3, i64 8
  br label %237

237:                                              ; preds = %235, %308
  %238 = phi ptr [ %233, %235 ], [ %310, %308 ]
  %239 = getelementptr inbounds %struct.basic_block_def, ptr %238, i64 0, i32 8
  %240 = load i64, ptr %239, align 8, !tbaa !73
  %241 = icmp eq i64 %240, 0
  %242 = getelementptr inbounds %struct.basic_block_def, ptr %238, i64 0, i32 1
  %243 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %242) #16
  store i32 0, ptr %3, align 8
  store ptr %243, ptr %236, align 8
  %244 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %243, ptr noundef nonnull %2) #16, !range !44
  %245 = icmp eq i8 %244, 0
  br i1 %241, label %260, label %246

246:                                              ; preds = %237
  br i1 %245, label %308, label %247

247:                                              ; preds = %246, %247
  %248 = load ptr, ptr %2, align 8, !tbaa !36
  %249 = getelementptr inbounds %struct.edge_def, ptr %248, i64 0, i32 9
  %250 = load i64, ptr %249, align 8, !tbaa !48
  %251 = mul nsw i64 %250, 10000
  %252 = load i64, ptr %239, align 8, !tbaa !73
  %253 = sdiv i64 %251, %252
  %254 = trunc i64 %253 to i32
  %255 = getelementptr inbounds %struct.edge_def, ptr %248, i64 0, i32 8
  store i32 %254, ptr %255, align 4, !tbaa !101
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %256 = load i32, ptr %3, align 8
  %257 = load ptr, ptr %236, align 8
  %258 = call fastcc zeroext i8 @ei_cond(i32 %256, ptr %257, ptr noundef nonnull %2) #16, !range !44
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %308, label %247, !llvm.loop !107

260:                                              ; preds = %237
  br i1 %245, label %294, label %261

261:                                              ; preds = %260, %261
  %262 = phi i32 [ %269, %261 ], [ 0, %260 ]
  %263 = load ptr, ptr %2, align 8, !tbaa !36
  %264 = getelementptr inbounds %struct.edge_def, ptr %263, i64 0, i32 7
  %265 = load i32, ptr %264, align 8, !tbaa !108
  %266 = and i32 %265, 30
  %267 = icmp eq i32 %266, 0
  %268 = zext i1 %267 to i32
  %269 = add nuw nsw i32 %262, %268
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %270 = load i32, ptr %3, align 8
  %271 = load ptr, ptr %236, align 8
  %272 = call fastcc zeroext i8 @ei_cond(i32 %270, ptr %271, ptr noundef nonnull %2) #16, !range !44
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %261, !llvm.loop !109

274:                                              ; preds = %261
  %275 = icmp eq i32 %269, 0
  br i1 %275, label %294, label %276

276:                                              ; preds = %274
  store i32 0, ptr %3, align 8, !tbaa.struct !40
  store ptr %243, ptr %236, align 8, !tbaa.struct !43
  %277 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %243, ptr noundef nonnull %2) #16, !range !44
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %308, label %279

279:                                              ; preds = %276, %287
  %280 = load ptr, ptr %2, align 8, !tbaa !36
  %281 = getelementptr inbounds %struct.edge_def, ptr %280, i64 0, i32 7
  %282 = load i32, ptr %281, align 8, !tbaa !108
  %283 = and i32 %282, 30
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %279
  %286 = udiv i32 10000, %269
  br label %287

287:                                              ; preds = %279, %285
  %288 = phi i32 [ %286, %285 ], [ 0, %279 ]
  %289 = getelementptr inbounds %struct.edge_def, ptr %280, i64 0, i32 8
  store i32 %288, ptr %289, align 4
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %290 = load i32, ptr %3, align 8
  %291 = load ptr, ptr %236, align 8
  %292 = call fastcc zeroext i8 @ei_cond(i32 %290, ptr %291, ptr noundef nonnull %2) #16, !range !44
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %308, label %279, !llvm.loop !110

294:                                              ; preds = %260, %274
  %295 = load ptr, ptr %242, align 8, !tbaa !105
  %296 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %295) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !40
  store ptr %243, ptr %236, align 8, !tbaa.struct !43
  %297 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %243, ptr noundef nonnull %2) #16, !range !44
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %308, label %299

299:                                              ; preds = %294
  %300 = sdiv i32 10000, %296
  br label %301

301:                                              ; preds = %299, %301
  %302 = load ptr, ptr %2, align 8, !tbaa !36
  %303 = getelementptr inbounds %struct.edge_def, ptr %302, i64 0, i32 8
  store i32 %300, ptr %303, align 4, !tbaa !101
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %304 = load i32, ptr %3, align 8
  %305 = load ptr, ptr %236, align 8
  %306 = call fastcc zeroext i8 @ei_cond(i32 %304, ptr %305, ptr noundef nonnull %2) #16, !range !44
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %301, !llvm.loop !111

308:                                              ; preds = %247, %287, %301, %246, %276, %294
  %309 = getelementptr inbounds %struct.basic_block_def, ptr %238, i64 0, i32 6
  %310 = load ptr, ptr %309, align 8, !tbaa !36
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %237, !llvm.loop !112

312:                                              ; preds = %308, %213
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %314 = icmp eq ptr %313, null
  br i1 %314, label %370, label %315

315:                                              ; preds = %312
  %316 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !113
  %317 = load ptr, ptr @current_function_decl, align 8, !tbaa !36
  %318 = tail call ptr %316(ptr noundef %317, i32 noundef 2) #17
  %319 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %313, ptr noundef nonnull @.str.69, ptr noundef %318) #16
  %320 = load ptr, ptr @cfun, align 8, !tbaa !36
  %321 = getelementptr inbounds %struct.function, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !64
  %323 = load ptr, ptr %322, align 8, !tbaa !104
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 6
  %325 = load ptr, ptr %324, align 8, !tbaa !121
  %326 = getelementptr inbounds %struct.control_flow_graph, ptr %322, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !99
  %328 = icmp eq ptr %325, %327
  br i1 %328, label %370, label %329

329:                                              ; preds = %315, %361
  %330 = phi ptr [ %363, %361 ], [ %325, %315 ]
  %331 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 8
  %332 = load i64, ptr %331, align 8, !tbaa !73
  %333 = load ptr, ptr %330, align 8, !tbaa !106
  %334 = tail call i64 @sum_edge_counts(ptr noundef %333) #16
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = load i64, ptr %331, align 8, !tbaa !73
  %338 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !105
  %340 = tail call i64 @sum_edge_counts(ptr noundef %339) #16
  %341 = icmp eq i64 %337, %340
  br i1 %341, label %361, label %342

342:                                              ; preds = %336, %329
  %343 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 9
  %345 = load i32, ptr %344, align 8, !tbaa !76
  %346 = load i64, ptr %331, align 8, !tbaa !73
  %347 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef nonnull @.str.70, i32 noundef %345, i64 noundef %346) #16
  %348 = load ptr, ptr @stderr, align 8, !tbaa !36
  %349 = load i32, ptr %344, align 8, !tbaa !76
  %350 = load i64, ptr %331, align 8, !tbaa !73
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %348, ptr noundef nonnull @.str.71, i32 noundef %349, i64 noundef %350) #18
  %352 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %353 = load ptr, ptr %330, align 8, !tbaa !106
  %354 = tail call i64 @sum_edge_counts(ptr noundef %353) #16
  %355 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.72, i64 noundef %354) #16
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %357 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !105
  %359 = tail call i64 @sum_edge_counts(ptr noundef %358) #16
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %356, ptr noundef nonnull @.str.73, i64 noundef %359) #16
  br label %361

361:                                              ; preds = %336, %342
  %362 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !121
  %364 = load ptr, ptr @cfun, align 8, !tbaa !36
  %365 = getelementptr inbounds %struct.function, ptr %364, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !64
  %367 = getelementptr inbounds %struct.control_flow_graph, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !99
  %369 = icmp eq ptr %363, %368
  br i1 %369, label %370, label %329, !llvm.loop !122

370:                                              ; preds = %361, %315, %312
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_fixup_graph(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !123 {
  %2 = load i32, ptr %0, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %1 ]
  tail call fastcc void @VEC_fixup_edge_p_heap_free(ptr noundef %7) #16
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.fixup_vertex_d, ptr %7, i64 1
  %11 = icmp eq i32 %9, %2
  br i1 %11, label %12, label %6, !llvm.loop !124

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !tbaa !71
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ %4, %1 ]
  tail call void @free(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  tail call void @free(ptr noundef %17) #16
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @mcf_sqrt(double noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !125 {
  %2 = fcmp ult double %0, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 356, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = fptrunc double %0 to float
  %6 = bitcast float %5 to i32
  %7 = ashr i32 %6, 1
  %8 = add nsw i32 %7, 532477952
  %9 = sub nsw i32 1597463007, %7
  %10 = bitcast i32 %8 to float
  %11 = fpext float %10 to double
  %12 = bitcast i32 %9 to float
  %13 = fpext float %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %0, double %13, double %11)
  %15 = fmul double %14, 5.000000e-01
  ret double %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @mcf_ln(double noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !126 {
  %2 = fcmp ult double %0, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = fcmp ogt double %0, 2.718280e+00
  br i1 %5, label %6, label %14

6:                                                ; preds = %4, %6
  %7 = phi double [ %9, %6 ], [ 2.718280e+00, %4 ]
  %8 = phi i32 [ %10, %6 ], [ 1, %4 ]
  %9 = fmul double %7, 2.718280e+00
  %10 = add nuw nsw i32 %8, 1
  %11 = fcmp olt double %9, %0
  br i1 %11, label %6, label %12, !llvm.loop !127

12:                                               ; preds = %6
  %13 = sitofp i32 %10 to double
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi double [ 1.000000e+00, %4 ], [ %13, %12 ]
  ret double %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_fixup_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 !prof !35 !PGOFuncName !128 {
  %8 = tail call fastcc ptr @add_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %5) #16
  %9 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 0, i32 2
  store i32 %3, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 0, i32 7
  store i64 %4, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 0, i32 9
  store i64 %6, ptr %11, align 8, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_fixup_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !129 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = load i32, ptr %0, align 8, !tbaa !69
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 427, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.fixup_vertex_d, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #16, !range !132
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %20

16:                                               ; preds = %20
  %17 = add nuw nsw i32 %21, 1
  %18 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(ptr noundef %13, i32 noundef %17, ptr noundef nonnull %4) #16, !range !132
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !llvm.loop !133

20:                                               ; preds = %8, %16
  %21 = phi i32 [ %17, %16 ], [ 0, %8 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.fixup_edge_d, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !85
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %16

26:                                               ; preds = %20, %16, %8
  %27 = phi ptr [ null, %8 ], [ null, %16 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %27
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_fixup_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #7 !prof !35 !PGOFuncName !134 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !85
  tail call fastcc void @print_edge(ptr noundef %0, ptr noundef %1, i32 noundef %6, i32 noundef %8) #16
  %9 = tail call i32 @fputs(ptr noundef nonnull @.str.17, ptr noundef %0) #16
  %10 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !100
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef %15) #16
  %17 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 9
  %18 = load i64, ptr %17, align 8, !tbaa !91
  %19 = icmp eq i64 %18, 9223372036854775807
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = tail call i32 @fputs(ptr noundef nonnull @.str.19, ptr noundef %0) #16
  br label %24

22:                                               ; preds = %13
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef %18) #16
  br label %24

24:                                               ; preds = %20, %22, %5
  %25 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 3
  %26 = load i8, ptr %25, align 4, !tbaa !135
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 6
  %30 = load i64, ptr %29, align 8, !tbaa !136
  %31 = icmp eq i64 %30, 9223372036854775807
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 @fputs(ptr noundef nonnull @.str.21, ptr noundef %0) #16
  br label %36

34:                                               ; preds = %28
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %30) #16
  br label %36

36:                                               ; preds = %32, %34, %24
  %37 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !93
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef %38) #16
  %40 = load i32, ptr %2, align 8, !tbaa !84
  %41 = load i32, ptr %7, align 4, !tbaa !85
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %40, i32 noundef %41) #16
  %43 = load i32, ptr %10, align 8, !tbaa !92
  switch i32 %43, label %50 [
    i32 0, label %54
    i32 1, label %51
    i32 2, label %44
    i32 4, label %45
    i32 5, label %46
    i32 3, label %47
    i32 6, label %48
    i32 7, label %49
    i32 8, label %49
  ]

44:                                               ; preds = %36
  br label %51

45:                                               ; preds = %36
  br label %51

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %51

48:                                               ; preds = %36
  br label %51

49:                                               ; preds = %36, %36
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %36, %50, %49, %48, %47, %46, %45, %44
  %52 = phi ptr [ @.str.26, %44 ], [ @.str.27, %45 ], [ @.str.28, %46 ], [ @.str.29, %47 ], [ @.str.30, %48 ], [ @.str.31, %49 ], [ @.str.32, %50 ], [ @.str.25, %36 ]
  %53 = tail call i32 @fputs(ptr noundef nonnull %52, ptr noundef %0) #16
  br label %54

54:                                               ; preds = %36, %51, %3
  %55 = phi ptr [ @.str.16, %3 ], [ @.str.33, %51 ], [ @.str.33, %36 ]
  %56 = tail call i32 @fputs(ptr noundef nonnull %55, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_fixup_graph(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !137 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = load i32, ptr %1, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !113
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !36
  %15 = tail call ptr %13(ptr noundef %14, i32 noundef 2) #17
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %15, ptr noundef %2) #16
  %17 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !89
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %10, i32 noundef %12, i32 noundef %18) #16
  %20 = icmp sgt i32 %10, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %7
  %22 = zext nneg i32 %10 to i64
  br label %23

23:                                               ; preds = %21, %51
  %24 = phi i64 [ 0, %21 ], [ %52, %51 ]
  %25 = getelementptr inbounds %struct.fixup_vertex_d, ptr %9, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !130
  %27 = tail call fastcc i32 @VEC_fixup_edge_p_base_length(ptr noundef %26) #16
  %28 = trunc i64 %24 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %28, i32 noundef %27) #16
  %30 = load ptr, ptr %25, align 8, !tbaa !130
  %31 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %4) #16, !range !132
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %23, %46
  %34 = phi i32 [ %47, %46 ], [ 0, %23 ]
  %35 = load ptr, ptr %4, align 8, !tbaa !36
  %36 = getelementptr inbounds %struct.fixup_edge_d, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !92
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.fixup_edge_d, ptr %35, i64 0, i32 3
  %41 = load i8, ptr %40, align 4, !tbaa !135
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39, %33
  %44 = phi ptr [ @.str.47, %33 ], [ @.str.48, %39 ]
  %45 = tail call i32 @fputs(ptr noundef nonnull %44, ptr noundef %0) #16
  br label %46

46:                                               ; preds = %43, %39
  tail call fastcc void @dump_fixup_edge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %35) #16
  %47 = add nuw nsw i32 %34, 1
  %48 = load ptr, ptr %25, align 8, !tbaa !130
  %49 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(ptr noundef %48, i32 noundef %47, ptr noundef nonnull %4) #16, !range !132
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %33, !llvm.loop !138

51:                                               ; preds = %46, %23
  %52 = add nuw nsw i64 %24, 1
  %53 = icmp eq i64 %52, %22
  br i1 %53, label %54, label %23, !llvm.loop !139

54:                                               ; preds = %51, %7
  %55 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @add_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !140 {
  %5 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 %11
  store i32 %1, ptr %12, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 %11, i32 1
  store i32 %2, ptr %13, align 4, !tbaa !85
  %14 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 %11, i32 8
  store i64 %3, ptr %14, align 8, !tbaa !93
  %15 = add nsw i32 %10, 1
  store i32 %15, ptr %9, align 4, !tbaa !80
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  tail call fastcc void @dump_fixup_edge(ptr noundef nonnull %16, ptr noundef nonnull %0, ptr noundef nonnull %12) #16
  br label %19

19:                                               ; preds = %18, %4
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.fixup_vertex_d, ptr %6, i64 %20
  tail call fastcc void @VEC_fixup_edge_p_heap_safe_push(ptr noundef %21, ptr noundef nonnull %12) #16
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_fixup_edge_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !141 {
  tail call fastcc void @VEC_fixup_edge_p_heap_reserve(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_fixup_edge_p_base_quick_push(ptr noundef %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_fixup_edge_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !142 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_fixup_edge_p_base_space(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_fixup_edge_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !35 !PGOFuncName !143 {
  %3 = load i32, ptr %0, align 8, !tbaa !144
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !144
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fixup_edge_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !146 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !147
  %6 = load i32, ptr %0, align 8, !tbaa !144
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
define internal fastcc noundef i32 @VEC_fixup_edge_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !35 !PGOFuncName !148 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !144
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 !prof !35 !PGOFuncName !149 {
  tail call fastcc void @print_basic_block(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.34, ptr noundef %0) #16
  tail call fastcc void @print_basic_block(ptr noundef %0, ptr noundef %1, i32 noundef %3) #16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_basic_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !prof !35 !PGOFuncName !150 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = sdiv i32 %2, 2
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %14) #16
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @.str.43, ptr @.str.42
  br label %23

19:                                               ; preds = %3
  %20 = zext nneg i32 %2 to i64
  %21 = shl i64 %20, 2
  %22 = call ptr @llvm.load.relative.i64(ptr @reltable.print_basic_block, i64 %21)
  br label %23

23:                                               ; preds = %19, %13, %9, %5
  %24 = phi ptr [ @.str.39, %5 ], [ @.str.40, %9 ], [ %18, %13 ], [ %22, %19 ]
  %25 = tail call i32 @fputs(ptr noundef nonnull %24, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fixup_edge_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !151 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !144
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_max_flow(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !152 {
  %4 = alloca %struct.augmenting_path_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1040, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !80
  %10 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = zext nneg i32 %9 to i64
  %15 = add nuw nsw i64 %14, 1
  %16 = and i64 %15, 4294967294
  %17 = add nsw i64 %14, -1
  %18 = insertelement <2 x i64> poison, i64 %17, i64 0
  %19 = shufflevector <2 x i64> %18, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %20

20:                                               ; preds = %32, %13
  %21 = phi i64 [ 0, %13 ], [ %33, %32 ]
  %22 = phi <2 x i64> [ <i64 0, i64 1>, %13 ], [ %34, %32 ]
  %23 = icmp ule <2 x i64> %22, %19
  %24 = extractelement <2 x i1> %23, i64 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.fixup_edge_d, ptr %11, i64 %21, i32 5
  store i64 0, ptr %26, align 8, !tbaa !100
  br label %27

27:                                               ; preds = %25, %20
  %28 = extractelement <2 x i1> %23, i64 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = or disjoint i64 %21, 1
  %31 = getelementptr inbounds %struct.fixup_edge_d, ptr %11, i64 %30, i32 5
  store i64 0, ptr %31, align 8, !tbaa !100
  br label %32

32:                                               ; preds = %29, %27
  %33 = add i64 %21, 2
  %34 = add <2 x i64> %22, <i64 2, i64 2>
  %35 = icmp eq i64 %33, %16
  br i1 %35, label %36, label %20, !llvm.loop !153

36:                                               ; preds = %32, %7
  tail call fastcc void @compute_residual_flow(ptr noundef %0) #16
  %37 = load i32, ptr %0, align 8, !tbaa !69
  call fastcc void @init_augmenting_path(ptr noundef nonnull %4, i32 noundef %37) #16
  %38 = getelementptr inbounds %struct.augmenting_path_d, ptr %4, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !156
  %40 = call fastcc i32 @find_augmenting_path(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %125, label %42

42:                                               ; preds = %36
  %43 = icmp eq i32 %2, %1
  br label %44

44:                                               ; preds = %42, %122
  %45 = phi i64 [ 0, %42 ], [ %102, %122 ]
  br i1 %43, label %46, label %48

46:                                               ; preds = %44
  %47 = add nsw i64 %45, 9223372036854775807
  br label %101

48:                                               ; preds = %44, %48
  %49 = phi i64 [ %57, %48 ], [ 9223372036854775807, %44 ]
  %50 = phi i32 [ %58, %48 ], [ %2, %44 ]
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %39, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !41
  %54 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %53, i32 noundef %50) #16
  %55 = getelementptr inbounds %struct.fixup_edge_d, ptr %54, i64 0, i32 6
  %56 = load i64, ptr %55, align 8, !tbaa !136
  %57 = call i64 @llvm.smin.i64(i64 %49, i64 %56)
  %58 = load i32, ptr %52, align 4, !tbaa !41
  %59 = icmp eq i32 %58, %1
  br i1 %59, label %60, label %48, !llvm.loop !159

60:                                               ; preds = %48
  %61 = add nsw i64 %57, %45
  br i1 %43, label %101, label %62

62:                                               ; preds = %60, %98
  %63 = phi i32 [ %99, %98 ], [ %2, %60 ]
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %39, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !41
  %67 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %66, i32 noundef %63) #16
  %68 = load i32, ptr %65, align 4, !tbaa !41
  %69 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %63, i32 noundef %68) #16
  %70 = getelementptr inbounds %struct.fixup_edge_d, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !92
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.fixup_edge_d, ptr %67, i64 0, i32 5
  %75 = load i64, ptr %74, align 8, !tbaa !100
  %76 = add nsw i64 %75, %57
  store i64 %76, ptr %74, align 8, !tbaa !100
  %77 = getelementptr inbounds %struct.fixup_edge_d, ptr %67, i64 0, i32 6
  %78 = load i64, ptr %77, align 8, !tbaa !136
  %79 = sub nsw i64 %78, %57
  store i64 %79, ptr %77, align 8, !tbaa !136
  %80 = getelementptr inbounds %struct.fixup_edge_d, ptr %69, i64 0, i32 6
  %81 = load i64, ptr %80, align 8, !tbaa !136
  %82 = add nsw i64 %81, %57
  store i64 %82, ptr %80, align 8, !tbaa !136
  br label %98

83:                                               ; preds = %62
  %84 = getelementptr inbounds %struct.fixup_edge_d, ptr %69, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !92
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1083, ptr noundef nonnull @.str.1) #17
  br label %88

88:                                               ; preds = %83, %87
  %89 = getelementptr inbounds %struct.fixup_edge_d, ptr %69, i64 0, i32 6
  %90 = load i64, ptr %89, align 8, !tbaa !136
  %91 = add nsw i64 %90, %57
  store i64 %91, ptr %89, align 8, !tbaa !136
  %92 = getelementptr inbounds %struct.fixup_edge_d, ptr %69, i64 0, i32 5
  %93 = load i64, ptr %92, align 8, !tbaa !100
  %94 = sub nsw i64 %93, %57
  store i64 %94, ptr %92, align 8, !tbaa !100
  %95 = getelementptr inbounds %struct.fixup_edge_d, ptr %67, i64 0, i32 6
  %96 = load i64, ptr %95, align 8, !tbaa !136
  %97 = sub nsw i64 %96, %57
  store i64 %97, ptr %95, align 8, !tbaa !136
  br label %98

98:                                               ; preds = %73, %88
  %99 = load i32, ptr %65, align 4, !tbaa !41
  %100 = icmp eq i32 %99, %1
  br i1 %100, label %101, label %62, !llvm.loop !160

101:                                              ; preds = %98, %46, %60
  %102 = phi i64 [ %47, %46 ], [ %61, %60 ], [ %61, %98 ]
  %103 = phi i64 [ 9223372036854775807, %46 ], [ %57, %60 ], [ %57, %98 ]
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %105 = icmp eq ptr %104, null
  br i1 %105, label %122, label %106

106:                                              ; preds = %101
  %107 = call i64 @fwrite(ptr nonnull @.str.50, i64 23, i64 1, ptr nonnull %104)
  br i1 %43, label %117, label %108

108:                                              ; preds = %106, %108
  %109 = phi i32 [ %115, %108 ], [ %2, %106 ]
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !36
  call fastcc void @print_basic_block(ptr noundef %110, ptr noundef nonnull %0, i32 noundef %109) #16
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %112 = call i64 @fwrite(ptr nonnull @.str.51, i64 2, i64 1, ptr %111)
  %113 = sext i32 %109 to i64
  %114 = getelementptr inbounds i32, ptr %39, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !41
  %116 = icmp eq i32 %115, %1
  br i1 %116, label %117, label %108, !llvm.loop !161

117:                                              ; preds = %108, %106
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.52, i64 noundef %103) #16
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.53, i64 noundef %102) #16
  br label %122

122:                                              ; preds = %117, %101
  %123 = call fastcc i32 @find_augmenting_path(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %44, !llvm.loop !162

125:                                              ; preds = %122, %36
  call fastcc void @free_augmenting_path(ptr noundef nonnull %4) #16
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  call fastcc void @dump_fixup_graph(ptr noundef nonnull %126, ptr noundef nonnull %0, ptr noundef nonnull @.str.54) #16
  br label %129

129:                                              ; preds = %128, %125
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cancel_negative_cycle(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !163 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 800, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %4, %6
  %8 = load i32, ptr %0, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = icmp sgt i32 %8, 1
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  store i64 0, ptr %2, align 8, !tbaa !81
  br label %222

17:                                               ; preds = %7
  %18 = zext nneg i32 %8 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 1, %17 ], [ %24, %19 ]
  %21 = getelementptr inbounds i64, ptr %2, i64 %20
  store i64 9223372036854775807, ptr %21, align 8, !tbaa !81
  %22 = getelementptr inbounds i32, ptr %1, i64 %20
  store i32 -1, ptr %22, align 4, !tbaa !41
  %23 = getelementptr inbounds i32, ptr %3, i64 %20
  store i32 -1, ptr %23, align 4, !tbaa !41
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %18
  br i1 %25, label %26, label %19, !llvm.loop !164

26:                                               ; preds = %19
  store i64 0, ptr %2, align 8, !tbaa !81
  br i1 %15, label %27, label %222

27:                                               ; preds = %26
  %28 = icmp sgt i32 %10, 0
  %29 = zext nneg i32 %10 to i64
  br label %33

30:                                               ; preds = %70
  %31 = add nuw nsw i32 %34, 1
  %32 = icmp eq i32 %31, %8
  br i1 %32, label %72, label %33, !llvm.loop !165

33:                                               ; preds = %27, %30
  %34 = phi i32 [ 1, %27 ], [ %31, %30 ]
  br i1 %28, label %35, label %222

35:                                               ; preds = %33, %66
  %36 = phi i64 [ %68, %66 ], [ 0, %33 ]
  %37 = phi i8 [ %67, %66 ], [ 0, %33 ]
  %38 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %36
  %39 = load i32, ptr %38, align 8, !tbaa !84
  %40 = icmp eq i32 %39, %14
  br i1 %40, label %66, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %36, i32 3
  %43 = load i8, ptr %42, align 4, !tbaa !135
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %36, i32 6
  %47 = load i64, ptr %46, align 8, !tbaa !136
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = sext i32 %39 to i64
  %51 = getelementptr inbounds i64, ptr %2, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !81
  %53 = icmp eq i64 %52, 9223372036854775807
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %36, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !85
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, ptr %2, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !81
  %60 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %36, i32 8
  %61 = load i64, ptr %60, align 8, !tbaa !93
  %62 = add nsw i64 %61, %52
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  store i64 %62, ptr %58, align 8, !tbaa !81
  %65 = getelementptr inbounds i32, ptr %1, i64 %57
  store i32 %39, ptr %65, align 4, !tbaa !41
  br label %66

66:                                               ; preds = %41, %45, %49, %54, %64, %35
  %67 = phi i8 [ %37, %35 ], [ 1, %64 ], [ %37, %54 ], [ %37, %49 ], [ %37, %45 ], [ %37, %41 ]
  %68 = add nuw nsw i64 %36, 1
  %69 = icmp eq i64 %68, %29
  br i1 %69, label %70, label %35, !llvm.loop !166

70:                                               ; preds = %66
  %71 = icmp eq i8 %67, 0
  br i1 %71, label %222, label %30

72:                                               ; preds = %30
  br i1 %28, label %73, label %222

73:                                               ; preds = %72
  %74 = zext nneg i32 %10 to i64
  br label %75

75:                                               ; preds = %73, %103
  %76 = phi i64 [ 0, %73 ], [ %104, %103 ]
  %77 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %76
  %78 = load i32, ptr %77, align 8, !tbaa !84
  %79 = icmp eq i32 %78, %14
  br i1 %79, label %103, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %76, i32 3
  %82 = load i8, ptr %81, align 4, !tbaa !135
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %76, i32 6
  %86 = load i64, ptr %85, align 8, !tbaa !136
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %84
  %89 = sext i32 %78 to i64
  %90 = getelementptr inbounds i64, ptr %2, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !81
  %92 = icmp eq i64 %91, 9223372036854775807
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %76, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !85
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, ptr %2, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !81
  %99 = getelementptr inbounds %struct.fixup_edge_d, ptr %12, i64 %76, i32 8
  %100 = load i64, ptr %99, align 8, !tbaa !93
  %101 = add nsw i64 %100, %91
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %80, %84, %88, %93, %75
  %104 = add nuw nsw i64 %76, 1
  %105 = icmp eq i64 %104, %74
  br i1 %105, label %222, label %75, !llvm.loop !167

106:                                              ; preds = %93
  store i32 %95, ptr %3, align 4, !tbaa !41
  %107 = load i32, ptr %94, align 4, !tbaa !85
  br label %108

108:                                              ; preds = %106, %123
  %109 = phi i64 [ 1, %106 ], [ %125, %123 ]
  %110 = phi i32 [ %107, %106 ], [ %113, %123 ]
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %1, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !41
  %114 = getelementptr inbounds i32, ptr %3, i64 %109
  store i32 %113, ptr %114, align 4, !tbaa !41
  br label %115

115:                                              ; preds = %108, %120
  %116 = phi i64 [ 0, %108 ], [ %121, %120 ]
  %117 = getelementptr inbounds i32, ptr %3, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !41
  %119 = icmp eq i32 %118, %113
  br i1 %119, label %127, label %120

120:                                              ; preds = %115
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, %109
  br i1 %122, label %123, label %115, !llvm.loop !168

123:                                              ; preds = %120
  %124 = zext nneg i32 %8 to i64
  %125 = add nuw nsw i64 %109, 1
  %126 = icmp eq i64 %125, %124
  br i1 %126, label %130, label %108, !llvm.loop !169

127:                                              ; preds = %115
  %128 = trunc i64 %109 to i32
  %129 = trunc i64 %116 to i32
  br label %130

130:                                              ; preds = %123, %127
  %131 = phi i32 [ %129, %127 ], [ 0, %123 ]
  %132 = phi i32 [ %128, %127 ], [ 0, %123 ]
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i32, ptr %3, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !41
  %136 = zext i32 %132 to i64
  %137 = getelementptr inbounds i32, ptr %3, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !41
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %141, label %140

140:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 884, ptr noundef nonnull @.str.1) #17
  br label %141

141:                                              ; preds = %130, %140
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = sub nsw i32 %132, %131
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %142, ptr noundef nonnull @.str.56, i32 noundef %145) #16
  br label %147

147:                                              ; preds = %144, %141
  %148 = icmp ult i32 %131, %132
  br i1 %148, label %149, label %172

149:                                              ; preds = %147, %170
  %150 = phi i64 [ %153, %170 ], [ %133, %147 ]
  %151 = phi i64 [ %161, %170 ], [ 9223372036854775807, %147 ]
  %152 = phi i64 [ %164, %170 ], [ 0, %147 ]
  %153 = add nuw nsw i64 %150, 1
  %154 = getelementptr inbounds i32, ptr %3, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !41
  %156 = getelementptr inbounds i32, ptr %3, i64 %150
  %157 = load i32, ptr %156, align 4, !tbaa !41
  %158 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %155, i32 noundef %157) #16
  %159 = getelementptr inbounds %struct.fixup_edge_d, ptr %158, i64 0, i32 6
  %160 = load i64, ptr %159, align 8, !tbaa !136
  %161 = tail call i64 @llvm.smin.i64(i64 %151, i64 %160)
  %162 = getelementptr inbounds %struct.fixup_edge_d, ptr %158, i64 0, i32 8
  %163 = load i64, ptr %162, align 8, !tbaa !93
  %164 = add nsw i64 %163, %152
  %165 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %149
  %168 = load i32, ptr %156, align 4, !tbaa !41
  %169 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %165, ptr noundef nonnull @.str.57, i32 noundef %168) #16
  br label %170

170:                                              ; preds = %149, %167
  %171 = icmp eq i64 %153, %136
  br i1 %171, label %172, label %149, !llvm.loop !170

172:                                              ; preds = %170, %147
  %173 = phi i32 [ %131, %147 ], [ %132, %170 ]
  %174 = phi i64 [ 0, %147 ], [ %164, %170 ]
  %175 = phi i64 [ 9223372036854775807, %147 ], [ %161, %170 ]
  %176 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %177 = icmp eq ptr %176, null
  br i1 %177, label %187, label %178

178:                                              ; preds = %172
  %179 = zext nneg i32 %173 to i64
  %180 = getelementptr inbounds i32, ptr %3, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !41
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %176, ptr noundef nonnull @.str.41, i32 noundef %181) #16
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.58, i64 noundef %174, i64 noundef %175) #16
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %186 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.59, i64 noundef %175) #16
  br label %187

187:                                              ; preds = %178, %172
  br i1 %148, label %188, label %222

188:                                              ; preds = %187, %220
  %189 = phi i64 [ %190, %220 ], [ %133, %187 ]
  %190 = add nuw nsw i64 %189, 1
  %191 = getelementptr inbounds i32, ptr %3, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !41
  %193 = getelementptr inbounds i32, ptr %3, i64 %189
  %194 = load i32, ptr %193, align 4, !tbaa !41
  %195 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %192, i32 noundef %194) #16
  %196 = load i32, ptr %193, align 4, !tbaa !41
  %197 = load i32, ptr %191, align 4, !tbaa !41
  %198 = tail call fastcc ptr @find_fixup_edge(ptr noundef nonnull %0, i32 noundef %196, i32 noundef %197) #16
  %199 = getelementptr inbounds %struct.fixup_edge_d, ptr %195, i64 0, i32 6
  %200 = load i64, ptr %199, align 8, !tbaa !136
  %201 = sub nsw i64 %200, %175
  store i64 %201, ptr %199, align 8, !tbaa !136
  %202 = getelementptr inbounds %struct.fixup_edge_d, ptr %195, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !92
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %188
  %206 = getelementptr inbounds %struct.fixup_edge_d, ptr %195, i64 0, i32 5
  %207 = load i64, ptr %206, align 8, !tbaa !100
  %208 = add nsw i64 %207, %175
  store i64 %208, ptr %206, align 8, !tbaa !100
  br label %209

209:                                              ; preds = %205, %188
  %210 = getelementptr inbounds %struct.fixup_edge_d, ptr %198, i64 0, i32 6
  %211 = load i64, ptr %210, align 8, !tbaa !136
  %212 = add nsw i64 %211, %175
  store i64 %212, ptr %210, align 8, !tbaa !136
  %213 = getelementptr inbounds %struct.fixup_edge_d, ptr %198, i64 0, i32 2
  %214 = load i32, ptr %213, align 8, !tbaa !92
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.fixup_edge_d, ptr %198, i64 0, i32 5
  %218 = load i64, ptr %217, align 8, !tbaa !100
  %219 = sub nsw i64 %218, %175
  store i64 %219, ptr %217, align 8, !tbaa !100
  br label %220

220:                                              ; preds = %209, %216
  %221 = icmp eq i64 %190, %136
  br i1 %221, label %222, label %188, !llvm.loop !171

222:                                              ; preds = %33, %70, %103, %220, %16, %26, %187, %72
  %223 = phi i8 [ 0, %72 ], [ 1, %187 ], [ 0, %26 ], [ 0, %16 ], [ 1, %220 ], [ 0, %103 ], [ 0, %70 ], [ 0, %33 ]
  ret i8 %223
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_residual_flow(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !172 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 937, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @fputs(ptr noundef nonnull @.str.55, ptr noundef nonnull %5) #16
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !80
  %12 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = zext nneg i32 %11 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %33, %17 ]
  %19 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18
  %20 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !100
  %24 = sub nsw i64 %21, %23
  %25 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18, i32 6
  store i64 %24, ptr %25, align 8, !tbaa !136
  %26 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18, i32 3
  store i8 1, ptr %26, align 4, !tbaa !135
  %27 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = load i32, ptr %19, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.fixup_edge_d, ptr %13, i64 %18, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !93
  %32 = sub nsw i64 0, %31
  tail call fastcc void @add_rfixup_edge(ptr noundef %0, i32 noundef %28, i32 noundef %29, i64 noundef %23, i64 noundef %32) #16
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %17, !llvm.loop !173

35:                                               ; preds = %17, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_augmenting_path(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !174 {
  %3 = add nsw i32 %1, 2
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 4) #17
  store ptr %5, ptr %0, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 3
  store i32 %3, ptr %6, align 8, !tbaa !176
  %7 = sext i32 %1 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #17
  %9 = getelementptr inbounds %struct.augmenting_path_d, ptr %0, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !156
  %10 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 4) #17
  %11 = getelementptr inbounds %struct.augmenting_path_d, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !177
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_augmenting_path(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !178 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 974, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.augmenting_path_d, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 976, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.augmenting_path_d, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 978, ptr noundef nonnull @.str.1) #17
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 981, ptr noundef nonnull @.str.1) #17
  br label %21

21:                                               ; preds = %18, %20
  %22 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = load i32, ptr %0, align 8, !tbaa !69
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21, %26
  %27 = phi i64 [ %29, %26 ], [ 0, %21 ]
  %28 = getelementptr inbounds i32, ptr %15, i64 %27
  store i32 0, ptr %28, align 4, !tbaa !41
  %29 = add nuw nsw i64 %27, 1
  %30 = load i32, ptr %0, align 8, !tbaa !69
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %26, label %33, !llvm.loop !179

33:                                               ; preds = %26, %21
  tail call fastcc void @init_queue(ptr noundef %1) #16
  tail call fastcc void @enqueue(ptr noundef %1, i32 noundef %2) #16
  %34 = sext i32 %2 to i64
  %35 = getelementptr inbounds i32, ptr %10, i64 %34
  store i32 -1, ptr %35, align 4, !tbaa !41
  %36 = tail call fastcc zeroext i8 @is_empty(ptr noundef %1) #16, !range !44
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %73

38:                                               ; preds = %68, %41
  %39 = tail call fastcc zeroext i8 @is_empty(ptr noundef %1) #16, !range !44
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %73, !llvm.loop !180

41:                                               ; preds = %33, %38
  %42 = tail call fastcc i32 @dequeue(ptr noundef %1) #16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %15, i64 %43
  store i32 1, ptr %44, align 4, !tbaa !41
  %45 = getelementptr inbounds %struct.fixup_vertex_d, ptr %23, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !130
  %47 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %5) #16, !range !132
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %38, label %49

49:                                               ; preds = %41, %68
  %50 = phi ptr [ %69, %68 ], [ %46, %41 ]
  %51 = phi i32 [ %70, %68 ], [ 0, %41 ]
  %52 = load ptr, ptr %5, align 8, !tbaa !36
  %53 = getelementptr inbounds %struct.fixup_edge_d, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !85
  %55 = getelementptr inbounds %struct.fixup_edge_d, ptr %52, i64 0, i32 6
  %56 = load i64, ptr %55, align 8, !tbaa !136
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = sext i32 %54 to i64
  %60 = getelementptr inbounds i32, ptr %15, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !41
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  tail call fastcc void @enqueue(ptr noundef %1, i32 noundef %54) #16
  %64 = getelementptr inbounds i32, ptr %10, i64 %59
  store i32 %42, ptr %64, align 4, !tbaa !41
  store i32 1, ptr %60, align 4, !tbaa !41
  %65 = icmp eq i32 %54, %3
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %45, align 8, !tbaa !130
  br label %68

68:                                               ; preds = %66, %58, %49
  %69 = phi ptr [ %67, %66 ], [ %50, %58 ], [ %50, %49 ]
  %70 = add nuw nsw i32 %51, 1
  %71 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(ptr noundef %69, i32 noundef %70, ptr noundef nonnull %5) #16, !range !132
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %38, label %49, !llvm.loop !181

73:                                               ; preds = %38, %63, %33
  %74 = phi i32 [ 0, %33 ], [ 1, %63 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i32 %74
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_augmenting_path(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  tail call void @free(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.augmenting_path_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  tail call void @free(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.augmenting_path_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  tail call void @free(ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_rfixup_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 !prof !35 !PGOFuncName !183 {
  %6 = tail call fastcc ptr @add_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %4) #16
  %7 = getelementptr inbounds %struct.fixup_edge_d, ptr %6, i64 0, i32 6
  store i64 %3, ptr %7, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.fixup_edge_d, ptr %6, i64 0, i32 3
  store i8 1, ptr %8, align 4, !tbaa !135
  %9 = getelementptr inbounds %struct.fixup_edge_d, ptr %6, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_queue(ptr noundef writeonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !184 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 739, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !186
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @enqueue(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !186
  %5 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !188
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 755, ptr noundef nonnull @.str.1) #17
  %9 = load i32, ptr %3, align 4, !tbaa !186
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ %4, %2 ], [ %9, %8 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !189
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %1, ptr %14, align 4, !tbaa !41
  %15 = load i32, ptr %3, align 4, !tbaa !186
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %3, align 4, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !190 {
  %2 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !185
  %4 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !186
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dequeue(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !191 {
  %2 = getelementptr inbounds %struct.queue_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !185
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 765, ptr noundef nonnull @.str.1) #17
  %6 = load i32, ptr %2, align 8, !tbaa !185
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !189
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = add nsw i32 %8, 1
  store i32 %13, ptr %2, align 8, !tbaa !185
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_fixup_edge_p_heap_free(ptr nocapture noundef %0) unnamed_addr #11 !prof !35 !PGOFuncName !192 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{i64 0, i64 4, !41, i64 8, i64 8, !36}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !38, i64 0}
!43 = !{i64 0, i64 8, !36}
!44 = !{i8 0, i8 2}
!45 = !{!46, !37, i64 24}
!46 = !{!"edge_def", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !47, i64 56}
!47 = !{!"long", !38, i64 0}
!48 = !{!46, !47, i64 56}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"mcf.c:ei_start_1"}
!52 = !{!"mcf.c:ei_cond"}
!53 = !{!"mcf.c:ei_next"}
!54 = !{!55, !42, i64 0}
!55 = !{!"", !42, i64 0, !37, i64 8}
!56 = !{!"mcf.c:ei_end_p"}
!57 = !{!"mcf.c:ei_edge"}
!58 = !{!"mcf.c:VEC_edge_base_length"}
!59 = !{!60, !42, i64 0}
!60 = !{!"VEC_edge_base", !42, i64 0, !42, i64 4, !38, i64 8}
!61 = !{!"mcf.c:ei_container"}
!62 = !{!"mcf.c:VEC_edge_base_index"}
!63 = !{!"mcf.c:create_fixup_graph"}
!64 = !{!65, !37, i64 8}
!65 = !{!"function", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !37, i64 128, !42, i64 136, !42, i64 137, !42, i64 138, !42, i64 138, !42, i64 138, !42, i64 138, !42, i64 138, !42, i64 138, !42, i64 138, !42, i64 139, !42, i64 139, !42, i64 139, !42, i64 139, !42, i64 139, !42, i64 139, !42, i64 139}
!66 = !{!67, !42, i64 24}
!67 = !{!"control_flow_graph", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !37, i64 40, !42, i64 48, !38, i64 52, !38, i64 60, !42, i64 68, !42, i64 72}
!68 = !{!67, !42, i64 28}
!69 = !{!70, !42, i64 0}
!70 = !{!"fixup_graph_d", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 24}
!71 = !{!70, !37, i64 16}
!72 = !{!70, !37, i64 24}
!73 = !{!74, !47, i64 72}
!74 = !{!"basic_block_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !37, i64 48, !37, i64 56, !38, i64 64, !47, i64 72, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96}
!75 = distinct !{!75, !50}
!76 = !{!74, !42, i64 80}
!77 = !{!46, !37, i64 8}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = !{!70, !42, i64 4}
!81 = !{!47, !47, i64 0}
!82 = !{!83, !47, i64 40}
!83 = !{!"fixup_edge_d", !42, i64 0, !42, i64 4, !42, i64 8, !38, i64 12, !42, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56}
!84 = !{!83, !42, i64 0}
!85 = !{!83, !42, i64 4}
!86 = distinct !{!86, !50}
!87 = distinct !{!87, !50}
!88 = !{!70, !42, i64 8}
!89 = !{!70, !42, i64 12}
!90 = distinct !{!90, !50}
!91 = !{!83, !47, i64 56}
!92 = !{!83, !42, i64 8}
!93 = !{!83, !47, i64 48}
!94 = !{!83, !42, i64 16}
!95 = distinct !{!95, !50}
!96 = !{!"mcf.c:find_minimum_cost_flow"}
!97 = distinct !{!97, !50}
!98 = !{!"mcf.c:adjust_cfg_counts"}
!99 = !{!67, !37, i64 8}
!100 = !{!83, !47, i64 24}
!101 = !{!46, !42, i64 52}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = !{!67, !37, i64 0}
!105 = !{!74, !37, i64 8}
!106 = !{!74, !37, i64 0}
!107 = distinct !{!107, !50}
!108 = !{!46, !42, i64 48}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !50}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50}
!113 = !{!114, !37, i64 176}
!114 = !{!"lang_hooks", !37, i64 0, !47, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !115, i64 240, !116, i64 248, !117, i64 256, !118, i64 272, !119, i64 432, !120, i64 560, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !38, i64 672}
!115 = !{!"lang_hooks_for_tree_inlining", !37, i64 0}
!116 = !{!"lang_hooks_for_callgraph", !37, i64 0}
!117 = !{!"lang_hooks_for_tree_dump", !37, i64 0, !37, i64 8}
!118 = !{!"lang_hooks_for_decls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152}
!119 = !{!"lang_hooks_for_types", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !38, i64 120}
!120 = !{!"lang_hooks_for_lto", !37, i64 0, !37, i64 8, !37, i64 16}
!121 = !{!74, !37, i64 56}
!122 = distinct !{!122, !50}
!123 = !{!"mcf.c:delete_fixup_graph"}
!124 = distinct !{!124, !50}
!125 = !{!"mcf.c:mcf_sqrt"}
!126 = !{!"mcf.c:mcf_ln"}
!127 = distinct !{!127, !50}
!128 = !{!"mcf.c:add_fixup_edge"}
!129 = !{!"mcf.c:find_fixup_edge"}
!130 = !{!131, !37, i64 0}
!131 = !{!"fixup_vertex_d", !37, i64 0}
!132 = !{i32 0, i32 2}
!133 = distinct !{!133, !50}
!134 = !{!"mcf.c:dump_fixup_edge"}
!135 = !{!83, !38, i64 12}
!136 = !{!83, !47, i64 32}
!137 = !{!"mcf.c:dump_fixup_graph"}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = !{!"mcf.c:add_edge"}
!141 = !{!"mcf.c:VEC_fixup_edge_p_heap_safe_push"}
!142 = !{!"mcf.c:VEC_fixup_edge_p_heap_reserve"}
!143 = !{!"mcf.c:VEC_fixup_edge_p_base_quick_push"}
!144 = !{!145, !42, i64 0}
!145 = !{!"VEC_fixup_edge_p_base", !42, i64 0, !42, i64 4, !38, i64 8}
!146 = !{!"mcf.c:VEC_fixup_edge_p_base_space"}
!147 = !{!145, !42, i64 4}
!148 = !{!"mcf.c:VEC_fixup_edge_p_base_iterate"}
!149 = !{!"mcf.c:print_edge"}
!150 = !{!"mcf.c:print_basic_block"}
!151 = !{!"mcf.c:VEC_fixup_edge_p_base_length"}
!152 = !{!"mcf.c:find_max_flow"}
!153 = distinct !{!153, !50, !154, !155}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = !{!157, !37, i64 24}
!157 = !{!"augmenting_path_d", !158, i64 0, !37, i64 24, !37, i64 32}
!158 = !{!"queue_d", !37, i64 0, !42, i64 8, !42, i64 12, !42, i64 16}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = distinct !{!161, !50}
!162 = distinct !{!162, !50}
!163 = !{!"mcf.c:cancel_negative_cycle"}
!164 = distinct !{!164, !50}
!165 = distinct !{!165, !50}
!166 = distinct !{!166, !50}
!167 = distinct !{!167, !50}
!168 = distinct !{!168, !50}
!169 = distinct !{!169, !50}
!170 = distinct !{!170, !50}
!171 = distinct !{!171, !50}
!172 = !{!"mcf.c:compute_residual_flow"}
!173 = distinct !{!173, !50}
!174 = !{!"mcf.c:init_augmenting_path"}
!175 = !{!157, !37, i64 0}
!176 = !{!157, !42, i64 16}
!177 = !{!157, !37, i64 32}
!178 = !{!"mcf.c:find_augmenting_path"}
!179 = distinct !{!179, !50}
!180 = distinct !{!180, !50}
!181 = distinct !{!181, !50}
!182 = !{!"mcf.c:free_augmenting_path"}
!183 = !{!"mcf.c:add_rfixup_edge"}
!184 = !{!"mcf.c:init_queue"}
!185 = !{!158, !42, i64 8}
!186 = !{!158, !42, i64 12}
!187 = !{!"mcf.c:enqueue"}
!188 = !{!158, !42, i64 16}
!189 = !{!158, !37, i64 0}
!190 = !{!"mcf.c:is_empty"}
!191 = !{!"mcf.c:dequeue"}
!192 = !{!"mcf.c:VEC_fixup_edge_p_heap_free"}
