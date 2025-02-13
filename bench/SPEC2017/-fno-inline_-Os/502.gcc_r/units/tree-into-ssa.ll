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
define dso_local ptr @get_current_def(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !641 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %7, !prof !642

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  br label %10

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %9 = getelementptr inbounds %struct.var_ann_d, ptr %8, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !643
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_ssa_name_ann(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !647 !PGOFuncName !648 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !649
  %4 = load ptr, ptr @info_for_ssa_name, align 8
  %5 = tail call fastcc i32 @VEC_ssa_name_info_p_base_length(ptr noundef %4) #21
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %23, label %7, !prof !650

7:                                                ; preds = %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !643
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !651
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !654
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #21
  tail call fastcc void @VEC_ssa_name_info_p_heap_reserve(i32 noundef %13) #21
  %14 = icmp ult i32 %5, %13
  br i1 %14, label %15, label %23, !prof !658

15:                                               ; preds = %7, %15
  %16 = phi i32 [ %17, %15 ], [ %5, %7 ]
  %17 = add i32 %16, 1
  %18 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #22
  %19 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !659
  %20 = getelementptr inbounds %struct.ssa_name_info, ptr %18, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !660
  %21 = load ptr, ptr @info_for_ssa_name, align 8
  tail call fastcc void @VEC_ssa_name_info_p_base_quick_push(ptr noundef %21, ptr noundef %18) #21
  %22 = icmp eq i32 %17, %13
  br i1 %22, label %23, label %15, !prof !662, !llvm.loop !663

23:                                               ; preds = %15, %7, %1
  %24 = load ptr, ptr @info_for_ssa_name, align 8
  %25 = tail call fastcc ptr @VEC_ssa_name_info_p_base_index(ptr noundef %24, i32 noundef %3) #21
  %26 = getelementptr inbounds %struct.ssa_name_info, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !660
  %28 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !659
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34, !prof !665

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ssa_name_info, ptr %25, i64 0, i32 1
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, -4
  store i8 %33, ptr %31, align 8
  store ptr null, ptr %25, align 8, !tbaa !666
  store i32 %28, ptr %26, align 4, !tbaa !660
  br label %34

34:                                               ; preds = %30, %23
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !667 !PGOFuncName !668 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 32, label %4
    i16 34, label %6
    i16 36, label %8
  ], !prof !669

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !643
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_def(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !670 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8, !prof !671

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  br label %11

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %10 = getelementptr inbounds %struct.var_ann_d, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ %7, %6 ]
  store ptr %1, ptr %12, align 8, !tbaa !643
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_global_livein(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !643
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !673
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !674
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #21
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !676
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %68, label %20

18:                                               ; preds = %20
  %19 = getelementptr inbounds i8, ptr %6, i64 8
  br label %32

20:                                               ; preds = %2, %20
  %21 = phi ptr [ %29, %20 ], [ %15, %2 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !643
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !673
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !677
  %27 = load i32, ptr %3, align 4, !tbaa !659
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %27) #21
  %29 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %28, ptr %21, align 8, !tbaa !643
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !676
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %18, label %20, !llvm.loop !678

32:                                               ; preds = %18, %65
  %33 = phi ptr [ %29, %18 ], [ %66, %65 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %34 = getelementptr inbounds ptr, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !tbaa !643
  %36 = tail call fastcc ptr @ei_start_1(ptr noundef %35) #21
  store i32 0, ptr %6, align 8, !tbaa.struct !679
  store ptr %36, ptr %19, align 8, !tbaa.struct !680
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %36, ptr noundef nonnull %5) #21, !range !676
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %32, %59
  %40 = phi ptr [ %60, %59 ], [ %34, %32 ]
  %41 = load ptr, ptr %5, align 8, !tbaa !643
  %42 = load ptr, ptr %41, align 8, !tbaa !681
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !684
  %45 = load ptr, ptr @cfun, align 8, !tbaa !643
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !673
  %48 = load ptr, ptr %47, align 8, !tbaa !686
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
  store ptr %42, ptr %40, align 8, !tbaa !643
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %44) #22
  br label %59

59:                                               ; preds = %56, %53, %50, %39
  %60 = phi ptr [ %40, %50 ], [ %40, %53 ], [ %57, %56 ], [ %40, %39 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #21
  %61 = load i32, ptr %6, align 8
  %62 = load ptr, ptr %19, align 8
  %63 = call fastcc zeroext i8 @ei_cond(i32 %61, ptr %62, ptr noundef nonnull %5) #21, !range !676
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %39, !llvm.loop !687

65:                                               ; preds = %59, %32
  %66 = phi ptr [ %34, %32 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  %67 = icmp eq ptr %66, %15
  br i1 %67, label %68, label %32, !llvm.loop !688

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !689 !PGOFuncName !690 {
  %4 = load ptr, ptr %1, align 8, !tbaa !691
  store ptr %4, ptr %0, align 8, !tbaa !693
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !695
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !696

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !693
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !697
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !699
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !700
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !701
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !659
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !702 !PGOFuncName !703 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !701
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !704

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !705

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !659
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !706, !llvm.loop !707

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !659
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !659
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !699
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !693
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !699
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !708

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !700
  store i64 %35, ptr %3, align 8, !tbaa !701
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !709

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !659
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !659
  %40 = load i32, ptr %23, align 8, !tbaa !699
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !699
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !710, !llvm.loop !711

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !712
  store ptr %44, ptr %0, align 8, !tbaa !693
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !713

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !697
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !659
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !701
  store i32 %16, ptr %1, align 4, !tbaa !659
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !714 !PGOFuncName !715 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !716 !PGOFuncName !717 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !701
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !701
  %6 = load i32, ptr %1, align 4, !tbaa !659
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !659
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !718 !PGOFuncName !719 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !720 !PGOFuncName !721 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !676
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !722

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !643
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !723 !PGOFuncName !724 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !725

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !726

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !727
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !727
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_decl_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !672 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6, %10
  %11 = load i32, ptr %4, align 4, !tbaa !659
  %12 = tail call ptr @referenced_var_lookup(i32 noundef %11) #22
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %12, i32 noundef 0) #22
  %13 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !676
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !729

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
define dso_local void @debug_decl_set(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_decl_set(ptr noundef %2, ptr noundef %0) #21
  %3 = load ptr, ptr @stderr, align 8, !tbaa !643
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_defs_stack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !672 {
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
  %30 = load i32, ptr %29, align 4, !tbaa !659
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !649
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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !730 !PGOFuncName !731 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !732

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !733
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !735 !PGOFuncName !736 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_defs_stack(i32 noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_defs_stack(ptr noundef %2, i32 noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_currdefs(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %3 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 32, i64 1, ptr %0)
  %4 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #21
  %5 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !676
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1, %31
  %8 = phi ptr [ %32, %31 ], [ %4, %1 ]
  %9 = load ptr, ptr @cfun, align 8, !tbaa !643
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !651
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !737
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !649
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
  %33 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !676
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %7, label %35, !llvm.loop !738

35:                                               ; preds = %31, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !739 !PGOFuncName !740 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #21
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !741 !PGOFuncName !742 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #21, !range !676
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #5 !prof !743 !PGOFuncName !744 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_currdefs() local_unnamed_addr #0 !prof !672 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_currdefs(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_ssa(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !745
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !643
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #22
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %4) #21
  tail call void @dump_def_blocks(ptr noundef %0) #21
  tail call void @dump_defs_stack(ptr noundef %0, i32 noundef -1) #21
  tail call void @dump_currdefs(ptr noundef %0) #21
  tail call void @dump_tree_ssa_stats(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_def_blocks(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr %0)
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @debug_def_blocks_r, ptr noundef %0) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_ssa_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @repl_tbl, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 24, i64 1, ptr %0)
  %9 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %0)
  %13 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %13) #21
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr @repl_tbl, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %0)
  %19 = load ptr, ptr @repl_tbl, align 8, !tbaa !643
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %19) #21
  %20 = load ptr, ptr @repl_tbl, align 8
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %1, %17, %14
  %23 = phi i1 [ false, %1 ], [ %21, %17 ], [ false, %14 ]
  %24 = load ptr, ptr @def_blocks, align 8, !tbaa !643
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
define dso_local void @debug_tree_ssa() local_unnamed_addr #0 !prof !672 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_tree_ssa(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !753 {
  %3 = tail call i64 @htab_size(ptr noundef %1) #22
  %4 = tail call i64 @htab_elements(ptr noundef %1) #22
  %5 = tail call double @htab_collisions(ptr noundef %1) #22
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %3, i64 noundef %4, double noundef %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_tree_ssa_stats() local_unnamed_addr #0 !prof !672 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_tree_ssa_stats(ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_def_blocks_r(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !672 !PGOFuncName !754 {
  %3 = load ptr, ptr %0, align 8, !tbaa !643
  %4 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !755
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !659
  tail call void @print_generic_expr(ptr noundef %1, ptr noundef %5, i32 noundef %6) #22
  %7 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !757
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %8, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2) #22
  %9 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !758
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %10, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2) #22
  %11 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !759
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22) #22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_def_blocks() local_unnamed_addr #0 !prof !672 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_def_blocks(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rewrite_into_ssa() #0 !prof !760 !PGOFuncName !761 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !762

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 59) #22
  br label %4

4:                                                ; preds = %3, %0
  tail call void @init_ssa_operands() #22
  tail call fastcc void @init_ssa_renamer() #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !643
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !673
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !674
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #22
  store ptr %10, ptr @interesting_blocks, align 8, !tbaa !643
  tail call void @sbitmap_zero(ptr noundef %10) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !643
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !673
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !674
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #22
  %19 = load ptr, ptr @cfun, align 8, !tbaa !643
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !673
  %22 = load ptr, ptr %21, align 8, !tbaa !686
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !763
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !764
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %43, label %28, !prof !765

28:                                               ; preds = %4, %28
  %29 = phi ptr [ %36, %28 ], [ %24, %4 ]
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !684
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %18, i64 %33
  store ptr %30, ptr %34, align 8, !tbaa !643
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !763
  %37 = load ptr, ptr @cfun, align 8, !tbaa !643
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !673
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !764
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %28, !prof !766, !llvm.loop !767

43:                                               ; preds = %28, %4
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  tail call void @compute_dominance_frontiers(ptr noundef %18) #22
  tail call fastcc void @mark_def_site_blocks() #21
  tail call fastcc void @insert_phi_nodes(ptr noundef %18) #21
  %44 = load ptr, ptr @cfun, align 8, !tbaa !643
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !673
  %47 = load ptr, ptr %46, align 8, !tbaa !686
  tail call fastcc void @rewrite_blocks(ptr noundef %47, i32 noundef 0) #21
  %48 = load ptr, ptr @cfun, align 8, !tbaa !643
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !673
  %51 = load ptr, ptr %50, align 8, !tbaa !686
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !763
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !764
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %75, label %57, !prof !765

57:                                               ; preds = %43, %57
  %58 = phi ptr [ %68, %57 ], [ %53, %43 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !684
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %18, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !643
  tail call void @bitmap_obstack_free(ptr noundef %63) #22
  %64 = load i32, ptr %59, align 8, !tbaa !684
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %18, i64 %65
  store ptr null, ptr %66, align 8, !tbaa !643
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !763
  %69 = load ptr, ptr @cfun, align 8, !tbaa !643
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !673
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !764
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %57, !prof !766, !llvm.loop !768

75:                                               ; preds = %57, %43
  tail call void @free(ptr noundef %18) #21
  %76 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  %77 = load ptr, ptr %76, align 8, !tbaa !769
  tail call void @free(ptr noundef %77) #21
  %78 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  tail call void @free(ptr noundef %78) #21
  tail call fastcc void @fini_ssa_renamer() #21
  %79 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81, !prof !762

81:                                               ; preds = %75
  tail call void @timevar_pop_1(i32 noundef 59) #22
  br label %82

82:                                               ; preds = %81, %75
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_names_replaced_by(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #22
  %5 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %0)
  %6 = tail call fastcc ptr @names_replaced_by(ptr noundef %1) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !676
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %9
  %10 = load ptr, ptr @cfun, align 8, !tbaa !643
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !651
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !654
  %15 = load i32, ptr %3, align 4, !tbaa !659
  %16 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %15) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %16, i32 noundef 0) #22
  %17 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !676
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !771

20:                                               ; preds = %9, %2
  %21 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @names_replaced_by(ptr noundef %0) unnamed_addr #0 !prof !772 !PGOFuncName !773 {
  %2 = alloca %struct.repl_map_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !774
  %3 = load ptr, ptr @repl_tbl, align 8, !tbaa !643
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !776

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !643
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !776

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.repl_map_d, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !777
  br label %12

12:                                               ; preds = %1, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_names_replaced_by(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_names_replaced_by(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_update_ssa(ptr noundef %0) local_unnamed_addr #0 !prof !672 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !659
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %5 = load ptr, ptr @cfun, align 8, !tbaa !643
  %6 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %5) #21, !range !676
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
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
  %17 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %17) #21
  %18 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !676
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !643
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !651
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !654
  %26 = load i32, ptr %2, align 4, !tbaa !659
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %26) #21
  tail call void @dump_names_replaced_by(ptr noundef %0, ptr noundef %27) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %28 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !676
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !778

30:                                               ; preds = %20, %14
  %31 = tail call i32 @fputc(i32 10, ptr %0)
  %32 = load i32, ptr @update_ssa_stats, align 8, !tbaa !779
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %32) #21
  %34 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !781
  %35 = load i32, ptr @update_ssa_stats, align 8, !tbaa !779
  %36 = sub i32 %34, %35
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %36) #21
  %38 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !781
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %38) #21
  %40 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !782
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %40) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %42

42:                                               ; preds = %30, %11, %8
  %43 = load ptr, ptr @cfun, align 8, !tbaa !643
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !651
  %46 = getelementptr inbounds %struct.gimple_df, ptr %45, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !737
  %48 = load ptr, ptr %47, align 8, !tbaa !691
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 33, i64 1, ptr %0)
  %52 = load ptr, ptr @cfun, align 8, !tbaa !643
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !651
  %55 = getelementptr inbounds %struct.gimple_df, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !737
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %56) #21
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !691
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 51, i64 1, ptr %0)
  %66 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %66, ptr noundef nonnull %2) #21
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !676
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64, %69
  %70 = load ptr, ptr @cfun, align 8, !tbaa !643
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !651
  %73 = getelementptr inbounds %struct.gimple_df, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !654
  %75 = load i32, ptr %2, align 4, !tbaa !659
  %76 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %74, i32 noundef %75) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %76, i32 noundef 0) #22
  %77 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !676
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %69, !llvm.loop !783

80:                                               ; preds = %69, %64, %61, %58
  %81 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  br label %82

82:                                               ; preds = %1, %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @need_ssa_update_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !784 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !785

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2918, ptr noundef nonnull @.str.32) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7, !prof !786

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !651
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !787

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !737
  %14 = load ptr, ptr %13, align 8, !tbaa !691
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
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #7 !prof !788 !PGOFuncName !789 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !790
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !792
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !793
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !794
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !795
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10, !prof !796

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !700
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !797 !PGOFuncName !798 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !799
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %12, !prof !800

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !794
  %10 = load i32, ptr %7, align 4, !tbaa !790
  br label %18

11:                                               ; preds = %22
  store i32 %20, ptr %7, align 4, !tbaa !790
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i64 [ %28, %11 ], [ %4, %2 ]
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !792
  br i1 %15, label %30, label %38, !prof !801

18:                                               ; preds = %6, %22
  %19 = phi i32 [ %10, %6 ], [ %20, %22 ]
  %20 = add i32 %19, 1
  %21 = icmp ult i32 %20, %9
  br i1 %21, label %22, label %40, !prof !802

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %24 = shl i32 %20, 6
  store i32 %24, ptr %23, align 8, !tbaa !792
  %25 = load ptr, ptr %0, align 8, !tbaa !795
  %26 = zext i32 %20 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !700
  store i64 %28, ptr %3, align 8, !tbaa !799
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %18, label %11, !prof !803, !llvm.loop !804

30:                                               ; preds = %12, %30
  %31 = phi i32 [ %33, %30 ], [ %17, %12 ]
  %32 = phi i64 [ %34, %30 ], [ %13, %12 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !prof !805, !llvm.loop !806

37:                                               ; preds = %30
  store i32 %33, ptr %16, align 8, !tbaa !792
  store i64 %34, ptr %3, align 8, !tbaa !799
  br label %38

38:                                               ; preds = %12, %37
  %39 = phi i32 [ %33, %37 ], [ %17, %12 ]
  store i32 %39, ptr %1, align 4, !tbaa !659
  br label %41

40:                                               ; preds = %18
  store i32 %20, ptr %7, align 4, !tbaa !790
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !807 !PGOFuncName !808 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !799
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !799
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !792
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !792
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_update_ssa() local_unnamed_addr #0 !prof !672 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !643
  tail call void @dump_update_ssa(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_update_ssa() local_unnamed_addr #0 !prof !809 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %4 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  %5 = load ptr, ptr %4, align 8, !tbaa !769
  tail call void @free(ptr noundef %5) #21
  tail call void @free(ptr noundef %4) #21
  store ptr null, ptr @old_ssa_names, align 8, !tbaa !643
  %6 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %7 = load ptr, ptr %6, align 8, !tbaa !769
  tail call void @free(ptr noundef %7) #21
  tail call void @free(ptr noundef %6) #21
  store ptr null, ptr @new_ssa_names, align 8, !tbaa !643
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !643
  tail call void @htab_delete(ptr noundef %8) #22
  store ptr null, ptr @repl_tbl, align 8, !tbaa !643
  %9 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !651
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !737
  tail call void @bitmap_clear(ptr noundef %13) #22
  %14 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !810
  tail call void @bitmap_obstack_free(ptr noundef %14) #22
  store ptr null, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !810
  %15 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17, !prof !811

17:                                               ; preds = %0
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %1) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20, !prof !812

20:                                               ; preds = %17, %20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !643
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !651
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !654
  %26 = load i32, ptr %1, align 4, !tbaa !659
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %26) #21
  tail call void @release_ssa_name(ptr noundef %27) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %20, !prof !813, !llvm.loop !814

30:                                               ; preds = %20
  %31 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi ptr [ %31, %30 ], [ %15, %17 ]
  tail call void @bitmap_obstack_free(ptr noundef %33) #22
  store ptr null, ptr @names_to_release, align 8, !tbaa !643
  br label %34

34:                                               ; preds = %32, %0
  tail call fastcc void @clear_ssa_name_info() #21
  tail call fastcc void @fini_ssa_renamer() #21
  %35 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !643
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37, !prof !815

37:                                               ; preds = %34
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %35, ptr noundef nonnull %1) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %49, label %40, !prof !816

40:                                               ; preds = %37, %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %41 = load ptr, ptr @phis_to_rewrite, align 8
  %42 = load i32, ptr %1, align 4, !tbaa !659
  %43 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %41, i32 noundef %42) #21
  store ptr %43, ptr %3, align 8, !tbaa !643
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %3) #21
  %44 = load ptr, ptr @phis_to_rewrite, align 8
  tail call fastcc void @VEC_gimple_vec_base_replace(ptr noundef %44, i32 noundef %42, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %40, !prof !817, !llvm.loop !818

47:                                               ; preds = %40
  %48 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !643
  br label %49

49:                                               ; preds = %47, %37, %34
  %50 = phi ptr [ %48, %47 ], [ %35, %37 ], [ null, %34 ]
  tail call void @bitmap_obstack_free(ptr noundef %50) #22
  store ptr null, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !643
  %51 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  tail call void @bitmap_obstack_free(ptr noundef %51) #22
  store ptr null, ptr @blocks_to_update, align 8, !tbaa !643
  store ptr null, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
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
define internal fastcc void @clear_ssa_name_info() unnamed_addr #12 !prof !809 !PGOFuncName !819 {
  %1 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !659
  %2 = add i32 %1, 1
  store i32 %2, ptr @current_info_for_ssa_name_age, align 4, !tbaa !659
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_ssa_renamer() unnamed_addr #0 !prof !820 !PGOFuncName !821 {
  %1 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !822

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #22
  store ptr null, ptr @def_blocks, align 8, !tbaa !643
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !643
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !651
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_vec_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !823 !PGOFuncName !824 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !825 !PGOFuncName !826 {
  %2 = load ptr, ptr %0, align 8, !tbaa !643
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !827

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !643
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_vec_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 !prof !828 !PGOFuncName !829 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !643
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_new_def_for(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !830 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = tail call ptr @duplicate_ssa_name(ptr noundef %0, ptr noundef %1) #22
  store ptr %6, ptr %2, align 8, !tbaa !643
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !831
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %30, !prof !832

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef %10) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !679
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !680
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %4) #21, !range !676
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %29, label %15, !prof !833

15:                                               ; preds = %9, %24
  %16 = load ptr, ptr %4, align 8, !tbaa !643
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !834
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
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %4) #21, !range !676
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %15, !prof !835, !llvm.loop !836

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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !837 !PGOFuncName !838 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !839 !PGOFuncName !840 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !649
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_new_name_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !841 {
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !842

5:                                                ; preds = %2
  %6 = load ptr, ptr @cfun, align 8, !tbaa !643
  tail call fastcc void @init_update_ssa(ptr noundef %6) #21
  %7 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %10 = load ptr, ptr @cfun, align 8, !tbaa !643
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %13, label %12, !prof !843

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2881, ptr noundef nonnull @.str.32) #22
  br label %13

13:                                               ; preds = %8, %12
  tail call fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_update_ssa(ptr noundef %0) unnamed_addr #0 !prof !809 !PGOFuncName !844 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !651
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !654
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #21
  %8 = icmp ult i32 %7, 9
  %9 = udiv i32 %7, 3
  %10 = select i1 %8, i32 3, i32 %9, !prof !845
  %11 = add i32 %10, %7
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %11) #22
  store ptr %12, ptr @old_ssa_names, align 8, !tbaa !643
  tail call void @sbitmap_zero(ptr noundef %12) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !643
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !651
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !654
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #21
  %19 = icmp ult i32 %18, 9
  %20 = udiv i32 %18, 3
  %21 = select i1 %19, i32 3, i32 %20, !prof !845
  %22 = add i32 %21, %18
  %23 = tail call ptr @sbitmap_alloc(i32 noundef %22) #22
  store ptr %23, ptr @new_ssa_names, align 8, !tbaa !643
  tail call void @sbitmap_zero(ptr noundef %23) #22
  %24 = tail call ptr @htab_create(i64 noundef 20, ptr noundef nonnull @repl_map_hash, ptr noundef nonnull @repl_map_eq, ptr noundef nonnull @repl_map_free) #22
  store ptr %24, ptr @repl_tbl, align 8, !tbaa !643
  store ptr null, ptr @names_to_release, align 8, !tbaa !643
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @update_ssa_stats, i8 0, i64 24, i1 false)
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %25, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !810
  store ptr %0, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !846 !PGOFuncName !847 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !848

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 60) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %14, label %8, !prof !849

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !649
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !649
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %15, label %14, !prof !848

14:                                               ; preds = %8, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 672, ptr noundef nonnull @.str.32) #22
  br label %15

15:                                               ; preds = %8, %14
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29, !prof !850

18:                                               ; preds = %15
  %19 = load i32, ptr @update_ssa_stats, align 8, !tbaa !779
  %20 = add i32 %19, 1
  store i32 %20, ptr @update_ssa_stats, align 8, !tbaa !779
  %21 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !782
  %22 = add i32 %21, 1
  store i32 %22, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !782
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !649
  %25 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !810
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !649
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %27) #22
  br label %29

29:                                               ; preds = %18, %15
  %30 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !851
  %33 = load ptr, ptr @cfun, align 8, !tbaa !643
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !651
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !654
  %38 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %37) #21
  %39 = add i32 %38, -1
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %49, label %41, !prof !848

41:                                               ; preds = %29
  %42 = icmp ult i32 %38, 9
  %43 = udiv i32 %38, 3
  %44 = select i1 %42, i32 3, i32 %43
  %45 = add i32 %44, %38
  %46 = tail call ptr @sbitmap_resize(ptr noundef nonnull %30, i32 noundef %45, i32 noundef 0) #22
  store ptr %46, ptr @new_ssa_names, align 8, !tbaa !643
  %47 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  %48 = tail call ptr @sbitmap_resize(ptr noundef %47, i32 noundef %45, i32 noundef 0) #22
  store ptr %48, ptr @old_ssa_names, align 8, !tbaa !643
  br label %49

49:                                               ; preds = %41, %29
  tail call fastcc void @add_to_repl_tbl(ptr noundef %0, ptr noundef %1) #21
  %50 = tail call fastcc zeroext i8 @is_new_name(ptr noundef %1) #21, !range !676
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52, !prof !852

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @names_replaced_by(ptr noundef %0) #21
  %54 = tail call fastcc ptr @names_replaced_by(ptr noundef %1) #21
  %55 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %53, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !649
  tail call fastcc void @SET_BIT(ptr noundef %57, i32 noundef %59) #21
  %60 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !649
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %62) #21
  %63 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !781
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !781
  %65 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !848

67:                                               ; preds = %56
  tail call void @timevar_pop_1(i32 noundef 60) #22
  br label %68

68:                                               ; preds = %56, %67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_sym_for_renaming(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !853 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !651
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !737
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !649
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_set_for_renaming(ptr noundef readonly %0) local_unnamed_addr #0 !prof !672 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !691
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = load i32, ptr %3, align 4, !tbaa !659
  %13 = tail call ptr @referenced_var_lookup(i32 noundef %12) #22
  tail call void @mark_sym_for_renaming(ptr noundef %13) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !854

16:                                               ; preds = %11, %8, %1, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @name_mappings_registered_p() local_unnamed_addr #0 !prof !855 {
  %1 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3, !prof !856

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !643
  %5 = icmp eq ptr %1, %4
  br i1 %5, label %7, label %6, !prof !857

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2932, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %3, %6
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !643
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !858

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
define dso_local zeroext i8 @name_registered_for_update_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !859 {
  %2 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !860

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !643
  %6 = icmp eq ptr %2, %5
  br i1 %6, label %8, label %7, !prof !861

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2945, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc zeroext i8 @is_new_name(ptr noundef %0) #21, !range !676
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !862

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_old_name(ptr noundef %0) #21, !range !676
  br label %13

13:                                               ; preds = %8, %11, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %8 ], [ %12, %11 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_new_name(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !863 !PGOFuncName !864 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !649
  %4 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !865

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !851
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %10, label %21, !prof !866

10:                                               ; preds = %6
  %11 = lshr i32 %3, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !700
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
define internal fastcc zeroext i8 @is_old_name(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !867 !PGOFuncName !868 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !649
  %4 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !869

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !851
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %10, label %22, !prof !870

10:                                               ; preds = %6
  %11 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  %12 = lshr i32 %3, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !700
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
define dso_local ptr @ssa_names_to_replace() local_unnamed_addr #0 !prof !672 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  store i32 0, ptr %1, align 4, !tbaa !659
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
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
  %11 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %11) #21
  %12 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = load i32, ptr %1, align 4, !tbaa !659
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %15) #22
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !871

19:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_ssa_name_after_update_ssa(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !872 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @update_ssa_initialized_fn, align 8
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %8, label %7, !prof !873

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2976, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !874

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %12, ptr @names_to_release, align 8, !tbaa !643
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %9, %8 ]
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !649
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_ssa(i32 noundef %0) local_unnamed_addr #0 !prof !875 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  %5 = alloca %struct.sbitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !659
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !643
  %8 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %7) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %319, label %10, !prof !876

10:                                               ; preds = %1
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !877

13:                                               ; preds = %10
  tail call void @timevar_push_1(i32 noundef 60) #22
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !878

17:                                               ; preds = %14
  %18 = load ptr, ptr @cfun, align 8, !tbaa !643
  tail call fastcc void @init_update_ssa(ptr noundef %18) #21
  %19 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !643
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !643
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %25, label %24, !prof !877

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3242, ptr noundef nonnull @.str.32) #22
  br label %25

25:                                               ; preds = %20, %24
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %26, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !643
  %27 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !643
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !879

29:                                               ; preds = %25
  %30 = load ptr, ptr @cfun, align 8, !tbaa !643
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !673
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !674
  %35 = tail call fastcc ptr @VEC_gimple_vec_heap_alloc(i32 noundef %34) #21
  store ptr %35, ptr @phis_to_rewrite, align 8, !tbaa !643
  br label %36

36:                                               ; preds = %29, %25
  %37 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %37, ptr @blocks_to_update, align 8, !tbaa !643
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  %38 = add i32 %0, -2048
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 21)
  switch i32 %39, label %40 [
    i32 7, label %42
    i32 0, label %46
    i32 1, label %46
    i32 3, label %46
  ], !prof !880

40:                                               ; preds = %36
  %41 = icmp eq i32 %0, 16384
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3256, ptr noundef nonnull @.str.32) #22
  br i1 %41, label %42, label %46, !prof !881

42:                                               ; preds = %36, %40
  %43 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  tail call void @sbitmap_zero(ptr noundef %43) #22
  %44 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  tail call void @sbitmap_zero(ptr noundef %44) #22
  %45 = load ptr, ptr @repl_tbl, align 8, !tbaa !643
  tail call void @htab_empty(ptr noundef %45) #22
  br label %46

46:                                               ; preds = %36, %36, %36, %42, %40
  %47 = icmp ne i32 %0, 4096
  %48 = zext i1 %47 to i8
  br i1 %47, label %49, label %61, !prof !882

49:                                               ; preds = %46
  %50 = load ptr, ptr @cfun, align 8, !tbaa !643
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !651
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !654
  %55 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %54) #21
  %56 = zext i32 %55 to i64
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #22
  store ptr %57, ptr @def_blocks, align 8, !tbaa !643
  %58 = tail call fastcc zeroext i8 @switch_virtuals_to_full_rewrite_p() #21, !range !676
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60, !prof !883

60:                                               ; preds = %49
  tail call fastcc void @switch_virtuals_to_full_rewrite() #21
  br label %62

61:                                               ; preds = %46
  store ptr null, ptr @def_blocks, align 8, !tbaa !643
  br label %62

62:                                               ; preds = %61, %60, %49
  %63 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %64 = tail call i32 @sbitmap_first_set_bit(ptr noundef %63) #22
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %68, label %66, !prof !884

66:                                               ; preds = %62
  %67 = load ptr, ptr @cfun, align 8, !tbaa !643
  br label %80

68:                                               ; preds = %62
  tail call fastcc void @prepare_names_to_update(i8 noundef zeroext %48) #21
  %69 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %70 = tail call i32 @sbitmap_first_set_bit(ptr noundef %69) #22
  %71 = icmp slt i32 %70, 0
  %72 = load ptr, ptr @cfun, align 8, !tbaa !643
  br i1 %71, label %73, label %80, !prof !885

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !651
  %76 = getelementptr inbounds %struct.gimple_df, ptr %75, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !737
  %78 = load ptr, ptr %77, align 8, !tbaa !691
  %79 = icmp eq ptr %78, null
  br i1 %79, label %315, label %80

80:                                               ; preds = %66, %68, %73
  %81 = phi ptr [ %67, %66 ], [ %72, %68 ], [ %72, %73 ]
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !651
  %84 = getelementptr inbounds %struct.gimple_df, ptr %83, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !737
  %86 = load ptr, ptr %85, align 8, !tbaa !691
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88, !prof !884

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !673
  %91 = load ptr, ptr %90, align 8, !tbaa !686
  tail call fastcc void @prepare_block_for_update(ptr noundef %91, i8 noundef zeroext %48) #21
  br label %95

92:                                               ; preds = %80
  %93 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %94 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %93) #22
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %91, %88 ], [ %94, %92 ]
  br i1 %47, label %97, label %208, !prof !882

97:                                               ; preds = %95
  %98 = load ptr, ptr @cfun, align 8, !tbaa !643
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !673
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !674
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 3
  %105 = tail call ptr @xmalloc(i64 noundef %104) #22
  %106 = load ptr, ptr @cfun, align 8, !tbaa !643
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !673
  %109 = load ptr, ptr %108, align 8, !tbaa !686
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !763
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %108, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !764
  %114 = icmp eq ptr %111, %113
  br i1 %114, label %130, label %115, !prof !886

115:                                              ; preds = %97, %115
  %116 = phi ptr [ %123, %115 ], [ %111, %97 ]
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !684
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %105, i64 %120
  store ptr %117, ptr %121, align 8, !tbaa !643
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !763
  %124 = load ptr, ptr @cfun, align 8, !tbaa !643
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !673
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !764
  %129 = icmp eq ptr %123, %128
  br i1 %129, label %130, label %115, !prof !887, !llvm.loop !888

130:                                              ; preds = %115, %97
  tail call void @compute_dominance_frontiers(ptr noundef %105) #22
  %131 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  %132 = tail call i32 @sbitmap_first_set_bit(ptr noundef %131) #22
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %155, !prof !889

134:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %135 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !851
  %138 = tail call ptr @sbitmap_alloc(i32 noundef %137) #22
  %139 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  tail call void @sbitmap_copy(ptr noundef %138, ptr noundef %139) #22
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef %138) #21
  %140 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #21, !range !676
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %153, label %142, !prof !890

142:                                              ; preds = %134, %142
  %143 = load ptr, ptr @cfun, align 8, !tbaa !643
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !651
  %146 = getelementptr inbounds %struct.gimple_df, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !654
  %148 = load i32, ptr %3, align 4, !tbaa !659
  %149 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %147, i32 noundef %148) #21
  %150 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  tail call fastcc void @insert_updated_phi_nodes_for(ptr noundef %149, ptr noundef %105, ptr noundef %150, i32 noundef %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #21
  %151 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #21, !range !676
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %142, !prof !891, !llvm.loop !892

153:                                              ; preds = %142, %134
  %154 = load ptr, ptr %138, align 8, !tbaa !769
  tail call void @free(ptr noundef %154) #21
  tail call void @free(ptr noundef %138) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %155

155:                                              ; preds = %153, %130
  %156 = load ptr, ptr @cfun, align 8, !tbaa !643
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !651
  %159 = getelementptr inbounds %struct.gimple_df, ptr %158, i64 0, i32 9
  %160 = load ptr, ptr %159, align 8, !tbaa !737
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %160, ptr noundef nonnull %3) #21
  %161 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %171, label %163, !prof !893

163:                                              ; preds = %155, %163
  %164 = load i32, ptr %3, align 4, !tbaa !659
  %165 = tail call ptr @referenced_var_lookup(i32 noundef %164) #22
  %166 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  tail call fastcc void @insert_updated_phi_nodes_for(ptr noundef %165, ptr noundef %105, ptr noundef %166, i32 noundef %0) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %167 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %163, !prof !894, !llvm.loop !895

169:                                              ; preds = %163
  %170 = load ptr, ptr @cfun, align 8, !tbaa !643
  br label %171

171:                                              ; preds = %169, %155
  %172 = phi ptr [ %170, %169 ], [ %156, %155 ]
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !673
  %175 = load ptr, ptr %174, align 8, !tbaa !686
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !763
  %178 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !764
  %180 = icmp eq ptr %177, %179
  br i1 %180, label %199, label %181, !prof !886

181:                                              ; preds = %171, %181
  %182 = phi ptr [ %192, %181 ], [ %177, %171 ]
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !684
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %105, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !643
  tail call void @bitmap_obstack_free(ptr noundef %187) #22
  %188 = load i32, ptr %183, align 8, !tbaa !684
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %105, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !643
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !763
  %193 = load ptr, ptr @cfun, align 8, !tbaa !643
  %194 = getelementptr inbounds %struct.function, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !673
  %196 = getelementptr inbounds %struct.control_flow_graph, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !764
  %198 = icmp eq ptr %192, %197
  br i1 %198, label %199, label %181, !prof !887, !llvm.loop !896

199:                                              ; preds = %181, %171
  tail call void @free(ptr noundef %105) #21
  %200 = load ptr, ptr @cfun, align 8, !tbaa !643
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !673
  %203 = load ptr, ptr %202, align 8, !tbaa !686
  %204 = icmp eq ptr %96, %203
  br i1 %204, label %208, label %205, !prof !897

205:                                              ; preds = %199
  %206 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %207 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %206) #22
  br label %208

208:                                              ; preds = %199, %205, %95
  %209 = phi ptr [ %96, %95 ], [ %207, %205 ], [ %96, %199 ]
  %210 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %210) #21
  %211 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !676
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %223, label %213, !prof !816

213:                                              ; preds = %208, %213
  %214 = load ptr, ptr @cfun, align 8, !tbaa !643
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !651
  %217 = getelementptr inbounds %struct.gimple_df, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !654
  %219 = load i32, ptr %3, align 4, !tbaa !659
  %220 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %218, i32 noundef %219) #21
  tail call void @set_current_def(ptr noundef %220, ptr noundef null) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %221 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !676
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %213, !prof !898, !llvm.loop !899

223:                                              ; preds = %213, %208
  %224 = load ptr, ptr @cfun, align 8, !tbaa !643
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !651
  %227 = getelementptr inbounds %struct.gimple_df, ptr %226, i64 0, i32 9
  %228 = load ptr, ptr %227, align 8, !tbaa !737
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %228, ptr noundef nonnull %3) #21
  %229 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %238, label %231, !prof !900

231:                                              ; preds = %223, %231
  %232 = load i32, ptr %3, align 4, !tbaa !659
  %233 = tail call ptr @referenced_var_lookup(i32 noundef %232) #22
  tail call void @set_current_def(ptr noundef %233, ptr noundef null) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %234 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %231, !prof !894, !llvm.loop !901

236:                                              ; preds = %231
  %237 = load ptr, ptr @cfun, align 8, !tbaa !643
  br label %238

238:                                              ; preds = %236, %223
  %239 = phi ptr [ %237, %236 ], [ %224, %223 ]
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !673
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !674
  %244 = tail call ptr @sbitmap_alloc(i32 noundef %243) #22
  store ptr %244, ptr @interesting_blocks, align 8, !tbaa !643
  tail call void @sbitmap_zero(ptr noundef %244) #22
  %245 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %245, ptr noundef nonnull %3) #21
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %253, label %248, !prof !816

248:                                              ; preds = %238, %248
  %249 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  %250 = load i32, ptr %3, align 4, !tbaa !659
  tail call fastcc void @SET_BIT(ptr noundef %249, i32 noundef %250) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !676
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %248, !prof !902, !llvm.loop !903

253:                                              ; preds = %248, %238
  tail call fastcc void @rewrite_blocks(ptr noundef %209, i32 noundef 1) #21
  %254 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  %255 = load ptr, ptr %254, align 8, !tbaa !769
  tail call void @free(ptr noundef %255) #21
  %256 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  tail call void @free(ptr noundef %256) #21
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %258 = icmp eq ptr %257, null
  br i1 %258, label %315, label %259, !prof !877

259:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  tail call void @dump_update_ssa(ptr noundef nonnull %257) #21
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 9
  %262 = load i32, ptr %261, align 8, !tbaa !684
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.33, i32 noundef %262) #21
  %264 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %264, ptr noundef nonnull %6) #21
  %265 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !676
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %259, %267
  %268 = phi i32 [ %269, %267 ], [ 0, %259 ]
  %269 = add nuw nsw i32 %268, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %270 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !676
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %267, !llvm.loop !904

272:                                              ; preds = %267, %259
  %273 = phi i32 [ 0, %259 ], [ %269, %267 ]
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %275 = load ptr, ptr @cfun, align 8, !tbaa !643
  %276 = getelementptr inbounds %struct.function, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !673
  %278 = getelementptr inbounds %struct.control_flow_graph, ptr %277, i64 0, i32 5
  %279 = load i32, ptr %278, align 8, !tbaa !674
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %274, ptr noundef nonnull @.str.34, i32 noundef %279) #21
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %282 = sitofp i32 %273 to float
  %283 = fpext float %282 to double
  %284 = fmul double %283, 1.000000e+02
  %285 = load ptr, ptr @cfun, align 8, !tbaa !643
  %286 = getelementptr inbounds %struct.function, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !673
  %288 = getelementptr inbounds %struct.control_flow_graph, ptr %287, i64 0, i32 5
  %289 = load i32, ptr %288, align 8, !tbaa !674
  %290 = sitofp i32 %289 to float
  %291 = fpext float %290 to double
  %292 = fdiv double %284, %291
  %293 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.35, i32 noundef %273, double noundef %292) #21
  %294 = load i32, ptr @dump_flags, align 4, !tbaa !659
  %295 = and i32 %294, 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %312, label %297

297:                                              ; preds = %272
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %299 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 17, i64 1, ptr %298)
  %300 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %300, ptr noundef nonnull %6) #21
  %301 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !676
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %297, %303
  %304 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %305 = load i32, ptr %6, align 4, !tbaa !659
  %306 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %304, ptr noundef nonnull @.str.37, i32 noundef %305) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %307 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !676
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %303, !llvm.loop !905

309:                                              ; preds = %303, %297
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %311 = tail call i32 @fputc(i32 10, ptr %310)
  br label %312

312:                                              ; preds = %309, %272
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %314 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %313)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %315

315:                                              ; preds = %253, %312, %73
  tail call void @delete_update_ssa() #21
  %316 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %319, label %318, !prof !877

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
define internal fastcc ptr @VEC_gimple_vec_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !906 !PGOFuncName !907 {
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
define internal i32 @def_blocks_hash(ptr nocapture noundef readonly %0) #0 !prof !908 !PGOFuncName !909 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !643
  %3 = load ptr, ptr %0, align 8, !tbaa !755
  %4 = tail call i32 %2(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @def_blocks_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !910 !PGOFuncName !911 {
  %3 = load ptr, ptr %0, align 8, !tbaa !755
  %4 = load ptr, ptr %1, align 8, !tbaa !755
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @def_blocks_free(ptr nocapture noundef %0) #0 !prof !912 !PGOFuncName !913 {
  %2 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !757
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  store ptr null, ptr %2, align 8, !tbaa !757
  %4 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !759
  tail call void @bitmap_obstack_free(ptr noundef %5) #22
  store ptr null, ptr %4, align 8, !tbaa !759
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !758
  tail call void @bitmap_obstack_free(ptr noundef %7) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @switch_virtuals_to_full_rewrite_p() unnamed_addr #1 !prof !914 !PGOFuncName !915 {
  %1 = load i32, ptr @update_ssa_stats, align 8, !tbaa !779
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !643
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 91, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !916
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %13, label %6, !prof !918

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.param_info, ptr %2, i64 92, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !916
  %9 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !782
  %10 = mul i32 %9, %8
  %11 = icmp ugt i32 %1, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %0
  %14 = phi i8 [ 0, %0 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_virtuals_to_full_rewrite() unnamed_addr #0 !prof !672 !PGOFuncName !919 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  store i32 0, ptr %1, align 4, !tbaa !659
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 41, i64 1, ptr nonnull %3)
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %8 = load i32, ptr @update_ssa_stats, align 8, !tbaa !779
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %8) #21
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %11 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !782
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.48, i32 noundef %11) #21
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %14 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 87, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %5, %0
  %16 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %16) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %15, %31
  %20 = load ptr, ptr @cfun, align 8, !tbaa !643
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !651
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !654
  %25 = load i32, ptr %1, align 4, !tbaa !659
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %25) #21
  %27 = tail call zeroext i8 @is_gimple_reg(ptr noundef %26) #22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  tail call fastcc void @RESET_BIT(ptr noundef %30, i32 noundef %25) #21
  br label %31

31:                                               ; preds = %19, %29
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %32 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %19, !llvm.loop !920

34:                                               ; preds = %31, %15
  %35 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %35) #21
  %36 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34, %50
  %39 = load ptr, ptr @cfun, align 8, !tbaa !643
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !651
  %42 = getelementptr inbounds %struct.gimple_df, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !654
  %44 = load i32, ptr %1, align 4, !tbaa !659
  %45 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %43, i32 noundef %44) #21
  %46 = tail call zeroext i8 @is_gimple_reg(ptr noundef %45) #22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  tail call fastcc void @RESET_BIT(ptr noundef %49, i32 noundef %44) #21
  br label %50

50:                                               ; preds = %38, %48
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %51 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !676
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %38, !llvm.loop !921

53:                                               ; preds = %50, %34
  %54 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !810
  tail call void @mark_set_for_renaming(ptr noundef %54) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_names_to_update(i8 noundef zeroext %0) unnamed_addr #0 !prof !922 !PGOFuncName !923 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !659
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %5 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !924

7:                                                ; preds = %1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %2) #21
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !812

10:                                               ; preds = %7, %10
  %11 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  %12 = load i32, ptr %2, align 4, !tbaa !659
  tail call fastcc void @RESET_BIT(ptr noundef %11, i32 noundef %12) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !676
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %10, !prof !813, !llvm.loop !925

15:                                               ; preds = %10, %7, %1
  %16 = load ptr, ptr @new_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %16) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !676
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19, !prof !926

19:                                               ; preds = %15, %19
  %20 = load ptr, ptr @cfun, align 8, !tbaa !643
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !651
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !654
  %25 = load i32, ptr %2, align 4, !tbaa !659
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %25) #21
  tail call fastcc void @prepare_def_site_for(ptr noundef %26, i8 noundef zeroext %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %27 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !676
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %19, !prof !927, !llvm.loop !928

29:                                               ; preds = %19, %15
  %30 = load ptr, ptr @old_ssa_names, align 8, !tbaa !643
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !676
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33, !prof !926

33:                                               ; preds = %29, %47
  %34 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  %35 = icmp eq ptr %34, null
  %36 = load i32, ptr %2, align 4, !tbaa !659
  br i1 %35, label %40, label %37, !prof !929

37:                                               ; preds = %33
  %38 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %34, i32 noundef %36) #22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47, !prof !930

40:                                               ; preds = %37, %33
  %41 = load ptr, ptr @cfun, align 8, !tbaa !643
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !651
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !654
  %46 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %36) #21
  tail call fastcc void @prepare_def_site_for(ptr noundef %46, i8 noundef zeroext %0) #21
  br label %47

47:                                               ; preds = %40, %37
  %48 = load ptr, ptr @cfun, align 8, !tbaa !643
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !651
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !654
  %53 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %52, i32 noundef %36) #21
  tail call fastcc void @prepare_use_sites_for(ptr noundef %53, i8 noundef zeroext %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %54 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !676
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %33, !prof !931, !llvm.loop !932

56:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_block_for_update(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !933 !PGOFuncName !934 {
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
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %40, !prof !935

10:                                               ; preds = %2, %37
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %12 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #21
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !659
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %21, label %18, !prof !936

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !649
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %20, %18 ], [ %12, %10 ]
  %23 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %37, label %25, !prof !937

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  call fastcc void @mark_def_interesting(ptr noundef %22, ptr noundef %11, ptr noundef %0, i8 noundef zeroext %1) #21
  %27 = call fastcc ptr @ei_start_1(ptr noundef %0) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !679
  store ptr %27, ptr %26, align 8, !tbaa.struct !680
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %4) #21, !range !676
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30, !prof !938

30:                                               ; preds = %25, %30
  %31 = load ptr, ptr %4, align 8, !tbaa !643
  %32 = load ptr, ptr %31, align 8, !tbaa !681
  call fastcc void @mark_use_interesting(ptr noundef %22, ptr noundef %11, ptr noundef %32, i8 noundef zeroext %1) #21
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %33 = load i32, ptr %5, align 8
  %34 = load ptr, ptr %26, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %4) #21, !range !676
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %30, !prof !939, !llvm.loop !940

37:                                               ; preds = %30, %25, %21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %10, label %40, !prof !941, !llvm.loop !942

40:                                               ; preds = %37, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !943
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %95, !prof !944

43:                                               ; preds = %40, %92
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #23
  %44 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %45 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %7, ptr noundef %44, i32 noundef 5) #21
  %46 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %68, !prof !945

48:                                               ; preds = %43, %64
  %49 = phi ptr [ %65, %64 ], [ %45, %43 ]
  %50 = call fastcc ptr @get_use_from_ptr(ptr noundef %49) #21
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !659
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %59, label %56, !prof !946

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !649
  br label %59

59:                                               ; preds = %48, %56
  %60 = phi ptr [ %58, %56 ], [ %50, %48 ]
  %61 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %60) #21
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !947

63:                                               ; preds = %59
  call fastcc void @mark_use_interesting(ptr noundef %60, ptr noundef %44, ptr noundef %0, i8 noundef zeroext %1) #21
  br label %64

64:                                               ; preds = %63, %59
  %65 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #21
  %66 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %48, label %68, !prof !948, !llvm.loop !949

68:                                               ; preds = %64, %43
  %69 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %7, ptr noundef %44, i32 noundef 10) #21
  %70 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %92, !prof !950

72:                                               ; preds = %68, %88
  %73 = phi ptr [ %89, %88 ], [ %69, %68 ]
  %74 = call fastcc ptr @get_def_from_ptr(ptr noundef %73) #21
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !659
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %83, label %80, !prof !951

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !649
  br label %83

83:                                               ; preds = %72, %80
  %84 = phi ptr [ %82, %80 ], [ %74, %72 ]
  %85 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %84) #21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87, !prof !952

87:                                               ; preds = %83
  call fastcc void @mark_def_interesting(ptr noundef %84, ptr noundef %44, ptr noundef %0, i8 noundef zeroext %1) #21
  br label %88

88:                                               ; preds = %87, %83
  %89 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %7) #21
  %90 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %72, label %92, !prof !953, !llvm.loop !954

92:                                               ; preds = %88, %68
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #23
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %93 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %43, label %95, !prof !955, !llvm.loop !956

95:                                               ; preds = %92, %40
  %96 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98, !prof !957

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %100, %98 ], [ %96, %95 ]
  call fastcc void @prepare_block_for_update(ptr noundef nonnull %99, i8 noundef zeroext %1) #21
  %100 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %99) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %98, !prof !958, !llvm.loop !959

102:                                              ; preds = %98, %95
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
define internal fastcc void @insert_updated_phi_nodes_for(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !960 !PGOFuncName !961 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %9 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11, !prof !962

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !757
  %14 = load ptr, ptr %13, align 8, !tbaa !691
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16, !prof !962

16:                                               ; preds = %11
  %17 = tail call ptr @compute_idf(ptr noundef nonnull %13, ptr noundef %1) #22
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %52, !prof !963

22:                                               ; preds = %16
  switch i32 %3, label %51 [
    i32 2048, label %23
    i32 8192, label %52
  ], !prof !964

23:                                               ; preds = %22
  %24 = load ptr, ptr %12, align 8, !tbaa !757
  %25 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %24) #22
  %26 = load ptr, ptr @cfun, align 8, !tbaa !643
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !673
  %29 = load ptr, ptr %28, align 8, !tbaa !686
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %53, label %31, !prof !965

31:                                               ; preds = %23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %17, ptr noundef nonnull %6) #21
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34, !prof !966

34:                                               ; preds = %31, %48
  %35 = load ptr, ptr @cfun, align 8, !tbaa !643
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !673
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !677
  %40 = load i32, ptr %6, align 4, !tbaa !659
  %41 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %39, i32 noundef %40) #21
  %42 = icmp eq ptr %41, %25
  br i1 %42, label %48, label %43, !prof !967

43:                                               ; preds = %34
  %44 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %41, ptr noundef %25) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46, !prof !968

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %40) #22
  br label %48

48:                                               ; preds = %34, %43, %46
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %34, !prof !969, !llvm.loop !970

51:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3054, ptr noundef nonnull @.str.32) #22
  br label %52

52:                                               ; preds = %16, %51, %22
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %17) #22
  br label %53

53:                                               ; preds = %48, %52, %31, %23
  %54 = load ptr, ptr %18, align 8, !tbaa !691
  %55 = icmp eq ptr %54, null
  br i1 %55, label %90, label %56, !prof !971

56:                                               ; preds = %53
  %57 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef nonnull %18) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %6) #21
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60, !prof !972

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %8, i64 8
  br label %62

62:                                               ; preds = %60, %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  %63 = load ptr, ptr @cfun, align 8, !tbaa !643
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !673
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !677
  %68 = load i32, ptr %6, align 4, !tbaa !659
  %69 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %67, i32 noundef %68) #21
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef %69) #21
  store i32 0, ptr %8, align 8, !tbaa.struct !679
  store ptr %70, ptr %61, align 8, !tbaa.struct !680
  %71 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %7) #21, !range !676
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %86, label %73, !prof !973

73:                                               ; preds = %62, %81
  %74 = load ptr, ptr %7, align 8, !tbaa !643
  %75 = load ptr, ptr %74, align 8, !tbaa !681
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !684
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %81, !prof !974

79:                                               ; preds = %73
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %77) #22
  br label %81

81:                                               ; preds = %73, %79
  call fastcc void @ei_next(ptr noundef nonnull %8) #21
  %82 = load i32, ptr %8, align 8
  %83 = load ptr, ptr %61, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %7) #21, !range !676
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %73, !prof !975, !llvm.loop !976

86:                                               ; preds = %81, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %62, !prof !977, !llvm.loop !978

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
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !979 !PGOFuncName !980 {
  %3 = load ptr, ptr %0, align 8, !tbaa !769
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !981

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
  %15 = load i64, ptr %14, align 8, !tbaa !700
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !649
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !649
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !700
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !700
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_blocks(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !820 !PGOFuncName !982 {
  %3 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !983

6:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 58) #22
  br label %7

7:                                                ; preds = %6, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i8 1, ptr %3, align 8
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, ptr @rewrite_enter_block, ptr @rewrite_update_enter_block, !prof !984
  %10 = select i1 %8, ptr @rewrite_leave_block, ptr @rewrite_update_leave_block, !prof !984
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 2
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 3
  store ptr %10, ptr %12, align 8
  %13 = tail call fastcc ptr @VEC_tree_heap_alloc() #21
  store ptr %13, ptr @block_defs_stack, align 8, !tbaa !643
  call void @init_walk_dominator_tree(ptr noundef nonnull %3) #22
  call void @walk_dominator_tree(ptr noundef nonnull %3, ptr noundef %0) #22
  call void @fini_walk_dominator_tree(ptr noundef nonnull %3) #22
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !983

16:                                               ; preds = %7
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !659
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  call void @dump_dfa_stats(ptr noundef nonnull %14) #22
  %21 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !643
  call void @dump_tree_ssa_stats(ptr noundef %24) #21
  br label %25

25:                                               ; preds = %20, %23, %16, %7
  call fastcc void @VEC_tree_heap_free() #21
  %26 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !983

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
define internal fastcc i32 @VEC_ssa_name_info_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !647 !PGOFuncName !985 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !986

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !987
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_name_info_p_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !989 !PGOFuncName !990 {
  %2 = load ptr, ptr @info_for_ssa_name, align 8, !tbaa !643
  %3 = tail call fastcc i32 @VEC_ssa_name_info_p_base_space(ptr noundef %2, i32 noundef %0) #21, !range !991
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !992

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @info_for_ssa_name, align 8, !tbaa !643
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_name_info_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !993 !PGOFuncName !994 {
  %3 = load i32, ptr %0, align 8, !tbaa !987
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !987
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !643
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ssa_name_info_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !647 !PGOFuncName !995 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_name_info_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !989 !PGOFuncName !996 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !997

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !998
  %7 = load i32, ptr %0, align 8, !tbaa !987
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !720 !PGOFuncName !999 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1000

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !723 !PGOFuncName !1001 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !725

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1002 !PGOFuncName !1003 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1004

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1005
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1007 !PGOFuncName !1008 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1009

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !643
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1010 !PGOFuncName !1011 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !739 !PGOFuncName !1012 {
  store ptr %1, ptr %0, align 8, !tbaa !1013
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1015
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1017
  %6 = tail call i64 @htab_size(ptr noundef %1) #22
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !1018
  %9 = load ptr, ptr %5, align 8, !tbaa !1017
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !643
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !1017
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !1019, !llvm.loop !1020

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !1021

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !643
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1022 !PGOFuncName !1023 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !651
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1024

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !1025
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !741 !PGOFuncName !1026 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1017
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1018
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #5 !prof !743 !PGOFuncName !1027 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1018
  %5 = load ptr, ptr %2, align 8, !tbaa !1017
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !1017
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !1028

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !643
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
define internal fastcc void @init_ssa_renamer() unnamed_addr #0 !prof !760 !PGOFuncName !1029 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !651
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 10
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, -2
  store i8 %7, ptr %5, align 8
  %8 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !762

10:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2310, ptr noundef nonnull @.str.32) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !643
  br label %12

12:                                               ; preds = %0, %10
  %13 = phi ptr [ %2, %0 ], [ %11, %10 ]
  %14 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %13) #21
  %15 = tail call i64 @htab_elements(ptr noundef %14) #22
  %16 = tail call ptr @htab_create(i64 noundef %15, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #22
  store ptr %16, ptr @def_blocks, align 8, !tbaa !643
  %17 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #21
  %18 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #21, !range !676
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25, !prof !1030

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %22, %20 ], [ %17, %12 ]
  tail call void @set_current_def(ptr noundef %21, ptr noundef null) #21
  %22 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #21
  %23 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #21, !range !676
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %20, label %25, !prof !1031, !llvm.loop !1032

25:                                               ; preds = %20, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_site_blocks() unnamed_addr #0 !prof !760 !PGOFuncName !1033 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.mark_def_sites_global_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store i8 1, ptr %1, align 8
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !1034
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @mark_def_sites_block, ptr %4, align 8, !tbaa !1036
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !1037
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %6, ptr %2, align 8, !tbaa !1038
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !1040
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %8, align 8, !tbaa !1041
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #22
  %9 = load ptr, ptr @cfun, align 8, !tbaa !643
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !673
  %12 = load ptr, ptr %11, align 8, !tbaa !686
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %12) #22
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #22
  %13 = load ptr, ptr %2, align 8, !tbaa !1038
  call void @bitmap_obstack_free(ptr noundef %13) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_phi_nodes(ptr noundef %0) unnamed_addr #0 !prof !760 !PGOFuncName !1042 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !762

7:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 57) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %10 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #21
  %11 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !676
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28, !prof !1030

13:                                               ; preds = %8, %24
  %14 = phi ptr [ %25, %24 ], [ %10, %8 ]
  %15 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !1043

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @get_phi_state(ptr noundef %14) #21, !range !1044
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20, !prof !1045

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !649
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %22) #22
  br label %24

24:                                               ; preds = %17, %20, %13
  %25 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #21
  %26 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !676
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %13, label %28, !prof !1031, !llvm.loop !1046

28:                                               ; preds = %24, %8
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %4) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !676
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31, !prof !765

31:                                               ; preds = %28, %31
  %32 = load i32, ptr %4, align 4, !tbaa !659
  %33 = tail call ptr @referenced_var_lookup(i32 noundef %32) #22
  %34 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %33) #21
  %35 = getelementptr inbounds %struct.def_blocks_d, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !757
  %37 = tail call ptr @compute_idf(ptr noundef %36, ptr noundef %0) #22
  tail call fastcc void @insert_phi_nodes_for(ptr noundef %33, ptr noundef %37, i8 noundef zeroext 0) #21
  tail call void @bitmap_obstack_free(ptr noundef %37) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !676
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %31, !prof !1047, !llvm.loop !1048

40:                                               ; preds = %31, %28
  tail call void @bitmap_obstack_free(ptr noundef %9) #22
  %41 = load i8, ptr @timevar_enable, align 1, !tbaa !649
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !762

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
define internal void @mark_def_sites_block(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !1049 !PGOFuncName !1050 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !1040
  %6 = load ptr, ptr %5, align 8, !tbaa !1038
  tail call void @bitmap_clear(ptr noundef %6) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13, !prof !1051

9:                                                ; preds = %2, %9
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  tail call fastcc void @mark_def_sites(ptr noundef %1, ptr noundef %10, ptr noundef %6) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %9, label %13, !prof !1052, !llvm.loop !1053

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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !1054 !PGOFuncName !1055 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !1013
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1017
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1018
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !1056 !PGOFuncName !1057 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1013
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_sites(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1058 !PGOFuncName !1059 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  tail call fastcc void @update_stmt(ptr noundef %1) #21
  %5 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !1060

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 748, ptr noundef nonnull @.str.32) #22
  br label %8

8:                                                ; preds = %3, %7
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 0) #21
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 0) #21
  %9 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #21, !range !676
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %63, !prof !1060

11:                                               ; preds = %8
  %12 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 1) #21
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %34, !prof !1061

15:                                               ; preds = %11, %30
  %16 = phi ptr [ %31, %30 ], [ %12, %11 ]
  %17 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %16) #21
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !659
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %24, label %23, !prof !1062

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 760, ptr noundef nonnull @.str.32) #22
  br label %24

24:                                               ; preds = %15, %23
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !649
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %26) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !1063

29:                                               ; preds = %24
  tail call fastcc void @set_livein_block(ptr noundef nonnull %17, ptr noundef %0) #21
  br label %30

30:                                               ; preds = %29, %24
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %31 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #21
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %15, label %34, !prof !1064, !llvm.loop !1065

34:                                               ; preds = %30, %11
  %35 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %1) #21
  %36 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %53, !prof !1066

38:                                               ; preds = %34, %46
  %39 = phi ptr [ %50, %46 ], [ %35, %34 ]
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !659
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %46, label %45, !prof !1067

45:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 770, ptr noundef nonnull @.str.32) #22
  br label %46

46:                                               ; preds = %38, %45
  tail call fastcc void @set_def_block(ptr noundef nonnull %39, ptr noundef %0, i8 noundef zeroext 0) #21
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %39, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !649
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %48) #22
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 1) #21
  %50 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #21
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %38, label %53, !prof !1068, !llvm.loop !1069

53:                                               ; preds = %46, %34
  %54 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %1) #21, !range !676
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59, !prof !1070

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %1) #21, !range !676
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59, !prof !1071

59:                                               ; preds = %56, %53
  %60 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !684
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %62) #21
  br label %63

63:                                               ; preds = %56, %59, %8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !1072 !PGOFuncName !1073 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1013
  %3 = load ptr, ptr %2, align 8, !tbaa !1074
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !1072 !PGOFuncName !1076 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1013
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1077
  store ptr %4, ptr %0, align 8, !tbaa !1013
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1054 !PGOFuncName !1078 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1079
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1080

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !649
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1081

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1082
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !1054 !PGOFuncName !1084 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1081

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1085
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1058 !PGOFuncName !1087 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !676
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1088

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_register_defs(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !1089 !PGOFuncName !1090 {
  tail call fastcc void @gimple_set_plf(ptr noundef %0, i8 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_rewrite_uses(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !1091 !PGOFuncName !1092 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1093 !PGOFuncName !1094 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !831
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1095 !PGOFuncName !1096 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !1097

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 771, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1098
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1100 !PGOFuncName !1101 {
  %2 = load i8, ptr %0, align 8, !tbaa !1102
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1103 !PGOFuncName !1104 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1105
  %4 = load ptr, ptr %3, align 8, !tbaa !643
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_livein_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1107 !PGOFuncName !1108 {
  %3 = tail call fastcc i32 @get_phi_state(ptr noundef %0) #21, !range !1044
  %4 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.def_blocks_d, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !758
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !684
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #22
  %10 = icmp eq i32 %3, 1
  br i1 %10, label %11, label %25, !prof !1109

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !757
  %14 = tail call i32 @bitmap_first_set_bit(ptr noundef %13) #22
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %25, label %16, !prof !1110

16:                                               ; preds = %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !643
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !673
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !677
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %14) #21
  %23 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %1, ptr noundef %22) #22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !1110

25:                                               ; preds = %2, %11, %16
  tail call fastcc void @set_phi_state(ptr noundef %0, i32 noundef 2) #21
  br label %26

26:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1111 !PGOFuncName !1112 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1114

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1115
  store ptr %7, ptr %2, align 8, !tbaa !1113
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1117
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1118
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1119

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1120
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1117
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1102
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1058 !PGOFuncName !1121 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !1098
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_def_block(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1122 !PGOFuncName !1123 {
  %4 = tail call fastcc i32 @get_phi_state(ptr noundef %0) #21, !range !1044
  %5 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !757
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !684
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %17, label %12, !prof !1124

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.def_blocks_d, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !759
  %15 = load i32, ptr %8, align 8, !tbaa !684
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %15) #22
  br label %17

17:                                               ; preds = %12, %3
  %18 = icmp eq i32 %4, 0
  %19 = select i1 %18, i32 1, i32 2, !prof !1125
  tail call fastcc void @set_phi_state(ptr noundef %0, i32 noundef %19) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 !prof !1126 !PGOFuncName !1127 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1128

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !1115
  store ptr %8, ptr %2, align 8, !tbaa !1113
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1129
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1130

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1131
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #21
  %17 = load ptr, ptr %11, align 8, !tbaa !1133
  store ptr %17, ptr %10, align 8, !tbaa !1129
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1102
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rewrite_uses_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1134 !PGOFuncName !1135 {
  %2 = tail call fastcc zeroext i8 @gimple_visited_p(ptr noundef %0) #21, !range !676
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @register_defs_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1136 !PGOFuncName !1137 {
  %2 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #21
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1138 !PGOFuncName !1139 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !831
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
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !1089 !PGOFuncName !1140 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048, !prof !1141
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !1091 !PGOFuncName !1142 {
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
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1143 !PGOFuncName !1144 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !1145

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 747, ptr noundef nonnull @.str.32) #22
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !1146

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !1129
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #21
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !1129
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !1147

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !1148

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !1133
  store ptr %25, ptr %18, align 8, !tbaa !1129
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !1149

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !1113
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !1113
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !1150

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !1151

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !1115
  store ptr %41, ptr %32, align 8, !tbaa !1113
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !1102
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1152 !PGOFuncName !1153 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !676
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1154

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !649
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1155 !PGOFuncName !1156 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !676
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1157

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !649
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1095 !PGOFuncName !1158 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !676
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1119

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !649
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1159 !PGOFuncName !1160 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !676
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1161

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !649
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1162 !PGOFuncName !1163 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !831
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_phi_state(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1164 !PGOFuncName !1165 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %9, !prof !1166

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
define internal fastcc ptr @get_def_blocks_for(ptr noundef %0) unnamed_addr #0 !prof !1167 !PGOFuncName !1168 {
  %2 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !755
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 1) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !643
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !1169

7:                                                ; preds = %1
  %8 = call ptr @xmalloc(i64 noundef 32) #22
  store ptr %0, ptr %8, align 8, !tbaa !755
  %9 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %10 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !757
  %11 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !759
  %13 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %14 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !758
  store ptr %8, ptr %4, align 8, !tbaa !643
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
define internal fastcc void @set_phi_state(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1170 !PGOFuncName !1171 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %14, !prof !1172

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
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1173 !PGOFuncName !1174 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1175 !PGOFuncName !1176 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !649
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1177

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 3103, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1178 !PGOFuncName !1179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !643
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1134 !PGOFuncName !1180 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1136 !PGOFuncName !1181 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_def_blocks_for(ptr noundef %0) unnamed_addr #0 !prof !1182 !PGOFuncName !1183 {
  %2 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !755
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !643
  %4 = call ptr @htab_find(ptr noundef %3, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @compute_idf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_phi_nodes_for(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1184 !PGOFuncName !1185 {
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
  br i1 %10, label %11, label %12, !prof !1186

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1082, ptr noundef nonnull @.str.32) #22
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !759
  %15 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !757
  %18 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !758
  tail call fastcc void @prune_unused_phi_nodes(ptr noundef %1, ptr noundef %17, ptr noundef %19) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %4) #21
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #21, !range !676
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %74, label %22, !prof !1187

22:                                               ; preds = %12
  %23 = icmp eq i8 %2, 0
  br label %24

24:                                               ; preds = %22, %70
  %25 = load ptr, ptr @cfun, align 8, !tbaa !643
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !673
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !677
  %30 = load i32, ptr %4, align 4, !tbaa !659
  %31 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %29, i32 noundef %30) #21
  br i1 %23, label %32, label %36, !prof !1188

32:                                               ; preds = %24
  %33 = load i64, ptr %0, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %41, label %56, !prof !1189

36:                                               ; preds = %24
  call fastcc void @mark_block_for_update(ptr noundef %31) #21
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %40, label %56, !prof !1189

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  br label %42

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1109, ptr noundef nonnull @.str.32) #22
  br label %42

42:                                               ; preds = %40, %41
  %43 = getelementptr inbounds i8, ptr %7, i64 8
  %44 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %31) #22
  %45 = call ptr @duplicate_ssa_name(ptr noundef nonnull %0, ptr noundef %44) #22
  call fastcc void @gimple_phi_set_result(ptr noundef %44, ptr noundef %45) #21
  call fastcc void @add_new_name_mapping(ptr noundef %45, ptr noundef nonnull %0) #21
  %46 = call fastcc ptr @ei_start_1(ptr noundef %31) #21
  store i32 0, ptr %7, align 8, !tbaa.struct !679
  store ptr %46, ptr %43, align 8, !tbaa.struct !680
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #21, !range !676
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49, !prof !1190

49:                                               ; preds = %42, %49
  %50 = load ptr, ptr %5, align 8, !tbaa !643
  call void @add_phi_arg(ptr noundef %44, ptr noundef nonnull %0, ptr noundef %50, i32 noundef 0) #22
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %51 = load i32, ptr %7, align 8
  %52 = load ptr, ptr %43, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %5) #21, !range !676
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %49, !prof !1191, !llvm.loop !1192

55:                                               ; preds = %49, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  br label %70

56:                                               ; preds = %36, %32
  %57 = phi i64 [ %38, %36 ], [ %34, %32 ]
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !659
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %62, label %61, !prof !1193

61:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1129, ptr noundef nonnull @.str.32) #22
  br label %62

62:                                               ; preds = %56, %61
  %63 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %31) #22
  %64 = call ptr @target_for_debug_bind(ptr noundef nonnull %0) #22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66, !prof !1193

66:                                               ; preds = %62
  %67 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %63) #21
  %68 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %67) #21
  %69 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %64, ptr noundef %68, ptr noundef %63) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %31) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %69, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %70

70:                                               ; preds = %62, %66, %55
  %71 = phi ptr [ %44, %55 ], [ %63, %66 ], [ %63, %62 ]
  call fastcc void @set_register_defs(ptr noundef %71, i8 noundef zeroext 1) #21
  call fastcc void @mark_phi_for_rewrite(ptr noundef %31, ptr noundef %71) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #21, !range !676
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %24, !prof !1194, !llvm.loop !1195

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
define internal fastcc void @prune_unused_phi_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1184 !PGOFuncName !1196 {
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
  %9 = load ptr, ptr %2, align 8, !tbaa !691
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !1197

11:                                               ; preds = %3
  tail call void @bitmap_clear(ptr noundef %0) #22
  br label %188

12:                                               ; preds = %3
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %14 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %2) #22
  %15 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %0, ptr noundef %13) #22
  %16 = load ptr, ptr %0, align 8, !tbaa !691
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !1198

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
  store i32 1, ptr %27, align 4, !tbaa !1199
  %28 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !1201
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %6) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31, !prof !1202

31:                                               ; preds = %19, %31
  %32 = phi i32 [ %49, %31 ], [ 1, %19 ]
  %33 = load ptr, ptr @cfun, align 8, !tbaa !643
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !673
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !677
  %38 = load i32, ptr %6, align 4, !tbaa !659
  %39 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %38) #21
  %40 = zext i32 %32 to i64
  %41 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %40
  store i32 %38, ptr %41, align 4, !tbaa !1199
  %42 = tail call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %39) #22
  %43 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %40, i32 1
  store i32 %42, ptr %43, align 4, !tbaa !1201
  %44 = add i32 %32, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %45
  store i32 %38, ptr %46, align 4, !tbaa !1199
  %47 = tail call i32 @bb_dom_dfs_out(i32 noundef 1, ptr noundef %39) #22
  %48 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %45, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !1201
  %49 = add i32 %32, 2
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %50 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %31, !prof !1203, !llvm.loop !1204

52:                                               ; preds = %31, %19
  %53 = phi i32 [ 1, %19 ], [ %49, %31 ]
  tail call void @bitmap_obstack_free(ptr noundef %13) #22
  %54 = icmp eq i32 %53, %24
  br i1 %54, label %56, label %55, !prof !1205

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 894, ptr noundef nonnull @.str.32) #22
  br label %56

56:                                               ; preds = %52, %55
  %57 = zext i32 %53 to i64
  tail call void @spec_qsort(ptr noundef nonnull %27, i64 noundef %57, i64 noundef 8, ptr noundef nonnull @cmp_dfsnum) #22
  %58 = load i32, ptr %27, align 4, !tbaa !1199
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %61, label %60, !prof !1205

60:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 900, ptr noundef nonnull @.str.32) #22
  br label %61

61:                                               ; preds = %56, %60
  %62 = add i32 %22, 1
  %63 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %62) #21
  store ptr %63, ptr %4, align 8, !tbaa !643
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %63, i32 noundef 1) #21
  %64 = icmp ugt i32 %53, 1
  br i1 %64, label %65, label %109, !prof !1206

65:                                               ; preds = %61, %105
  %66 = phi i64 [ %107, %105 ], [ 1, %61 ]
  %67 = phi i32 [ %93, %105 ], [ 1, %61 ]
  %68 = phi i32 [ %106, %105 ], [ 1, %61 ]
  %69 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66
  %70 = load i32, ptr %69, align 4, !tbaa !1199
  %71 = icmp eq i32 %70, %67
  br i1 %71, label %72, label %83, !prof !1207

72:                                               ; preds = %65
  %73 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %63) #21
  %74 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %63) #21
  %75 = add i32 %74, -1
  %76 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %63, i32 noundef %75) #21
  %77 = zext i32 %68 to i64
  %78 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %77
  store i32 %76, ptr %78, align 4, !tbaa !1199
  %79 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !1201
  %81 = add i32 %80, 1
  %82 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %77, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !1201
  br label %90

83:                                               ; preds = %65
  %84 = zext i32 %68 to i64
  %85 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %84
  store i32 %70, ptr %85, align 4, !tbaa !1199
  %86 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !1201
  %88 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %84, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !1201
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %63, i32 noundef %70) #21
  %89 = load i32, ptr %88, align 4, !tbaa !1201
  br label %90

90:                                               ; preds = %83, %72
  %91 = phi i32 [ %89, %83 ], [ %81, %72 ]
  %92 = phi i64 [ %84, %83 ], [ %77, %72 ]
  %93 = phi i32 [ %70, %83 ], [ %76, %72 ]
  %94 = add i32 %68, -1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %95, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !1201
  %98 = icmp eq i32 %91, %97
  br i1 %98, label %99, label %103, !prof !1208

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %95
  %101 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %92
  %102 = load i32, ptr %101, align 4, !tbaa !1199
  store i32 %102, ptr %100, align 4, !tbaa !1199
  br label %105

103:                                              ; preds = %90
  %104 = add i32 %68, 1
  br label %105

105:                                              ; preds = %99, %103
  %106 = phi i32 [ %68, %99 ], [ %104, %103 ]
  %107 = add nuw nsw i64 %66, 1
  %108 = icmp eq i64 %107, %57
  br i1 %108, label %109, label %65, !prof !1209, !llvm.loop !1210

109:                                              ; preds = %105, %61
  %110 = phi i32 [ 1, %61 ], [ %53, %105 ]
  %111 = phi i32 [ 1, %61 ], [ %106, %105 ]
  store i32 %110, ptr %6, align 4, !tbaa !659
  %112 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %63) #21
  %113 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %63) #21
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !1205

115:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 942, ptr noundef nonnull @.str.32) #22
  br label %116

116:                                              ; preds = %109, %115
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %128, !prof !1202

120:                                              ; preds = %128
  %121 = load ptr, ptr %4, align 8
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi ptr [ %121, %120 ], [ %63, %116 ]
  %124 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %123) #21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %187, label %126, !prof !1202

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %8, i64 8
  br label %132

128:                                              ; preds = %116, %128
  %129 = load i32, ptr %6, align 4, !tbaa !659
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %129) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %130 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %120, label %128, !prof !1211, !llvm.loop !1212

132:                                              ; preds = %126, %136
  %133 = phi ptr [ %123, %126 ], [ %137, %136 ]
  %134 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %133) #21
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140, !prof !1213

136:                                              ; preds = %182, %159, %132, %143, %155
  %137 = load ptr, ptr %4, align 8
  %138 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %137) #21
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %187, label %132, !prof !1214, !llvm.loop !1215

140:                                              ; preds = %132
  %141 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %134) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155, !prof !1216

143:                                              ; preds = %140
  %144 = load ptr, ptr @cfun, align 8, !tbaa !643
  %145 = getelementptr inbounds %struct.function, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !673
  %147 = getelementptr inbounds %struct.control_flow_graph, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !677
  %149 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %148, i32 noundef %134) #21
  %150 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %149) #22
  %151 = tail call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %150) #22
  %152 = tail call fastcc i32 @find_dfsnum_interval(ptr noundef nonnull %27, i32 noundef %111, i32 noundef %151) #21
  %153 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %152) #22
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %136, label %155, !prof !1217

155:                                              ; preds = %140, %143
  %156 = phi i32 [ %152, %143 ], [ %134, %140 ]
  %157 = tail call i32 @bitmap_bit_p(ptr noundef %117, i32 noundef %156) #22
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %136, !prof !1218

159:                                              ; preds = %155
  %160 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %117, i32 noundef %156) #22
  %161 = load ptr, ptr @cfun, align 8, !tbaa !643
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !673
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !677
  %166 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %165, i32 noundef %156) #21
  %167 = tail call fastcc ptr @ei_start_1(ptr noundef %166) #21
  store i32 0, ptr %8, align 8, !tbaa.struct !679
  store ptr %167, ptr %127, align 8, !tbaa.struct !680
  %168 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %167, ptr noundef nonnull %7) #21, !range !676
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %136, label %170, !prof !1219, !llvm.loop !1215

170:                                              ; preds = %159, %182
  %171 = load ptr, ptr %7, align 8, !tbaa !643
  %172 = load ptr, ptr %171, align 8, !tbaa !681
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !684
  %175 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %174) #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182, !prof !1220

177:                                              ; preds = %170
  %178 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %174) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182, !prof !1221

180:                                              ; preds = %177
  %181 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %174) #22
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %174) #21
  br label %182

182:                                              ; preds = %177, %170, %180
  call fastcc void @ei_next(ptr noundef nonnull %8) #21
  %183 = load i32, ptr %8, align 8
  %184 = load ptr, ptr %127, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %7) #21, !range !676
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %136, label %170, !prof !1222, !llvm.loop !1223

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
define internal fastcc void @mark_block_for_update(ptr noundef %0) unnamed_addr #0 !prof !1224 !PGOFuncName !1225 {
  %2 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !1226

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #22
  %5 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !684
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !1227

12:                                               ; preds = %6
  %13 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %14 = load i32, ptr %8, align 8, !tbaa !684
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #22
  tail call fastcc void @initialize_flags_in_bb(ptr noundef nonnull %0) #21
  br label %16

16:                                               ; preds = %6, %12
  ret void
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 !prof !1228 !PGOFuncName !1229 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !649
  ret void
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 !prof !672 !PGOFuncName !1230 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !672 !PGOFuncName !1231 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !676
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #21, !range !831
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !676
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !1232

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_phi_for_rewrite(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1233 !PGOFuncName !1234 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !684
  %6 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %1) #21, !range !676
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39, !prof !1235

8:                                                ; preds = %2
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %9 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !643
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11, !prof !1236

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %9, i32 noundef %5) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !643
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !673
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !674
  %18 = add nsw i32 %17, 1
  tail call fastcc void @VEC_gimple_vec_heap_reserve(i32 noundef %18) #21
  %19 = load ptr, ptr @phis_to_rewrite, align 8
  %20 = tail call fastcc i32 @VEC_gimple_vec_base_length(ptr noundef %19) #21
  %21 = icmp ugt i32 %20, %5
  br i1 %21, label %30, label %22, !prof !1237

22:                                               ; preds = %11
  %23 = load ptr, ptr @phis_to_rewrite, align 8
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %20, %22 ]
  tail call fastcc void @VEC_gimple_vec_base_quick_push(ptr noundef %23) #21
  %26 = add i32 %25, 1
  %27 = icmp ugt i32 %26, %5
  br i1 %27, label %28, label %24, !prof !1238, !llvm.loop !1239

28:                                               ; preds = %24
  %29 = load ptr, ptr @phis_to_rewrite, align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = phi ptr [ %29, %28 ], [ %19, %11 ]
  %32 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %31, i32 noundef %5) #21
  store ptr %32, ptr %3, align 8, !tbaa !643
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36, !prof !1240

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @VEC_gimple_heap_alloc() #21
  store ptr %35, ptr %3, align 8, !tbaa !643
  br label %36

36:                                               ; preds = %34, %30
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %3, ptr noundef %1) #21
  %37 = load ptr, ptr @phis_to_rewrite, align 8
  %38 = load ptr, ptr %3, align 8, !tbaa !643
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
define internal i32 @cmp_dfsnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !1241 !PGOFuncName !1242 {
  %3 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !1201
  %5 = getelementptr inbounds %struct.dom_dfsnum, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1201
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1243 !PGOFuncName !1244 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 !prof !1245 !PGOFuncName !1246 {
  %3 = load i32, ptr %0, align 4, !tbaa !1247
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1247
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !659
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_int_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !1245 !PGOFuncName !1249 {
  %2 = load i32, ptr %0, align 4, !tbaa !1247
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !1247
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !659
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1250 !PGOFuncName !1251 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !659
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1252 !PGOFuncName !1253 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1254

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !1247
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1255 !PGOFuncName !1256 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !643
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @find_dfsnum_interval(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 !prof !1257 !PGOFuncName !1258 {
  %4 = icmp ugt i32 %1, 1
  br i1 %4, label %5, label %20, !prof !1259

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %15, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %14, %5 ], [ %1, %3 ]
  %8 = add i32 %6, %7
  %9 = lshr i32 %8, 1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !1201
  %13 = icmp ugt i32 %12, %2
  %14 = select i1 %13, i32 %9, i32 %7, !prof !1260
  %15 = select i1 %13, i32 %6, i32 %9, !prof !1260
  %16 = add nuw i32 %15, 1
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %5, label %18, !prof !1261, !llvm.loop !1262

18:                                               ; preds = %5
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !1199
  ret i32 %23
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !1243 !PGOFuncName !1263 {
  %2 = load ptr, ptr %0, align 8, !tbaa !643
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1264

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !643
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1255 !PGOFuncName !1265 {
  %2 = load ptr, ptr %0, align 8, !tbaa !643
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1266

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #22
  store ptr %6, ptr %0, align 8, !tbaa !643
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !1255 !PGOFuncName !1267 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1213

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1268
  %6 = load i32, ptr %0, align 4, !tbaa !1247
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
define internal fastcc void @initialize_flags_in_bb(ptr noundef %0) unnamed_addr #0 !prof !1269 !PGOFuncName !1270 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #22
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !676
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !1271

6:                                                ; preds = %1, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  call fastcc void @set_rewrite_uses(ptr noundef %7, i8 noundef zeroext 0) #21
  call fastcc void @set_register_defs(ptr noundef %7, i8 noundef zeroext 0) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !prof !1272, !llvm.loop !1273

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !943
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !676
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21, !prof !1274

13:                                               ; preds = %10, %18
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %15 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %14) #21, !range !676
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !1275

17:                                               ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #22
  br label %18

18:                                               ; preds = %13, %17
  call fastcc void @set_rewrite_uses(ptr noundef %14, i8 noundef zeroext 0) #21
  call fastcc void @set_register_defs(ptr noundef %14, i8 noundef zeroext 0) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !676
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %13, label %21, !prof !1276, !llvm.loop !1277

21:                                               ; preds = %18, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1278 !PGOFuncName !1279 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !676
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1280

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
define internal fastcc void @VEC_gimple_vec_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !1281 !PGOFuncName !1282 {
  %2 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !643
  %3 = tail call fastcc i32 @VEC_gimple_vec_base_space(ptr noundef %2, i32 noundef %0) #21, !range !991
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1283

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @phis_to_rewrite, align 8, !tbaa !643
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_vec_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1281 !PGOFuncName !1284 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1285

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1286
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_vec_base_quick_push(ptr noundef %0) unnamed_addr #7 !prof !1288 !PGOFuncName !1289 {
  %2 = load i32, ptr %0, align 8, !tbaa !1286
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !1286
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr null, ptr %5, align 8, !tbaa !643
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !825 !PGOFuncName !1290 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1281 !PGOFuncName !1291 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !643
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_vec_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1281 !PGOFuncName !1292 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1285

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1293
  %7 = load i32, ptr %0, align 8, !tbaa !1286
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
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1281 !PGOFuncName !1294 {
  %2 = load ptr, ptr %0, align 8, !tbaa !643
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1285

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #22
  store ptr %6, ptr %0, align 8, !tbaa !643
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !1281 !PGOFuncName !1295 {
  %3 = load i32, ptr %0, align 8, !tbaa !1296
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1296
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !643
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !1281 !PGOFuncName !1298 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1285

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1299
  %6 = load i32, ptr %0, align 8, !tbaa !1296
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @repl_map_hash(ptr nocapture noundef readonly %0) #0 !prof !1300 !PGOFuncName !1301 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !643
  %3 = load ptr, ptr %0, align 8, !tbaa !774
  %4 = tail call i32 %2(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @repl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !1302 !PGOFuncName !1303 {
  %3 = load ptr, ptr %0, align 8, !tbaa !774
  %4 = load ptr, ptr %1, align 8, !tbaa !774
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @repl_map_free(ptr nocapture noundef %0) #0 !prof !846 !PGOFuncName !1304 {
  %2 = getelementptr inbounds %struct.repl_map_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !777
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: optsize
declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_repl_tbl(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !846 !PGOFuncName !1305 {
  %3 = alloca %struct.repl_map_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !774
  %4 = load ptr, ptr @repl_tbl, align 8, !tbaa !643
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !643
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !848

8:                                                ; preds = %2
  %9 = call ptr @xmalloc(i64 noundef 16) #22
  store ptr %0, ptr %9, align 8, !tbaa !774
  %10 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %11 = getelementptr inbounds %struct.repl_map_d, ptr %9, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !777
  store ptr %9, ptr %5, align 8, !tbaa !643
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.repl_map_d, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !777
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !649
  %18 = call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %17) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !872 !PGOFuncName !1306 {
  %3 = load ptr, ptr %0, align 8, !tbaa !769
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1307

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
  %15 = load i64, ptr %14, align 8, !tbaa !700
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !649
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !649
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !700
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !700
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_def_site_for(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1308 !PGOFuncName !1309 {
  %3 = load ptr, ptr @names_to_release, align 8, !tbaa !643
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !1310

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !649
  %8 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !1311

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2618, ptr noundef nonnull @.str.32) #22
  br label %11

11:                                               ; preds = %2, %5, %10
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !649
  %14 = tail call fastcc ptr @gimple_bb(ptr noundef %13) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16, !prof !1312

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !684
  %19 = load ptr, ptr @cfun, align 8, !tbaa !643
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !673
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !674
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %26, label %25, !prof !1313

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
define internal fastcc void @prepare_use_sites_for(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1314 !PGOFuncName !1315 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #23
  %4 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %0) #21
  %5 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !676
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %25, !prof !1316

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %22, %20 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !649
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #21, !range !831
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %18, !prof !1317

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %8) #21
  %15 = sext i32 %14 to i64
  %16 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %10, i64 noundef %15) #21
  %17 = load ptr, ptr %16, align 8, !tbaa !681
  br label %20

18:                                               ; preds = %7
  %19 = tail call fastcc ptr @gimple_bb(ptr noundef %10) #21
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %17, %13 ]
  tail call fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %10, ptr noundef %21, i8 noundef zeroext %1) #21
  %22 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #21
  %23 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !676
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %7, label %25, !prof !1318, !llvm.loop !1319

25:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_interesting(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1320 !PGOFuncName !1321 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !684
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !1322

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2431, ptr noundef nonnull @.str.32) #22
  br label %13

13:                                               ; preds = %4, %12
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 1) #21
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %42, label %15, !prof !1323

15:                                               ; preds = %13
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !831
  %17 = icmp eq i32 %16, 16
  %18 = zext i1 %17 to i8
  tail call fastcc void @set_def_block(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %18) #21
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %42, !prof !1324

22:                                               ; preds = %15
  %23 = tail call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %0) #21, !range !676
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25, !prof !1325

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %26 = tail call fastcc ptr @names_replaced_by(ptr noundef nonnull %0) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28, !prof !1326

28:                                               ; preds = %25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull %6) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31, !prof !1327

31:                                               ; preds = %28, %31
  %32 = load ptr, ptr @cfun, align 8, !tbaa !643
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !651
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !654
  %37 = load i32, ptr %6, align 4, !tbaa !659
  %38 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %36, i32 noundef %37) #21
  tail call fastcc void @set_def_block(ptr noundef %38, ptr noundef %2, i8 noundef zeroext %18) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !676
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %31, !prof !1328, !llvm.loop !1329

41:                                               ; preds = %31, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %42

42:                                               ; preds = %15, %22, %41, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 !prof !1314 !PGOFuncName !1330 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !1331
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1333
  store ptr %6, ptr %0, align 8, !tbaa !1334
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !676
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !1335
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1336 !PGOFuncName !1337 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1334
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1331
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 !prof !1338 !PGOFuncName !1339 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !649
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #21, !range !831
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !1340

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
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 !prof !1341 !PGOFuncName !1342 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %4 = load ptr, ptr %3, align 8, !tbaa !1343
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1344 !PGOFuncName !1345 {
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  tail call fastcc void @mark_block_for_update(ptr noundef %5) #21
  tail call fastcc void @mark_block_for_update(ptr noundef %2) #21
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !831
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %10, !prof !1346

8:                                                ; preds = %4
  tail call fastcc void @mark_phi_for_rewrite(ptr noundef %5, ptr noundef %1) #21
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %24, label %15, !prof !1347

10:                                               ; preds = %4
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %11 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #21, !range !676
  %12 = icmp ne i8 %11, 0
  %13 = icmp eq i8 %3, 0
  %14 = or i1 %13, %12
  br i1 %14, label %24, label %15, !prof !1348

15:                                               ; preds = %10, %8
  %16 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %17 = getelementptr inbounds %struct.def_blocks_d, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !757
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !684
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !1349

23:                                               ; preds = %15
  tail call fastcc void @set_livein_block(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %24

24:                                               ; preds = %8, %23, %15, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #4 !prof !1350 !PGOFuncName !1351 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1334
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1333
  store ptr %4, ptr %0, align 8, !tbaa !1334
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !676
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !1352
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1353 !PGOFuncName !1354 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !649
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @symbol_marked_for_renaming(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1355 !PGOFuncName !1356 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !651
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !737
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !649
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %8) #22
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1357 !PGOFuncName !1358 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6, !prof !1359

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 783, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %8, align 4, !tbaa !1098
  %9 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #4 !prof !1360 !PGOFuncName !1361 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1362

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1131
  %8 = load ptr, ptr %3, align 8, !tbaa !1133
  store ptr %8, ptr %2, align 8, !tbaa !1129
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !1102
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
define internal void @rewrite_enter_block(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !1049 !PGOFuncName !1363 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !1364

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !659
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !684
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.50, i32 noundef %13) #21
  br label %15

15:                                               ; preds = %11, %7, %2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef null) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #22
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29, !prof !1365

18:                                               ; preds = %15, %24
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %19) #21
  %21 = call zeroext i8 @is_gimple_reg(ptr noundef %20) #22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24, !prof !1366

23:                                               ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1404, ptr noundef nonnull @.str.32) #22
  br label %24

24:                                               ; preds = %18, %23
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !649
  call fastcc void @register_new_def(ptr noundef %20, ptr noundef %26) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %18, label %29, !prof !1367, !llvm.loop !1368

29:                                               ; preds = %24, %15
  %30 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !684
  %33 = lshr i32 %32, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !700
  %37 = and i32 %32, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %39, %36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42, !prof !1369

42:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !943
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48, !prof !1370

45:                                               ; preds = %42, %45
  call fastcc void @rewrite_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !676
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %45, label %48, !prof !1371, !llvm.loop !1372

48:                                               ; preds = %45, %42, %29
  call fastcc void @rewrite_add_phi_arguments(ptr noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !1049 !PGOFuncName !1373 {
  %3 = load ptr, ptr @block_defs_stack, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6, !prof !1374

6:                                                ; preds = %2, %22
  %7 = phi ptr [ %25, %22 ], [ %3, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10, !prof !1375

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %22, !prof !1376

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !649
  %17 = tail call zeroext i8 @is_gimple_reg(ptr noundef %16) #22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22, !prof !1377

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
  br i1 %27, label %28, label %6, !prof !1378

28:                                               ; preds = %22, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_update_enter_block(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !1379 !PGOFuncName !1380 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !1381

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !659
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !684
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.52, i32 noundef %15) #21
  br label %17

17:                                               ; preds = %13, %9, %2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef null) #21
  %18 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !684
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %95, label %23, !prof !1382

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !679
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8, !tbaa.struct !680
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %3) #21, !range !676
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28, !prof !1383

28:                                               ; preds = %23, %34
  %29 = load ptr, ptr %3, align 8, !tbaa !643
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !834
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39, !prof !1384

34:                                               ; preds = %28
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %25, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %3) #21, !range !676
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %28, !prof !1385, !llvm.loop !1386

39:                                               ; preds = %34, %28, %23
  %40 = phi i1 [ true, %23 ], [ %33, %28 ], [ %33, %34 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #22
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !676
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %70, !prof !1387

43:                                               ; preds = %39, %67
  %44 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  %45 = call fastcc zeroext i8 @register_defs_p(ptr noundef %44) #21, !range !676
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %67, label %47, !prof !1388

47:                                               ; preds = %43
  %48 = call fastcc ptr @gimple_phi_result(ptr noundef %44) #21
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !649
  %51 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %50) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53, !prof !1389

53:                                               ; preds = %47
  call fastcc void @register_new_update_single(ptr noundef nonnull %48, ptr noundef %50) #21
  br label %63

54:                                               ; preds = %47
  %55 = call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %48) #21, !range !676
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57, !prof !1390

57:                                               ; preds = %54
  %58 = call fastcc ptr @names_replaced_by(ptr noundef nonnull %48) #21
  call fastcc void @register_new_update_set(ptr noundef nonnull %48, ptr noundef %58) #21
  br label %59

59:                                               ; preds = %57, %54
  %60 = call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %48) #21, !range !676
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %63, label %62, !prof !1391

62:                                               ; preds = %59
  call fastcc void @register_new_update_single(ptr noundef nonnull %48, ptr noundef nonnull %48) #21
  br label %63

63:                                               ; preds = %59, %62, %53
  br i1 %40, label %67, label %64, !prof !1392

64:                                               ; preds = %63
  %65 = load i64, ptr %48, align 8
  %66 = or i64 %65, 4194304
  store i64 %66, ptr %48, align 8
  br label %67

67:                                               ; preds = %63, %64, %43
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !676
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %43, label %70, !prof !1393, !llvm.loop !1394

70:                                               ; preds = %67, %39
  %71 = load ptr, ptr @interesting_blocks, align 8, !tbaa !643
  %72 = load i32, ptr %19, align 8, !tbaa !684
  %73 = lshr i32 %72, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !700
  %77 = and i32 %72, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %79, %76
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %94, label %82, !prof !1395

82:                                               ; preds = %70
  %83 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %84 = call i32 @bitmap_bit_p(ptr noundef %83, i32 noundef %72) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87, !prof !1395

86:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2136, ptr noundef nonnull @.str.32) #22
  br label %87

87:                                               ; preds = %82, %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !943
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !676
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94, !prof !1396

90:                                               ; preds = %87, %90
  %91 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call fastcc void @rewrite_update_stmt(ptr noundef %91, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !676
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %90, label %94, !prof !1397, !llvm.loop !1398

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
define internal void @rewrite_update_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !1379 !PGOFuncName !1399 {
  %3 = load ptr, ptr @block_defs_stack, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6, !prof !1374

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !1400

10:                                               ; preds = %6
  %11 = load ptr, ptr @block_defs_stack, align 8
  %12 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %11) #21
  tail call void @set_current_def(ptr noundef nonnull %8, ptr noundef %12) #21
  %13 = load ptr, ptr @block_defs_stack, align 8
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %6, !prof !1401

16:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !820 !PGOFuncName !1402 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  ret ptr %1
}

; Function Attrs: optsize
declare void @dump_dfa_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #13 !prof !820 !PGOFuncName !1403 {
  %1 = load ptr, ptr @block_defs_stack, align 8, !tbaa !643
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1404

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @block_defs_stack, align 8, !tbaa !643
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !1405 !PGOFuncName !1406 {
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 1) #21
  %2 = load ptr, ptr @block_defs_stack, align 8, !tbaa !643
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_def(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1407 !PGOFuncName !1408 {
  %3 = tail call fastcc i32 @get_phi_state(ptr noundef %1) #21, !range !1044
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %14, label %5, !prof !1409

5:                                                ; preds = %2
  %6 = tail call ptr @get_current_def(ptr noundef %1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !1410

8:                                                ; preds = %5
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !1377

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
define internal fastcc void @rewrite_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !1411 !PGOFuncName !1412 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #23
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %4 = load ptr, ptr @blocks_to_update, align 8, !tbaa !643
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !1413

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1306, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %3) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !1414

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %3) #21, !range !676
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %73, label %13, !prof !1415

13:                                               ; preds = %10, %7
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !1416

16:                                               ; preds = %13
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !659
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 19, i64 1, ptr nonnull %14)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !643
  tail call void @print_gimple_stmt(ptr noundef %22, ptr noundef %3, i32 noundef 0, i32 noundef 2) #22
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %20, %16, %13
  %26 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %3) #21, !range !676
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28, !prof !1417

28:                                               ; preds = %25
  %29 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 1) #21
  %30 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %46, !prof !1418

32:                                               ; preds = %28, %41
  %33 = phi ptr [ %43, %41 ], [ %29, %28 ]
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %33) #21
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !659
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %41, label %40, !prof !1062

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1322, ptr noundef nonnull @.str.32) #22
  br label %41

41:                                               ; preds = %32, %40
  %42 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %34) #21
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %33, ptr noundef %42) #21
  %43 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #21
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %32, label %46, !prof !1419, !llvm.loop !1420

46:                                               ; preds = %41, %28, %25
  %47 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %3) #21, !range !676
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %73, label %49, !prof !1421

49:                                               ; preds = %46
  %50 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 2) #21
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73, !prof !1422

53:                                               ; preds = %49, %69
  %54 = phi ptr [ %70, %69 ], [ %50, %49 ]
  %55 = call fastcc ptr @get_def_from_ptr(ptr noundef %54) #21
  %56 = call fastcc ptr @make_ssa_name(ptr noundef %55, ptr noundef %3) #21
  %57 = load i64, ptr %55, align 8
  %58 = and i64 %57, 65535
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !659
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %63, label %62, !prof !1067

62:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1333, ptr noundef nonnull @.str.32) #22
  br label %63

63:                                               ; preds = %53, %62
  store ptr %56, ptr %54, align 8, !tbaa !643
  %64 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %54) #21
  call fastcc void @register_new_def(ptr noundef %64, ptr noundef nonnull %55) #21
  %65 = call ptr @target_for_debug_bind(ptr noundef nonnull %55) #22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !1067

67:                                               ; preds = %63
  %68 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %65, ptr noundef %56, ptr noundef %3) #22
  call void @gsi_insert_after(ptr noundef nonnull %0, ptr noundef %68, i32 noundef 1) #22
  br label %69

69:                                               ; preds = %67, %63
  %70 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #21
  %71 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %53, label %73, !prof !1423, !llvm.loop !1424

73:                                               ; preds = %69, %49, %46, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_add_phi_arguments(ptr noundef %0) unnamed_addr #0 !prof !1049 !PGOFuncName !1425 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !679
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !680
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10, !prof !1426

10:                                               ; preds = %1, %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %11 = load ptr, ptr %2, align 8, !tbaa !643
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1427
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #22
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !676
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %27, !prof !1428

16:                                               ; preds = %10, %16
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  %18 = call fastcc ptr @gimple_phi_result(ptr noundef %17) #21
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !649
  %21 = call fastcc ptr @get_reaching_def(ptr noundef %20) #21
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !649
  %24 = call fastcc i32 @gimple_location(ptr noundef %23) #21
  call void @add_phi_arg(ptr noundef %17, ptr noundef %21, ptr noundef %11, i32 noundef %24) #22
  call fastcc void @gsi_next(ptr noundef nonnull %4) #21
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !676
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %16, label %27, !prof !1429, !llvm.loop !1430

27:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %28 = load i32, ptr %3, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %2) #21, !range !676
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %10, !prof !1431, !llvm.loop !1432

32:                                               ; preds = %27, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !1433 !PGOFuncName !1434 {
  %2 = load ptr, ptr @block_defs_stack, align 8, !tbaa !643
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #21, !range !991
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1435

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @block_defs_stack, align 8, !tbaa !643
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !1436 !PGOFuncName !1437 {
  %3 = load i32, ptr %0, align 8, !tbaa !733
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !733
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !643
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1433 !PGOFuncName !1438 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !1439

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1440
  %7 = load i32, ptr %0, align 8, !tbaa !733
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
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !1441 !PGOFuncName !1442 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1105
  store ptr %1, ptr %4, align 8, !tbaa !643
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_reaching_def(ptr noundef %0) unnamed_addr #0 !prof !1443 !PGOFuncName !1444 {
  %2 = tail call ptr @get_current_def(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %16, !prof !1445

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !659
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %13, label %10, !prof !1446

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !649
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1447 !PGOFuncName !1448 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !643
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #22
  ret ptr %4
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #18 !prof !1441 !PGOFuncName !1449 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1450
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1451

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1333
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1333
  store ptr %2, ptr %6, align 8, !tbaa !1450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !1441 !PGOFuncName !1452 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !1453

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !1454

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !1450
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !prof !1441 !PGOFuncName !1455 {
  store ptr %1, ptr %0, align 8, !tbaa !1450
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1333
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1333
  store ptr %0, ptr %4, align 8, !tbaa !1450
  store ptr %0, ptr %3, align 8, !tbaa !1333
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_default_def_for(ptr noundef %0) unnamed_addr #0 !prof !1456 !PGOFuncName !1457 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !643
  %3 = tail call ptr @gimple_default_def(ptr noundef %2, ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !1458

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
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1459 !PGOFuncName !1460 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !649
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !1436 !PGOFuncName !1461 {
  %2 = load i32, ptr %0, align 8, !tbaa !733
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !733
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !643
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_update_single(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1462 !PGOFuncName !1463 {
  %3 = tail call ptr @get_current_def(ptr noundef %1) #21
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 2) #21
  %4 = load ptr, ptr @block_defs_stack, align 8
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef %3) #21
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef %1) #21
  tail call void @set_current_def(ptr noundef %1, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_update_set(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1464 !PGOFuncName !1465 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #21
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !676
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !1466

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @cfun, align 8, !tbaa !643
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !651
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !654
  %13 = load i32, ptr %4, align 4, !tbaa !659
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %13) #21
  tail call fastcc void @register_new_update_single(ptr noundef %0, ptr noundef %14) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !676
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !prof !1467, !llvm.loop !1468

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_update_stmt(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 !prof !1469 !PGOFuncName !1470 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %4 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %0) #21, !range !676
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !1471

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %0) #21, !range !676
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %61, label %9, !prof !1472

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12, !prof !1473

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !659
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 39, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !643
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !643
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %16, %12, %9
  %22 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %0) #21, !range !676
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %24, !prof !1474

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !676
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27, !prof !1475

27:                                               ; preds = %24
  %28 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 1) #21
  %29 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27, %35
  %32 = phi ptr [ %36, %35 ], [ %28, %27 ]
  %33 = tail call fastcc zeroext i8 @maybe_replace_use_in_debug_stmt(ptr noundef %32) #21, !range !676
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %31, label %49, !llvm.loop !1476

39:                                               ; preds = %31
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #21
  tail call fastcc void @update_stmt(ptr noundef %0) #21
  br label %49

40:                                               ; preds = %24
  %41 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 5) #21
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49, !prof !1477

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %46, %44 ], [ %41, %40 ]
  tail call fastcc void @maybe_replace_use(ptr noundef %45) #21
  %46 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %47 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %44, label %49, !prof !1478, !llvm.loop !1479

49:                                               ; preds = %35, %44, %27, %40, %39, %21
  %50 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %0) #21, !range !676
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52, !prof !1480

52:                                               ; preds = %49
  %53 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 10) #21
  %54 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %61, !prof !1481

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %58, %56 ], [ %53, %52 ]
  tail call fastcc void @maybe_register_def(ptr noundef %57, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  %58 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %3) #21
  %59 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %56, label %61, !prof !1482, !llvm.loop !1483

61:                                               ; preds = %56, %52, %49, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_update_phi_arguments(ptr noundef %0) unnamed_addr #0 !prof !1484 !PGOFuncName !1485 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !679
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !680
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #21, !range !676
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %105, label %10, !prof !1383

10:                                               ; preds = %1, %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %11 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !643
  %12 = load ptr, ptr %2, align 8, !tbaa !643
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1427
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !684
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %100, label %19, !prof !1486

19:                                               ; preds = %10
  %20 = load ptr, ptr @phis_to_rewrite, align 8
  %21 = load ptr, ptr %13, align 8, !tbaa !1427
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !684
  %24 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %20, i32 noundef %23) #21
  %25 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %4) #21, !range !991
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %100, label %27, !prof !1487

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  %29 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  br label %30

30:                                               ; preds = %27, %96
  %31 = phi i32 [ 0, %27 ], [ %97, %96 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !643
  %33 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %32) #21, !range !676
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !1488

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2006, ptr noundef nonnull @.str.32) #22
  br label %36

36:                                               ; preds = %30, %35
  %37 = load i32, ptr %28, align 4, !tbaa !1489
  %38 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %32, i32 noundef %37) #21
  %39 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41, !prof !1490

41:                                               ; preds = %36
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !659
  %46 = icmp eq i32 %45, 3
  %47 = icmp eq i64 %43, 141
  %48 = or i1 %46, %47
  br i1 %48, label %54, label %96, !prof !1491

49:                                               ; preds = %36
  %50 = tail call fastcc ptr @gimple_phi_result(ptr noundef %32) #21
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !649
  %53 = tail call fastcc ptr @get_reaching_def(ptr noundef %52) #21
  br label %69

54:                                               ; preds = %41
  br i1 %46, label %58, label %55, !prof !1492

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !649
  br label %58

58:                                               ; preds = %54, %55
  %59 = phi ptr [ %57, %55 ], [ %39, %54 ]
  %60 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %59) #21
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62, !prof !1493

62:                                               ; preds = %58
  %63 = tail call fastcc ptr @get_reaching_def(ptr noundef %59) #21
  br label %69

64:                                               ; preds = %58
  %65 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %39) #21, !range !676
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67, !prof !1494

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %39) #21
  br label %69

69:                                               ; preds = %62, %67, %49
  %70 = phi ptr [ %53, %49 ], [ %63, %62 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72, !prof !1495

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %38) #21
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %38, ptr noundef nonnull %70) #21
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !649
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #21, !range !831
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %83, !prof !1496

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %75) #21
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83, !prof !1497

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
  %89 = load i32, ptr %29, align 8, !tbaa !834
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !1498

92:                                               ; preds = %88
  %93 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #21
  %94 = load i64, ptr %93, align 8
  %95 = or i64 %94, 4194304
  store i64 %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %88, %92, %41
  %97 = add i32 %31, 1
  %98 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef %97, ptr noundef nonnull %4) #21, !range !991
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %30, !prof !1499, !llvm.loop !1500

100:                                              ; preds = %96, %19, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %101 = load i32, ptr %3, align 8
  %102 = load ptr, ptr %7, align 8
  %103 = call fastcc zeroext i8 @ei_cond(i32 %101, ptr %102, ptr noundef nonnull %2) #21, !range !676
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %10, !prof !1501, !llvm.loop !1502

105:                                              ; preds = %100, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @maybe_replace_use_in_debug_stmt(ptr noundef %0) unnamed_addr #0 !prof !672 !PGOFuncName !1503 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !659
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !649
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
  %18 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %2) #21, !range !676
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
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !672 !PGOFuncName !1504 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_replace_use(ptr noundef %0) unnamed_addr #0 !prof !1505 !PGOFuncName !1506 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !659
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8, !prof !1507

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !649
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ %2, %1 ]
  %13 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %12) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15, !prof !1508

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @get_reaching_def(ptr noundef %12) #21
  br label %22

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %2) #21, !range !676
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20, !prof !1509

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %2) #21
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %23, %2
  %26 = or i1 %24, %25
  br i1 %26, label %28, label %27, !prof !1510

27:                                               ; preds = %22
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %23) #21
  br label %28

28:                                               ; preds = %17, %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_register_def(ptr nocapture noundef %0, ptr noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #0 !prof !1511 !PGOFuncName !1512 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !659
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %15, label %12, !prof !1513

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !649
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi ptr [ %14, %12 ], [ %6, %3 ]
  %17 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %16) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %85, label %19, !prof !1514

19:                                               ; preds = %15
  %20 = load i64, ptr %6, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !659
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %83, !prof !1515

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %6, ptr noundef %1) #21
  store ptr %26, ptr %0, align 8, !tbaa !643
  %27 = tail call ptr @target_for_debug_bind(ptr noundef %16) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %83, label %29, !prof !1516

29:                                               ; preds = %25
  %30 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %27, ptr noundef %26, ptr noundef %1) #22
  %31 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !676
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
  store i32 0, ptr %4, align 8, !tbaa.struct !679
  %40 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %39, ptr %40, align 8, !tbaa.struct !680
  %41 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %39, ptr noundef nonnull %5) #21, !range !676
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %36, %53
  %44 = phi ptr [ %54, %53 ], [ null, %36 ]
  %45 = load ptr, ptr %5, align 8, !tbaa !643
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !834
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
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %5) #21, !range !676
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %43, !llvm.loop !1517

59:                                               ; preds = %53
  %60 = icmp eq ptr %54, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1427
  %64 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %63) #21, !range !676
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @phi_nodes(ptr noundef %63) #21
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load ptr, ptr %62, align 8, !tbaa !1427
  %71 = load ptr, ptr @cfun, align 8, !tbaa !643
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !673
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !764
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
  %86 = tail call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %6) #21, !range !676
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88, !prof !1518

88:                                               ; preds = %85
  %89 = tail call fastcc ptr @names_replaced_by(ptr noundef nonnull %6) #21
  tail call fastcc void @register_new_update_set(ptr noundef nonnull %6, ptr noundef %89) #21
  br label %90

90:                                               ; preds = %88, %85
  %91 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %6) #21, !range !676
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !1519

93:                                               ; preds = %90
  tail call fastcc void @register_new_update_single(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  br label %94

94:                                               ; preds = %90, %93, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !672 !PGOFuncName !1520 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !676
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
  store ptr null, ptr %10, align 8, !tbaa !643
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1521 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !649
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !672 !PGOFuncName !1522 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !700
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
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !672 !PGOFuncName !1523 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !831
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !672 !PGOFuncName !1524 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !659
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !672 !PGOFuncName !1525 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1013
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1077
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
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !672 !PGOFuncName !1526 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1018
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !672 !PGOFuncName !1527 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1343
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !672 !PGOFuncName !1528 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1079
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 510, ptr noundef nonnull @.str.32) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !649
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1529
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !1530 !PGOFuncName !1531 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1532

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1296
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1533

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !643
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !643
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1534 !PGOFuncName !1535 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !649
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0) unnamed_addr #0 !prof !1536 !PGOFuncName !1537 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #21
  %3 = getelementptr inbounds %struct.phi_arg_d, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !1538
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1540 !PGOFuncName !1541 {
  %4 = trunc i64 %1 to i32
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #21
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !1538
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!640}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!35 = !{ptr @get_current_def, ptr @get_ssa_name_ann, i64 798163}
!36 = !{ptr @get_current_def, ptr @var_ann, i64 1602673}
!37 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_base_length, i64 2245188}
!38 = !{ptr @get_ssa_name_ann, ptr @VEC_tree_base_length, i64 591}
!39 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_heap_reserve, i64 591}
!40 = !{ptr @get_ssa_name_ann, ptr @xcalloc, i64 66751}
!41 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_base_quick_push, i64 66751}
!42 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_base_index, i64 2245188}
!43 = !{ptr @set_current_def, ptr @get_ssa_name_ann, i64 713277}
!44 = !{ptr @set_current_def, ptr @var_ann, i64 1287970}
!45 = !{ptr @ei_cond, ptr @ei_end_p, i64 7553768}
!46 = !{ptr @ei_cond, ptr @ei_edge, i64 5081478}
!47 = !{ptr @ei_next, ptr @ei_container, i64 10162955}
!48 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 5081478}
!49 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!50 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 80}
!51 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 80}
!52 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 222804}
!53 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 222724}
!54 = !{ptr @rewrite_into_ssa, ptr @timevar_push_1, i64 1}
!55 = !{ptr @rewrite_into_ssa, ptr @init_ssa_operands, i64 40}
!56 = !{ptr @rewrite_into_ssa, ptr @init_ssa_renamer, i64 40}
!57 = !{ptr @rewrite_into_ssa, ptr @sbitmap_alloc, i64 40}
!58 = !{ptr @rewrite_into_ssa, ptr @sbitmap_zero, i64 40}
!59 = !{ptr @rewrite_into_ssa, ptr @xmalloc, i64 40}
!60 = !{ptr @rewrite_into_ssa, ptr @bitmap_obstack_alloc_stat, i64 182758}
!61 = !{ptr @rewrite_into_ssa, ptr @calculate_dominance_info, i64 40}
!62 = !{ptr @rewrite_into_ssa, ptr @compute_dominance_frontiers, i64 40}
!63 = !{ptr @rewrite_into_ssa, ptr @mark_def_site_blocks, i64 40}
!64 = !{ptr @rewrite_into_ssa, ptr @insert_phi_nodes, i64 40}
!65 = !{ptr @rewrite_into_ssa, ptr @rewrite_blocks, i64 40}
!66 = !{ptr @rewrite_into_ssa, ptr @bitmap_obstack_free, i64 182758}
!67 = !{ptr @rewrite_into_ssa, ptr @free, i64 120}
!68 = !{ptr @rewrite_into_ssa, ptr @fini_ssa_renamer, i64 40}
!69 = !{ptr @rewrite_into_ssa, ptr @timevar_pop_1, i64 1}
!70 = !{ptr @names_replaced_by, ptr @htab_find_slot, i64 256573}
!71 = !{ptr @need_ssa_update_p, ptr @fancy_abort, i64 1}
!72 = !{ptr @delete_update_ssa, ptr @free, i64 900}
!73 = !{ptr @delete_update_ssa, ptr @htab_delete, i64 225}
!74 = !{ptr @delete_update_ssa, ptr @bitmap_clear, i64 225}
!75 = !{ptr @delete_update_ssa, ptr @bitmap_obstack_free, i64 684}
!76 = !{ptr @delete_update_ssa, ptr @bmp_iter_set_init, i64 233}
!77 = !{ptr @delete_update_ssa, ptr @bmp_iter_set, i64 178453}
!78 = !{ptr @delete_update_ssa, ptr @VEC_tree_base_index, i64 72}
!79 = !{ptr @delete_update_ssa, ptr @release_ssa_name, i64 72}
!80 = !{ptr @delete_update_ssa, ptr @bmp_iter_next, i64 178220}
!81 = !{ptr @delete_update_ssa, ptr @clear_ssa_name_info, i64 225}
!82 = !{ptr @delete_update_ssa, ptr @fini_ssa_renamer, i64 225}
!83 = !{ptr @delete_update_ssa, ptr @VEC_gimple_vec_base_index, i64 178148}
!84 = !{ptr @delete_update_ssa, ptr @VEC_gimple_heap_free, i64 178148}
!85 = !{ptr @delete_update_ssa, ptr @VEC_gimple_vec_base_replace, i64 178148}
!86 = !{ptr @fini_ssa_renamer, ptr @htab_delete, i64 189}
!87 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 179730}
!88 = !{ptr @create_new_def_for, ptr @duplicate_ssa_name, i64 90123}
!89 = !{ptr @create_new_def_for, ptr @gimple_code, i64 90123}
!90 = !{ptr @create_new_def_for, ptr @gimple_bb, i64 37798}
!91 = !{ptr @create_new_def_for, ptr @ei_start_1, i64 37798}
!92 = !{ptr @create_new_def_for, ptr @ei_cond, i64 37799}
!93 = !{ptr @create_new_def_for, ptr @ei_next, i64 1}
!94 = !{ptr @create_new_def_for, ptr @register_new_name_mapping, i64 90123}
!95 = !{ptr @create_new_def_for, ptr @set_current_def, i64 90123}
!96 = !{ptr @register_new_name_mapping, ptr @init_update_ssa, i64 130}
!97 = !{ptr @register_new_name_mapping, ptr @fancy_abort, i64 1}
!98 = !{ptr @register_new_name_mapping, ptr @add_new_name_mapping, i64 125706}
!99 = !{ptr @init_update_ssa, ptr @VEC_tree_base_length, i64 450}
!100 = !{ptr @init_update_ssa, ptr @sbitmap_alloc, i64 450}
!101 = !{ptr @init_update_ssa, ptr @sbitmap_zero, i64 450}
!102 = !{ptr @init_update_ssa, ptr @htab_create, i64 225}
!103 = !{ptr @init_update_ssa, ptr @bitmap_obstack_alloc_stat, i64 225}
!104 = !{ptr @add_new_name_mapping, ptr @timevar_push_1, i64 1}
!105 = !{ptr @add_new_name_mapping, ptr @fancy_abort, i64 2}
!106 = !{ptr @add_new_name_mapping, ptr @is_gimple_reg, i64 140695}
!107 = !{ptr @add_new_name_mapping, ptr @bitmap_set_bit, i64 46194}
!108 = !{ptr @add_new_name_mapping, ptr @VEC_tree_base_length, i64 140695}
!109 = !{ptr @add_new_name_mapping, ptr @sbitmap_resize, i64 2}
!110 = !{ptr @add_new_name_mapping, ptr @add_to_repl_tbl, i64 140695}
!111 = !{ptr @add_new_name_mapping, ptr @is_new_name, i64 140695}
!112 = !{ptr @add_new_name_mapping, ptr @names_replaced_by, i64 17284}
!113 = !{ptr @add_new_name_mapping, ptr @bitmap_ior_into, i64 8642}
!114 = !{ptr @add_new_name_mapping, ptr @SET_BIT, i64 281390}
!115 = !{ptr @add_new_name_mapping, ptr @timevar_pop_1, i64 1}
!116 = !{ptr @mark_sym_for_renaming, ptr @bitmap_set_bit, i64 239634}
!117 = !{ptr @name_mappings_registered_p, ptr @fancy_abort, i64 1}
!118 = !{ptr @name_mappings_registered_p, ptr @htab_elements, i64 1122}
!119 = !{ptr @name_registered_for_update_p, ptr @fancy_abort, i64 1}
!120 = !{ptr @name_registered_for_update_p, ptr @is_new_name, i64 579664}
!121 = !{ptr @name_registered_for_update_p, ptr @is_old_name, i64 579591}
!122 = !{ptr @release_ssa_name_after_update_ssa, ptr @fancy_abort, i64 2}
!123 = !{ptr @release_ssa_name_after_update_ssa, ptr @bitmap_obstack_alloc_stat, i64 9}
!124 = !{ptr @release_ssa_name_after_update_ssa, ptr @bitmap_set_bit, i64 72}
!125 = !{ptr @update_ssa, ptr @need_ssa_update_p, i64 1557}
!126 = !{ptr @update_ssa, ptr @timevar_push_1, i64 1}
!127 = !{ptr @update_ssa, ptr @init_update_ssa, i64 96}
!128 = !{ptr @update_ssa, ptr @fancy_abort, i64 46}
!129 = !{ptr @update_ssa, ptr @bitmap_obstack_alloc_stat, i64 1109862}
!130 = !{ptr @update_ssa, ptr @VEC_gimple_vec_heap_alloc, i64 2}
!131 = !{ptr @update_ssa, ptr @calculate_dominance_info, i64 226}
!132 = !{ptr @update_ssa, ptr @sbitmap_zero, i64 335}
!133 = !{ptr @update_ssa, ptr @htab_empty, i64 55}
!134 = !{ptr @update_ssa, ptr @VEC_tree_base_length, i64 149}
!135 = !{ptr @update_ssa, ptr @htab_create, i64 149}
!136 = !{ptr @update_ssa, ptr @switch_virtuals_to_full_rewrite_p, i64 149}
!137 = !{ptr @update_ssa, ptr @switch_virtuals_to_full_rewrite, i64 1}
!138 = !{ptr @update_ssa, ptr @sbitmap_first_set_bit, i64 504}
!139 = !{ptr @update_ssa, ptr @prepare_names_to_update, i64 129}
!140 = !{ptr @update_ssa, ptr @prepare_block_for_update, i64 96}
!141 = !{ptr @update_ssa, ptr @nearest_common_dominator_for_set, i64 182}
!142 = !{ptr @update_ssa, ptr @xmalloc, i64 149}
!143 = !{ptr @update_ssa, ptr @compute_dominance_frontiers, i64 149}
!144 = !{ptr @update_ssa, ptr @sbitmap_alloc, i64 278}
!145 = !{ptr @update_ssa, ptr @sbitmap_copy, i64 53}
!146 = !{ptr @update_ssa, ptr @sbitmap_iter_init, i64 278}
!147 = !{ptr @update_ssa, ptr @sbitmap_iter_cond, i64 197090}
!148 = !{ptr @update_ssa, ptr @VEC_tree_base_index, i64 196812}
!149 = !{ptr @update_ssa, ptr @insert_updated_phi_nodes_for, i64 89016}
!150 = !{ptr @update_ssa, ptr @sbitmap_iter_next, i64 196812}
!151 = !{ptr @update_ssa, ptr @free, i64 705}
!152 = !{ptr @update_ssa, ptr @bmp_iter_set_init, i64 600}
!153 = !{ptr @update_ssa, ptr @bmp_iter_set, i64 805933}
!154 = !{ptr @update_ssa, ptr @referenced_var_lookup, i64 287}
!155 = !{ptr @update_ssa, ptr @bmp_iter_next, i64 805333}
!156 = !{ptr @update_ssa, ptr @bitmap_obstack_free, i64 1109410}
!157 = !{ptr @update_ssa, ptr @set_current_def, i64 108083}
!158 = !{ptr @update_ssa, ptr @SET_BIT, i64 805016}
!159 = !{ptr @update_ssa, ptr @rewrite_blocks, i64 225}
!160 = !{ptr @update_ssa, ptr @dump_update_ssa, i64 1}
!161 = !{ptr @update_ssa, ptr @fprintf, i64 13}
!162 = !{ptr @update_ssa, ptr @fwrite, i64 1}
!163 = !{ptr @update_ssa, ptr @delete_update_ssa, i64 226}
!164 = !{ptr @update_ssa, ptr @timevar_pop_1, i64 1}
!165 = !{ptr @VEC_gimple_vec_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 1}
!166 = !{ptr @def_blocks_free, ptr @bitmap_obstack_free, i64 848577}
!167 = !{ptr @def_blocks_free, ptr @free, i64 282859}
!168 = !{ptr @prepare_names_to_update, ptr @bmp_iter_set_init, i64 9}
!169 = !{ptr @prepare_names_to_update, ptr @bmp_iter_set, i64 81}
!170 = !{ptr @prepare_names_to_update, ptr @RESET_BIT, i64 72}
!171 = !{ptr @prepare_names_to_update, ptr @bmp_iter_next, i64 72}
!172 = !{ptr @prepare_names_to_update, ptr @sbitmap_iter_init, i64 258}
!173 = !{ptr @prepare_names_to_update, ptr @sbitmap_iter_cond, i64 232349}
!174 = !{ptr @prepare_names_to_update, ptr @VEC_tree_base_index, i64 339488}
!175 = !{ptr @prepare_names_to_update, ptr @prepare_def_site_for, i64 232066}
!176 = !{ptr @prepare_names_to_update, ptr @sbitmap_iter_next, i64 232091}
!177 = !{ptr @prepare_names_to_update, ptr @bitmap_bit_p, i64 62830}
!178 = !{ptr @prepare_names_to_update, ptr @prepare_use_sites_for, i64 107422}
!179 = !{ptr @prepare_block_for_update, ptr @mark_block_for_update, i64 489294}
!180 = !{ptr @prepare_block_for_update, ptr @gsi_start_phis, i64 489294}
!181 = !{ptr @prepare_block_for_update, ptr @gsi_end_p, i64 2159360}
!182 = !{ptr @prepare_block_for_update, ptr @gsi_stmt, i64 1180772}
!183 = !{ptr @prepare_block_for_update, ptr @gimple_phi_result, i64 88183}
!184 = !{ptr @prepare_block_for_update, ptr @symbol_marked_for_renaming, i64 2222414}
!185 = !{ptr @prepare_block_for_update, ptr @mark_def_interesting, i64 291215}
!186 = !{ptr @prepare_block_for_update, ptr @ei_start_1, i64 85611}
!187 = !{ptr @prepare_block_for_update, ptr @ei_cond, i64 311095}
!188 = !{ptr @prepare_block_for_update, ptr @mark_use_interesting, i64 691574}
!189 = !{ptr @prepare_block_for_update, ptr @ei_next, i64 225484}
!190 = !{ptr @prepare_block_for_update, ptr @gsi_next, i64 1180772}
!191 = !{ptr @prepare_block_for_update, ptr @gsi_start_bb, i64 489294}
!192 = !{ptr @prepare_block_for_update, ptr @op_iter_init_use, i64 1092589}
!193 = !{ptr @prepare_block_for_update, ptr @op_iter_done, i64 4319409}
!194 = !{ptr @prepare_block_for_update, ptr @get_use_from_ptr, i64 1277564}
!195 = !{ptr @prepare_block_for_update, ptr @op_iter_next_use, i64 1277564}
!196 = !{ptr @prepare_block_for_update, ptr @op_iter_init_def, i64 1092589}
!197 = !{ptr @prepare_block_for_update, ptr @get_def_from_ptr, i64 856667}
!198 = !{ptr @prepare_block_for_update, ptr @op_iter_next_def, i64 856667}
!199 = !{ptr @prepare_block_for_update, ptr @first_dom_son, i64 489294}
!200 = !{ptr @prepare_block_for_update, ptr @prepare_block_for_update, i64 489198}
!201 = !{ptr @prepare_block_for_update, ptr @next_dom_son, i64 489198}
!202 = !{ptr @insert_updated_phi_nodes_for, ptr @find_def_blocks_for, i64 90266}
!203 = !{ptr @insert_updated_phi_nodes_for, ptr @compute_idf, i64 90264}
!204 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_obstack_alloc_stat, i64 90264}
!205 = !{ptr @insert_updated_phi_nodes_for, ptr @nearest_common_dominator_for_set, i64 90119}
!206 = !{ptr @insert_updated_phi_nodes_for, ptr @bmp_iter_set_init, i64 177022}
!207 = !{ptr @insert_updated_phi_nodes_for, ptr @bmp_iter_set, i64 1107906}
!208 = !{ptr @insert_updated_phi_nodes_for, ptr @VEC_basic_block_base_index, i64 930884}
!209 = !{ptr @insert_updated_phi_nodes_for, ptr @dominated_by_p, i64 455237}
!210 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_set_bit, i64 1740011}
!211 = !{ptr @insert_updated_phi_nodes_for, ptr @bmp_iter_next, i64 930884}
!212 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_copy, i64 145}
!213 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_ior_into, i64 86904}
!214 = !{ptr @insert_updated_phi_nodes_for, ptr @ei_start_1, i64 475646}
!215 = !{ptr @insert_updated_phi_nodes_for, ptr @ei_cond, i64 1880163}
!216 = !{ptr @insert_updated_phi_nodes_for, ptr @ei_next, i64 1404517}
!217 = !{ptr @insert_updated_phi_nodes_for, ptr @insert_phi_nodes_for, i64 86904}
!218 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_obstack_free, i64 180528}
!219 = !{ptr @rewrite_blocks, ptr @timevar_push_1, i64 1}
!220 = !{ptr @rewrite_blocks, ptr @VEC_tree_heap_alloc, i64 265}
!221 = !{ptr @rewrite_blocks, ptr @init_walk_dominator_tree, i64 265}
!222 = !{ptr @rewrite_blocks, ptr @walk_dominator_tree, i64 265}
!223 = !{ptr @rewrite_blocks, ptr @fini_walk_dominator_tree, i64 265}
!224 = !{ptr @rewrite_blocks, ptr @VEC_tree_heap_free, i64 265}
!225 = !{ptr @rewrite_blocks, ptr @timevar_pop_1, i64 1}
!226 = !{ptr @VEC_ssa_name_info_p_heap_reserve, ptr @VEC_ssa_name_info_p_base_space, i64 590}
!227 = !{ptr @VEC_ssa_name_info_p_heap_reserve, ptr @vec_heap_p_reserve, i64 7}
!228 = !{ptr @ei_end_p, ptr @ei_container, i64 15069515}
!229 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 7553768}
!230 = !{ptr @ei_edge, ptr @ei_container, i64 10162955}
!231 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 5081478}
!232 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!233 = !{ptr @first_htab_element, ptr @htab_size, i64 80}
!234 = !{ptr @init_ssa_renamer, ptr @fancy_abort, i64 1}
!235 = !{ptr @init_ssa_renamer, ptr @gimple_referenced_vars, i64 40}
!236 = !{ptr @init_ssa_renamer, ptr @htab_elements, i64 40}
!237 = !{ptr @init_ssa_renamer, ptr @htab_create, i64 40}
!238 = !{ptr @init_ssa_renamer, ptr @first_referenced_var, i64 40}
!239 = !{ptr @init_ssa_renamer, ptr @end_referenced_vars_p, i64 108687}
!240 = !{ptr @init_ssa_renamer, ptr @set_current_def, i64 108647}
!241 = !{ptr @init_ssa_renamer, ptr @next_referenced_var, i64 108647}
!242 = !{ptr @mark_def_site_blocks, ptr @bitmap_obstack_alloc_stat, i64 40}
!243 = !{ptr @mark_def_site_blocks, ptr @init_walk_dominator_tree, i64 40}
!244 = !{ptr @mark_def_site_blocks, ptr @walk_dominator_tree, i64 40}
!245 = !{ptr @mark_def_site_blocks, ptr @fini_walk_dominator_tree, i64 40}
!246 = !{ptr @mark_def_site_blocks, ptr @bitmap_obstack_free, i64 40}
!247 = !{ptr @insert_phi_nodes, ptr @timevar_push_1, i64 1}
!248 = !{ptr @insert_phi_nodes, ptr @bitmap_obstack_alloc_stat, i64 40}
!249 = !{ptr @insert_phi_nodes, ptr @first_referenced_var, i64 40}
!250 = !{ptr @insert_phi_nodes, ptr @end_referenced_vars_p, i64 108687}
!251 = !{ptr @insert_phi_nodes, ptr @find_def_blocks_for, i64 110282}
!252 = !{ptr @insert_phi_nodes, ptr @get_phi_state, i64 108448}
!253 = !{ptr @insert_phi_nodes, ptr @bitmap_set_bit, i64 1635}
!254 = !{ptr @insert_phi_nodes, ptr @next_referenced_var, i64 108647}
!255 = !{ptr @insert_phi_nodes, ptr @bmp_iter_set_init, i64 40}
!256 = !{ptr @insert_phi_nodes, ptr @bmp_iter_set, i64 1675}
!257 = !{ptr @insert_phi_nodes, ptr @referenced_var_lookup, i64 1635}
!258 = !{ptr @insert_phi_nodes, ptr @compute_idf, i64 1635}
!259 = !{ptr @insert_phi_nodes, ptr @insert_phi_nodes_for, i64 1635}
!260 = !{ptr @insert_phi_nodes, ptr @bitmap_obstack_free, i64 1675}
!261 = !{ptr @insert_phi_nodes, ptr @bmp_iter_next, i64 1635}
!262 = !{ptr @insert_phi_nodes, ptr @timevar_pop_1, i64 1}
!263 = !{ptr @mark_def_sites_block, ptr @bitmap_clear, i64 187366}
!264 = !{ptr @mark_def_sites_block, ptr @gsi_start_bb, i64 187366}
!265 = !{ptr @mark_def_sites_block, ptr @gsi_end_p, i64 591177}
!266 = !{ptr @mark_def_sites_block, ptr @gsi_stmt, i64 403811}
!267 = !{ptr @mark_def_sites_block, ptr @mark_def_sites, i64 403811}
!268 = !{ptr @mark_def_sites_block, ptr @gsi_next, i64 403811}
!269 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 2462027}
!270 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 2462027}
!271 = !{ptr @mark_def_sites, ptr @update_stmt, i64 403812}
!272 = !{ptr @mark_def_sites, ptr @fancy_abort, i64 3}
!273 = !{ptr @mark_def_sites, ptr @set_register_defs, i64 658984}
!274 = !{ptr @mark_def_sites, ptr @set_rewrite_uses, i64 680320}
!275 = !{ptr @mark_def_sites, ptr @is_gimple_debug, i64 403812}
!276 = !{ptr @mark_def_sites, ptr @op_iter_init_use, i64 403811}
!277 = !{ptr @mark_def_sites, ptr @op_iter_done, i64 1339302}
!278 = !{ptr @mark_def_sites, ptr @get_use_from_ptr, i64 276508}
!279 = !{ptr @mark_def_sites, ptr @bitmap_bit_p, i64 276508}
!280 = !{ptr @mark_def_sites, ptr @set_livein_block, i64 55351}
!281 = !{ptr @mark_def_sites, ptr @op_iter_next_use, i64 276508}
!282 = !{ptr @mark_def_sites, ptr @op_iter_init_tree, i64 403811}
!283 = !{ptr @mark_def_sites, ptr @set_def_block, i64 255172}
!284 = !{ptr @mark_def_sites, ptr @bitmap_set_bit, i64 255172}
!285 = !{ptr @mark_def_sites, ptr @op_iter_next_tree, i64 255172}
!286 = !{ptr @mark_def_sites, ptr @rewrite_uses_p, i64 403811}
!287 = !{ptr @mark_def_sites, ptr @register_defs_p, i64 137716}
!288 = !{ptr @mark_def_sites, ptr @SET_BIT, i64 400848}
!289 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 403812}
!290 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 403811}
!291 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 403811}
!292 = !{ptr @set_register_defs, ptr @gimple_set_plf, i64 3197425}
!293 = !{ptr @set_rewrite_uses, ptr @gimple_set_visited, i64 3720284}
!294 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 2161445}
!295 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!296 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 2622457}
!297 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 2622457}
!298 = !{ptr @set_livein_block, ptr @get_phi_state, i64 684235}
!299 = !{ptr @set_livein_block, ptr @get_def_blocks_for, i64 684235}
!300 = !{ptr @set_livein_block, ptr @bitmap_set_bit, i64 684235}
!301 = !{ptr @set_livein_block, ptr @bitmap_first_set_bit, i64 27}
!302 = !{ptr @set_livein_block, ptr @VEC_basic_block_base_index, i64 26}
!303 = !{ptr @set_livein_block, ptr @dominated_by_p, i64 26}
!304 = !{ptr @set_livein_block, ptr @set_phi_state, i64 684210}
!305 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!306 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 403812}
!307 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 403812}
!308 = !{ptr @set_def_block, ptr @get_phi_state, i64 833840}
!309 = !{ptr @set_def_block, ptr @get_def_blocks_for, i64 833840}
!310 = !{ptr @set_def_block, ptr @bitmap_set_bit, i64 1040993}
!311 = !{ptr @set_def_block, ptr @set_phi_state, i64 833840}
!312 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!313 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 255172}
!314 = !{ptr @rewrite_uses_p, ptr @gimple_visited_p, i64 4712455}
!315 = !{ptr @register_defs_p, ptr @gimple_plf, i64 2752812}
!316 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 6906812}
!317 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!318 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 2123156}
!319 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 512483}
!320 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2622457}
!321 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 623549}
!322 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 2123156}
!323 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 512482}
!324 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2622457}
!325 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 623548}
!326 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 1136030}
!327 = !{ptr @get_phi_state, ptr @get_ssa_name_ann, i64 366885}
!328 = !{ptr @get_phi_state, ptr @var_ann, i64 1517672}
!329 = !{ptr @get_def_blocks_for, ptr @htab_find_slot, i64 2481137}
!330 = !{ptr @get_def_blocks_for, ptr @xmalloc, i64 282860}
!331 = !{ptr @get_def_blocks_for, ptr @bitmap_obstack_alloc_stat, i64 848580}
!332 = !{ptr @set_phi_state, ptr @get_ssa_name_ann, i64 366865}
!333 = !{ptr @set_phi_state, ptr @var_ann, i64 1151184}
!334 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 470264}
!335 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!336 = !{ptr @find_def_blocks_for, ptr @htab_find, i64 291885}
!337 = !{ptr @insert_phi_nodes_for, ptr @find_def_blocks_for, i64 88582}
!338 = !{ptr @insert_phi_nodes_for, ptr @fancy_abort, i64 43}
!339 = !{ptr @insert_phi_nodes_for, ptr @bitmap_and_compl_into, i64 88582}
!340 = !{ptr @insert_phi_nodes_for, ptr @prune_unused_phi_nodes, i64 88582}
!341 = !{ptr @insert_phi_nodes_for, ptr @bmp_iter_set_init, i64 88582}
!342 = !{ptr @insert_phi_nodes_for, ptr @bmp_iter_set, i64 144698}
!343 = !{ptr @insert_phi_nodes_for, ptr @VEC_basic_block_base_index, i64 56116}
!344 = !{ptr @insert_phi_nodes_for, ptr @mark_block_for_update, i64 55964}
!345 = !{ptr @insert_phi_nodes_for, ptr @create_phi_node, i64 56117}
!346 = !{ptr @insert_phi_nodes_for, ptr @duplicate_ssa_name, i64 14990}
!347 = !{ptr @insert_phi_nodes_for, ptr @gimple_phi_set_result, i64 14990}
!348 = !{ptr @insert_phi_nodes_for, ptr @add_new_name_mapping, i64 14990}
!349 = !{ptr @insert_phi_nodes_for, ptr @ei_start_1, i64 14990}
!350 = !{ptr @insert_phi_nodes_for, ptr @ei_cond, i64 46728}
!351 = !{ptr @insert_phi_nodes_for, ptr @add_phi_arg, i64 31738}
!352 = !{ptr @insert_phi_nodes_for, ptr @ei_next, i64 31738}
!353 = !{ptr @insert_phi_nodes_for, ptr @target_for_debug_bind, i64 41127}
!354 = !{ptr @insert_phi_nodes_for, ptr @gimple_phi_result_ptr, i64 1}
!355 = !{ptr @insert_phi_nodes_for, ptr @get_def_from_ptr, i64 1}
!356 = !{ptr @insert_phi_nodes_for, ptr @gimple_build_debug_bind_stat, i64 1}
!357 = !{ptr @insert_phi_nodes_for, ptr @gsi_after_labels, i64 1}
!358 = !{ptr @insert_phi_nodes_for, ptr @gsi_insert_before, i64 1}
!359 = !{ptr @insert_phi_nodes_for, ptr @set_register_defs, i64 56116}
!360 = !{ptr @insert_phi_nodes_for, ptr @mark_phi_for_rewrite, i64 56116}
!361 = !{ptr @insert_phi_nodes_for, ptr @bmp_iter_next, i64 56116}
!362 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_clear, i64 55420}
!363 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_obstack_alloc_stat, i64 66283}
!364 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_and_compl, i64 33162}
!365 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_and_compl_into, i64 33162}
!366 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_obstack_free, i64 66283}
!367 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_ior, i64 33121}
!368 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_count_bits, i64 33121}
!369 = !{ptr @prune_unused_phi_nodes, ptr @xmalloc, i64 33121}
!370 = !{ptr @prune_unused_phi_nodes, ptr @bmp_iter_set_init, i64 66242}
!371 = !{ptr @prune_unused_phi_nodes, ptr @bmp_iter_set, i64 1077112}
!372 = !{ptr @prune_unused_phi_nodes, ptr @VEC_basic_block_base_index, i64 1014039}
!373 = !{ptr @prune_unused_phi_nodes, ptr @bb_dom_dfs_in, i64 957925}
!374 = !{ptr @prune_unused_phi_nodes, ptr @bb_dom_dfs_out, i64 584393}
!375 = !{ptr @prune_unused_phi_nodes, ptr @bmp_iter_next, i64 1010870}
!376 = !{ptr @prune_unused_phi_nodes, ptr @fancy_abort, i64 3}
!377 = !{ptr @prune_unused_phi_nodes, ptr @spec_qsort, i64 33121}
!378 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_heap_alloc, i64 33121}
!379 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_quick_push, i64 617514}
!380 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_pop, i64 1045839}
!381 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_length, i64 1078960}
!382 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_index, i64 584393}
!383 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_heap_safe_push, i64 428327}
!384 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_bit_p, i64 1202293}
!385 = !{ptr @prune_unused_phi_nodes, ptr @get_immediate_dominator, i64 373532}
!386 = !{ptr @prune_unused_phi_nodes, ptr @find_dfsnum_interval, i64 373532}
!387 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_set_bit, i64 57964}
!388 = !{ptr @prune_unused_phi_nodes, ptr @ei_start_1, i64 56114}
!389 = !{ptr @prune_unused_phi_nodes, ptr @ei_cond, i64 244401}
!390 = !{ptr @prune_unused_phi_nodes, ptr @ei_next, i64 188287}
!391 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_heap_free, i64 33121}
!392 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_copy, i64 33121}
!393 = !{ptr @prune_unused_phi_nodes, ptr @free, i64 33121}
!394 = !{ptr @mark_block_for_update, ptr @fancy_abort, i64 1}
!395 = !{ptr @mark_block_for_update, ptr @bitmap_bit_p, i64 3180225}
!396 = !{ptr @mark_block_for_update, ptr @bitmap_set_bit, i64 790692}
!397 = !{ptr @mark_block_for_update, ptr @initialize_flags_in_bb, i64 790692}
!398 = !{ptr @mark_phi_for_rewrite, ptr @rewrite_uses_p, i64 359031}
!399 = !{ptr @mark_phi_for_rewrite, ptr @set_rewrite_uses, i64 184968}
!400 = !{ptr @mark_phi_for_rewrite, ptr @bitmap_set_bit, i64 184816}
!401 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_heap_reserve, i64 184816}
!402 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_length, i64 184816}
!403 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_quick_push, i64 29462}
!404 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_index, i64 184816}
!405 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_heap_alloc, i64 179729}
!406 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_heap_safe_push, i64 184816}
!407 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_replace, i64 184816}
!408 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 33122}
!409 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 428347}
!410 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 428347}
!411 = !{ptr @VEC_int_heap_free, ptr @free, i64 33121}
!412 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 428347}
!413 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 828}
!414 = !{ptr @initialize_flags_in_bb, ptr @gsi_start_phis, i64 790691}
!415 = !{ptr @initialize_flags_in_bb, ptr @gsi_end_p, i64 3538704}
!416 = !{ptr @initialize_flags_in_bb, ptr @gsi_stmt, i64 1957322}
!417 = !{ptr @initialize_flags_in_bb, ptr @set_rewrite_uses, i64 1957322}
!418 = !{ptr @initialize_flags_in_bb, ptr @set_register_defs, i64 1957322}
!419 = !{ptr @initialize_flags_in_bb, ptr @gsi_next, i64 1957322}
!420 = !{ptr @initialize_flags_in_bb, ptr @gsi_start_bb, i64 790691}
!421 = !{ptr @initialize_flags_in_bb, ptr @gimple_modified_p, i64 1757386}
!422 = !{ptr @initialize_flags_in_bb, ptr @fancy_abort, i64 1}
!423 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 1757387}
!424 = !{ptr @VEC_gimple_vec_heap_reserve, ptr @VEC_gimple_vec_base_space, i64 184817}
!425 = !{ptr @VEC_gimple_vec_heap_reserve, ptr @vec_heap_p_reserve, i64 9}
!426 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 179731}
!427 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 184817}
!428 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 184817}
!429 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 184817}
!430 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!431 = !{ptr @repl_map_free, ptr @bitmap_obstack_free, i64 140695}
!432 = !{ptr @repl_map_free, ptr @free, i64 140695}
!433 = !{ptr @add_to_repl_tbl, ptr @htab_find_slot, i64 140695}
!434 = !{ptr @add_to_repl_tbl, ptr @xmalloc, i64 140694}
!435 = !{ptr @add_to_repl_tbl, ptr @bitmap_obstack_alloc_stat, i64 140694}
!436 = !{ptr @add_to_repl_tbl, ptr @bitmap_set_bit, i64 140695}
!437 = !{ptr @prepare_def_site_for, ptr @bitmap_bit_p, i64 126538}
!438 = !{ptr @prepare_def_site_for, ptr @fancy_abort, i64 2}
!439 = !{ptr @prepare_def_site_for, ptr @gimple_bb, i64 233864}
!440 = !{ptr @prepare_def_site_for, ptr @mark_block_for_update, i64 233787}
!441 = !{ptr @prepare_def_site_for, ptr @mark_def_interesting, i64 233787}
!442 = !{ptr @prepare_use_sites_for, ptr @first_readonly_imm_use, i64 108254}
!443 = !{ptr @prepare_use_sites_for, ptr @end_readonly_imm_use_p, i64 617263}
!444 = !{ptr @prepare_use_sites_for, ptr @gimple_code, i64 509009}
!445 = !{ptr @prepare_use_sites_for, ptr @phi_arg_index_from_use, i64 77429}
!446 = !{ptr @prepare_use_sites_for, ptr @gimple_phi_arg_edge, i64 77429}
!447 = !{ptr @prepare_use_sites_for, ptr @gimple_bb, i64 431580}
!448 = !{ptr @prepare_use_sites_for, ptr @mark_use_interesting, i64 509009}
!449 = !{ptr @prepare_use_sites_for, ptr @next_readonly_imm_use, i64 509009}
!450 = !{ptr @mark_def_interesting, ptr @bitmap_bit_p, i64 525003}
!451 = !{ptr @mark_def_interesting, ptr @fancy_abort, i64 1}
!452 = !{ptr @mark_def_interesting, ptr @set_register_defs, i64 525003}
!453 = !{ptr @mark_def_interesting, ptr @gimple_code, i64 471364}
!454 = !{ptr @mark_def_interesting, ptr @set_def_block, i64 578666}
!455 = !{ptr @mark_def_interesting, ptr @is_new_name, i64 180150}
!456 = !{ptr @mark_def_interesting, ptr @names_replaced_by, i64 98668}
!457 = !{ptr @mark_def_interesting, ptr @bmp_iter_set_init, i64 98667}
!458 = !{ptr @mark_def_interesting, ptr @bmp_iter_set, i64 205969}
!459 = !{ptr @mark_def_interesting, ptr @VEC_tree_base_index, i64 107302}
!460 = !{ptr @mark_def_interesting, ptr @bmp_iter_next, i64 107302}
!461 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 108254}
!462 = !{ptr @phi_arg_index_from_use, ptr @gimple_code, i64 525027}
!463 = !{ptr @phi_arg_index_from_use, ptr @fancy_abort, i64 1}
!464 = !{ptr @phi_arg_index_from_use, ptr @gimple_phi_arg, i64 525027}
!465 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 77429}
!466 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 77429}
!467 = !{ptr @mark_use_interesting, ptr @gimple_bb, i64 1200589}
!468 = !{ptr @mark_use_interesting, ptr @mark_block_for_update, i64 2401178}
!469 = !{ptr @mark_use_interesting, ptr @gimple_code, i64 1200589}
!470 = !{ptr @mark_use_interesting, ptr @mark_phi_for_rewrite, i64 302915}
!471 = !{ptr @mark_use_interesting, ptr @set_rewrite_uses, i64 897674}
!472 = !{ptr @mark_use_interesting, ptr @is_gimple_debug, i64 897674}
!473 = !{ptr @mark_use_interesting, ptr @get_def_blocks_for, i64 963061}
!474 = !{ptr @mark_use_interesting, ptr @bitmap_bit_p, i64 963061}
!475 = !{ptr @mark_use_interesting, ptr @set_livein_block, i64 628884}
!476 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 509013}
!477 = !{ptr @symbol_marked_for_renaming, ptr @bitmap_bit_p, i64 4615631}
!478 = !{ptr @op_iter_init_def, ptr @fancy_abort, i64 2}
!479 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 1719344}
!480 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 1719344}
!481 = !{ptr @rewrite_enter_block, ptr @VEC_tree_heap_safe_push, i64 187366}
!482 = !{ptr @rewrite_enter_block, ptr @gsi_start_phis, i64 187366}
!483 = !{ptr @rewrite_enter_block, ptr @gsi_end_p, i64 778608}
!484 = !{ptr @rewrite_enter_block, ptr @gsi_stmt, i64 152}
!485 = !{ptr @rewrite_enter_block, ptr @gimple_phi_result, i64 152}
!486 = !{ptr @rewrite_enter_block, ptr @is_gimple_reg, i64 152}
!487 = !{ptr @rewrite_enter_block, ptr @fancy_abort, i64 1}
!488 = !{ptr @rewrite_enter_block, ptr @register_new_def, i64 152}
!489 = !{ptr @rewrite_enter_block, ptr @gsi_next, i64 403939}
!490 = !{ptr @rewrite_enter_block, ptr @gsi_start_bb, i64 187303}
!491 = !{ptr @rewrite_enter_block, ptr @rewrite_stmt, i64 403787}
!492 = !{ptr @rewrite_enter_block, ptr @rewrite_add_phi_arguments, i64 187366}
!493 = !{ptr @rewrite_leave_block, ptr @VEC_tree_base_length, i64 332066}
!494 = !{ptr @rewrite_leave_block, ptr @VEC_tree_base_pop, i64 330602}
!495 = !{ptr @rewrite_leave_block, ptr @is_gimple_reg, i64 48372}
!496 = !{ptr @rewrite_leave_block, ptr @set_current_def, i64 144700}
!497 = !{ptr @rewrite_update_enter_block, ptr @fprintf, i64 1}
!498 = !{ptr @rewrite_update_enter_block, ptr @VEC_tree_heap_safe_push, i64 1428867}
!499 = !{ptr @rewrite_update_enter_block, ptr @bitmap_bit_p, i64 2236238}
!500 = !{ptr @rewrite_update_enter_block, ptr @ei_start_1, i64 807372}
!501 = !{ptr @rewrite_update_enter_block, ptr @ei_cond, i64 2192879}
!502 = !{ptr @rewrite_update_enter_block, ptr @ei_next, i64 1385507}
!503 = !{ptr @rewrite_update_enter_block, ptr @gsi_start_phis, i64 807372}
!504 = !{ptr @rewrite_update_enter_block, ptr @gsi_end_p, i64 3665215}
!505 = !{ptr @rewrite_update_enter_block, ptr @gsi_stmt, i64 2050472}
!506 = !{ptr @rewrite_update_enter_block, ptr @register_defs_p, i64 261804}
!507 = !{ptr @rewrite_update_enter_block, ptr @gimple_phi_result, i64 214830}
!508 = !{ptr @rewrite_update_enter_block, ptr @symbol_marked_for_renaming, i64 214830}
!509 = !{ptr @rewrite_update_enter_block, ptr @register_new_update_single, i64 165359}
!510 = !{ptr @rewrite_update_enter_block, ptr @is_new_name, i64 88243}
!511 = !{ptr @rewrite_update_enter_block, ptr @names_replaced_by, i64 52767}
!512 = !{ptr @rewrite_update_enter_block, ptr @register_new_update_set, i64 52767}
!513 = !{ptr @rewrite_update_enter_block, ptr @is_old_name, i64 88243}
!514 = !{ptr @rewrite_update_enter_block, ptr @gsi_next, i64 2050472}
!515 = !{ptr @rewrite_update_enter_block, ptr @fancy_abort, i64 1}
!516 = !{ptr @rewrite_update_enter_block, ptr @gsi_start_bb, i64 807371}
!517 = !{ptr @rewrite_update_enter_block, ptr @rewrite_update_stmt, i64 1788668}
!518 = !{ptr @rewrite_update_enter_block, ptr @rewrite_update_phi_arguments, i64 807372}
!519 = !{ptr @rewrite_update_leave_block, ptr @VEC_tree_base_length, i64 2013864}
!520 = !{ptr @rewrite_update_leave_block, ptr @VEC_tree_base_pop, i64 2587698}
!521 = !{ptr @rewrite_update_leave_block, ptr @set_current_def, i64 584997}
!522 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 265}
!523 = !{ptr @VEC_tree_heap_free, ptr @free, i64 264}
!524 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 1762072}
!525 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 1762072}
!526 = !{ptr @register_new_def, ptr @get_phi_state, i64 255323}
!527 = !{ptr @register_new_def, ptr @get_current_def, i64 145839}
!528 = !{ptr @register_new_def, ptr @is_gimple_reg, i64 48753}
!529 = !{ptr @register_new_def, ptr @VEC_tree_heap_safe_push, i64 145840}
!530 = !{ptr @register_new_def, ptr @set_current_def, i64 255323}
!531 = !{ptr @rewrite_stmt, ptr @gsi_stmt, i64 403790}
!532 = !{ptr @rewrite_stmt, ptr @fancy_abort, i64 3}
!533 = !{ptr @rewrite_stmt, ptr @rewrite_uses_p, i64 804639}
!534 = !{ptr @rewrite_stmt, ptr @register_defs_p, i64 538543}
!535 = !{ptr @rewrite_stmt, ptr @op_iter_init_use, i64 266095}
!536 = !{ptr @rewrite_stmt, ptr @op_iter_done, i64 1052944}
!537 = !{ptr @rewrite_stmt, ptr @get_use_from_ptr, i64 276507}
!538 = !{ptr @rewrite_stmt, ptr @get_reaching_def, i64 276507}
!539 = !{ptr @rewrite_stmt, ptr @set_ssa_use_from_ptr, i64 276507}
!540 = !{ptr @rewrite_stmt, ptr @op_iter_next_use, i64 276507}
!541 = !{ptr @rewrite_stmt, ptr @op_iter_init_def, i64 255171}
!542 = !{ptr @rewrite_stmt, ptr @get_def_from_ptr, i64 510342}
!543 = !{ptr @rewrite_stmt, ptr @make_ssa_name, i64 255171}
!544 = !{ptr @rewrite_stmt, ptr @register_new_def, i64 255171}
!545 = !{ptr @rewrite_stmt, ptr @target_for_debug_bind, i64 255171}
!546 = !{ptr @rewrite_stmt, ptr @gimple_build_debug_bind_stat, i64 1}
!547 = !{ptr @rewrite_stmt, ptr @gsi_insert_after, i64 1}
!548 = !{ptr @rewrite_stmt, ptr @op_iter_next_def, i64 255171}
!549 = !{ptr @rewrite_add_phi_arguments, ptr @ei_start_1, i64 187366}
!550 = !{ptr @rewrite_add_phi_arguments, ptr @ei_cond, i64 520995}
!551 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_start_phis, i64 333629}
!552 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_end_p, i64 377244}
!553 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_stmt, i64 43615}
!554 = !{ptr @rewrite_add_phi_arguments, ptr @gimple_phi_result, i64 43615}
!555 = !{ptr @rewrite_add_phi_arguments, ptr @get_reaching_def, i64 43615}
!556 = !{ptr @rewrite_add_phi_arguments, ptr @gimple_location, i64 43615}
!557 = !{ptr @rewrite_add_phi_arguments, ptr @add_phi_arg, i64 43615}
!558 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_next, i64 43615}
!559 = !{ptr @rewrite_add_phi_arguments, ptr @ei_next, i64 333629}
!560 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 2351675}
!561 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 1013}
!562 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 1122173}
!563 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 1122173}
!564 = !{ptr @get_reaching_def, ptr @get_current_def, i64 1665394}
!565 = !{ptr @get_reaching_def, ptr @get_default_def_for, i64 212}
!566 = !{ptr @get_reaching_def, ptr @set_current_def, i64 212}
!567 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 324452}
!568 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1122171}
!569 = !{ptr @get_default_def_for, ptr @gimple_default_def, i64 211}
!570 = !{ptr @get_default_def_for, ptr @gimple_build_nop, i64 80}
!571 = !{ptr @get_default_def_for, ptr @make_ssa_name, i64 80}
!572 = !{ptr @get_default_def_for, ptr @set_default_def, i64 80}
!573 = !{ptr @register_new_update_single, ptr @get_current_def, i64 589603}
!574 = !{ptr @register_new_update_single, ptr @VEC_tree_heap_reserve, i64 589603}
!575 = !{ptr @register_new_update_single, ptr @VEC_tree_base_quick_push, i64 1179206}
!576 = !{ptr @register_new_update_single, ptr @set_current_def, i64 589603}
!577 = !{ptr @register_new_update_set, ptr @bmp_iter_set_init, i64 140623}
!578 = !{ptr @register_new_update_set, ptr @bmp_iter_set, i64 289881}
!579 = !{ptr @register_new_update_set, ptr @VEC_tree_base_index, i64 149258}
!580 = !{ptr @register_new_update_set, ptr @register_new_update_single, i64 149258}
!581 = !{ptr @register_new_update_set, ptr @bmp_iter_next, i64 149258}
!582 = !{ptr @rewrite_update_stmt, ptr @rewrite_uses_p, i64 2674709}
!583 = !{ptr @rewrite_update_stmt, ptr @register_defs_p, i64 1814750}
!584 = !{ptr @rewrite_update_stmt, ptr @fwrite, i64 1}
!585 = !{ptr @rewrite_update_stmt, ptr @print_gimple_stmt, i64 1}
!586 = !{ptr @rewrite_update_stmt, ptr @fputc, i64 1}
!587 = !{ptr @rewrite_update_stmt, ptr @is_gimple_debug, i64 859959}
!588 = !{ptr @rewrite_update_stmt, ptr @op_iter_init_use, i64 859959}
!589 = !{ptr @rewrite_update_stmt, ptr @op_iter_done, i64 3053001}
!590 = !{ptr @rewrite_update_stmt, ptr @maybe_replace_use_in_debug_stmt, i64 6}
!591 = !{ptr @rewrite_update_stmt, ptr @op_iter_next_use, i64 1252060}
!592 = !{ptr @rewrite_update_stmt, ptr @maybe_replace_use, i64 1252054}
!593 = !{ptr @rewrite_update_stmt, ptr @op_iter_init_def, i64 371583}
!594 = !{ptr @rewrite_update_stmt, ptr @maybe_register_def, i64 569399}
!595 = !{ptr @rewrite_update_stmt, ptr @op_iter_next_def, i64 569399}
!596 = !{ptr @rewrite_update_phi_arguments, ptr @ei_start_1, i64 807372}
!597 = !{ptr @rewrite_update_phi_arguments, ptr @ei_cond, i64 2319610}
!598 = !{ptr @rewrite_update_phi_arguments, ptr @bitmap_bit_p, i64 1512238}
!599 = !{ptr @rewrite_update_phi_arguments, ptr @VEC_gimple_vec_base_index, i64 458930}
!600 = !{ptr @rewrite_update_phi_arguments, ptr @VEC_gimple_base_iterate, i64 929194}
!601 = !{ptr @rewrite_update_phi_arguments, ptr @rewrite_uses_p, i64 470264}
!602 = !{ptr @rewrite_update_phi_arguments, ptr @fancy_abort, i64 1}
!603 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_arg_imm_use_ptr, i64 470264}
!604 = !{ptr @rewrite_update_phi_arguments, ptr @get_use_from_ptr, i64 470265}
!605 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_result, i64 112946}
!606 = !{ptr @rewrite_update_phi_arguments, ptr @get_reaching_def, i64 447597}
!607 = !{ptr @rewrite_update_phi_arguments, ptr @symbol_marked_for_renaming, i64 356929}
!608 = !{ptr @rewrite_update_phi_arguments, ptr @is_old_name, i64 131444}
!609 = !{ptr @rewrite_update_phi_arguments, ptr @phi_arg_index_from_use, i64 447596}
!610 = !{ptr @rewrite_update_phi_arguments, ptr @set_ssa_use_from_ptr, i64 447596}
!611 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_code, i64 447596}
!612 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_num_args, i64 247015}
!613 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_arg_location, i64 41349}
!614 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_location, i64 406247}
!615 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_arg_set_location, i64 447596}
!616 = !{ptr @rewrite_update_phi_arguments, ptr @ei_next, i64 1512238}
!617 = !{ptr @maybe_replace_use, ptr @get_use_from_ptr, i64 1252056}
!618 = !{ptr @maybe_replace_use, ptr @symbol_marked_for_renaming, i64 1252056}
!619 = !{ptr @maybe_replace_use, ptr @get_reaching_def, i64 897674}
!620 = !{ptr @maybe_replace_use, ptr @is_old_name, i64 785966}
!621 = !{ptr @maybe_replace_use, ptr @set_ssa_use_from_ptr, i64 398067}
!622 = !{ptr @maybe_register_def, ptr @get_def_from_ptr, i64 569399}
!623 = !{ptr @maybe_register_def, ptr @symbol_marked_for_renaming, i64 569399}
!624 = !{ptr @maybe_register_def, ptr @make_ssa_name, i64 69200}
!625 = !{ptr @maybe_register_def, ptr @target_for_debug_bind, i64 69200}
!626 = !{ptr @maybe_register_def, ptr @gimple_build_debug_bind_stat, i64 1}
!627 = !{ptr @maybe_register_def, ptr @gsi_one_before_end_p, i64 1}
!628 = !{ptr @maybe_register_def, ptr @stmt_ends_bb_p, i64 1}
!629 = !{ptr @maybe_register_def, ptr @fancy_abort, i64 2}
!630 = !{ptr @maybe_register_def, ptr @ei_next, i64 8}
!631 = !{ptr @maybe_register_def, ptr @ei_cond, i64 8}
!632 = !{ptr @maybe_register_def, ptr @gsi_insert_after, i64 1}
!633 = !{ptr @maybe_register_def, ptr @register_new_update_single, i64 274987}
!634 = !{ptr @maybe_register_def, ptr @is_new_name, i64 363795}
!635 = !{ptr @maybe_register_def, ptr @names_replaced_by, i64 87856}
!636 = !{ptr @maybe_register_def, ptr @register_new_update_set, i64 87856}
!637 = !{ptr @maybe_register_def, ptr @is_old_name, i64 363795}
!638 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 41349}
!639 = !{ptr @gimple_phi_arg_set_location, ptr @gimple_phi_arg, i64 447598}
!640 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!641 = !{!"function_entry_count", i64 2400836}
!642 = !{!"branch_weights", i32 798164, i32 1602674}
!643 = !{!644, !644, i64 0}
!644 = !{!"any pointer", !645, i64 0}
!645 = !{!"omnipotent char", !646, i64 0}
!646 = !{!"Simple C/C++ TBAA"}
!647 = !{!"function_entry_count", i64 2245188}
!648 = !{!"tree-into-ssa.c:get_ssa_name_ann"}
!649 = !{!645, !645, i64 0}
!650 = !{!"branch_weights", i32 2244599, i32 591}
!651 = !{!652, !644, i64 24}
!652 = !{!"function", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !644, i64 32, !644, i64 40, !644, i64 48, !644, i64 56, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !644, i64 96, !653, i64 104, !653, i64 108, !653, i64 112, !653, i64 116, !653, i64 120, !653, i64 124, !644, i64 128, !653, i64 136, !653, i64 137, !653, i64 138, !653, i64 138, !653, i64 138, !653, i64 138, !653, i64 138, !653, i64 138, !653, i64 138, !653, i64 139, !653, i64 139, !653, i64 139, !653, i64 139, !653, i64 139, !653, i64 139, !653, i64 139}
!653 = !{!"int", !645, i64 0}
!654 = !{!655, !644, i64 16}
!655 = !{!"gimple_df", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !656, i64 32, !656, i64 48, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !653, i64 96, !657, i64 104}
!656 = !{!"pt_solution", !653, i64 0, !653, i64 0, !653, i64 0, !653, i64 0, !653, i64 0, !653, i64 0, !644, i64 8}
!657 = !{!"ssa_operands", !644, i64 0, !653, i64 8, !653, i64 12, !645, i64 16, !644, i64 24, !644, i64 32}
!658 = !{!"branch_weights", i32 590, i32 1}
!659 = !{!653, !653, i64 0}
!660 = !{!661, !653, i64 12}
!661 = !{!"ssa_name_info", !644, i64 0, !653, i64 8, !653, i64 12}
!662 = !{!"branch_weights", i32 590, i32 66161}
!663 = distinct !{!663, !664}
!664 = !{!"llvm.loop.mustprogress"}
!665 = !{!"branch_weights", i32 179803, i32 2065387}
!666 = !{!661, !644, i64 0}
!667 = !{!"function_entry_count", i64 5559501}
!668 = !{!"tree-into-ssa.c:var_ann"}
!669 = !{!"branch_weights", i32 68994847, i32 -1980623266, i32 2120091, i32 416}
!670 = !{!"function_entry_count", i64 2001247}
!671 = !{!"branch_weights", i32 713278, i32 1287971}
!672 = !{!"function_entry_count", i64 0}
!673 = !{!652, !644, i64 8}
!674 = !{!675, !653, i64 32}
!675 = !{!"control_flow_graph", !644, i64 0, !644, i64 8, !644, i64 16, !653, i64 24, !653, i64 28, !653, i64 32, !644, i64 40, !653, i64 48, !645, i64 52, !645, i64 60, !653, i64 68, !653, i64 72}
!676 = !{i8 0, i8 2}
!677 = !{!675, !644, i64 16}
!678 = distinct !{!678, !664}
!679 = !{i64 0, i64 4, !659, i64 8, i64 8, !643}
!680 = !{i64 0, i64 8, !643}
!681 = !{!682, !644, i64 0}
!682 = !{!"edge_def", !644, i64 0, !644, i64 8, !645, i64 16, !644, i64 24, !644, i64 32, !653, i64 40, !653, i64 44, !653, i64 48, !653, i64 52, !683, i64 56}
!683 = !{!"long", !645, i64 0}
!684 = !{!685, !653, i64 80}
!685 = !{!"basic_block_def", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !645, i64 32, !644, i64 48, !644, i64 56, !645, i64 64, !683, i64 72, !653, i64 80, !653, i64 84, !653, i64 88, !653, i64 92, !653, i64 96}
!686 = !{!675, !644, i64 0}
!687 = distinct !{!687, !664}
!688 = distinct !{!688, !664}
!689 = !{!"function_entry_count", i64 572027}
!690 = !{!"tree-into-ssa.c:bmp_iter_set_init"}
!691 = !{!692, !644, i64 0}
!692 = !{!"bitmap_head_def", !644, i64 0, !644, i64 8, !653, i64 16, !644, i64 24}
!693 = !{!694, !644, i64 0}
!694 = !{!"", !644, i64 0, !644, i64 8, !653, i64 16, !683, i64 24}
!695 = !{!694, !644, i64 8}
!696 = !{!"branch_weights", i32 76673, i32 495356}
!697 = !{!698, !653, i64 16}
!698 = !{!"bitmap_element_def", !644, i64 0, !644, i64 8, !653, i64 16, !645, i64 24}
!699 = !{!694, !653, i64 16}
!700 = !{!683, !683, i64 0}
!701 = !{!694, !683, i64 24}
!702 = !{!"function_entry_count", i64 3815766}
!703 = !{!"tree-into-ssa.c:bmp_iter_set"}
!704 = !{!"branch_weights", i32 1123946, i32 2691822}
!705 = !{!"branch_weights", i32 3243739, i32 1}
!706 = !{!"branch_weights", i32 22817362, i32 3243739}
!707 = distinct !{!707, !664}
!708 = !{!"branch_weights", i32 1, i32 832639}
!709 = !{!"branch_weights", i32 541334, i32 551919}
!710 = !{!"branch_weights", i32 832639, i32 260613}
!711 = distinct !{!711, !664}
!712 = !{!698, !644, i64 0}
!713 = !{!"branch_weights", i32 572028, i32 260613}
!714 = !{!"function_entry_count", i64 2456433}
!715 = !{!"tree-into-ssa.c:VEC_basic_block_base_index"}
!716 = !{!"function_entry_count", i64 3243739}
!717 = !{!"tree-into-ssa.c:bmp_iter_next"}
!718 = !{!"function_entry_count", i64 2472290}
!719 = !{!"tree-into-ssa.c:ei_start_1"}
!720 = !{!"function_entry_count", i64 7553768}
!721 = !{!"tree-into-ssa.c:ei_cond"}
!722 = !{!"branch_weights", i32 5081479, i32 2472291}
!723 = !{!"function_entry_count", i64 5081478}
!724 = !{!"tree-into-ssa.c:ei_next"}
!725 = !{!"branch_weights", i32 1, i32 5081479}
!726 = !{!"branch_weights", i32 5081479, i32 1}
!727 = !{!728, !653, i64 0}
!728 = !{!"", !653, i64 0, !644, i64 8}
!729 = distinct !{!729, !664}
!730 = !{!"function_entry_count", i64 2494453}
!731 = !{!"tree-into-ssa.c:VEC_tree_base_length"}
!732 = !{!"branch_weights", i32 1, i32 2494454}
!733 = !{!734, !653, i64 0}
!734 = !{!"VEC_tree_base", !653, i64 0, !653, i64 4, !645, i64 8}
!735 = !{!"function_entry_count", i64 797128}
!736 = !{!"tree-into-ssa.c:VEC_tree_base_index"}
!737 = !{!655, !644, i64 88}
!738 = distinct !{!738, !664}
!739 = !{!"function_entry_count", i64 80}
!740 = !{!"tree-into-ssa.c:first_referenced_var"}
!741 = !{!"function_entry_count", i64 222804}
!742 = !{!"tree-into-ssa.c:end_referenced_vars_p"}
!743 = !{!"function_entry_count", i64 222724}
!744 = !{!"tree-into-ssa.c:next_referenced_var"}
!745 = !{!746, !644, i64 176}
!746 = !{!"lang_hooks", !644, i64 0, !683, i64 8, !644, i64 16, !644, i64 24, !644, i64 32, !644, i64 40, !644, i64 48, !644, i64 56, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !644, i64 96, !644, i64 104, !644, i64 112, !644, i64 120, !644, i64 128, !644, i64 136, !644, i64 144, !644, i64 152, !644, i64 160, !644, i64 168, !644, i64 176, !644, i64 184, !644, i64 192, !644, i64 200, !644, i64 208, !644, i64 216, !644, i64 224, !644, i64 232, !747, i64 240, !748, i64 248, !749, i64 256, !750, i64 272, !751, i64 432, !752, i64 560, !644, i64 584, !644, i64 592, !644, i64 600, !644, i64 608, !644, i64 616, !644, i64 624, !644, i64 632, !644, i64 640, !644, i64 648, !644, i64 656, !644, i64 664, !645, i64 672}
!747 = !{!"lang_hooks_for_tree_inlining", !644, i64 0}
!748 = !{!"lang_hooks_for_callgraph", !644, i64 0}
!749 = !{!"lang_hooks_for_tree_dump", !644, i64 0, !644, i64 8}
!750 = !{!"lang_hooks_for_decls", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !644, i64 32, !644, i64 40, !644, i64 48, !644, i64 56, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !644, i64 96, !644, i64 104, !644, i64 112, !644, i64 120, !644, i64 128, !644, i64 136, !644, i64 144, !644, i64 152}
!751 = !{!"lang_hooks_for_types", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !644, i64 32, !644, i64 40, !644, i64 48, !644, i64 56, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !644, i64 96, !644, i64 104, !644, i64 112, !645, i64 120}
!752 = !{!"lang_hooks_for_lto", !644, i64 0, !644, i64 8, !644, i64 16}
!753 = !{!"tree-into-ssa.c:htab_statistics"}
!754 = !{!"tree-into-ssa.c:debug_def_blocks_r"}
!755 = !{!756, !644, i64 0}
!756 = !{!"def_blocks_d", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24}
!757 = !{!756, !644, i64 8}
!758 = !{!756, !644, i64 24}
!759 = !{!756, !644, i64 16}
!760 = !{!"function_entry_count", i64 40}
!761 = !{!"tree-into-ssa.c:rewrite_into_ssa"}
!762 = !{!"branch_weights", i32 41, i32 1}
!763 = !{!685, !644, i64 56}
!764 = !{!675, !644, i64 8}
!765 = !{!"branch_weights", i32 1, i32 163}
!766 = !{!"branch_weights", i32 163, i32 749145}
!767 = distinct !{!767, !664}
!768 = distinct !{!768, !664}
!769 = !{!770, !644, i64 0}
!770 = !{!"simple_bitmap_def", !644, i64 0, !653, i64 8, !653, i64 12, !645, i64 16}
!771 = distinct !{!771, !664}
!772 = !{!"function_entry_count", i64 256573}
!773 = !{!"tree-into-ssa.c:names_replaced_by"}
!774 = !{!775, !644, i64 0}
!775 = !{!"repl_map_d", !644, i64 0, !644, i64 8}
!776 = !{!"branch_weights", i32 1, i32 256574}
!777 = !{!775, !644, i64 8}
!778 = distinct !{!778, !664}
!779 = !{!780, !653, i64 0}
!780 = !{!"update_ssa_stats_d", !653, i64 0, !653, i64 4, !644, i64 8, !653, i64 16}
!781 = !{!780, !653, i64 4}
!782 = !{!780, !653, i64 16}
!783 = distinct !{!783, !664}
!784 = !{!"function_entry_count", i64 1823}
!785 = !{!"branch_weights", i32 1, i32 1824}
!786 = !{!"branch_weights", i32 130, i32 1695}
!787 = !{!"branch_weights", i32 41, i32 1655}
!788 = !{!"function_entry_count", i64 536}
!789 = !{!"tree-into-ssa.c:sbitmap_iter_init"}
!790 = !{!791, !653, i64 12}
!791 = !{!"", !644, i64 0, !653, i64 8, !653, i64 12, !653, i64 16, !683, i64 24}
!792 = !{!791, !653, i64 16}
!793 = !{!770, !653, i64 12}
!794 = !{!791, !653, i64 8}
!795 = !{!791, !644, i64 0}
!796 = !{!"branch_weights", i32 1, i32 537}
!797 = !{!"function_entry_count", i64 432801}
!798 = !{!"tree-into-ssa.c:sbitmap_iter_cond"}
!799 = !{!791, !683, i64 24}
!800 = !{!"branch_weights", i32 201226, i32 231040}
!801 = !{!"branch_weights", i32 432265, i32 1}
!802 = !{!"branch_weights", i32 200690, i32 537}
!803 = !{!"branch_weights", i32 0, i32 201226}
!804 = distinct !{!804, !664}
!805 = !{!"branch_weights", i32 1768865, i32 432265}
!806 = distinct !{!806, !664}
!807 = !{!"function_entry_count", i64 432265}
!808 = !{!"tree-into-ssa.c:sbitmap_iter_next"}
!809 = !{!"function_entry_count", i64 225}
!810 = !{!780, !644, i64 8}
!811 = !{!"branch_weights", i32 218, i32 9}
!812 = !{!"branch_weights", i32 1, i32 143}
!813 = !{!"branch_weights", i32 143, i32 1025}
!814 = distinct !{!814, !664}
!815 = !{!"branch_weights", i32 1, i32 226}
!816 = !{!"branch_weights", i32 1, i32 225}
!817 = !{!"branch_weights", i32 225, i32 179507}
!818 = distinct !{!818, !664}
!819 = !{!"tree-into-ssa.c:clear_ssa_name_info"}
!820 = !{!"function_entry_count", i64 265}
!821 = !{!"tree-into-ssa.c:fini_ssa_renamer"}
!822 = !{!"branch_weights", i32 77, i32 190}
!823 = !{!"function_entry_count", i64 823478}
!824 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_index"}
!825 = !{!"function_entry_count", i64 179731}
!826 = !{!"tree-into-ssa.c:VEC_gimple_heap_free"}
!827 = !{!"branch_weights", i32 1, i32 179732}
!828 = !{!"function_entry_count", i64 364548}
!829 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_replace"}
!830 = !{!"function_entry_count", i64 90123}
!831 = !{i32 0, i32 256}
!832 = !{!"branch_weights", i32 37799, i32 52326}
!833 = !{!"branch_weights", i32 37798, i32 1}
!834 = !{!682, !653, i64 48}
!835 = !{!"branch_weights", i32 1, i32 0}
!836 = distinct !{!836, !664}
!837 = !{!"function_entry_count", i64 21203920}
!838 = !{!"tree-into-ssa.c:gimple_code"}
!839 = !{!"function_entry_count", i64 2136122}
!840 = !{!"tree-into-ssa.c:gimple_bb"}
!841 = !{!"function_entry_count", i64 125706}
!842 = !{!"branch_weights", i32 130, i32 125578}
!843 = !{!"branch_weights", i32 125707, i32 1}
!844 = !{!"tree-into-ssa.c:init_update_ssa"}
!845 = !{!"branch_weights", i32 4, i32 223}
!846 = !{!"function_entry_count", i64 140695}
!847 = !{!"tree-into-ssa.c:add_new_name_mapping"}
!848 = !{!"branch_weights", i32 140696, i32 1}
!849 = !{!"branch_weights", i32 1, i32 140696}
!850 = !{!"branch_weights", i32 46195, i32 94502}
!851 = !{!770, !653, i64 8}
!852 = !{!"branch_weights", i32 132055, i32 8642}
!853 = !{!"function_entry_count", i64 239634}
!854 = distinct !{!854, !664}
!855 = !{!"function_entry_count", i64 1142}
!856 = !{!"branch_weights", i32 19, i32 1125}
!857 = !{!"branch_weights", i32 1125, i32 1}
!858 = !{!"branch_weights", i32 1, i32 1125}
!859 = !{!"function_entry_count", i64 3478100}
!860 = !{!"branch_weights", i32 2898438, i32 579664}
!861 = !{!"branch_weights", i32 579664, i32 1}
!862 = !{!"branch_weights", i32 579592, i32 73}
!863 = !{!"function_entry_count", i64 1352546}
!864 = !{!"tree-into-ssa.c:is_new_name"}
!865 = !{!"branch_weights", i32 73, i32 1352475}
!866 = !{!"branch_weights", i32 1352475, i32 1}
!867 = !{!"function_entry_count", i64 1949039}
!868 = !{!"tree-into-ssa.c:is_old_name"}
!869 = !{!"branch_weights", i32 73, i32 1948968}
!870 = !{!"branch_weights", i32 1948968, i32 1}
!871 = distinct !{!871, !664}
!872 = !{!"function_entry_count", i64 72}
!873 = !{!"branch_weights", i32 5329, i32 147}
!874 = !{!"branch_weights", i32 9, i32 65}
!875 = !{!"function_entry_count", i64 1557}
!876 = !{!"branch_weights", i32 1333, i32 226}
!877 = !{!"branch_weights", i32 226, i32 1}
!878 = !{!"branch_weights", i32 97, i32 130}
!879 = !{!"branch_weights", i32 2, i32 225}
!880 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1}
!881 = !{!"branch_weights", i32 50, i32 177}
!882 = !{!"branch_weights", i32 150, i32 77}
!883 = !{!"branch_weights", i32 150, i32 1}
!884 = !{!"branch_weights", i32 130, i32 97}
!885 = !{!"branch_weights", i32 1, i32 130}
!886 = !{!"branch_weights", i32 1, i32 149}
!887 = !{!"branch_weights", i32 149, i32 1117433}
!888 = distinct !{!888, !664}
!889 = !{!"branch_weights", i32 54, i32 97}
!890 = !{!"branch_weights", i32 1, i32 215}
!891 = !{!"branch_weights", i32 215, i32 360281}
!892 = distinct !{!892, !664}
!893 = !{!"branch_weights", i32 6, i32 144}
!894 = !{!"branch_weights", i32 144, i32 0}
!895 = distinct !{!895, !664}
!896 = distinct !{!896, !664}
!897 = !{!"branch_weights", i32 97, i32 54}
!898 = !{!"branch_weights", i32 225, i32 108030}
!899 = distinct !{!899, !664}
!900 = !{!"branch_weights", i32 82, i32 144}
!901 = distinct !{!901, !664}
!902 = !{!"branch_weights", i32 225, i32 807148}
!903 = distinct !{!903, !664}
!904 = distinct !{!904, !664}
!905 = distinct !{!905, !664}
!906 = !{!"function_entry_count", i64 1}
!907 = !{!"tree-into-ssa.c:VEC_gimple_vec_heap_alloc"}
!908 = !{!"function_entry_count", i64 2859568}
!909 = !{!"tree-into-ssa.c:def_blocks_hash"}
!910 = !{!"function_entry_count", i64 2734818}
!911 = !{!"tree-into-ssa.c:def_blocks_eq"}
!912 = !{!"function_entry_count", i64 282859}
!913 = !{!"tree-into-ssa.c:def_blocks_free"}
!914 = !{!"function_entry_count", i64 149}
!915 = !{!"tree-into-ssa.c:switch_virtuals_to_full_rewrite_p"}
!916 = !{!917, !653, i64 8}
!917 = !{!"param_info", !644, i64 0, !653, i64 8, !645, i64 12, !653, i64 16, !653, i64 20, !644, i64 24}
!918 = !{!"branch_weights", i32 129, i32 22}
!919 = !{!"tree-into-ssa.c:switch_virtuals_to_full_rewrite"}
!920 = distinct !{!920, !664}
!921 = distinct !{!921, !664}
!922 = !{!"function_entry_count", i64 129}
!923 = !{!"tree-into-ssa.c:prepare_names_to_update"}
!924 = !{!"branch_weights", i32 122, i32 9}
!925 = distinct !{!925, !664}
!926 = !{!"branch_weights", i32 1, i32 129}
!927 = !{!"branch_weights", i32 129, i32 125506}
!928 = distinct !{!928, !664}
!929 = !{!"branch_weights", i32 44938, i32 63318}
!930 = !{!"branch_weights", i32 63294, i32 25}
!931 = !{!"branch_weights", i32 129, i32 108126}
!932 = distinct !{!932, !664}
!933 = !{!"function_entry_count", i64 489294}
!934 = !{!"tree-into-ssa.c:prepare_block_for_update"}
!935 = !{!"branch_weights", i32 88183, i32 401112}
!936 = !{!"branch_weights", i32 1, i32 88183}
!937 = !{!"branch_weights", i32 2572, i32 85612}
!938 = !{!"branch_weights", i32 1, i32 85611}
!939 = !{!"branch_weights", i32 85611, i32 139876}
!940 = distinct !{!940, !664}
!941 = !{!"branch_weights", i32 0, i32 88183}
!942 = distinct !{!942, !664}
!943 = !{i64 0, i64 8, !643, i64 8, i64 8, !643, i64 16, i64 8, !643}
!944 = !{!"branch_weights", i32 489294, i32 1}
!945 = !{!"branch_weights", i32 1092590, i32 1}
!946 = !{!"branch_weights", i32 160966, i32 1116602}
!947 = !{!"branch_weights", i32 811477, i32 466091}
!948 = !{!"branch_weights", i32 184977, i32 1092590}
!949 = distinct !{!949, !664}
!950 = !{!"branch_weights", i32 856669, i32 235922}
!951 = !{!"branch_weights", i32 69201, i32 787469}
!952 = !{!"branch_weights", i32 651065, i32 205605}
!953 = !{!"branch_weights", i32 0, i32 856669}
!954 = distinct !{!954, !664}
!955 = !{!"branch_weights", i32 603297, i32 489294}
!956 = distinct !{!956, !664}
!957 = !{!"branch_weights", i32 96, i32 489199}
!958 = !{!"branch_weights", i32 489199, i32 0}
!959 = distinct !{!959, !664}
!960 = !{!"function_entry_count", i64 90266}
!961 = !{!"tree-into-ssa.c:insert_updated_phi_nodes_for"}
!962 = !{!"branch_weights", i32 1, i32 90267}
!963 = !{!"branch_weights", i32 90124, i32 144}
!964 = !{!"branch_weights", i32 1, i32 180248, i32 1}
!965 = !{!"branch_weights", i32 1, i32 90124}
!966 = !{!"branch_weights", i32 1, i32 90123}
!967 = !{!"branch_weights", i32 1, i32 455268}
!968 = !{!"branch_weights", i32 119750, i32 335519}
!969 = !{!"branch_weights", i32 90123, i32 365145}
!970 = distinct !{!970, !664}
!971 = !{!"branch_weights", i32 3360, i32 86908}
!972 = !{!"branch_weights", i32 1, i32 86907}
!973 = !{!"branch_weights", i32 1, i32 475666}
!974 = !{!"branch_weights", i32 1404579, i32 1}
!975 = !{!"branch_weights", i32 475666, i32 928913}
!976 = distinct !{!976, !664}
!977 = !{!"branch_weights", i32 86907, i32 388760}
!978 = distinct !{!978, !664}
!979 = !{!"function_entry_count", i64 1489612}
!980 = !{!"tree-into-ssa.c:SET_BIT"}
!981 = !{!"branch_weights", i32 1489613, i32 1}
!982 = !{!"tree-into-ssa.c:rewrite_blocks"}
!983 = !{!"branch_weights", i32 266, i32 1}
!984 = !{!"branch_weights", i32 41, i32 226}
!985 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_length"}
!986 = !{!"branch_weights", i32 2, i32 2245188}
!987 = !{!988, !653, i64 0}
!988 = !{!"VEC_ssa_name_info_p_base", !653, i64 0, !653, i64 4, !645, i64 8}
!989 = !{!"function_entry_count", i64 590}
!990 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_heap_reserve"}
!991 = !{i32 0, i32 2}
!992 = !{!"branch_weights", i32 7, i32 585}
!993 = !{!"function_entry_count", i64 66750}
!994 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_quick_push"}
!995 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_index"}
!996 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_space"}
!997 = !{!"branch_weights", i32 2, i32 590}
!998 = !{!988, !653, i64 4}
!999 = !{!"tree-into-ssa.c:ei_end_p"}
!1000 = !{!"branch_weights", i32 38021, i32 7515749}
!1001 = !{!"tree-into-ssa.c:ei_edge"}
!1002 = !{!"function_entry_count", i64 12635246}
!1003 = !{!"tree-into-ssa.c:VEC_edge_base_length"}
!1004 = !{!"branch_weights", i32 38021, i32 12597227}
!1005 = !{!1006, !653, i64 0}
!1006 = !{!"VEC_edge_base", !653, i64 0, !653, i64 4, !645, i64 8}
!1007 = !{!"function_entry_count", i64 35395428}
!1008 = !{!"tree-into-ssa.c:ei_container"}
!1009 = !{!"branch_weights", i32 1, i32 35395429}
!1010 = !{!"function_entry_count", i64 5158907}
!1011 = !{!"tree-into-ssa.c:VEC_edge_base_index"}
!1012 = !{!"tree-into-ssa.c:first_htab_element"}
!1013 = !{!1014, !644, i64 0}
!1014 = !{!"", !644, i64 0, !644, i64 8, !644, i64 16}
!1015 = !{!1016, !644, i64 24}
!1016 = !{!"htab", !644, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !683, i64 32, !683, i64 40, !683, i64 48, !653, i64 56, !653, i64 60, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !644, i64 96, !653, i64 104}
!1017 = !{!1014, !644, i64 8}
!1018 = !{!1014, !644, i64 16}
!1019 = !{!"branch_weights", i32 101, i32 1}
!1020 = distinct !{!1020, !664}
!1021 = !{!"branch_weights", i32 81, i32 1}
!1022 = !{!"function_entry_count", i64 120}
!1023 = !{!"tree-into-ssa.c:gimple_referenced_vars"}
!1024 = !{!"branch_weights", i32 1, i32 121}
!1025 = !{!655, !644, i64 0}
!1026 = !{!"tree-into-ssa.c:end_htab_p"}
!1027 = !{!"tree-into-ssa.c:next_htab_element"}
!1028 = !{!"branch_weights", i32 471921, i32 81}
!1029 = !{!"tree-into-ssa.c:init_ssa_renamer"}
!1030 = !{!"branch_weights", i32 163, i32 1}
!1031 = !{!"branch_weights", i32 445289, i32 163}
!1032 = distinct !{!1032, !664}
!1033 = !{!"tree-into-ssa.c:mark_def_site_blocks"}
!1034 = !{!1035, !644, i64 8}
!1035 = !{!"dom_walk_data", !653, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !644, i64 32, !644, i64 40, !683, i64 48, !644, i64 56}
!1036 = !{!1035, !644, i64 16}
!1037 = !{!1035, !644, i64 24}
!1038 = !{!1039, !644, i64 0}
!1039 = !{!"mark_def_sites_global_data", !644, i64 0}
!1040 = !{!1035, !644, i64 32}
!1041 = !{!1035, !683, i64 48}
!1042 = !{!"tree-into-ssa.c:insert_phi_nodes"}
!1043 = !{!"branch_weights", i32 204, i32 111160}
!1044 = !{i32 0, i32 4}
!1045 = !{!"branch_weights", i32 109485, i32 1676}
!1046 = distinct !{!1046, !664}
!1047 = !{!"branch_weights", i32 163, i32 6541}
!1048 = distinct !{!1048, !664}
!1049 = !{!"function_entry_count", i64 187366}
!1050 = !{!"tree-into-ssa.c:mark_def_sites_block"}
!1051 = !{!"branch_weights", i32 187366, i32 1}
!1052 = !{!"branch_weights", i32 216447, i32 187366}
!1053 = distinct !{!1053, !664}
!1054 = !{!"function_entry_count", i64 2462027}
!1055 = !{!"tree-into-ssa.c:gsi_start_bb"}
!1056 = !{!"function_entry_count", i64 11110316}
!1057 = !{!"tree-into-ssa.c:gsi_end_p"}
!1058 = !{!"function_entry_count", i64 403812}
!1059 = !{!"tree-into-ssa.c:mark_def_sites"}
!1060 = !{!"branch_weights", i32 403813, i32 1}
!1061 = !{!"branch_weights", i32 276509, i32 127304}
!1062 = !{!"branch_weights", i32 276509, i32 1}
!1063 = !{!"branch_weights", i32 55351, i32 221159}
!1064 = !{!"branch_weights", i32 0, i32 276509}
!1065 = distinct !{!1065, !664}
!1066 = !{!"branch_weights", i32 255173, i32 148640}
!1067 = !{!"branch_weights", i32 255173, i32 1}
!1068 = !{!"branch_weights", i32 0, i32 255173}
!1069 = distinct !{!1069, !664}
!1070 = !{!"branch_weights", i32 137717, i32 266097}
!1071 = !{!"branch_weights", i32 2963, i32 134755}
!1072 = !{!"function_entry_count", i64 6039936}
!1073 = !{!"tree-into-ssa.c:gsi_stmt"}
!1074 = !{!1075, !644, i64 0}
!1075 = !{!"gimple_seq_node_d", !644, i64 0, !644, i64 8, !644, i64 16}
!1076 = !{!"tree-into-ssa.c:gsi_next"}
!1077 = !{!1075, !644, i64 16}
!1078 = !{!"tree-into-ssa.c:bb_seq"}
!1079 = !{!685, !653, i64 96}
!1080 = !{!"branch_weights", i32 2462028, i32 1}
!1081 = !{!"branch_weights", i32 329, i32 2461700}
!1082 = !{!1083, !644, i64 0}
!1083 = !{!"gimple_bb_info", !644, i64 0, !644, i64 8}
!1084 = !{!"tree-into-ssa.c:gimple_seq_first"}
!1085 = !{!1086, !644, i64 0}
!1086 = !{!"gimple_seq_d", !644, i64 0, !644, i64 8, !644, i64 16}
!1087 = !{!"tree-into-ssa.c:update_stmt"}
!1088 = !{!"branch_weights", i32 1, i32 403813}
!1089 = !{!"function_entry_count", i64 3197425}
!1090 = !{!"tree-into-ssa.c:set_register_defs"}
!1091 = !{!"function_entry_count", i64 3720284}
!1092 = !{!"tree-into-ssa.c:set_rewrite_uses"}
!1093 = !{!"function_entry_count", i64 2161445}
!1094 = !{!"tree-into-ssa.c:is_gimple_debug"}
!1095 = !{!"function_entry_count", i64 2622457}
!1096 = !{!"tree-into-ssa.c:op_iter_init_use"}
!1097 = !{!"branch_weights", i32 -936917510, i32 2560}
!1098 = !{!1099, !653, i64 4}
!1099 = !{!"ssa_operand_iterator_d", !645, i64 0, !653, i64 4, !644, i64 8, !644, i64 16, !653, i64 24, !653, i64 28, !644, i64 32}
!1100 = !{!"function_entry_count", i64 9764662}
!1101 = !{!"tree-into-ssa.c:op_iter_done"}
!1102 = !{!1099, !645, i64 0}
!1103 = !{!"function_entry_count", i64 3552902}
!1104 = !{!"tree-into-ssa.c:get_use_from_ptr"}
!1105 = !{!1106, !644, i64 24}
!1106 = !{!"ssa_use_operand_d", !644, i64 0, !644, i64 8, !645, i64 16, !644, i64 24}
!1107 = !{!"function_entry_count", i64 684235}
!1108 = !{!"tree-into-ssa.c:set_livein_block"}
!1109 = !{!"branch_weights", i32 27, i32 684210}
!1110 = !{!"branch_weights", i32 1, i32 27}
!1111 = !{!"function_entry_count", i64 5705095}
!1112 = !{!"tree-into-ssa.c:op_iter_next_use"}
!1113 = !{!1099, !644, i64 16}
!1114 = !{!"branch_weights", i32 2622458, i32 3082639}
!1115 = !{!1116, !644, i64 0}
!1116 = !{!"use_optype_d", !644, i64 0, !1106, i64 8}
!1117 = !{!1099, !653, i64 24}
!1118 = !{!1099, !653, i64 28}
!1119 = !{!"branch_weights", i32 1, i32 2622458}
!1120 = !{!1099, !644, i64 32}
!1121 = !{!"tree-into-ssa.c:op_iter_init_tree"}
!1122 = !{!"function_entry_count", i64 833840}
!1123 = !{!"tree-into-ssa.c:set_def_block"}
!1124 = !{!"branch_weights", i32 626689, i32 207153}
!1125 = !{!"branch_weights", i32 282725, i32 551117}
!1126 = !{!"function_entry_count", i64 658984}
!1127 = !{!"tree-into-ssa.c:op_iter_next_tree"}
!1128 = !{!"branch_weights", i32 658985, i32 1}
!1129 = !{!1099, !644, i64 8}
!1130 = !{!"branch_weights", i32 403813, i32 255173}
!1131 = !{!1132, !644, i64 8}
!1132 = !{!"def_optype_d", !644, i64 0, !644, i64 8}
!1133 = !{!1132, !644, i64 0}
!1134 = !{!"function_entry_count", i64 4712455}
!1135 = !{!"tree-into-ssa.c:rewrite_uses_p"}
!1136 = !{!"function_entry_count", i64 2752812}
!1137 = !{!"tree-into-ssa.c:register_defs_p"}
!1138 = !{!"function_entry_count", i64 6906812}
!1139 = !{!"tree-into-ssa.c:gimple_has_ops"}
!1140 = !{!"tree-into-ssa.c:gimple_set_plf"}
!1141 = !{!"branch_weights", i32 2361135, i32 836292}
!1142 = !{!"tree-into-ssa.c:gimple_set_visited"}
!1143 = !{!"function_entry_count", i64 4745613}
!1144 = !{!"tree-into-ssa.c:op_iter_init"}
!1145 = !{!"branch_weights", i32 1504, i32 -720921345}
!1146 = !{!"branch_weights", i32 2622458, i32 2123157}
!1147 = !{!"branch_weights", i32 1629128893, i32 518354755}
!1148 = !{!"branch_weights", i32 376485, i32 135999}
!1149 = !{!"branch_weights", i32 2123157, i32 2622458}
!1150 = !{!"branch_weights", i32 1636870781, i32 510612867}
!1151 = !{!"branch_weights", i32 393623, i32 229927}
!1152 = !{!"function_entry_count", i64 2123156}
!1153 = !{!"tree-into-ssa.c:gimple_def_ops"}
!1154 = !{!"branch_weights", i32 1, i32 2123157}
!1155 = !{!"function_entry_count", i64 512482}
!1156 = !{!"tree-into-ssa.c:gimple_vdef"}
!1157 = !{!"branch_weights", i32 1, i32 512483}
!1158 = !{!"tree-into-ssa.c:gimple_use_ops"}
!1159 = !{!"function_entry_count", i64 623548}
!1160 = !{!"tree-into-ssa.c:gimple_vuse"}
!1161 = !{!"branch_weights", i32 286925, i32 336625}
!1162 = !{!"function_entry_count", i64 1136030}
!1163 = !{!"tree-into-ssa.c:gimple_has_mem_ops"}
!1164 = !{!"function_entry_count", i64 1884557}
!1165 = !{!"tree-into-ssa.c:get_phi_state"}
!1166 = !{!"branch_weights", i32 366885, i32 1517674}
!1167 = !{!"function_entry_count", i64 2481137}
!1168 = !{!"tree-into-ssa.c:get_def_blocks_for"}
!1169 = !{!"branch_weights", i32 282860, i32 2198279}
!1170 = !{!"function_entry_count", i64 1518049}
!1171 = !{!"tree-into-ssa.c:set_phi_state"}
!1172 = !{!"branch_weights", i32 366865, i32 1151186}
!1173 = !{!"function_entry_count", i64 470264}
!1174 = !{!"tree-into-ssa.c:gimple_phi_arg_imm_use_ptr"}
!1175 = !{!"function_entry_count", i64 1484238}
!1176 = !{!"tree-into-ssa.c:gimple_phi_arg"}
!1177 = !{!"branch_weights", i32 1, i32 1484239}
!1178 = !{!"function_entry_count", i64 2191583}
!1179 = !{!"tree-into-ssa.c:get_def_from_ptr"}
!1180 = !{!"tree-into-ssa.c:gimple_visited_p"}
!1181 = !{!"tree-into-ssa.c:gimple_plf"}
!1182 = !{!"function_entry_count", i64 291885}
!1183 = !{!"tree-into-ssa.c:find_def_blocks_for"}
!1184 = !{!"function_entry_count", i64 88582}
!1185 = !{!"tree-into-ssa.c:insert_phi_nodes_for"}
!1186 = !{!"branch_weights", i32 1, i32 88583}
!1187 = !{!"branch_weights", i32 32466, i32 56117}
!1188 = !{!"branch_weights", i32 152, i32 55966}
!1189 = !{!"branch_weights", i32 14990, i32 41128}
!1190 = !{!"branch_weights", i32 1, i32 14989}
!1191 = !{!"branch_weights", i32 14989, i32 16750}
!1192 = distinct !{!1192, !664}
!1193 = !{!"branch_weights", i32 41128, i32 1}
!1194 = !{!"branch_weights", i32 56117, i32 0}
!1195 = distinct !{!1195, !664}
!1196 = !{!"tree-into-ssa.c:prune_unused_phi_nodes"}
!1197 = !{!"branch_weights", i32 55421, i32 33163}
!1198 = !{!"branch_weights", i32 41, i32 33123}
!1199 = !{!1200, !653, i64 0}
!1200 = !{!"dom_dfsnum", !653, i64 0, !653, i64 4}
!1201 = !{!1200, !653, i64 4}
!1202 = !{!"branch_weights", i32 1, i32 33122}
!1203 = !{!"branch_weights", i32 33122, i32 551302}
!1204 = distinct !{!1204, !664}
!1205 = !{!"branch_weights", i32 33123, i32 1}
!1206 = !{!"branch_weights", i32 33122, i32 1}
!1207 = !{!"branch_weights", i32 584424, i32 584424}
!1208 = !{!"branch_weights", i32 232204, i32 936644}
!1209 = !{!"branch_weights", i32 33122, i32 1135725}
!1210 = distinct !{!1210, !664}
!1211 = !{!"branch_weights", i32 33122, i32 393377}
!1212 = distinct !{!1212, !664}
!1213 = !{!"branch_weights", i32 1, i32 428348}
!1214 = !{!"branch_weights", i32 33122, i32 395226}
!1215 = distinct !{!1215, !664}
!1216 = !{!"branch_weights", i32 373553, i32 54796}
!1217 = !{!"branch_weights", i32 287663, i32 85891}
!1218 = !{!"branch_weights", i32 56117, i32 84570}
!1219 = !{!"branch_weights", i32 1, i32 56116}
!1220 = !{!"branch_weights", i32 71476, i32 116823}
!1221 = !{!"branch_weights", i32 1850, i32 69627}
!1222 = !{!"branch_weights", i32 56116, i32 132182}
!1223 = distinct !{!1223, !664}
!1224 = !{!"function_entry_count", i64 3180225}
!1225 = !{!"tree-into-ssa.c:mark_block_for_update"}
!1226 = !{!"branch_weights", i32 1, i32 3180226}
!1227 = !{!"branch_weights", i32 790692, i32 2389535}
!1228 = !{!"function_entry_count", i64 14989}
!1229 = !{!"tree-into-ssa.c:gimple_phi_set_result"}
!1230 = !{!"tree-into-ssa.c:gimple_phi_result_ptr"}
!1231 = !{!"tree-into-ssa.c:gsi_after_labels"}
!1232 = distinct !{!1232, !664}
!1233 = !{!"function_entry_count", i64 359031}
!1234 = !{!"tree-into-ssa.c:mark_phi_for_rewrite"}
!1235 = !{!"branch_weights", i32 184969, i32 174064}
!1236 = !{!"branch_weights", i32 152, i32 184818}
!1237 = !{!"branch_weights", i32 155356, i32 29462}
!1238 = !{!"branch_weights", i32 29462, i32 0}
!1239 = distinct !{!1239, !664}
!1240 = !{!"branch_weights", i32 179732, i32 5087}
!1241 = !{!"function_entry_count", i64 12394224}
!1242 = !{!"tree-into-ssa.c:cmp_dfsnum"}
!1243 = !{!"function_entry_count", i64 33122}
!1244 = !{!"tree-into-ssa.c:VEC_int_heap_alloc"}
!1245 = !{!"function_entry_count", i64 1045892}
!1246 = !{!"tree-into-ssa.c:VEC_int_base_quick_push"}
!1247 = !{!1248, !653, i64 0}
!1248 = !{!"VEC_int_base", !653, i64 0, !653, i64 4, !645, i64 8}
!1249 = !{!"tree-into-ssa.c:VEC_int_base_pop"}
!1250 = !{!"function_entry_count", i64 584423}
!1251 = !{!"tree-into-ssa.c:VEC_int_base_index"}
!1252 = !{!"function_entry_count", i64 1079014}
!1253 = !{!"tree-into-ssa.c:VEC_int_base_length"}
!1254 = !{!"branch_weights", i32 1, i32 1079015}
!1255 = !{!"function_entry_count", i64 428347}
!1256 = !{!"tree-into-ssa.c:VEC_int_heap_safe_push"}
!1257 = !{!"function_entry_count", i64 373552}
!1258 = !{!"tree-into-ssa.c:find_dfsnum_interval"}
!1259 = !{!"branch_weights", i32 373552, i32 1}
!1260 = !{!"branch_weights", i32 2432144, i32 2509186}
!1261 = !{!"branch_weights", i32 4567777, i32 373552}
!1262 = distinct !{!1262, !664}
!1263 = !{!"tree-into-ssa.c:VEC_int_heap_free"}
!1264 = !{!"branch_weights", i32 1, i32 33123}
!1265 = !{!"tree-into-ssa.c:VEC_int_heap_reserve"}
!1266 = !{!"branch_weights", i32 828, i32 427521}
!1267 = !{!"tree-into-ssa.c:VEC_int_base_space"}
!1268 = !{!1248, !653, i64 4}
!1269 = !{!"function_entry_count", i64 790691}
!1270 = !{!"tree-into-ssa.c:initialize_flags_in_bb"}
!1271 = !{!"branch_weights", i32 199936, i32 590756}
!1272 = !{!"branch_weights", i32 0, i32 199936}
!1273 = distinct !{!1273, !664}
!1274 = !{!"branch_weights", i32 790691, i32 1}
!1275 = !{!"branch_weights", i32 1757388, i32 1}
!1276 = !{!"branch_weights", i32 966697, i32 790691}
!1277 = distinct !{!1277, !664}
!1278 = !{!"function_entry_count", i64 1757387}
!1279 = !{!"tree-into-ssa.c:gimple_modified_p"}
!1280 = !{!"branch_weights", i32 1, i32 1757388}
!1281 = !{!"function_entry_count", i64 184817}
!1282 = !{!"tree-into-ssa.c:VEC_gimple_vec_heap_reserve"}
!1283 = !{!"branch_weights", i32 9, i32 184810}
!1284 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_length"}
!1285 = !{!"branch_weights", i32 1, i32 184818}
!1286 = !{!1287, !653, i64 0}
!1287 = !{!"VEC_gimple_vec_base", !653, i64 0, !653, i64 4, !645, i64 8}
!1288 = !{!"function_entry_count", i64 29461}
!1289 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_quick_push"}
!1290 = !{!"tree-into-ssa.c:VEC_gimple_heap_alloc"}
!1291 = !{!"tree-into-ssa.c:VEC_gimple_heap_safe_push"}
!1292 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_space"}
!1293 = !{!1287, !653, i64 4}
!1294 = !{!"tree-into-ssa.c:VEC_gimple_heap_reserve"}
!1295 = !{!"tree-into-ssa.c:VEC_gimple_base_quick_push"}
!1296 = !{!1297, !653, i64 0}
!1297 = !{!"VEC_gimple_base", !653, i64 0, !653, i64 4, !645, i64 8}
!1298 = !{!"tree-into-ssa.c:VEC_gimple_base_space"}
!1299 = !{!1297, !653, i64 4}
!1300 = !{!"function_entry_count", i64 603469}
!1301 = !{!"tree-into-ssa.c:repl_map_hash"}
!1302 = !{!"function_entry_count", i64 558446}
!1303 = !{!"tree-into-ssa.c:repl_map_eq"}
!1304 = !{!"tree-into-ssa.c:repl_map_free"}
!1305 = !{!"tree-into-ssa.c:add_to_repl_tbl"}
!1306 = !{!"tree-into-ssa.c:RESET_BIT"}
!1307 = !{!"branch_weights", i32 73, i32 1}
!1308 = !{!"function_entry_count", i64 233864}
!1309 = !{!"tree-into-ssa.c:prepare_def_site_for"}
!1310 = !{!"branch_weights", i32 107327, i32 126539}
!1311 = !{!"branch_weights", i32 126539, i32 1}
!1312 = !{!"branch_weights", i32 77, i32 233789}
!1313 = !{!"branch_weights", i32 233789, i32 1}
!1314 = !{!"function_entry_count", i64 108254}
!1315 = !{!"tree-into-ssa.c:prepare_use_sites_for"}
!1316 = !{!"branch_weights", i32 108254, i32 1}
!1317 = !{!"branch_weights", i32 77430, i32 431585}
!1318 = !{!"branch_weights", i32 400760, i32 108254}
!1319 = distinct !{!1319, !664}
!1320 = !{!"function_entry_count", i64 525003}
!1321 = !{!"tree-into-ssa.c:mark_def_interesting"}
!1322 = !{!"branch_weights", i32 1, i32 525004}
!1323 = !{!"branch_weights", i32 53639, i32 471366}
!1324 = !{!"branch_weights", i32 180151, i32 291216}
!1325 = !{!"branch_weights", i32 81483, i32 98669}
!1326 = !{!"branch_weights", i32 1, i32 98669}
!1327 = !{!"branch_weights", i32 1, i32 98668}
!1328 = !{!"branch_weights", i32 98668, i32 8636}
!1329 = distinct !{!1329, !664}
!1330 = !{!"tree-into-ssa.c:first_readonly_imm_use"}
!1331 = !{!1332, !644, i64 8}
!1332 = !{!"immediate_use_iterator_d", !644, i64 0, !644, i64 8, !1106, i64 16, !644, i64 48}
!1333 = !{!1106, !644, i64 8}
!1334 = !{!1332, !644, i64 0}
!1335 = !{!"branch_weights", i32 99412, i32 8844}
!1336 = !{!"function_entry_count", i64 1234534}
!1337 = !{!"tree-into-ssa.c:end_readonly_imm_use_p"}
!1338 = !{!"function_entry_count", i64 525027}
!1339 = !{!"tree-into-ssa.c:phi_arg_index_from_use"}
!1340 = !{!"branch_weights", i32 525028, i32 1}
!1341 = !{!"function_entry_count", i64 77429}
!1342 = !{!"tree-into-ssa.c:gimple_phi_arg_edge"}
!1343 = !{!685, !644, i64 0}
!1344 = !{!"function_entry_count", i64 1200589}
!1345 = !{!"tree-into-ssa.c:mark_use_interesting"}
!1346 = !{!"branch_weights", i32 302916, i32 897675}
!1347 = !{!"branch_weights", i32 237528, i32 963063}
!1348 = !{!"branch_weights", i32 832906828, i32 -917945505}
!1349 = !{!"branch_weights", i32 628886, i32 334178}
!1350 = !{!"function_entry_count", i64 509013}
!1351 = !{!"tree-into-ssa.c:next_readonly_imm_use"}
!1352 = !{!"branch_weights", i32 409603, i32 99412}
!1353 = !{!"function_entry_count", i64 816652}
!1354 = !{!"tree-into-ssa.c:gimple_phi_result"}
!1355 = !{!"function_entry_count", i64 4615631}
!1356 = !{!"tree-into-ssa.c:symbol_marked_for_renaming"}
!1357 = !{!"function_entry_count", i64 1719344}
!1358 = !{!"tree-into-ssa.c:op_iter_init_def"}
!1359 = !{!"branch_weights", i32 -1408104768, i32 3358}
!1360 = !{!"function_entry_count", i64 3400583}
!1361 = !{!"tree-into-ssa.c:op_iter_next_def"}
!1362 = !{!"branch_weights", i32 1719345, i32 1681240}
!1363 = !{!"tree-into-ssa.c:rewrite_enter_block"}
!1364 = !{!"branch_weights", i32 187367, i32 1}
!1365 = !{!"branch_weights", i32 152, i32 187215}
!1366 = !{!"branch_weights", i32 1, i32 152}
!1367 = !{!"branch_weights", i32 0, i32 152}
!1368 = distinct !{!1368, !664}
!1369 = !{!"branch_weights", i32 63, i32 187305}
!1370 = !{!"branch_weights", i32 187304, i32 1}
!1371 = !{!"branch_weights", i32 216487, i32 187304}
!1372 = distinct !{!1372, !664}
!1373 = !{!"tree-into-ssa.c:rewrite_leave_block"}
!1374 = !{!"branch_weights", i32 1, i32 127}
!1375 = !{!"branch_weights", i32 187367, i32 145840}
!1376 = !{!"branch_weights", i32 48754, i32 97087}
!1377 = !{!"branch_weights", i32 1, i32 48754}
!1378 = !{!"branch_weights", i32 127, i32 42650241}
!1379 = !{!"function_entry_count", i64 1428867}
!1380 = !{!"tree-into-ssa.c:rewrite_update_enter_block"}
!1381 = !{!"branch_weights", i32 1428868, i32 1}
!1382 = !{!"branch_weights", i32 621496, i32 807373}
!1383 = !{!"branch_weights", i32 1, i32 807372}
!1384 = !{!"branch_weights", i32 1385511, i32 1}
!1385 = !{!"branch_weights", i32 807372, i32 578139}
!1386 = distinct !{!1386, !664}
!1387 = !{!"branch_weights", i32 261804, i32 545569}
!1388 = !{!"branch_weights", i32 46974, i32 214831}
!1389 = !{!"branch_weights", i32 88244, i32 126588}
!1390 = !{!"branch_weights", i32 35477, i32 52768}
!1391 = !{!"branch_weights", i32 49472, i32 38773}
!1392 = !{!"branch_weights", i32 214831, i32 1}
!1393 = !{!"branch_weights", i32 0, i32 261804}
!1394 = distinct !{!1394, !664}
!1395 = !{!"branch_weights", i32 1, i32 807373}
!1396 = !{!"branch_weights", i32 807372, i32 1}
!1397 = !{!"branch_weights", i32 981301, i32 807372}
!1398 = distinct !{!1398, !664}
!1399 = !{!"tree-into-ssa.c:rewrite_update_leave_block"}
!1400 = !{!"branch_weights", i32 1428868, i32 589604}
!1401 = !{!"branch_weights", i32 127, i32 258364161}
!1402 = !{!"tree-into-ssa.c:VEC_tree_heap_alloc"}
!1403 = !{!"tree-into-ssa.c:VEC_tree_heap_free"}
!1404 = !{!"branch_weights", i32 1, i32 266}
!1405 = !{!"function_entry_count", i64 1762072}
!1406 = !{!"tree-into-ssa.c:VEC_tree_heap_safe_push"}
!1407 = !{!"function_entry_count", i64 255323}
!1408 = !{!"tree-into-ssa.c:register_new_def"}
!1409 = !{!"branch_weights", i32 109485, i32 145840}
!1410 = !{!"branch_weights", i32 97087, i32 48754}
!1411 = !{!"function_entry_count", i64 403790}
!1412 = !{!"tree-into-ssa.c:rewrite_stmt"}
!1413 = !{!"branch_weights", i32 403791, i32 1}
!1414 = !{!"branch_weights", i32 137695, i32 266097}
!1415 = !{!"branch_weights", i32 2941, i32 134755}
!1416 = !{!"branch_weights", i32 400851, i32 1}
!1417 = !{!"branch_weights", i32 134755, i32 266097}
!1418 = !{!"branch_weights", i32 266096, i32 1}
!1419 = !{!"branch_weights", i32 10413, i32 266096}
!1420 = distinct !{!1420, !664}
!1421 = !{!"branch_weights", i32 145679, i32 255173}
!1422 = !{!"branch_weights", i32 255172, i32 1}
!1423 = !{!"branch_weights", i32 1, i32 255172}
!1424 = distinct !{!1424, !664}
!1425 = !{!"tree-into-ssa.c:rewrite_add_phi_arguments"}
!1426 = !{!"branch_weights", i32 1, i32 187366}
!1427 = !{!682, !644, i64 8}
!1428 = !{!"branch_weights", i32 43615, i32 290016}
!1429 = !{!"branch_weights", i32 0, i32 43615}
!1430 = distinct !{!1430, !664}
!1431 = !{!"branch_weights", i32 187366, i32 146265}
!1432 = distinct !{!1432, !664}
!1433 = !{!"function_entry_count", i64 2351675}
!1434 = !{!"tree-into-ssa.c:VEC_tree_heap_reserve"}
!1435 = !{!"branch_weights", i32 1013, i32 2350664}
!1436 = !{!"function_entry_count", i64 2941278}
!1437 = !{!"tree-into-ssa.c:VEC_tree_base_quick_push"}
!1438 = !{!"tree-into-ssa.c:VEC_tree_base_space"}
!1439 = !{!"branch_weights", i32 1, i32 2351676}
!1440 = !{!734, !653, i64 4}
!1441 = !{!"function_entry_count", i64 1122173}
!1442 = !{!"tree-into-ssa.c:set_ssa_use_from_ptr"}
!1443 = !{!"function_entry_count", i64 1665394}
!1444 = !{!"tree-into-ssa.c:get_reaching_def"}
!1445 = !{!"branch_weights", i32 212, i32 1665184}
!1446 = !{!"branch_weights", i32 136, i32 77}
!1447 = !{!"function_entry_count", i64 324452}
!1448 = !{!"tree-into-ssa.c:make_ssa_name"}
!1449 = !{!"tree-into-ssa.c:delink_imm_use"}
!1450 = !{!1106, !644, i64 0}
!1451 = !{!"branch_weights", i32 559346, i32 562829}
!1452 = !{!"tree-into-ssa.c:link_imm_use"}
!1453 = !{!"branch_weights", i32 1, i32 1122174}
!1454 = !{!"branch_weights", i32 1122174, i32 1}
!1455 = !{!"tree-into-ssa.c:link_imm_use_to_list"}
!1456 = !{!"function_entry_count", i64 211}
!1457 = !{!"tree-into-ssa.c:get_default_def_for"}
!1458 = !{!"branch_weights", i32 81, i32 132}
!1459 = !{!"function_entry_count", i64 449863}
!1460 = !{!"tree-into-ssa.c:gimple_location"}
!1461 = !{!"tree-into-ssa.c:VEC_tree_base_pop"}
!1462 = !{!"function_entry_count", i64 589603}
!1463 = !{!"tree-into-ssa.c:register_new_update_single"}
!1464 = !{!"function_entry_count", i64 140623}
!1465 = !{!"tree-into-ssa.c:register_new_update_set"}
!1466 = !{!"branch_weights", i32 1, i32 140623}
!1467 = !{!"branch_weights", i32 140623, i32 8636}
!1468 = distinct !{!1468, !664}
!1469 = !{!"function_entry_count", i64 1788672}
!1470 = !{!"tree-into-ssa.c:rewrite_update_stmt"}
!1471 = !{!"branch_weights", i32 928714, i32 859960}
!1472 = !{!"branch_weights", i32 902637, i32 26078}
!1473 = !{!"branch_weights", i32 886037, i32 1}
!1474 = !{!"branch_weights", i32 26078, i32 859960}
!1475 = !{!"branch_weights", i32 859960, i32 1}
!1476 = distinct !{!1476, !664}
!1477 = !{!"branch_weights", i32 859959, i32 1}
!1478 = !{!"branch_weights", i32 392098, i32 859959}
!1479 = distinct !{!1479, !664}
!1480 = !{!"branch_weights", i32 514455, i32 371583}
!1481 = !{!"branch_weights", i32 371582, i32 1}
!1482 = !{!"branch_weights", i32 197818, i32 371582}
!1483 = distinct !{!1483, !664}
!1484 = !{!"function_entry_count", i64 807372}
!1485 = !{!"tree-into-ssa.c:rewrite_update_phi_arguments"}
!1486 = !{!"branch_weights", i32 1053310, i32 458931}
!1487 = !{!"branch_weights", i32 1, i32 458930}
!1488 = !{!"branch_weights", i32 1, i32 470265}
!1489 = !{!682, !653, i64 44}
!1490 = !{!"branch_weights", i32 112946, i32 357320}
!1491 = !{!"branch_weights", i32 -408947946, i32 4246039}
!1492 = !{!"branch_weights", i32 8928, i32 348004}
!1493 = !{!"branch_weights", i32 131445, i32 225487}
!1494 = !{!"branch_weights", i32 22278, i32 109168}
!1495 = !{!"branch_weights", i32 1112, i32 2147482536}
!1496 = !{!"branch_weights", i32 247017, i32 200583}
!1497 = !{!"branch_weights", i32 41350, i32 205668}
!1498 = !{!"branch_weights", i32 469876, i32 1}
!1499 = !{!"branch_weights", i32 458930, i32 11335}
!1500 = distinct !{!1500, !664}
!1501 = !{!"branch_weights", i32 807372, i32 704868}
!1502 = distinct !{!1502, !664}
!1503 = !{!"tree-into-ssa.c:maybe_replace_use_in_debug_stmt"}
!1504 = !{!"tree-into-ssa.c:gimple_debug_bind_reset_value"}
!1505 = !{!"function_entry_count", i64 1252056}
!1506 = !{!"tree-into-ssa.c:maybe_replace_use"}
!1507 = !{!"branch_weights", i32 160966, i32 1091092}
!1508 = !{!"branch_weights", i32 785967, i32 466091}
!1509 = !{!"branch_weights", i32 354383, i32 431585}
!1510 = !{!"branch_weights", i32 1195197866, i32 952285782}
!1511 = !{!"function_entry_count", i64 569399}
!1512 = !{!"tree-into-ssa.c:maybe_register_def"}
!1513 = !{!"branch_weights", i32 69201, i32 500200}
!1514 = !{!"branch_weights", i32 363796, i32 205605}
!1515 = !{!"branch_weights", i32 69201, i32 136405}
!1516 = !{!"branch_weights", i32 69201, i32 1}
!1517 = distinct !{!1517, !664}
!1518 = !{!"branch_weights", i32 275940, i32 87857}
!1519 = !{!"branch_weights", i32 294414, i32 69383}
!1520 = !{!"tree-into-ssa.c:gimple_set_op"}
!1521 = !{!"tree-into-ssa.c:gimple_num_ops"}
!1522 = !{!"tree-into-ssa.c:gimple_ops"}
!1523 = !{!"tree-into-ssa.c:gimple_statement_structure"}
!1524 = !{!"tree-into-ssa.c:gss_for_code"}
!1525 = !{!"tree-into-ssa.c:gsi_one_before_end_p"}
!1526 = !{!"tree-into-ssa.c:gsi_bb"}
!1527 = !{!"tree-into-ssa.c:single_pred_p"}
!1528 = !{!"tree-into-ssa.c:phi_nodes"}
!1529 = !{!1083, !644, i64 8}
!1530 = !{!"function_entry_count", i64 929194}
!1531 = !{!"tree-into-ssa.c:VEC_gimple_base_iterate"}
!1532 = !{!"branch_weights", i32 1, i32 929195}
!1533 = !{!"branch_weights", i32 470265, i32 458931}
!1534 = !{!"function_entry_count", i64 247016}
!1535 = !{!"tree-into-ssa.c:gimple_phi_num_args"}
!1536 = !{!"function_entry_count", i64 41349}
!1537 = !{!"tree-into-ssa.c:gimple_phi_arg_location"}
!1538 = !{!1539, !653, i64 40}
!1539 = !{!"phi_arg_d", !1106, i64 0, !644, i64 32, !653, i64 40}
!1540 = !{!"function_entry_count", i64 447598}
!1541 = !{!"tree-into-ssa.c:gimple_phi_arg_set_location"}
