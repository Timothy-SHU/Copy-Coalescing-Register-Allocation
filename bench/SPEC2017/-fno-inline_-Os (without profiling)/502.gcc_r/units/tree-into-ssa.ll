; ModuleID = 'tree-into-ssa.c'
source_filename = "tree-into-ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.update_ssa_stats_d = type { i32, i32, ptr, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.var_ann_d = type { i8, i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.ssa_name_info = type { ptr, i8, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.edge_iterator = type { i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.def_blocks_d = type { ptr, ptr, ptr, ptr }
%struct.repl_map_d = type { ptr, ptr }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_gimple_vec_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.VEC_ssa_name_info_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mark_def_sites_global_data = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.dom_dfsnum = type { i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.gimple_bb_info = type { ptr, ptr }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NIL\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A\0ARenaming stack\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" (up to %d levels)\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Level %d (current level)\0A\00", align 1
@block_defs_stack = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"\0ALevel %d\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"    Previous CURRDEF (\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"<NIL>\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"\0A\0ACurrent reaching definitions\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"CURRDEF (\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [34 x i8] c"SSA renaming information for %s\0A\0A\00", align 1
@def_blocks = internal unnamed_addr global ptr null, align 8
@repl_tbl = internal unnamed_addr global ptr null, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"\0AHash table statistics:\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"    def_blocks:   \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"    repl_tbl:     \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\0A\0ADefinition and live-in blocks:\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ssa\00", align 1
@pass_build_ssa = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.20, ptr null, ptr @rewrite_into_ssa, ptr null, ptr null, i32 0, i32 0, i32 24, i32 32, i32 0, i32 0, i32 49157 } }, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c" -> { \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@new_ssa_names = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"\0ASSA replacement table\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"N_i -> { O_1 ... O_j } means that N_i replaces O_1, ..., O_j\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Number of virtual NEW -> OLD mappings: %7u\0A\00", align 1
@update_ssa_stats = internal unnamed_addr global %struct.update_ssa_stats_d zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [44 x i8] c"Number of real NEW -> OLD mappings:    %7u\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Number of total NEW -> OLD mappings:   %7u\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"\0ANumber of virtual symbols: %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"\0A\0ASymbols to be put in SSA form\0A\0A\00", align 1
@names_to_release = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [52 x i8] c"\0A\0ASSA names to release after updating the SSA web\0A\0A\00", align 1
@old_ssa_names = internal unnamed_addr global ptr null, align 8
@update_ssa_initialized_fn = internal unnamed_addr global ptr null, align 8
@blocks_with_phis_to_rewrite = internal unnamed_addr global ptr null, align 8
@phis_to_rewrite = internal unnamed_addr global ptr null, align 8
@blocks_to_update = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"tree-into-ssa.c\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@interesting_blocks = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [46 x i8] c"Incremental SSA update started at block: %d\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Number of blocks in CFG: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Number of blocks to update: %d (%3.0f%%)\0A\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"Affected blocks: \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@info_for_ssa_name = internal unnamed_addr global ptr null, align 8
@current_info_for_ssa_name_age = internal unnamed_addr global i32 0, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.38 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"VAR: \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c", DEF_BLOCKS: { \00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c", LIVEIN_BLOCKS: { \00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c", PHI_BLOCKS: { \00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [42 x i8] c"\0AEnabled virtual name mapping heuristic.\0A\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"\09Number of virtual mappings:       %7u\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"\09Number of unique virtual symbols: %7u\0A\00", align 1
@.str.49 = private unnamed_addr constant [88 x i8] c"Updating FUD-chains from top of CFG will be faster than processing\0Athe name mappings.\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"\0A\0ARenaming block #%d\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Renaming statement \00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"\0A\0ARegistering new PHI nodes in block #%d\0A\0A\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"Updating SSA information for statement \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_current_def(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  br label %10

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %9 = getelementptr inbounds %struct.var_ann_d, ptr %8, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_ssa_name_ann(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr @info_for_ssa_name, align 8
  %5 = tail call fastcc i32 @VEC_ssa_name_info_p_base_length(ptr noundef %4) #21
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #21
  tail call fastcc void @VEC_ssa_name_info_p_heap_reserve(i32 noundef %13) #21
  %14 = icmp ult i32 %5, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %7, %15
  %16 = phi i32 [ %17, %15 ], [ %5, %7 ]
  %17 = add i32 %16, 1
  %18 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #22
  %19 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !17
  %20 = getelementptr inbounds %struct.ssa_name_info, ptr %18, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !18
  %21 = load ptr, ptr @info_for_ssa_name, align 8
  tail call fastcc void @VEC_ssa_name_info_p_base_quick_push(ptr noundef %21, ptr noundef %18) #21
  %22 = icmp eq i32 %17, %13
  br i1 %22, label %23, label %15, !llvm.loop !20

23:                                               ; preds = %15, %7, %1
  %24 = load ptr, ptr @info_for_ssa_name, align 8
  %25 = tail call fastcc ptr @VEC_ssa_name_info_p_base_index(ptr noundef %24, i32 noundef %3) #21
  %26 = getelementptr inbounds %struct.ssa_name_info, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !18
  %28 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !17
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ssa_name_info, ptr %25, i64 0, i32 1
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, -4
  store i8 %33, ptr %31, align 8
  store ptr null, ptr %25, align 8, !tbaa !22
  store i32 %28, ptr %26, align 4, !tbaa !18
  br label %34

34:                                               ; preds = %30, %23
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_def(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  br label %11

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %10 = getelementptr inbounds %struct.var_ann_d, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ %7, %6 ]
  store ptr %1, ptr %12, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_global_livein(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !24
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #21
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !26
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %68, label %20

18:                                               ; preds = %20
  %19 = getelementptr inbounds i8, ptr %6, i64 8
  br label %32

20:                                               ; preds = %2, %20
  %21 = phi ptr [ %29, %20 ], [ %15, %2 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  %27 = load i32, ptr %3, align 4, !tbaa !17
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %27) #21
  %29 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %28, ptr %21, align 8, !tbaa !5
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %18, label %20, !llvm.loop !28

32:                                               ; preds = %18, %65
  %33 = phi ptr [ %29, %18 ], [ %66, %65 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %34 = getelementptr inbounds ptr, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = tail call fastcc ptr @ei_start_1(ptr noundef %35) #21
  store i32 0, ptr %6, align 8, !tbaa.struct !29
  store ptr %36, ptr %19, align 8, !tbaa.struct !30
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %36, ptr noundef nonnull %5) #21, !range !26
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %32, %59
  %40 = phi ptr [ %60, %59 ], [ %34, %32 ]
  %41 = load ptr, ptr %5, align 8, !tbaa !5
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !34
  %45 = load ptr, ptr @cfun, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  %49 = icmp eq ptr %42, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %39
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %44) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %44) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds ptr, ptr %40, i64 1
  store ptr %42, ptr %40, align 8, !tbaa !5
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %44) #22
  br label %59

59:                                               ; preds = %56, %53, %50, %39
  %60 = phi ptr [ %40, %50 ], [ %40, %53 ], [ %57, %56 ], [ %40, %39 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #21
  %61 = load i32, ptr %6, align 8
  %62 = load ptr, ptr %19, align 8
  %63 = call fastcc zeroext i8 @ei_cond(i32 %61, ptr %62, ptr noundef nonnull %5) #21, !range !26
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %39, !llvm.loop !37

65:                                               ; preds = %59, %32
  %66 = phi ptr [ %34, %32 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  %67 = icmp eq ptr %66, %15
  br i1 %67, label %68, label %32, !llvm.loop !38

68:                                               ; preds = %65, %2
  tail call void @free(ptr noundef %15) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %4, ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !43
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !41
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !48
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !17
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !49

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !17
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !17
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !41
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !46
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !47
  store i64 %35, ptr %3, align 8, !tbaa !48
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !17
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !17
  %40 = load i32, ptr %23, align 8, !tbaa !46
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !46
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !50

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !51
  store ptr %44, ptr %0, align 8, !tbaa !41
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !44
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !17
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !48
  store i32 %16, ptr %1, align 4, !tbaa !17
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !48
  %6 = load i32, ptr %1, align 4, !tbaa !17
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !52
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_decl_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6, %10
  %11 = load i32, ptr %4, align 4, !tbaa !17
  %12 = tail call ptr @referenced_var_lookup(i32 noundef %11) #22
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %12, i32 noundef 0) #22
  %13 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !54

16:                                               ; preds = %10, %6
  %17 = tail call i32 @fputc(i32 125, ptr %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %20

18:                                               ; preds = %2
  %19 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %20

20:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_decl_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_decl_set(ptr noundef %2, ptr noundef %0) #21
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_defs_stack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %0)
  %4 = icmp slt i32 %1, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %1) #21
  br label %7

7:                                                ; preds = %5, %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 1) #21
  %10 = load ptr, ptr @block_defs_stack, align 8
  %11 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %10) #21
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %7, %53
  %14 = phi i32 [ %55, %53 ], [ %11, %7 ]
  %15 = phi i32 [ %54, %53 ], [ 1, %7 ]
  %16 = add nsw i32 %14, -1
  %17 = load ptr, ptr @block_defs_stack, align 8
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef %16) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = icmp slt i32 %15, %1
  %22 = select i1 %4, i1 true, i1 %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = add nsw i32 %15, 1
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %24) #21
  br label %53

26:                                               ; preds = %13
  %27 = load i64, ptr %18, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !17
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = tail call zeroext i8 @is_gimple_reg(ptr noundef %34) #22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = add nsw i32 %14, -2
  %39 = load ptr, ptr @block_defs_stack, align 8
  %40 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %39, i32 noundef %38) #21
  br label %41

41:                                               ; preds = %26, %32, %37
  %42 = phi i32 [ %16, %32 ], [ %38, %37 ], [ %16, %26 ]
  %43 = phi ptr [ %18, %32 ], [ %18, %37 ], [ null, %26 ]
  %44 = phi ptr [ %34, %32 ], [ %40, %37 ], [ %18, %26 ]
  %45 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %44, i32 noundef 0) #22
  %46 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  %47 = icmp eq ptr %43, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %43, i32 noundef 0) #22
  br label %51

49:                                               ; preds = %41
  %50 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 5, i64 1, ptr %0)
  br label %51

51:                                               ; preds = %49, %48
  %52 = tail call i32 @fputc(i32 10, ptr %0)
  br label %53

53:                                               ; preds = %51, %23
  %54 = phi i32 [ %24, %23 ], [ %15, %51 ]
  %55 = phi i32 [ %16, %23 ], [ %42, %51 ]
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %13, label %57

57:                                               ; preds = %53, %20, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !55
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_defs_stack(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_defs_stack(ptr noundef %2, i32 noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_currdefs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %3 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 32, i64 1, ptr %0)
  %4 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #21
  %5 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1, %31
  %8 = phi ptr [ %32, %31 ], [ %4, %1 ]
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %13, i32 noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15, %7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 9, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %8, i32 noundef 0) #22
  %22 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  %23 = tail call ptr @get_current_def(ptr noundef %8) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @get_current_def(ptr noundef %8) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #22
  br label %29

27:                                               ; preds = %20
  %28 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 5, i64 1, ptr %0)
  br label %29

29:                                               ; preds = %27, %25
  %30 = tail call i32 @fputc(i32 10, ptr %0)
  br label %31

31:                                               ; preds = %15, %29
  %32 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #21
  %33 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %7, label %35, !llvm.loop !58

35:                                               ; preds = %31, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #21
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #21, !range !26
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_currdefs() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_currdefs(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_ssa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !59
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #22
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %4) #21
  tail call void @dump_def_blocks(ptr noundef %0) #21
  tail call void @dump_defs_stack(ptr noundef %0, i32 noundef -1) #21
  tail call void @dump_currdefs(ptr noundef %0) #21
  tail call void @dump_tree_ssa_stats(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_def_blocks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr %0)
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @debug_def_blocks_r, ptr noundef %0) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_ssa_stats(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @repl_tbl, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 24, i64 1, ptr %0)
  %9 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %0)
  %13 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %13) #21
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr @repl_tbl, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %0)
  %19 = load ptr, ptr @repl_tbl, align 8, !tbaa !5
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %19) #21
  %20 = load ptr, ptr @repl_tbl, align 8
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %1, %17, %14
  %23 = phi i1 [ false, %1 ], [ %21, %17 ], [ false, %14 ]
  %24 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %25 = icmp ne ptr %24, null
  %26 = select i1 %25, i1 true, i1 %23
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 @fputc(i32 10, ptr %0)
  br label %29

29:                                               ; preds = %22, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_tree_ssa() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_tree_ssa(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @htab_size(ptr noundef %1) #22
  %4 = tail call i64 @htab_elements(ptr noundef %1) #22
  %5 = tail call double @htab_collisions(ptr noundef %1) #22
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %3, i64 noundef %4, double noundef %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_tree_ssa_stats() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_tree_ssa_stats(ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_def_blocks_r(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !67
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !17
  tail call void @print_generic_expr(ptr noundef %1, ptr noundef %5, i32 noundef %6) #22
  %7 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %8, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2) #22
  %9 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %10, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2) #22
  %11 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22) #22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_def_blocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_def_blocks(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rewrite_into_ssa() #0 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 59) #22
  br label %4

4:                                                ; preds = %3, %0
  tail call void @init_ssa_operands() #22
  tail call fastcc void @init_ssa_renamer() #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !24
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #22
  store ptr %10, ptr @interesting_blocks, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %10) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !24
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #22
  %19 = load ptr, ptr @cfun, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %4, %28
  %29 = phi ptr [ %36, %28 ], [ %24, %4 ]
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !34
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %18, i64 %33
  store ptr %30, ptr %34, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = load ptr, ptr @cfun, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %28, !llvm.loop !74

43:                                               ; preds = %28, %4
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  tail call void @compute_dominance_frontiers(ptr noundef %18) #22
  tail call fastcc void @mark_def_site_blocks() #21
  tail call fastcc void @insert_phi_nodes(ptr noundef %18) #21
  %44 = load ptr, ptr @cfun, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !23
  %47 = load ptr, ptr %46, align 8, !tbaa !36
  tail call fastcc void @rewrite_blocks(ptr noundef %47, i32 noundef 0) #21
  %48 = load ptr, ptr @cfun, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  %51 = load ptr, ptr %50, align 8, !tbaa !36
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %43, %57
  %58 = phi ptr [ %68, %57 ], [ %53, %43 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !34
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %18, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %63) #22
  %64 = load i32, ptr %59, align 8, !tbaa !34
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %18, i64 %65
  store ptr null, ptr %66, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = load ptr, ptr @cfun, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !23
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !73
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %57, !llvm.loop !75

75:                                               ; preds = %57, %43
  tail call void @free(ptr noundef %18) #21
  %76 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  %77 = load ptr, ptr %76, align 8, !tbaa !76
  tail call void @free(ptr noundef %77) #21
  %78 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  tail call void @free(ptr noundef %78) #21
  tail call fastcc void @fini_ssa_renamer() #21
  %79 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void @timevar_pop_1(i32 noundef 59) #22
  br label %82

82:                                               ; preds = %81, %75
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_names_replaced_by(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #22
  %5 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %0)
  %6 = tail call fastcc ptr @names_replaced_by(ptr noundef %1) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %9
  %10 = load ptr, ptr @cfun, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = load i32, ptr %3, align 4, !tbaa !17
  %16 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %15) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %16, i32 noundef 0) #22
  %17 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !78

20:                                               ; preds = %9, %2
  %21 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @names_replaced_by(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.repl_map_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !79
  %3 = load ptr, ptr @repl_tbl, align 8, !tbaa !5
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.repl_map_d, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %1, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_names_replaced_by(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_names_replaced_by(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_update_ssa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
  %6 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %5) #21, !range !26
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @sbitmap_first_set_bit(ptr noundef nonnull %9) #22
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %15 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 23, i64 1, ptr %0)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 62, i64 1, ptr %0)
  %17 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %17) #21
  %18 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load i32, ptr %2, align 4, !tbaa !17
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %26) #21
  tail call void @dump_names_replaced_by(ptr noundef %0, ptr noundef %27) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %28 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !26
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !82

30:                                               ; preds = %20, %14
  %31 = tail call i32 @fputc(i32 10, ptr %0)
  %32 = load i32, ptr @update_ssa_stats, align 8, !tbaa !83
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %32) #21
  %34 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !85
  %35 = load i32, ptr @update_ssa_stats, align 8, !tbaa !83
  %36 = sub i32 %34, %35
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %36) #21
  %38 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !85
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %38) #21
  %40 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !86
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %40) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %42

42:                                               ; preds = %30, %11, %8
  %43 = load ptr, ptr @cfun, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.gimple_df, ptr %45, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 33, i64 1, ptr %0)
  %52 = load ptr, ptr @cfun, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  %55 = getelementptr inbounds %struct.gimple_df, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %56) #21
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !39
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 51, i64 1, ptr %0)
  %66 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %66, ptr noundef nonnull %2) #21
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !26
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64, %69
  %70 = load ptr, ptr @cfun, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !10
  %73 = getelementptr inbounds %struct.gimple_df, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = load i32, ptr %2, align 4, !tbaa !17
  %76 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %74, i32 noundef %75) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %76, i32 noundef 0) #22
  %77 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !26
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %69, !llvm.loop !87

80:                                               ; preds = %69, %64, %61, %58
  %81 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  br label %82

82:                                               ; preds = %1, %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @need_ssa_update_p(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2918, ptr noundef nonnull @.str.32) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %7, %11, %4
  %18 = phi i8 [ 1, %4 ], [ 0, %7 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: optsize
declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !88
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !91
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !93
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !94
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !88
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !88
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !90
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !90
  %25 = load ptr, ptr %0, align 8, !tbaa !93
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !47
  store i64 %28, ptr %3, align 8, !tbaa !94
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !95

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !96

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !90
  store i64 %34, ptr %3, align 8, !tbaa !94
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !17
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !88
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !94
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_update_ssa() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @dump_update_ssa(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_update_ssa() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %4 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  tail call void @free(ptr noundef %5) #21
  tail call void @free(ptr noundef %4) #21
  store ptr null, ptr @old_ssa_names, align 8, !tbaa !5
  %6 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  tail call void @free(ptr noundef %7) #21
  tail call void @free(ptr noundef %6) #21
  store ptr null, ptr @new_ssa_names, align 8, !tbaa !5
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !5
  tail call void @htab_delete(ptr noundef %8) #22
  store ptr null, ptr @repl_tbl, align 8, !tbaa !5
  %9 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  tail call void @bitmap_clear(ptr noundef %13) #22
  %14 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !97
  tail call void @bitmap_obstack_free(ptr noundef %14) #22
  store ptr null, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !97
  %15 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %0
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %1) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17, %20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load i32, ptr %1, align 4, !tbaa !17
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %26) #21
  tail call void @release_ssa_name(ptr noundef %27) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !98

30:                                               ; preds = %20
  %31 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi ptr [ %31, %30 ], [ %15, %17 ]
  tail call void @bitmap_obstack_free(ptr noundef %33) #22
  store ptr null, ptr @names_to_release, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %32, %0
  tail call fastcc void @clear_ssa_name_info() #21
  tail call fastcc void @fini_ssa_renamer() #21
  %35 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %35, ptr noundef nonnull %1) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37, %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %41 = load ptr, ptr @phis_to_rewrite, align 8
  %42 = load i32, ptr %1, align 4, !tbaa !17
  %43 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %41, i32 noundef %42) #21
  store ptr %43, ptr %3, align 8, !tbaa !5
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %3) #21
  %44 = load ptr, ptr @phis_to_rewrite, align 8
  tail call fastcc void @VEC_gimple_vec_base_replace(ptr noundef %44, i32 noundef %42, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %40, !llvm.loop !99

47:                                               ; preds = %40
  %48 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %47, %37, %34
  %50 = phi ptr [ %48, %47 ], [ %35, %37 ], [ null, %34 ]
  tail call void @bitmap_obstack_free(ptr noundef %50) #22
  store ptr null, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !5
  %51 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %51) #22
  store ptr null, ptr @blocks_to_update, align 8, !tbaa !5
  store ptr null, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @clear_ssa_name_info() unnamed_addr #12 {
  %1 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !17
  %2 = add i32 %1, 1
  store i32 %2, ptr @current_info_for_ssa_name_age, align 4, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_ssa_renamer() unnamed_addr #0 {
  %1 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #22
  store ptr null, ptr @def_blocks, align 8, !tbaa !5
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_vec_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_vec_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_new_def_for(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = tail call ptr @duplicate_ssa_name(ptr noundef %0, ptr noundef %1) #22
  store ptr %6, ptr %2, align 8, !tbaa !5
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !100
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef %10) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !29
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !30
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %4) #21, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9, %24
  %16 = load ptr, ptr %4, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !101
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8
  %23 = or i64 %22, 4194304
  store i64 %23, ptr %6, align 8
  br label %29

24:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %25 = load i32, ptr %5, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %4) #21, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %15, !llvm.loop !102

29:                                               ; preds = %24, %9, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %30

30:                                               ; preds = %29, %3
  tail call void @register_new_name_mapping(ptr noundef %6, ptr noundef %0) #21
  tail call void @set_current_def(ptr noundef %0, ptr noundef %6) #21
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_new_name_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @cfun, align 8, !tbaa !5
  tail call fastcc void @init_update_ssa(ptr noundef %6) #21
  %7 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %10 = load ptr, ptr @cfun, align 8, !tbaa !5
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2881, ptr noundef nonnull @.str.32) #22
  br label %13

13:                                               ; preds = %8, %12
  tail call fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_update_ssa(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #21
  %8 = icmp ult i32 %7, 9
  %9 = udiv i32 %7, 3
  %10 = select i1 %8, i32 3, i32 %9
  %11 = add i32 %10, %7
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %11) #22
  store ptr %12, ptr @old_ssa_names, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %12) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #21
  %19 = icmp ult i32 %18, 9
  %20 = udiv i32 %18, 3
  %21 = select i1 %19, i32 3, i32 %20
  %22 = add i32 %21, %18
  %23 = tail call ptr @sbitmap_alloc(i32 noundef %22) #22
  store ptr %23, ptr @new_ssa_names, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %23) #22
  %24 = tail call ptr @htab_create(i64 noundef 20, ptr noundef nonnull @repl_map_hash, ptr noundef nonnull @repl_map_eq, ptr noundef nonnull @repl_map_free) #22
  store ptr %24, ptr @repl_tbl, align 8, !tbaa !5
  store ptr null, ptr @names_to_release, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @update_ssa_stats, i8 0, i64 24, i1 false)
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %25, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !97
  store ptr %0, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 60) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %8, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 672, ptr noundef nonnull @.str.32) #22
  br label %15

15:                                               ; preds = %8, %14
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, ptr @update_ssa_stats, align 8, !tbaa !83
  %20 = add i32 %19, 1
  store i32 %20, ptr @update_ssa_stats, align 8, !tbaa !83
  %21 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !86
  %22 = add i32 %21, 1
  store i32 %22, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %27) #22
  br label %29

29:                                               ; preds = %18, %15
  %30 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !103
  %33 = load ptr, ptr @cfun, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %37) #21
  %39 = add i32 %38, -1
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %29
  %42 = icmp ult i32 %38, 9
  %43 = udiv i32 %38, 3
  %44 = select i1 %42, i32 3, i32 %43
  %45 = add i32 %44, %38
  %46 = tail call ptr @sbitmap_resize(ptr noundef nonnull %30, i32 noundef %45, i32 noundef 0) #22
  store ptr %46, ptr @new_ssa_names, align 8, !tbaa !5
  %47 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  %48 = tail call ptr @sbitmap_resize(ptr noundef %47, i32 noundef %45, i32 noundef 0) #22
  store ptr %48, ptr @old_ssa_names, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %41, %29
  tail call fastcc void @add_to_repl_tbl(ptr noundef %0, ptr noundef %1) #21
  %50 = tail call fastcc zeroext i8 @is_new_name(ptr noundef %1) #21, !range !26
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @names_replaced_by(ptr noundef %0) #21
  %54 = tail call fastcc ptr @names_replaced_by(ptr noundef %1) #21
  %55 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %53, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !9
  tail call fastcc void @SET_BIT(ptr noundef %57, i32 noundef %59) #21
  %60 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !9
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %62) #21
  %63 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !85
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !85
  %65 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  tail call void @timevar_pop_1(i32 noundef 60) #22
  br label %68

68:                                               ; preds = %56, %67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_sym_for_renaming(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_set_for_renaming(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = load i32, ptr %3, align 4, !tbaa !17
  %13 = tail call ptr @referenced_var_lookup(i32 noundef %12) #22
  tail call void @mark_sym_for_renaming(ptr noundef %13) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !104

16:                                               ; preds = %11, %8, %1, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @name_mappings_registered_p() local_unnamed_addr #0 {
  %1 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = icmp eq ptr %1, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2932, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %3, %6
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @htab_elements(ptr noundef nonnull %8) #22
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %10, %0
  %15 = phi i8 [ 0, %0 ], [ 0, %7 ], [ %13, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @name_registered_for_update_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
  %6 = icmp eq ptr %2, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2945, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc zeroext i8 @is_new_name(ptr noundef %0) #21, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_old_name(ptr noundef %0) #21, !range !26
  br label %13

13:                                               ; preds = %8, %11, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %8 ], [ %12, %11 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_new_name(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !103
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = lshr i32 %3, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !47
  %15 = and i32 %3, 63
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %6, %10, %1
  %22 = phi i8 [ 0, %1 ], [ 0, %6 ], [ %20, %10 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_old_name(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !103
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  %12 = lshr i32 %3, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = and i32 %3, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %6, %10, %1
  %23 = phi i8 [ 0, %1 ], [ 0, %6 ], [ %21, %10 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ssa_names_to_replace() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  store i32 0, ptr %1, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr @cfun, align 8
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2961, ptr noundef nonnull @.str.32) #22
  br label %9

9:                                                ; preds = %0, %8
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %11 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %11) #21
  %12 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = load i32, ptr %1, align 4, !tbaa !17
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %15) #22
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !105

19:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_ssa_name_after_update_ssa(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @update_ssa_initialized_fn, align 8
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2976, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %12, ptr @names_to_release, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %9, %8 ]
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !9
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_ssa(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  %5 = alloca %struct.sbitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %7) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %319, label %10

10:                                               ; preds = %1
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @timevar_push_1(i32 noundef 60) #22
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @cfun, align 8, !tbaa !5
  tail call fastcc void @init_update_ssa(ptr noundef %18) #21
  %19 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !5
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3242, ptr noundef nonnull @.str.32) #22
  br label %25

25:                                               ; preds = %20, %24
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %26, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !5
  %27 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load ptr, ptr @cfun, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !24
  %35 = tail call fastcc ptr @VEC_gimple_vec_heap_alloc(i32 noundef %34) #21
  store ptr %35, ptr @phis_to_rewrite, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %29, %25
  %37 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %37, ptr @blocks_to_update, align 8, !tbaa !5
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  %38 = add i32 %0, -2048
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 21)
  switch i32 %39, label %40 [
    i32 7, label %42
    i32 0, label %46
    i32 1, label %46
    i32 3, label %46
  ]

40:                                               ; preds = %36
  %41 = icmp eq i32 %0, 16384
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3256, ptr noundef nonnull @.str.32) #22
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %40
  %43 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %43) #22
  %44 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %44) #22
  %45 = load ptr, ptr @repl_tbl, align 8, !tbaa !5
  tail call void @htab_empty(ptr noundef %45) #22
  br label %46

46:                                               ; preds = %36, %36, %36, %42, %40
  %47 = icmp ne i32 %0, 4096
  %48 = zext i1 %47 to i8
  br i1 %47, label %49, label %61

49:                                               ; preds = %46
  %50 = load ptr, ptr @cfun, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !10
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %54) #21
  %56 = zext i32 %55 to i64
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #22
  store ptr %57, ptr @def_blocks, align 8, !tbaa !5
  %58 = tail call fastcc zeroext i8 @switch_virtuals_to_full_rewrite_p() #21, !range !26
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call fastcc void @switch_virtuals_to_full_rewrite() #21
  br label %62

61:                                               ; preds = %46
  store ptr null, ptr @def_blocks, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %61, %60, %49
  %63 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %64 = tail call i32 @sbitmap_first_set_bit(ptr noundef %63) #22
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %80

68:                                               ; preds = %62
  tail call fastcc void @prepare_names_to_update(i8 noundef zeroext %48) #21
  %69 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %70 = tail call i32 @sbitmap_first_set_bit(ptr noundef %69) #22
  %71 = icmp slt i32 %70, 0
  %72 = load ptr, ptr @cfun, align 8, !tbaa !5
  br i1 %71, label %73, label %80

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = getelementptr inbounds %struct.gimple_df, ptr %75, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = load ptr, ptr %77, align 8, !tbaa !39
  %79 = icmp eq ptr %78, null
  br i1 %79, label %315, label %80

80:                                               ; preds = %66, %68, %73
  %81 = phi ptr [ %67, %66 ], [ %72, %68 ], [ %72, %73 ]
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = getelementptr inbounds %struct.gimple_df, ptr %83, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !23
  %91 = load ptr, ptr %90, align 8, !tbaa !36
  tail call fastcc void @prepare_block_for_update(ptr noundef %91, i8 noundef zeroext %48) #21
  br label %95

92:                                               ; preds = %80
  %93 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %94 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %93) #22
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %91, %88 ], [ %94, %92 ]
  br i1 %47, label %97, label %208

97:                                               ; preds = %95
  %98 = load ptr, ptr @cfun, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !24
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 3
  %105 = tail call ptr @xmalloc(i64 noundef %104) #22
  %106 = load ptr, ptr @cfun, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !23
  %109 = load ptr, ptr %108, align 8, !tbaa !36
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !72
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %108, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !73
  %114 = icmp eq ptr %111, %113
  br i1 %114, label %130, label %115

115:                                              ; preds = %97, %115
  %116 = phi ptr [ %123, %115 ], [ %111, %97 ]
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !34
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %105, i64 %120
  store ptr %117, ptr %121, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !72
  %124 = load ptr, ptr @cfun, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !23
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !73
  %129 = icmp eq ptr %123, %128
  br i1 %129, label %130, label %115, !llvm.loop !106

130:                                              ; preds = %115, %97
  tail call void @compute_dominance_frontiers(ptr noundef %105) #22
  %131 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  %132 = tail call i32 @sbitmap_first_set_bit(ptr noundef %131) #22
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %135 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !103
  %138 = tail call ptr @sbitmap_alloc(i32 noundef %137) #22
  %139 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  tail call void @sbitmap_copy(ptr noundef %138, ptr noundef %139) #22
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef %138) #21
  %140 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #21, !range !26
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %134, %142
  %143 = load ptr, ptr @cfun, align 8, !tbaa !5
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !10
  %146 = getelementptr inbounds %struct.gimple_df, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !13
  %148 = load i32, ptr %3, align 4, !tbaa !17
  %149 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %147, i32 noundef %148) #21
  %150 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  tail call fastcc void @insert_updated_phi_nodes_for(ptr noundef %149, ptr noundef %105, ptr noundef %150, i32 noundef %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #21
  %151 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #21, !range !26
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %142, !llvm.loop !107

153:                                              ; preds = %142, %134
  %154 = load ptr, ptr %138, align 8, !tbaa !76
  tail call void @free(ptr noundef %154) #21
  tail call void @free(ptr noundef %138) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %155

155:                                              ; preds = %153, %130
  %156 = load ptr, ptr @cfun, align 8, !tbaa !5
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !10
  %159 = getelementptr inbounds %struct.gimple_df, ptr %158, i64 0, i32 9
  %160 = load ptr, ptr %159, align 8, !tbaa !57
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %160, ptr noundef nonnull %3) #21
  %161 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %155, %163
  %164 = load i32, ptr %3, align 4, !tbaa !17
  %165 = tail call ptr @referenced_var_lookup(i32 noundef %164) #22
  %166 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  tail call fastcc void @insert_updated_phi_nodes_for(ptr noundef %165, ptr noundef %105, ptr noundef %166, i32 noundef %0) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %167 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %163, !llvm.loop !108

169:                                              ; preds = %163
  %170 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %171

171:                                              ; preds = %169, %155
  %172 = phi ptr [ %170, %169 ], [ %156, %155 ]
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !23
  %175 = load ptr, ptr %174, align 8, !tbaa !36
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !72
  %178 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !73
  %180 = icmp eq ptr %177, %179
  br i1 %180, label %199, label %181

181:                                              ; preds = %171, %181
  %182 = phi ptr [ %192, %181 ], [ %177, %171 ]
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !34
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %105, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  tail call void @bitmap_obstack_free(ptr noundef %187) #22
  %188 = load i32, ptr %183, align 8, !tbaa !34
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %105, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !5
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !72
  %193 = load ptr, ptr @cfun, align 8, !tbaa !5
  %194 = getelementptr inbounds %struct.function, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !23
  %196 = getelementptr inbounds %struct.control_flow_graph, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !73
  %198 = icmp eq ptr %192, %197
  br i1 %198, label %199, label %181, !llvm.loop !109

199:                                              ; preds = %181, %171
  tail call void @free(ptr noundef %105) #21
  %200 = load ptr, ptr @cfun, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !23
  %203 = load ptr, ptr %202, align 8, !tbaa !36
  %204 = icmp eq ptr %96, %203
  br i1 %204, label %208, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %207 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %206) #22
  br label %208

208:                                              ; preds = %199, %205, %95
  %209 = phi ptr [ %96, %95 ], [ %207, %205 ], [ %96, %199 ]
  %210 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %210) #21
  %211 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !26
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %208, %213
  %214 = load ptr, ptr @cfun, align 8, !tbaa !5
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !10
  %217 = getelementptr inbounds %struct.gimple_df, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !13
  %219 = load i32, ptr %3, align 4, !tbaa !17
  %220 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %218, i32 noundef %219) #21
  tail call void @set_current_def(ptr noundef %220, ptr noundef null) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %221 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !26
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %213, !llvm.loop !110

223:                                              ; preds = %213, %208
  %224 = load ptr, ptr @cfun, align 8, !tbaa !5
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !10
  %227 = getelementptr inbounds %struct.gimple_df, ptr %226, i64 0, i32 9
  %228 = load ptr, ptr %227, align 8, !tbaa !57
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %228, ptr noundef nonnull %3) #21
  %229 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %223, %231
  %232 = load i32, ptr %3, align 4, !tbaa !17
  %233 = tail call ptr @referenced_var_lookup(i32 noundef %232) #22
  tail call void @set_current_def(ptr noundef %233, ptr noundef null) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %234 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %231, !llvm.loop !111

236:                                              ; preds = %231
  %237 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %238

238:                                              ; preds = %236, %223
  %239 = phi ptr [ %237, %236 ], [ %224, %223 ]
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !23
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !24
  %244 = tail call ptr @sbitmap_alloc(i32 noundef %243) #22
  store ptr %244, ptr @interesting_blocks, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %244) #22
  %245 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %245, ptr noundef nonnull %3) #21
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %238, %248
  %249 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  %250 = load i32, ptr %3, align 4, !tbaa !17
  tail call fastcc void @SET_BIT(ptr noundef %249, i32 noundef %250) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !26
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %248, !llvm.loop !112

253:                                              ; preds = %248, %238
  tail call fastcc void @rewrite_blocks(ptr noundef %209, i32 noundef 1) #21
  %254 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  %255 = load ptr, ptr %254, align 8, !tbaa !76
  tail call void @free(ptr noundef %255) #21
  %256 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  tail call void @free(ptr noundef %256) #21
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %258 = icmp eq ptr %257, null
  br i1 %258, label %315, label %259

259:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  tail call void @dump_update_ssa(ptr noundef nonnull %257) #21
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 9
  %262 = load i32, ptr %261, align 8, !tbaa !34
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.33, i32 noundef %262) #21
  %264 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %264, ptr noundef nonnull %6) #21
  %265 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !26
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %259, %267
  %268 = phi i32 [ %269, %267 ], [ 0, %259 ]
  %269 = add nuw nsw i32 %268, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %270 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !26
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %267, !llvm.loop !113

272:                                              ; preds = %267, %259
  %273 = phi i32 [ 0, %259 ], [ %269, %267 ]
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %275 = load ptr, ptr @cfun, align 8, !tbaa !5
  %276 = getelementptr inbounds %struct.function, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !23
  %278 = getelementptr inbounds %struct.control_flow_graph, ptr %277, i64 0, i32 5
  %279 = load i32, ptr %278, align 8, !tbaa !24
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %274, ptr noundef nonnull @.str.34, i32 noundef %279) #21
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %282 = sitofp i32 %273 to float
  %283 = fpext float %282 to double
  %284 = fmul double %283, 1.000000e+02
  %285 = load ptr, ptr @cfun, align 8, !tbaa !5
  %286 = getelementptr inbounds %struct.function, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !23
  %288 = getelementptr inbounds %struct.control_flow_graph, ptr %287, i64 0, i32 5
  %289 = load i32, ptr %288, align 8, !tbaa !24
  %290 = sitofp i32 %289 to float
  %291 = fpext float %290 to double
  %292 = fdiv double %284, %291
  %293 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.35, i32 noundef %273, double noundef %292) #21
  %294 = load i32, ptr @dump_flags, align 4, !tbaa !17
  %295 = and i32 %294, 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %312, label %297

297:                                              ; preds = %272
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %299 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 17, i64 1, ptr %298)
  %300 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %300, ptr noundef nonnull %6) #21
  %301 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !26
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %297, %303
  %304 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %305 = load i32, ptr %6, align 4, !tbaa !17
  %306 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %304, ptr noundef nonnull @.str.37, i32 noundef %305) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %307 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !26
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %303, !llvm.loop !114

309:                                              ; preds = %303, %297
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %311 = tail call i32 @fputc(i32 10, ptr %310)
  br label %312

312:                                              ; preds = %309, %272
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %314 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %313)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %315

315:                                              ; preds = %253, %312, %73
  tail call void @delete_update_ssa() #21
  %316 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  tail call void @timevar_pop_1(i32 noundef 60) #22
  br label %319

319:                                              ; preds = %315, %318, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_vec_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #22
  ret ptr %2
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @def_blocks_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !5
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = tail call i32 %2(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @def_blocks_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = load ptr, ptr %1, align 8, !tbaa !67
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @def_blocks_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  store ptr null, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @bitmap_obstack_free(ptr noundef %5) #22
  store ptr null, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  tail call void @bitmap_obstack_free(ptr noundef %7) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @switch_virtuals_to_full_rewrite_p() unnamed_addr #1 {
  %1 = load i32, ptr @update_ssa_stats, align 8, !tbaa !83
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 91, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !115
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.param_info, ptr %2, i64 92, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !115
  %9 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !86
  %10 = mul i32 %9, %8
  %11 = icmp ugt i32 %1, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %0
  %14 = phi i8 [ 0, %0 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_virtuals_to_full_rewrite() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  store i32 0, ptr %1, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 41, i64 1, ptr nonnull %3)
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %8 = load i32, ptr @update_ssa_stats, align 8, !tbaa !83
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %8) #21
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %11 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !86
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.48, i32 noundef %11) #21
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 87, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %5, %0
  %16 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %16) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %15, %31
  %20 = load ptr, ptr @cfun, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = load i32, ptr %1, align 4, !tbaa !17
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %25) #21
  %27 = tail call zeroext i8 @is_gimple_reg(ptr noundef %26) #22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  tail call fastcc void @RESET_BIT(ptr noundef %30, i32 noundef %25) #21
  br label %31

31:                                               ; preds = %19, %29
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %32 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %19, !llvm.loop !117

34:                                               ; preds = %31, %15
  %35 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %35) #21
  %36 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34, %50
  %39 = load ptr, ptr @cfun, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct.gimple_df, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  %44 = load i32, ptr %1, align 4, !tbaa !17
  %45 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %43, i32 noundef %44) #21
  %46 = tail call zeroext i8 @is_gimple_reg(ptr noundef %45) #22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  tail call fastcc void @RESET_BIT(ptr noundef %49, i32 noundef %44) #21
  br label %50

50:                                               ; preds = %38, %48
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %51 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !26
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %38, !llvm.loop !118

53:                                               ; preds = %50, %34
  %54 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !97
  tail call void @mark_set_for_renaming(ptr noundef %54) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_names_to_update(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %5 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %2) #21
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %10
  %11 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  %12 = load i32, ptr %2, align 4, !tbaa !17
  tail call fastcc void @RESET_BIT(ptr noundef %11, i32 noundef %12) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !119

15:                                               ; preds = %10, %7, %1
  %16 = load ptr, ptr @new_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %16) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !26
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15, %19
  %20 = load ptr, ptr @cfun, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = load i32, ptr %2, align 4, !tbaa !17
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %25) #21
  tail call fastcc void @prepare_def_site_for(ptr noundef %26, i8 noundef zeroext %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %27 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !120

29:                                               ; preds = %19, %15
  %30 = load ptr, ptr @old_ssa_names, align 8, !tbaa !5
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !26
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %29, %47
  %34 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  %36 = load i32, ptr %2, align 4, !tbaa !17
  br i1 %35, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %34, i32 noundef %36) #22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %33
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %36) #21
  tail call fastcc void @prepare_def_site_for(ptr noundef %46, i8 noundef zeroext %0) #21
  br label %47

47:                                               ; preds = %40, %37
  %48 = load ptr, ptr @cfun, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %52, i32 noundef %36) #21
  tail call fastcc void @prepare_use_sites_for(ptr noundef %53, i8 noundef zeroext %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %54 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !26
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %33, !llvm.loop !121

56:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_block_for_update(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  tail call fastcc void @mark_block_for_update(ptr noundef %0) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #22
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %5, i64 8
  br label %12

12:                                               ; preds = %10, %38
  %13 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %14 = call fastcc ptr @gimple_phi_result(ptr noundef %13) #21
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %12, %20
  %24 = phi ptr [ %22, %20 ], [ %14, %12 ]
  %25 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %24) #21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  call fastcc void @mark_def_interesting(ptr noundef %24, ptr noundef %13, ptr noundef %0, i8 noundef zeroext %1) #21
  %28 = call fastcc ptr @ei_start_1(ptr noundef %0) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !29
  store ptr %28, ptr %11, align 8, !tbaa.struct !30
  %29 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %4) #21, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27, %31
  %32 = load ptr, ptr %4, align 8, !tbaa !5
  %33 = load ptr, ptr %32, align 8, !tbaa !31
  call fastcc void @mark_use_interesting(ptr noundef %24, ptr noundef %13, ptr noundef %33, i8 noundef zeroext %1) #21
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %34 = load i32, ptr %5, align 8
  %35 = load ptr, ptr %11, align 8
  %36 = call fastcc zeroext i8 @ei_cond(i32 %34, ptr %35, ptr noundef nonnull %4) #21, !range !26
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %31, !llvm.loop !122

38:                                               ; preds = %31, %27, %23
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %12, label %41, !llvm.loop !123

41:                                               ; preds = %38, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %41, %93
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #23
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %46 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %7, ptr noundef %45, i32 noundef 5) #21
  %47 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44, %65
  %50 = phi ptr [ %66, %65 ], [ %46, %44 ]
  %51 = call fastcc ptr @get_use_from_ptr(ptr noundef %50) #21
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !17
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  br label %60

60:                                               ; preds = %49, %57
  %61 = phi ptr [ %59, %57 ], [ %51, %49 ]
  %62 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %61) #21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call fastcc void @mark_use_interesting(ptr noundef %61, ptr noundef %45, ptr noundef %0, i8 noundef zeroext %1) #21
  br label %65

65:                                               ; preds = %64, %60
  %66 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #21
  %67 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %49, label %69, !llvm.loop !125

69:                                               ; preds = %65, %44
  %70 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %7, ptr noundef %45, i32 noundef 10) #21
  %71 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %69, %89
  %74 = phi ptr [ %90, %89 ], [ %70, %69 ]
  %75 = call fastcc ptr @get_def_from_ptr(ptr noundef %74) #21
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !17
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %75, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  br label %84

84:                                               ; preds = %73, %81
  %85 = phi ptr [ %83, %81 ], [ %75, %73 ]
  %86 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %85) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call fastcc void @mark_def_interesting(ptr noundef %85, ptr noundef %45, ptr noundef %0, i8 noundef zeroext %1) #21
  br label %89

89:                                               ; preds = %88, %84
  %90 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %7) #21
  %91 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %73, label %93, !llvm.loop !126

93:                                               ; preds = %89, %69
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #23
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %94 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %44, label %96, !llvm.loop !127

96:                                               ; preds = %93, %41
  %97 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #22
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %99
  %100 = phi ptr [ %101, %99 ], [ %97, %96 ]
  call fastcc void @prepare_block_for_update(ptr noundef nonnull %100, i8 noundef zeroext %1) #21
  %101 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %100) #22
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %99, !llvm.loop !128

103:                                              ; preds = %99, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator_for_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @compute_dominance_frontiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_updated_phi_nodes_for(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %9 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @compute_idf(ptr noundef nonnull %13, ptr noundef %1) #22
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  switch i32 %3, label %51 [
    i32 2048, label %23
    i32 8192, label %52
  ]

23:                                               ; preds = %22
  %24 = load ptr, ptr %12, align 8, !tbaa !69
  %25 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %24) #22
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %53, label %31

31:                                               ; preds = %23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %17, ptr noundef nonnull %6) #21
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %31, %48
  %35 = load ptr, ptr @cfun, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = load i32, ptr %6, align 4, !tbaa !17
  %41 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %39, i32 noundef %40) #21
  %42 = icmp eq ptr %41, %25
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %41, ptr noundef %25) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %40) #22
  br label %48

48:                                               ; preds = %34, %43, %46
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %34, !llvm.loop !129

51:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3054, ptr noundef nonnull @.str.32) #22
  br label %52

52:                                               ; preds = %16, %51, %22
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %17) #22
  br label %53

53:                                               ; preds = %48, %52, %31, %23
  %54 = load ptr, ptr %18, align 8, !tbaa !39
  %55 = icmp eq ptr %54, null
  br i1 %55, label %90, label %56

56:                                               ; preds = %53
  %57 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef nonnull %18) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %6) #21
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %8, i64 8
  br label %62

62:                                               ; preds = %60, %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  %63 = load ptr, ptr @cfun, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !23
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !27
  %68 = load i32, ptr %6, align 4, !tbaa !17
  %69 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %67, i32 noundef %68) #21
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef %69) #21
  store i32 0, ptr %8, align 8, !tbaa.struct !29
  store ptr %70, ptr %61, align 8, !tbaa.struct !30
  %71 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %7) #21, !range !26
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %62, %81
  %74 = load ptr, ptr %7, align 8, !tbaa !5
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !34
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %77) #22
  br label %81

81:                                               ; preds = %73, %79
  call fastcc void @ei_next(ptr noundef nonnull %8) #21
  %82 = load i32, ptr %8, align 8
  %83 = load ptr, ptr %61, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %7) #21, !range !26
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %73, !llvm.loop !130

86:                                               ; preds = %81, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %62, !llvm.loop !131

89:                                               ; preds = %86, %56
  tail call fastcc void @insert_phi_nodes_for(ptr noundef nonnull %0, ptr noundef nonnull %18, i8 noundef zeroext 1) #21
  br label %90

90:                                               ; preds = %89, %53
  tail call void @bitmap_obstack_free(ptr noundef nonnull %18) #22
  tail call void @bitmap_obstack_free(ptr noundef %17) #22
  br label %91

91:                                               ; preds = %4, %11, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
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
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !9
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !47
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_blocks(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 58) #22
  br label %7

7:                                                ; preds = %6, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i8 1, ptr %3, align 8
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, ptr @rewrite_enter_block, ptr @rewrite_update_enter_block
  %10 = select i1 %8, ptr @rewrite_leave_block, ptr @rewrite_update_leave_block
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 2
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 3
  store ptr %10, ptr %12, align 8
  %13 = tail call fastcc ptr @VEC_tree_heap_alloc() #21
  store ptr %13, ptr @block_defs_stack, align 8, !tbaa !5
  call void @init_walk_dominator_tree(ptr noundef nonnull %3) #22
  call void @walk_dominator_tree(ptr noundef nonnull %3, ptr noundef %0) #22
  call void @fini_walk_dominator_tree(ptr noundef nonnull %3) #22
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %7
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !17
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  call void @dump_dfa_stats(ptr noundef nonnull %14) #22
  %21 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @dump_tree_ssa_stats(ptr noundef %24) #21
  br label %25

25:                                               ; preds = %20, %23, %16, %7
  call fastcc void @VEC_tree_heap_free() #21
  %26 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @timevar_pop_1(i32 noundef 58) #22
  br label %29

29:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_name_info_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !132
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_name_info_p_heap_reserve(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @info_for_ssa_name, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_ssa_name_info_p_base_space(ptr noundef %2, i32 noundef %0) #21, !range !134
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @info_for_ssa_name, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_name_info_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !132
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !132
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ssa_name_info_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_name_info_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !135
  %7 = load i32, ptr %0, align 8, !tbaa !132
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
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !136
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  store ptr %1, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !142
  %6 = tail call i64 @htab_size(ptr noundef %1) #22
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !143
  %9 = load ptr, ptr %5, align 8, !tbaa !142
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !142
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !144

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !145
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = load ptr, ptr %2, align 8, !tbaa !142
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !142
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !5
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_ssa_operands() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_ssa_renamer() unnamed_addr #0 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 10
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, -2
  store i8 %7, ptr %5, align 8
  %8 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2310, ptr noundef nonnull @.str.32) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %0, %10
  %13 = phi ptr [ %2, %0 ], [ %11, %10 ]
  %14 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %13) #21
  %15 = tail call i64 @htab_elements(ptr noundef %14) #22
  %16 = tail call ptr @htab_create(i64 noundef %15, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #22
  store ptr %16, ptr @def_blocks, align 8, !tbaa !5
  %17 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #21
  %18 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #21, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %22, %20 ], [ %17, %12 ]
  tail call void @set_current_def(ptr noundef %21, ptr noundef null) #21
  %22 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #21
  %23 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #21, !range !26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %20, label %25, !llvm.loop !146

25:                                               ; preds = %20, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_site_blocks() unnamed_addr #0 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.mark_def_sites_global_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store i8 1, ptr %1, align 8
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !147
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @mark_def_sites_block, ptr %4, align 8, !tbaa !149
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !150
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %6, ptr %2, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %8, align 8, !tbaa !154
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #22
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %12) #22
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #22
  %13 = load ptr, ptr %2, align 8, !tbaa !151
  call void @bitmap_obstack_free(ptr noundef %13) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_phi_nodes(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 57) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %10 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #21
  %11 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8, %24
  %14 = phi ptr [ %25, %24 ], [ %10, %8 ]
  %15 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @get_phi_state(ptr noundef %14) #21, !range !155
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !9
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %22) #22
  br label %24

24:                                               ; preds = %17, %20, %13
  %25 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #21
  %26 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !26
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %13, label %28, !llvm.loop !156

28:                                               ; preds = %24, %8
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %4) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28, %31
  %32 = load i32, ptr %4, align 4, !tbaa !17
  %33 = tail call ptr @referenced_var_lookup(i32 noundef %32) #22
  %34 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %33) #21
  %35 = getelementptr inbounds %struct.def_blocks_d, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = tail call ptr @compute_idf(ptr noundef %36, ptr noundef %0) #22
  tail call fastcc void @insert_phi_nodes_for(ptr noundef %33, ptr noundef %37, i8 noundef zeroext 0) #21
  tail call void @bitmap_obstack_free(ptr noundef %37) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !26
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %31, !llvm.loop !157

40:                                               ; preds = %31, %28
  tail call void @bitmap_obstack_free(ptr noundef %9) #22
  %41 = load i8, ptr @timevar_enable, align 1, !tbaa !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @timevar_pop_1(i32 noundef 57) #22
  br label %44

44:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_def_sites_block(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  tail call void @bitmap_clear(ptr noundef %6) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2, %9
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  tail call fastcc void @mark_def_sites(ptr noundef %1, ptr noundef %10, ptr noundef %6) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %9, label %13, !llvm.loop !158

13:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_sites(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  tail call fastcc void @update_stmt(ptr noundef %1) #21
  %5 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 748, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %3, %7
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 0) #21
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 0) #21
  %9 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #21, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %8
  %12 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 1) #21
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11, %30
  %16 = phi ptr [ %31, %30 ], [ %12, %11 ]
  %17 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %16) #21
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !17
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 760, ptr noundef nonnull @.str.32) #22
  br label %24

24:                                               ; preds = %15, %23
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %26) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call fastcc void @set_livein_block(ptr noundef nonnull %17, ptr noundef %0) #21
  br label %30

30:                                               ; preds = %29, %24
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %31 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #21
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %15, label %34, !llvm.loop !159

34:                                               ; preds = %30, %11
  %35 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %1) #21
  %36 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %34, %46
  %39 = phi ptr [ %50, %46 ], [ %35, %34 ]
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !17
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 770, ptr noundef nonnull @.str.32) #22
  br label %46

46:                                               ; preds = %38, %45
  tail call fastcc void @set_def_block(ptr noundef nonnull %39, ptr noundef %0, i8 noundef zeroext 0) #21
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %39, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !9
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %48) #22
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 1) #21
  %50 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #21
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %38, label %53, !llvm.loop !160

53:                                               ; preds = %46, %34
  %54 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %1) #21, !range !26
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %1) #21, !range !26
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56, %53
  %60 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !34
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %62) #21
  br label %63

63:                                               ; preds = %56, %59, %8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  store ptr %4, ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !164
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !9
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
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_register_defs(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  tail call fastcc void @gimple_set_plf(ptr noundef %0, i8 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_rewrite_uses(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !100
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 771, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !169
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i8, ptr %0, align 8, !tbaa !171
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_livein_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_phi_state(ptr noundef %0) #21, !range !155
  %4 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.def_blocks_d, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #22
  %10 = icmp eq i32 %3, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = tail call i32 @bitmap_first_set_bit(ptr noundef %13) #22
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %14) #21
  %23 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %1, ptr noundef %22) #22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2, %11, %16
  tail call fastcc void @set_phi_state(ptr noundef %0, i32 noundef 2) #21
  br label %26

26:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !175
  store ptr %7, ptr %2, align 8, !tbaa !174
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !177
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !178
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !177
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !171
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !169
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_def_block(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @get_phi_state(ptr noundef %0) #21, !range !155
  %5 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.def_blocks_d, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = load i32, ptr %8, align 8, !tbaa !34
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %15) #22
  br label %17

17:                                               ; preds = %12, %3
  %18 = icmp eq i32 %4, 0
  %19 = select i1 %18, i32 1, i32 2
  tail call fastcc void @set_phi_state(ptr noundef %0, i32 noundef %19) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !175
  store ptr %8, ptr %2, align 8, !tbaa !174
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !180
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #21
  %17 = load ptr, ptr %11, align 8, !tbaa !183
  store ptr %17, ptr %10, align 8, !tbaa !180
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !171
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rewrite_uses_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_visited_p(ptr noundef %0) #21, !range !26
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @register_defs_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #21
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !100
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 9
  %7 = and i32 %3, -513
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 747, ptr noundef nonnull @.str.32) #22
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !180
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #21
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !180
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !183
  store ptr %25, ptr %18, align 8, !tbaa !180
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !174
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !174
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !175
  store ptr %41, ptr %32, align 8, !tbaa !174
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !171
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !100
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_phi_state(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  %7 = getelementptr inbounds %struct.ssa_name_info, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 8
  br label %13

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %11 = load i8, ptr %10, align 8
  %12 = lshr i8 %11, 2
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i8 [ %8, %5 ], [ %12, %9 ]
  %15 = and i8 %14, 3
  %16 = zext nneg i8 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_def_blocks_for(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !67
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 1) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = call ptr @xmalloc(i64 noundef 32) #22
  store ptr %0, ptr %8, align 8, !tbaa !67
  %9 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %10 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !69
  %11 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !71
  %13 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %14 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !70
  store ptr %8, ptr %4, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %1, %7
  %16 = phi ptr [ %8, %7 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_state(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  %8 = getelementptr inbounds %struct.ssa_name_info, ptr %7, i64 0, i32 1
  %9 = trunc i32 %1 to i8
  %10 = load i8, ptr %8, align 8
  %11 = and i8 %9, 3
  %12 = and i8 %10, -4
  %13 = or disjoint i8 %12, %11
  store i8 %13, ptr %8, align 8
  br label %22

14:                                               ; preds = %2
  %15 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %16 = trunc i32 %1 to i8
  %17 = load i8, ptr %15, align 8
  %18 = shl i8 %16, 2
  %19 = and i8 %18, 12
  %20 = and i8 %17, -13
  %21 = or disjoint i8 %20, %19
  store i8 %21, ptr %15, align 8
  br label %22

22:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 3103, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_def_blocks_for(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !67
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !5
  %4 = call ptr @htab_find(ptr noundef %3, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @compute_idf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_phi_nodes_for(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  %9 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1082, ptr noundef nonnull @.str.32) #22
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  tail call fastcc void @prune_unused_phi_nodes(ptr noundef %1, ptr noundef %17, ptr noundef %19) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %4) #21
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #21, !range !26
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %74, label %22

22:                                               ; preds = %12
  %23 = icmp eq i8 %2, 0
  %24 = getelementptr inbounds i8, ptr %7, i64 8
  br label %25

25:                                               ; preds = %22, %70
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = load i32, ptr %4, align 4, !tbaa !17
  %32 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %30, i32 noundef %31) #21
  br i1 %23, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, ptr %0, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %42, label %56

37:                                               ; preds = %25
  call fastcc void @mark_block_for_update(ptr noundef %32) #21
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  br label %43

42:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1109, ptr noundef nonnull @.str.32) #22
  br label %43

43:                                               ; preds = %41, %42
  %44 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %32) #22
  %45 = call ptr @duplicate_ssa_name(ptr noundef nonnull %0, ptr noundef %44) #22
  call fastcc void @gimple_phi_set_result(ptr noundef %44, ptr noundef %45) #21
  call fastcc void @add_new_name_mapping(ptr noundef %45, ptr noundef nonnull %0) #21
  %46 = call fastcc ptr @ei_start_1(ptr noundef %32) #21
  store i32 0, ptr %7, align 8, !tbaa.struct !29
  store ptr %46, ptr %24, align 8, !tbaa.struct !30
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #21, !range !26
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43, %49
  %50 = load ptr, ptr %5, align 8, !tbaa !5
  call void @add_phi_arg(ptr noundef %44, ptr noundef nonnull %0, ptr noundef %50, i32 noundef 0) #22
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %51 = load i32, ptr %7, align 8
  %52 = load ptr, ptr %24, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %5) #21, !range !26
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %49, !llvm.loop !184

55:                                               ; preds = %49, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  br label %70

56:                                               ; preds = %37, %33
  %57 = phi i64 [ %39, %37 ], [ %35, %33 ]
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !17
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1129, ptr noundef nonnull @.str.32) #22
  br label %62

62:                                               ; preds = %56, %61
  %63 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %32) #22
  %64 = call ptr @target_for_debug_bind(ptr noundef nonnull %0) #22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %63) #21
  %68 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %67) #21
  %69 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %64, ptr noundef %68, ptr noundef %63) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %32) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %69, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %70

70:                                               ; preds = %62, %66, %55
  %71 = phi ptr [ %44, %55 ], [ %63, %66 ], [ %63, %62 ]
  call fastcc void @set_register_defs(ptr noundef %71, i8 noundef zeroext 1) #21
  call fastcc void @mark_phi_for_rewrite(ptr noundef %32, ptr noundef %71) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #21, !range !26
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %25, !llvm.loop !185

74:                                               ; preds = %70, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_unused_phi_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  %9 = load ptr, ptr %2, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @bitmap_clear(ptr noundef %0) #22
  br label %188

12:                                               ; preds = %3
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %14 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %2) #22
  %15 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %0, ptr noundef %13) #22
  %16 = load ptr, ptr %0, align 8, !tbaa !39
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @bitmap_obstack_free(ptr noundef %13) #22
  br label %188

19:                                               ; preds = %12
  %20 = tail call zeroext i8 @bitmap_ior(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %0) #22
  %21 = tail call i64 @bitmap_count_bits(ptr noundef %13) #22
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 1
  %24 = or disjoint i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = tail call ptr @xmalloc(i64 noundef %26) #22
  store i32 1, ptr %27, align 4, !tbaa !186
  %28 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !188
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %6) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %19, %31
  %32 = phi i32 [ %49, %31 ], [ 1, %19 ]
  %33 = load ptr, ptr @cfun, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !27
  %38 = load i32, ptr %6, align 4, !tbaa !17
  %39 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %38) #21
  %40 = zext i32 %32 to i64
  %41 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %40
  store i32 %38, ptr %41, align 4, !tbaa !186
  %42 = tail call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %39) #22
  %43 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %40, i32 1
  store i32 %42, ptr %43, align 4, !tbaa !188
  %44 = add i32 %32, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %45
  store i32 %38, ptr %46, align 4, !tbaa !186
  %47 = tail call i32 @bb_dom_dfs_out(i32 noundef 1, ptr noundef %39) #22
  %48 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %45, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !188
  %49 = add i32 %32, 2
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %50 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %31, !llvm.loop !189

52:                                               ; preds = %31, %19
  %53 = phi i32 [ 1, %19 ], [ %49, %31 ]
  tail call void @bitmap_obstack_free(ptr noundef %13) #22
  %54 = icmp eq i32 %53, %24
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 894, ptr noundef nonnull @.str.32) #22
  br label %56

56:                                               ; preds = %52, %55
  %57 = zext i32 %53 to i64
  tail call void @spec_qsort(ptr noundef nonnull %27, i64 noundef %57, i64 noundef 8, ptr noundef nonnull @cmp_dfsnum) #22
  %58 = load i32, ptr %27, align 4, !tbaa !186
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 900, ptr noundef nonnull @.str.32) #22
  br label %61

61:                                               ; preds = %56, %60
  %62 = add i32 %22, 1
  %63 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %62) #21
  store ptr %63, ptr %4, align 8, !tbaa !5
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %63, i32 noundef 1) #21
  %64 = icmp ugt i32 %53, 1
  br i1 %64, label %65, label %109

65:                                               ; preds = %61, %105
  %66 = phi i64 [ %107, %105 ], [ 1, %61 ]
  %67 = phi i32 [ %93, %105 ], [ 1, %61 ]
  %68 = phi i32 [ %106, %105 ], [ 1, %61 ]
  %69 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66
  %70 = load i32, ptr %69, align 4, !tbaa !186
  %71 = icmp eq i32 %70, %67
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %63) #21
  %74 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %63) #21
  %75 = add i32 %74, -1
  %76 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %63, i32 noundef %75) #21
  %77 = zext i32 %68 to i64
  %78 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %77
  store i32 %76, ptr %78, align 4, !tbaa !186
  %79 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !188
  %81 = add i32 %80, 1
  %82 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %77, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !188
  br label %90

83:                                               ; preds = %65
  %84 = zext i32 %68 to i64
  %85 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %84
  store i32 %70, ptr %85, align 4, !tbaa !186
  %86 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !188
  %88 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %84, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !188
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %63, i32 noundef %70) #21
  %89 = load i32, ptr %88, align 4, !tbaa !188
  br label %90

90:                                               ; preds = %83, %72
  %91 = phi i32 [ %89, %83 ], [ %81, %72 ]
  %92 = phi i64 [ %84, %83 ], [ %77, %72 ]
  %93 = phi i32 [ %70, %83 ], [ %76, %72 ]
  %94 = add i32 %68, -1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %95, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !188
  %98 = icmp eq i32 %91, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %95
  %101 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %92
  %102 = load i32, ptr %101, align 4, !tbaa !186
  store i32 %102, ptr %100, align 4, !tbaa !186
  br label %105

103:                                              ; preds = %90
  %104 = add i32 %68, 1
  br label %105

105:                                              ; preds = %99, %103
  %106 = phi i32 [ %68, %99 ], [ %104, %103 ]
  %107 = add nuw nsw i64 %66, 1
  %108 = icmp eq i64 %107, %57
  br i1 %108, label %109, label %65, !llvm.loop !190

109:                                              ; preds = %105, %61
  %110 = phi i32 [ 1, %61 ], [ %53, %105 ]
  %111 = phi i32 [ 1, %61 ], [ %106, %105 ]
  store i32 %110, ptr %6, align 4, !tbaa !17
  %112 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %63) #21
  %113 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %63) #21
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 942, ptr noundef nonnull @.str.32) #22
  br label %116

116:                                              ; preds = %109, %115
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %128

120:                                              ; preds = %128
  %121 = load ptr, ptr %4, align 8
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi ptr [ %121, %120 ], [ %63, %116 ]
  %124 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %123) #21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %187, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %8, i64 8
  br label %132

128:                                              ; preds = %116, %128
  %129 = load i32, ptr %6, align 4, !tbaa !17
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %129) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %130 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %120, label %128, !llvm.loop !191

132:                                              ; preds = %126, %136
  %133 = phi ptr [ %123, %126 ], [ %137, %136 ]
  %134 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %133) #21
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %182, %159, %132, %143, %155
  %137 = load ptr, ptr %4, align 8
  %138 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %137) #21
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %187, label %132, !llvm.loop !192

140:                                              ; preds = %132
  %141 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %134) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load ptr, ptr @cfun, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.function, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !23
  %147 = getelementptr inbounds %struct.control_flow_graph, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !27
  %149 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %148, i32 noundef %134) #21
  %150 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %149) #22
  %151 = tail call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %150) #22
  %152 = tail call fastcc i32 @find_dfsnum_interval(ptr noundef nonnull %27, i32 noundef %111, i32 noundef %151) #21
  %153 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %152) #22
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %136, label %155

155:                                              ; preds = %140, %143
  %156 = phi i32 [ %152, %143 ], [ %134, %140 ]
  %157 = tail call i32 @bitmap_bit_p(ptr noundef %117, i32 noundef %156) #22
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %136

159:                                              ; preds = %155
  %160 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %117, i32 noundef %156) #22
  %161 = load ptr, ptr @cfun, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !23
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !27
  %166 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %165, i32 noundef %156) #21
  %167 = tail call fastcc ptr @ei_start_1(ptr noundef %166) #21
  store i32 0, ptr %8, align 8, !tbaa.struct !29
  store ptr %167, ptr %127, align 8, !tbaa.struct !30
  %168 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %167, ptr noundef nonnull %7) #21, !range !26
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %136, label %170, !llvm.loop !192

170:                                              ; preds = %159, %182
  %171 = load ptr, ptr %7, align 8, !tbaa !5
  %172 = load ptr, ptr %171, align 8, !tbaa !31
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !34
  %175 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %174) #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %174) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %174) #22
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %174) #21
  br label %182

182:                                              ; preds = %177, %170, %180
  call fastcc void @ei_next(ptr noundef nonnull %8) #21
  %183 = load i32, ptr %8, align 8
  %184 = load ptr, ptr %127, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %7) #21, !range !26
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %136, label %170, !llvm.loop !193

187:                                              ; preds = %136, %122
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %4) #21
  tail call void @bitmap_copy(ptr noundef nonnull %0, ptr noundef %117) #22
  tail call void @bitmap_obstack_free(ptr noundef %117) #22
  tail call void @free(ptr noundef %27) #21
  br label %188

188:                                              ; preds = %187, %18, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_block_for_update(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #22
  %5 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %14 = load i32, ptr %8, align 8, !tbaa !34
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #22
  tail call fastcc void @initialize_flags_in_bb(ptr noundef nonnull %0) #21
  br label %16

16:                                               ; preds = %6, %12
  ret void
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !26
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #21, !range !100
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !194

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_phi_for_rewrite(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %1) #21, !range !26
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %9 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %9, i32 noundef %5) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !24
  %18 = add nsw i32 %17, 1
  tail call fastcc void @VEC_gimple_vec_heap_reserve(i32 noundef %18) #21
  %19 = load ptr, ptr @phis_to_rewrite, align 8
  %20 = tail call fastcc i32 @VEC_gimple_vec_base_length(ptr noundef %19) #21
  %21 = icmp ugt i32 %20, %5
  br i1 %21, label %30, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr @phis_to_rewrite, align 8
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %20, %22 ]
  tail call fastcc void @VEC_gimple_vec_base_quick_push(ptr noundef %23) #21
  %26 = add i32 %25, 1
  %27 = icmp ugt i32 %26, %5
  br i1 %27, label %28, label %24, !llvm.loop !195

28:                                               ; preds = %24
  %29 = load ptr, ptr @phis_to_rewrite, align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = phi ptr [ %29, %28 ], [ %19, %11 ]
  %32 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %31, i32 noundef %5) #21
  store ptr %32, ptr %3, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @VEC_gimple_heap_alloc() #21
  store ptr %35, ptr %3, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %34, %30
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %3, ptr noundef %1) #21
  %37 = load ptr, ptr @phis_to_rewrite, align 8
  %38 = load ptr, ptr %3, align 8, !tbaa !5
  tail call fastcc void @VEC_gimple_vec_base_replace(ptr noundef %37, i32 noundef %5, ptr noundef %38) #21
  br label %39

39:                                               ; preds = %8, %2, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bb_dom_dfs_in(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bb_dom_dfs_out(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cmp_dfsnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !188
  %5 = getelementptr inbounds %struct.dom_dfsnum, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !188
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !196
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !196
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_int_base_pop(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 4, !tbaa !196
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !196
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !17
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !17
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !196
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @find_dfsnum_interval(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 {
  %4 = icmp ugt i32 %1, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %15, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %14, %5 ], [ %1, %3 ]
  %8 = add i32 %6, %7
  %9 = lshr i32 %8, 1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !188
  %13 = icmp ugt i32 %12, %2
  %14 = select i1 %13, i32 %9, i32 %7
  %15 = select i1 %13, i32 %6, i32 %9
  %16 = add nuw i32 %15, 1
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %5, label %18, !llvm.loop !198

18:                                               ; preds = %5
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !186
  ret i32 %23
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #21
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
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !199
  %6 = load i32, ptr %0, align 4, !tbaa !196
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_flags_in_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #22
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  call fastcc void @set_rewrite_uses(ptr noundef %7, i8 noundef zeroext 0) #21
  call fastcc void @set_register_defs(ptr noundef %7, i8 noundef zeroext 0) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !llvm.loop !200

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10, %18
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %15 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %14) #21, !range !26
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #22
  br label %18

18:                                               ; preds = %13, %17
  call fastcc void @set_rewrite_uses(ptr noundef %14, i8 noundef zeroext 0) #21
  call fastcc void @set_register_defs(ptr noundef %14, i8 noundef zeroext 0) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !26
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %13, label %21, !llvm.loop !201

21:                                               ; preds = %18, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !26
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_vec_heap_reserve(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_gimple_vec_base_space(ptr noundef %2, i32 noundef %0) #21, !range !134
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @phis_to_rewrite, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_vec_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !202
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_vec_base_quick_push(ptr noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !202
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !202
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr null, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_vec_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !204
  %7 = load i32, ptr %0, align 8, !tbaa !202
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #21
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
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !205
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !205
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !207
  %6 = load i32, ptr %0, align 8, !tbaa !205
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @repl_map_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !5
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = tail call i32 %2(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @repl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = load ptr, ptr %1, align 8, !tbaa !79
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @repl_map_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.repl_map_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: optsize
declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_repl_tbl(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.repl_map_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !79
  %4 = load ptr, ptr @repl_tbl, align 8, !tbaa !5
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = call ptr @xmalloc(i64 noundef 16) #22
  store ptr %0, ptr %9, align 8, !tbaa !79
  %10 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %11 = getelementptr inbounds %struct.repl_map_d, ptr %9, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !81
  store ptr %9, ptr %5, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.repl_map_d, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %17) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
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
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !9
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !47
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_def_site_for(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr @names_to_release, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2618, ptr noundef nonnull @.str.32) #22
  br label %11

11:                                               ; preds = %2, %5, %10
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = tail call fastcc ptr @gimple_bb(ptr noundef %13) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = load ptr, ptr @cfun, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !24
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2624, ptr noundef nonnull @.str.32) #22
  br label %26

26:                                               ; preds = %16, %25
  tail call fastcc void @mark_block_for_update(ptr noundef nonnull %14) #21
  tail call fastcc void @mark_def_interesting(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %14, i8 noundef zeroext %1) #21
  br label %27

27:                                               ; preds = %26, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_use_sites_for(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #23
  %4 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %0) #21
  %5 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %22, %20 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #21, !range !100
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %8) #21
  %15 = sext i32 %14 to i64
  %16 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %10, i64 noundef %15) #21
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  br label %20

18:                                               ; preds = %7
  %19 = tail call fastcc ptr @gimple_bb(ptr noundef %10) #21
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %17, %13 ]
  tail call fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %10, ptr noundef %21, i8 noundef zeroext %1) #21
  %22 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #21
  %23 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %7, label %25, !llvm.loop !208

25:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_interesting(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2431, ptr noundef nonnull @.str.32) #22
  br label %13

13:                                               ; preds = %4, %12
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 1) #21
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %13
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !100
  %17 = icmp eq i32 %16, 16
  %18 = zext i1 %17 to i8
  tail call fastcc void @set_def_block(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %18) #21
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = tail call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %0) #21, !range !26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %26 = tail call fastcc ptr @names_replaced_by(ptr noundef nonnull %0) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull %6) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %31
  %32 = load ptr, ptr @cfun, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = load i32, ptr %6, align 4, !tbaa !17
  %38 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %36, i32 noundef %37) #21
  tail call fastcc void @set_def_block(ptr noundef %38, ptr noundef %2, i8 noundef zeroext %18) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !26
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %31, !llvm.loop !209

41:                                               ; preds = %31, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %42

42:                                               ; preds = %15, %22, %41, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !210
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  store ptr %6, ptr %0, align 8, !tbaa !213
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !26
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !213
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #21, !range !100
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 544, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %3, i32 noundef 0) #21
  %9 = ptrtoint ptr %0 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 48
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  tail call fastcc void @mark_block_for_update(ptr noundef %5) #21
  tail call fastcc void @mark_block_for_update(ptr noundef %2) #21
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !100
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call fastcc void @mark_phi_for_rewrite(ptr noundef %5, ptr noundef %1) #21
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %24, label %15

10:                                               ; preds = %4
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %11 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #21, !range !26
  %12 = icmp ne i8 %11, 0
  %13 = icmp eq i8 %3, 0
  %14 = or i1 %13, %12
  br i1 %14, label %24, label %15

15:                                               ; preds = %10, %8
  %16 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %17 = getelementptr inbounds %struct.def_blocks_d, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call fastcc void @set_livein_block(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %24

24:                                               ; preds = %8, %23, %15, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !213
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  store ptr %4, ptr %0, align 8, !tbaa !213
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !26
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @symbol_marked_for_renaming(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %8) #22
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 783, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %8, align 4, !tbaa !169
  %9 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = load ptr, ptr %3, align 8, !tbaa !183
  store ptr %8, ptr %2, align 8, !tbaa !180
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !171
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_enter_block(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !17
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.50, i32 noundef %13) #21
  br label %15

15:                                               ; preds = %11, %7, %2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef null) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #22
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15, %24
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %19) #21
  %21 = call zeroext i8 @is_gimple_reg(ptr noundef %20) #22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1404, ptr noundef nonnull @.str.32) #22
  br label %24

24:                                               ; preds = %18, %23
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  call fastcc void @register_new_def(ptr noundef %20, ptr noundef %26) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %18, label %29, !llvm.loop !215

29:                                               ; preds = %24, %15
  %30 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !34
  %33 = lshr i32 %32, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !47
  %37 = and i32 %32, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %39, %36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %45
  call fastcc void @rewrite_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !26
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %45, label %48, !llvm.loop !216

48:                                               ; preds = %45, %42, %29
  call fastcc void @rewrite_add_phi_arguments(ptr noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr @block_defs_stack, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2, %22
  %7 = phi ptr [ %25, %22 ], [ %3, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call zeroext i8 @is_gimple_reg(ptr noundef %16) #22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr @block_defs_stack, align 8
  %21 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %20) #21
  br label %22

22:                                               ; preds = %19, %14, %10
  %23 = phi ptr [ %8, %14 ], [ %8, %19 ], [ null, %10 ]
  %24 = phi ptr [ %16, %14 ], [ %21, %19 ], [ %8, %10 ]
  tail call void @set_current_def(ptr noundef %24, ptr noundef %23) #21
  %25 = load ptr, ptr @block_defs_stack, align 8
  %26 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %25) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %6

28:                                               ; preds = %22, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_update_enter_block(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !17
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.52, i32 noundef %15) #21
  br label %17

17:                                               ; preds = %13, %9, %2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef null) #21
  %18 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %95, label %23

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !29
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8, !tbaa.struct !30
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %3) #21, !range !26
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23, %34
  %29 = load ptr, ptr %3, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !101
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %25, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %3) #21, !range !26
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %28, !llvm.loop !217

39:                                               ; preds = %34, %28, %23
  %40 = phi i1 [ true, %23 ], [ %33, %28 ], [ %33, %34 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #22
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !26
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %39, %67
  %44 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  %45 = call fastcc zeroext i8 @register_defs_p(ptr noundef %44) #21, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  %48 = call fastcc ptr @gimple_phi_result(ptr noundef %44) #21
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %50) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  call fastcc void @register_new_update_single(ptr noundef nonnull %48, ptr noundef %50) #21
  br label %63

54:                                               ; preds = %47
  %55 = call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %48) #21, !range !26
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call fastcc ptr @names_replaced_by(ptr noundef nonnull %48) #21
  call fastcc void @register_new_update_set(ptr noundef nonnull %48, ptr noundef %58) #21
  br label %59

59:                                               ; preds = %57, %54
  %60 = call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %48) #21, !range !26
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call fastcc void @register_new_update_single(ptr noundef nonnull %48, ptr noundef nonnull %48) #21
  br label %63

63:                                               ; preds = %59, %62, %53
  br i1 %40, label %67, label %64

64:                                               ; preds = %63
  %65 = load i64, ptr %48, align 8
  %66 = or i64 %65, 4194304
  store i64 %66, ptr %48, align 8
  br label %67

67:                                               ; preds = %63, %64, %43
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !26
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %43, label %70, !llvm.loop !218

70:                                               ; preds = %67, %39
  %71 = load ptr, ptr @interesting_blocks, align 8, !tbaa !5
  %72 = load i32, ptr %19, align 8, !tbaa !34
  %73 = lshr i32 %72, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !47
  %77 = and i32 %72, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %79, %76
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %70
  %83 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %84 = call i32 @bitmap_bit_p(ptr noundef %83, i32 noundef %72) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2136, ptr noundef nonnull @.str.32) #22
  br label %87

87:                                               ; preds = %82, %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !26
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87, %90
  %91 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call fastcc void @rewrite_update_stmt(ptr noundef %91, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !26
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %90, label %94, !llvm.loop !219

94:                                               ; preds = %90, %87, %70
  call fastcc void @rewrite_update_phi_arguments(ptr noundef %1) #21
  br label %95

95:                                               ; preds = %17, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_update_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr @block_defs_stack, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @block_defs_stack, align 8
  %12 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %11) #21
  tail call void @set_current_def(ptr noundef nonnull %8, ptr noundef %12) #21
  %13 = load ptr, ptr @block_defs_stack, align 8
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  ret ptr %1
}

; Function Attrs: optsize
declare void @dump_dfa_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #13 {
  %1 = load ptr, ptr @block_defs_stack, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @block_defs_stack, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 1) #21
  %2 = load ptr, ptr @block_defs_stack, align 8, !tbaa !5
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_def(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_phi_state(ptr noundef %1) #21, !range !155
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @get_current_def(ptr noundef %1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %1) #21
  br label %12

12:                                               ; preds = %11, %8, %5
  %13 = phi ptr [ %6, %11 ], [ %6, %8 ], [ %1, %5 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %13) #21
  br label %14

14:                                               ; preds = %2, %12
  tail call void @set_current_def(ptr noundef %1, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #23
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %4 = load ptr, ptr @blocks_to_update, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1306, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %3) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %3) #21, !range !26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %10, %7
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !17
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 19, i64 1, ptr nonnull %14)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @print_gimple_stmt(ptr noundef %22, ptr noundef %3, i32 noundef 0, i32 noundef 2) #22
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %20, %16, %13
  %26 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %3) #21, !range !26
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 1) #21
  %30 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28, %41
  %33 = phi ptr [ %43, %41 ], [ %29, %28 ]
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %33) #21
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !17
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1322, ptr noundef nonnull @.str.32) #22
  br label %41

41:                                               ; preds = %32, %40
  %42 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %34) #21
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %33, ptr noundef %42) #21
  %43 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #21
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %32, label %46, !llvm.loop !220

46:                                               ; preds = %41, %28, %25
  %47 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %3) #21, !range !26
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 2) #21
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %49, %69
  %54 = phi ptr [ %70, %69 ], [ %50, %49 ]
  %55 = call fastcc ptr @get_def_from_ptr(ptr noundef %54) #21
  %56 = call fastcc ptr @make_ssa_name(ptr noundef %55, ptr noundef %3) #21
  %57 = load i64, ptr %55, align 8
  %58 = and i64 %57, 65535
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !17
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1333, ptr noundef nonnull @.str.32) #22
  br label %63

63:                                               ; preds = %53, %62
  store ptr %56, ptr %54, align 8, !tbaa !5
  %64 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %54) #21
  call fastcc void @register_new_def(ptr noundef %64, ptr noundef nonnull %55) #21
  %65 = call ptr @target_for_debug_bind(ptr noundef nonnull %55) #22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %65, ptr noundef %56, ptr noundef %3) #22
  call void @gsi_insert_after(ptr noundef nonnull %0, ptr noundef %68, i32 noundef 1) #22
  br label %69

69:                                               ; preds = %67, %63
  %70 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #21
  %71 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %53, label %73, !llvm.loop !221

73:                                               ; preds = %69, %49, %46, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_add_phi_arguments(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !29
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !30
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %1, %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %11 = load ptr, ptr %2, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #22
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10, %16
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  %18 = call fastcc ptr @gimple_phi_result(ptr noundef %17) #21
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = call fastcc ptr @get_reaching_def(ptr noundef %20) #21
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = call fastcc i32 @gimple_location(ptr noundef %23) #21
  call void @add_phi_arg(ptr noundef %17, ptr noundef %21, ptr noundef %11, i32 noundef %24) #22
  call fastcc void @gsi_next(ptr noundef nonnull %4) #21
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %16, label %27, !llvm.loop !223

27:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %28 = load i32, ptr %3, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %2) #21, !range !26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %10, !llvm.loop !224

32:                                               ; preds = %27, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @block_defs_stack, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #21, !range !134
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @block_defs_stack, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !55
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !55
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !225
  %7 = load i32, ptr %0, align 8, !tbaa !55
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #18 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  store ptr %1, ptr %4, align 8, !tbaa !5
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_reaching_def(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @get_current_def(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  br label %13

13:                                               ; preds = %4, %10
  %14 = phi ptr [ %12, %10 ], [ %0, %4 ]
  %15 = tail call fastcc ptr @get_default_def_for(ptr noundef %14) #21
  tail call void @set_current_def(ptr noundef nonnull %0, ptr noundef %15) #21
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi ptr [ %15, %13 ], [ %2, %1 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #22
  ret ptr %4
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !212
  store ptr %2, ptr %6, align 8, !tbaa !226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #18 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !226
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #18 {
  store ptr %1, ptr %0, align 8, !tbaa !226
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !212
  store ptr %0, ptr %4, align 8, !tbaa !226
  store ptr %0, ptr %3, align 8, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_default_def_for(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = tail call ptr @gimple_default_def(ptr noundef %2, ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call ptr @gimple_build_nop() #22
  %7 = tail call fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %6) #21
  tail call void @set_default_def(ptr noundef %0, ptr noundef %7) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !9
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !55
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_update_single(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @get_current_def(ptr noundef %1) #21
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 2) #21
  %4 = load ptr, ptr @block_defs_stack, align 8
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef %3) #21
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef %1) #21
  tail call void @set_current_def(ptr noundef %1, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_update_set(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #21
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = load i32, ptr %4, align 4, !tbaa !17
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %13) #21
  tail call fastcc void @register_new_update_single(ptr noundef %0, ptr noundef %14) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !26
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !227

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_update_stmt(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %4 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %0) #21, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %0) #21, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !17
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 39, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %16, %12, %9
  %22 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %0) #21, !range !26
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 1) #21
  %29 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27, %35
  %32 = phi ptr [ %36, %35 ], [ %28, %27 ]
  %33 = tail call fastcc zeroext i8 @maybe_replace_use_in_debug_stmt(ptr noundef %32) #21, !range !26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %31, label %49, !llvm.loop !228

39:                                               ; preds = %31
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #21
  tail call fastcc void @update_stmt(ptr noundef %0) #21
  br label %49

40:                                               ; preds = %24
  %41 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 5) #21
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %46, %44 ], [ %41, %40 ]
  tail call fastcc void @maybe_replace_use(ptr noundef %45) #21
  %46 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %47 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %44, label %49, !llvm.loop !229

49:                                               ; preds = %35, %44, %27, %40, %39, %21
  %50 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %0) #21, !range !26
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 10) #21
  %54 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %58, %56 ], [ %53, %52 ]
  tail call fastcc void @maybe_register_def(ptr noundef %57, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  %58 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %3) #21
  %59 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %56, label %61, !llvm.loop !230

61:                                               ; preds = %56, %52, %49, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_update_phi_arguments(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !29
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !30
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #21, !range !26
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %105, label %10

10:                                               ; preds = %1, %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %11 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !5
  %12 = load ptr, ptr %2, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %100, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr @phis_to_rewrite, align 8
  %21 = load ptr, ptr %13, align 8, !tbaa !222
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !34
  %24 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %20, i32 noundef %23) #21
  %25 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %4) #21, !range !134
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %100, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  %29 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  br label %30

30:                                               ; preds = %27, %96
  %31 = phi i32 [ 0, %27 ], [ %97, %96 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !5
  %33 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %32) #21, !range !26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2006, ptr noundef nonnull @.str.32) #22
  br label %36

36:                                               ; preds = %30, %35
  %37 = load i32, ptr %28, align 4, !tbaa !231
  %38 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %32, i32 noundef %37) #21
  %39 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !17
  %46 = icmp eq i32 %45, 3
  %47 = icmp eq i64 %43, 141
  %48 = or i1 %46, %47
  br i1 %48, label %54, label %96

49:                                               ; preds = %36
  %50 = tail call fastcc ptr @gimple_phi_result(ptr noundef %32) #21
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  %53 = tail call fastcc ptr @get_reaching_def(ptr noundef %52) #21
  br label %69

54:                                               ; preds = %41
  br i1 %46, label %58, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  br label %58

58:                                               ; preds = %54, %55
  %59 = phi ptr [ %57, %55 ], [ %39, %54 ]
  %60 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %59) #21
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call fastcc ptr @get_reaching_def(ptr noundef %59) #21
  br label %69

64:                                               ; preds = %58
  %65 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %39) #21, !range !26
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %39) #21
  br label %69

69:                                               ; preds = %62, %67, %49
  %70 = phi ptr [ %53, %49 ], [ %63, %62 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %38) #21
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %38, ptr noundef nonnull %70) #21
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #21, !range !100
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %75) #21
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @gimple_phi_arg_location(ptr noundef %75) #21
  br label %85

83:                                               ; preds = %78, %72
  %84 = tail call fastcc i32 @gimple_location(ptr noundef %75) #21
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = sext i32 %73 to i64
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %32, i64 noundef %87, i32 noundef %86) #21
  br label %88

88:                                               ; preds = %64, %85, %69
  %89 = load i32, ptr %29, align 8, !tbaa !101
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #21
  %94 = load i64, ptr %93, align 8
  %95 = or i64 %94, 4194304
  store i64 %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %88, %92, %41
  %97 = add i32 %31, 1
  %98 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef %97, ptr noundef nonnull %4) #21, !range !134
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %30, !llvm.loop !232

100:                                              ; preds = %96, %19, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %101 = load i32, ptr %3, align 8
  %102 = load ptr, ptr %7, align 8
  %103 = call fastcc zeroext i8 @ei_cond(i32 %101, ptr %102, ptr noundef nonnull %2) #21, !range !26
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %10, !llvm.loop !233

105:                                              ; preds = %100, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @maybe_replace_use_in_debug_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ %2, %1 ]
  %13 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %12) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @get_current_def(ptr noundef %12) #21
  br label %28

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %2) #21, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @get_current_def(ptr noundef nonnull %2) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 4294967296
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, ptr null, ptr %2
  br label %28

28:                                               ; preds = %23, %20, %15
  %29 = phi ptr [ %16, %15 ], [ %21, %20 ], [ %27, %23 ]
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %29, %2
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %29) #21
  br label %34

34:                                               ; preds = %17, %33, %28
  %35 = phi i1 [ true, %33 ], [ %30, %28 ], [ true, %17 ]
  %36 = zext i1 %35 to i8
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_replace_use(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ %2, %1 ]
  %13 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %12) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @get_reaching_def(ptr noundef %12) #21
  br label %22

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %2) #21, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %2) #21
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %23, %2
  %26 = or i1 %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %23) #21
  br label %28

28:                                               ; preds = %17, %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_register_def(ptr nocapture noundef %0, ptr noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #0 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !17
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi ptr [ %14, %12 ], [ %6, %3 ]
  %17 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %16) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %85, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %6, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %83

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %6, ptr noundef %1) #21
  store ptr %26, ptr %0, align 8, !tbaa !5
  %27 = tail call ptr @target_for_debug_bind(ptr noundef %16) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %27, ptr noundef %26, ptr noundef %1) #22
  %31 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !26
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %1) #22
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %82, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 1
  %39 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %38) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !29
  %40 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %39, ptr %40, align 8, !tbaa.struct !30
  %41 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %39, ptr noundef nonnull %5) #21, !range !26
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %36, %53
  %44 = phi ptr [ %54, %53 ], [ null, %36 ]
  %45 = load ptr, ptr %5, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !101
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1875, ptr noundef nonnull @.str.32) #22
  br label %53

53:                                               ; preds = %52, %50, %43
  %54 = phi ptr [ %44, %43 ], [ %45, %50 ], [ %45, %52 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %55 = load i32, ptr %4, align 8
  %56 = load ptr, ptr %40, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %5) #21, !range !26
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %43, !llvm.loop !234

59:                                               ; preds = %53
  %60 = icmp eq ptr %54, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !222
  %64 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %63) #21, !range !26
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @phi_nodes(ptr noundef %63) #21
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load ptr, ptr %62, align 8, !tbaa !222
  %71 = load ptr, ptr @cfun, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !23
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !73
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %36, %69, %66, %61, %59
  %78 = phi ptr [ %54, %69 ], [ %54, %66 ], [ %54, %61 ], [ null, %59 ], [ null, %36 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1881, ptr noundef nonnull @.str.32) #22
  br label %79

79:                                               ; preds = %69, %77
  %80 = phi ptr [ %54, %69 ], [ %78, %77 ]
  %81 = tail call ptr @gsi_insert_on_edge_immediate(ptr noundef %80, ptr noundef %30) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  br label %83

82:                                               ; preds = %33, %29
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %30, i32 noundef 1) #22
  br label %83

83:                                               ; preds = %25, %82, %79, %19
  %84 = phi ptr [ %6, %19 ], [ %26, %79 ], [ %26, %82 ], [ %26, %25 ]
  call fastcc void @register_new_update_single(ptr noundef %84, ptr noundef %16) #21
  br label %94

85:                                               ; preds = %15
  %86 = tail call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %6) #21, !range !26
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call fastcc ptr @names_replaced_by(ptr noundef nonnull %6) #21
  tail call fastcc void @register_new_update_set(ptr noundef nonnull %6, ptr noundef %89) #21
  br label %90

90:                                               ; preds = %88, %85
  %91 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %6) #21, !range !26
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call fastcc void @register_new_update_single(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  br label %94

94:                                               ; preds = %90, %93, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !26
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 1665, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr null, ptr %10, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !9
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 1622, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !100
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !17
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !214
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !164
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 510, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !235
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !205
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !9
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #21
  %3 = getelementptr inbounds %struct.phi_arg_d, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !236
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = trunc i64 %1 to i32
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #21
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !236
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 24}
!11 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !6, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !6, i64 16}
!14 = !{!"gimple_df", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !15, i64 48, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !12, i64 96, !16, i64 104}
!15 = !{!"pt_solution", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !6, i64 8}
!16 = !{!"ssa_operands", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16, !6, i64 24, !6, i64 32}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !12, i64 12}
!19 = !{!"ssa_name_info", !6, i64 0, !12, i64 8, !12, i64 12}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!19, !6, i64 0}
!23 = !{!11, !6, i64 8}
!24 = !{!25, !12, i64 32}
!25 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 40, !12, i64 48, !7, i64 52, !7, i64 60, !12, i64 68, !12, i64 72}
!26 = !{i8 0, i8 2}
!27 = !{!25, !6, i64 16}
!28 = distinct !{!28, !21}
!29 = !{i64 0, i64 4, !17, i64 8, i64 8, !5}
!30 = !{i64 0, i64 8, !5}
!31 = !{!32, !6, i64 0}
!32 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !33, i64 56}
!33 = !{!"long", !7, i64 0}
!34 = !{!35, !12, i64 80}
!35 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !33, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!36 = !{!25, !6, i64 0}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = !{!40, !6, i64 0}
!40 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !12, i64 16, !6, i64 24}
!41 = !{!42, !6, i64 0}
!42 = !{!"", !6, i64 0, !6, i64 8, !12, i64 16, !33, i64 24}
!43 = !{!42, !6, i64 8}
!44 = !{!45, !12, i64 16}
!45 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !12, i64 16, !7, i64 24}
!46 = !{!42, !12, i64 16}
!47 = !{!33, !33, i64 0}
!48 = !{!42, !33, i64 24}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = !{!45, !6, i64 0}
!52 = !{!53, !12, i64 0}
!53 = !{!"", !12, i64 0, !6, i64 8}
!54 = distinct !{!54, !21}
!55 = !{!56, !12, i64 0}
!56 = !{!"VEC_tree_base", !12, i64 0, !12, i64 4, !7, i64 8}
!57 = !{!14, !6, i64 88}
!58 = distinct !{!58, !21}
!59 = !{!60, !6, i64 176}
!60 = !{!"lang_hooks", !6, i64 0, !33, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !61, i64 240, !62, i64 248, !63, i64 256, !64, i64 272, !65, i64 432, !66, i64 560, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !7, i64 672}
!61 = !{!"lang_hooks_for_tree_inlining", !6, i64 0}
!62 = !{!"lang_hooks_for_callgraph", !6, i64 0}
!63 = !{!"lang_hooks_for_tree_dump", !6, i64 0, !6, i64 8}
!64 = !{!"lang_hooks_for_decls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!65 = !{!"lang_hooks_for_types", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120}
!66 = !{!"lang_hooks_for_lto", !6, i64 0, !6, i64 8, !6, i64 16}
!67 = !{!68, !6, i64 0}
!68 = !{!"def_blocks_d", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!69 = !{!68, !6, i64 8}
!70 = !{!68, !6, i64 24}
!71 = !{!68, !6, i64 16}
!72 = !{!35, !6, i64 56}
!73 = !{!25, !6, i64 8}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = !{!77, !6, i64 0}
!77 = !{!"simple_bitmap_def", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!78 = distinct !{!78, !21}
!79 = !{!80, !6, i64 0}
!80 = !{!"repl_map_d", !6, i64 0, !6, i64 8}
!81 = !{!80, !6, i64 8}
!82 = distinct !{!82, !21}
!83 = !{!84, !12, i64 0}
!84 = !{!"update_ssa_stats_d", !12, i64 0, !12, i64 4, !6, i64 8, !12, i64 16}
!85 = !{!84, !12, i64 4}
!86 = !{!84, !12, i64 16}
!87 = distinct !{!87, !21}
!88 = !{!89, !12, i64 12}
!89 = !{!"", !6, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !33, i64 24}
!90 = !{!89, !12, i64 16}
!91 = !{!77, !12, i64 12}
!92 = !{!89, !12, i64 8}
!93 = !{!89, !6, i64 0}
!94 = !{!89, !33, i64 24}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = !{!84, !6, i64 8}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = !{i32 0, i32 256}
!101 = !{!32, !12, i64 48}
!102 = distinct !{!102, !21}
!103 = !{!77, !12, i64 8}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = !{!116, !12, i64 8}
!116 = !{!"param_info", !6, i64 0, !12, i64 8, !7, i64 12, !12, i64 16, !12, i64 20, !6, i64 24}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = !{!133, !12, i64 0}
!133 = !{!"VEC_ssa_name_info_p_base", !12, i64 0, !12, i64 4, !7, i64 8}
!134 = !{i32 0, i32 2}
!135 = !{!133, !12, i64 4}
!136 = !{!137, !12, i64 0}
!137 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !7, i64 8}
!138 = !{!139, !6, i64 0}
!139 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!140 = !{!141, !6, i64 24}
!141 = !{!"htab", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !12, i64 56, !12, i64 60, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104}
!142 = !{!139, !6, i64 8}
!143 = !{!139, !6, i64 16}
!144 = distinct !{!144, !21}
!145 = !{!14, !6, i64 0}
!146 = distinct !{!146, !21}
!147 = !{!148, !6, i64 8}
!148 = !{!"dom_walk_data", !12, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !33, i64 48, !6, i64 56}
!149 = !{!148, !6, i64 16}
!150 = !{!148, !6, i64 24}
!151 = !{!152, !6, i64 0}
!152 = !{!"mark_def_sites_global_data", !6, i64 0}
!153 = !{!148, !6, i64 32}
!154 = !{!148, !33, i64 48}
!155 = !{i32 0, i32 4}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = distinct !{!160, !21}
!161 = !{!162, !6, i64 0}
!162 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!163 = !{!162, !6, i64 16}
!164 = !{!35, !12, i64 96}
!165 = !{!166, !6, i64 0}
!166 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!167 = !{!168, !6, i64 0}
!168 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!169 = !{!170, !12, i64 4}
!170 = !{!"ssa_operand_iterator_d", !7, i64 0, !12, i64 4, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !6, i64 32}
!171 = !{!170, !7, i64 0}
!172 = !{!173, !6, i64 24}
!173 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!174 = !{!170, !6, i64 16}
!175 = !{!176, !6, i64 0}
!176 = !{!"use_optype_d", !6, i64 0, !173, i64 8}
!177 = !{!170, !12, i64 24}
!178 = !{!170, !12, i64 28}
!179 = !{!170, !6, i64 32}
!180 = !{!170, !6, i64 8}
!181 = !{!182, !6, i64 8}
!182 = !{!"def_optype_d", !6, i64 0, !6, i64 8}
!183 = !{!182, !6, i64 0}
!184 = distinct !{!184, !21}
!185 = distinct !{!185, !21}
!186 = !{!187, !12, i64 0}
!187 = !{!"dom_dfsnum", !12, i64 0, !12, i64 4}
!188 = !{!187, !12, i64 4}
!189 = distinct !{!189, !21}
!190 = distinct !{!190, !21}
!191 = distinct !{!191, !21}
!192 = distinct !{!192, !21}
!193 = distinct !{!193, !21}
!194 = distinct !{!194, !21}
!195 = distinct !{!195, !21}
!196 = !{!197, !12, i64 0}
!197 = !{!"VEC_int_base", !12, i64 0, !12, i64 4, !7, i64 8}
!198 = distinct !{!198, !21}
!199 = !{!197, !12, i64 4}
!200 = distinct !{!200, !21}
!201 = distinct !{!201, !21}
!202 = !{!203, !12, i64 0}
!203 = !{!"VEC_gimple_vec_base", !12, i64 0, !12, i64 4, !7, i64 8}
!204 = !{!203, !12, i64 4}
!205 = !{!206, !12, i64 0}
!206 = !{!"VEC_gimple_base", !12, i64 0, !12, i64 4, !7, i64 8}
!207 = !{!206, !12, i64 4}
!208 = distinct !{!208, !21}
!209 = distinct !{!209, !21}
!210 = !{!211, !6, i64 8}
!211 = !{!"immediate_use_iterator_d", !6, i64 0, !6, i64 8, !173, i64 16, !6, i64 48}
!212 = !{!173, !6, i64 8}
!213 = !{!211, !6, i64 0}
!214 = !{!35, !6, i64 0}
!215 = distinct !{!215, !21}
!216 = distinct !{!216, !21}
!217 = distinct !{!217, !21}
!218 = distinct !{!218, !21}
!219 = distinct !{!219, !21}
!220 = distinct !{!220, !21}
!221 = distinct !{!221, !21}
!222 = !{!32, !6, i64 8}
!223 = distinct !{!223, !21}
!224 = distinct !{!224, !21}
!225 = !{!56, !12, i64 4}
!226 = !{!173, !6, i64 0}
!227 = distinct !{!227, !21}
!228 = distinct !{!228, !21}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, !21}
!231 = !{!32, !12, i64 44}
!232 = distinct !{!232, !21}
!233 = distinct !{!233, !21}
!234 = distinct !{!234, !21}
!235 = !{!166, !6, i64 8}
!236 = !{!237, !12, i64 40}
!237 = !{!"phi_arg_d", !173, i64 0, !6, i64 32, !12, i64 40}
