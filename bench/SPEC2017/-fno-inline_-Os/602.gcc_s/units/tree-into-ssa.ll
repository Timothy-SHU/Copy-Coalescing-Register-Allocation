; ModuleID = 'tree-into-ssa.c'
source_filename = "tree-into-ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.VEC_ssa_name_info_p_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.edge_iterator = type { i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.def_blocks_d = type { ptr, ptr, ptr, ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.mark_def_sites_global_data = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.dom_dfsnum = type { i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.repl_map_d = type { ptr, ptr }
%struct.VEC_gimple_vec_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }

@interesting_blocks = dso_local local_unnamed_addr global ptr null, align 8
@info_for_ssa_name = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@current_info_for_ssa_name_age = internal unnamed_addr global i32 0, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"NIL\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"\0A\0ARenaming stack\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c" (up to %d levels)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Level %d (current level)\0A\00", align 1
@block_defs_stack = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"\0ALevel %d\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"    Previous CURRDEF (\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"<NIL>\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A\0ACurrent reaching definitions\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"CURRDEF (\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"SSA renaming information for %s\0A\0A\00", align 1
@def_blocks = internal unnamed_addr global ptr null, align 8
@repl_tbl = internal unnamed_addr global ptr null, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"\0AHash table statistics:\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"    def_blocks:   \00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"    repl_tbl:     \00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"\0A\0ADefinition and live-in blocks:\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"VAR: \00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c", DEF_BLOCKS: { \00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c", LIVEIN_BLOCKS: { \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c", PHI_BLOCKS: { \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@pass_build_ssa = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.28, ptr null, ptr @rewrite_into_ssa, ptr null, ptr null, i32 0, i32 0, i32 24, i32 32, i32 0, i32 0, i32 49157 } }, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"ssa\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"tree-into-ssa.c\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@blocks_to_update = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@update_ssa_stats = internal unnamed_addr global %struct.update_ssa_stats_d zeroinitializer, align 8
@new_ssa_names = internal unnamed_addr global ptr null, align 8
@old_ssa_names = internal unnamed_addr global ptr null, align 8
@blocks_with_phis_to_rewrite = internal unnamed_addr global ptr null, align 8
@phis_to_rewrite = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A\0ARenaming block #%d\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Renaming statement \00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"\0A\0ARegistering new PHI nodes in block #%d\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"Updating SSA information for statement \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.36 = private unnamed_addr constant [7 x i8] c" -> { \00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"\0ASSA replacement table\0A\00", align 1
@.str.38 = private unnamed_addr constant [63 x i8] c"N_i -> { O_1 ... O_j } means that N_i replaces O_1, ..., O_j\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"Number of virtual NEW -> OLD mappings: %7u\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"Number of real NEW -> OLD mappings:    %7u\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"Number of total NEW -> OLD mappings:   %7u\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"\0ANumber of virtual symbols: %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\0A\0ASymbols to be put in SSA form\0A\0A\00", align 1
@names_to_release = internal unnamed_addr global ptr null, align 8
@.str.44 = private unnamed_addr constant [52 x i8] c"\0A\0ASSA names to release after updating the SSA web\0A\0A\00", align 1
@update_ssa_initialized_fn = internal unnamed_addr global ptr null, align 8
@.str.45 = private unnamed_addr constant [46 x i8] c"Incremental SSA update started at block: %d\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"Number of blocks in CFG: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"Number of blocks to update: %d (%3.0f%%)\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Affected blocks: \00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [42 x i8] c"\0AEnabled virtual name mapping heuristic.\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"\09Number of virtual mappings:       %7u\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"\09Number of unique virtual symbols: %7u\0A\00", align 1
@.str.53 = private unnamed_addr constant [88 x i8] c"Updating FUD-chains from top of CFG will be faster than processing\0Athe name mappings.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_current_def(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !663 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %7, !prof !664

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  br label %10

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %9 = getelementptr inbounds %struct.var_ann_d, ptr %8, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !665
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_ssa_name_ann(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !669 !PGOFuncName !670 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !671
  %4 = load ptr, ptr @info_for_ssa_name, align 8
  %5 = tail call fastcc i32 @VEC_ssa_name_info_p_base_length(ptr noundef %4) #21
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %23, label %7, !prof !672

7:                                                ; preds = %1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !665
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !673
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !676
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #21
  tail call fastcc void @VEC_ssa_name_info_p_heap_reserve(i32 noundef %13) #21
  %14 = icmp ult i32 %5, %13
  br i1 %14, label %15, label %23, !prof !680

15:                                               ; preds = %7, %15
  %16 = phi i32 [ %17, %15 ], [ %5, %7 ]
  %17 = add i32 %16, 1
  %18 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #22
  %19 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !681
  %20 = getelementptr inbounds %struct.ssa_name_info, ptr %18, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !682
  %21 = load ptr, ptr @info_for_ssa_name, align 8
  tail call fastcc void @VEC_ssa_name_info_p_base_quick_push(ptr noundef %21, ptr noundef %18) #21
  %22 = icmp eq i32 %17, %13
  br i1 %22, label %23, label %15, !prof !684, !llvm.loop !685

23:                                               ; preds = %15, %7, %1
  %24 = load ptr, ptr @info_for_ssa_name, align 8
  %25 = tail call fastcc ptr @VEC_ssa_name_info_p_base_index(ptr noundef %24, i32 noundef %3) #21
  %26 = getelementptr inbounds %struct.ssa_name_info, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !682
  %28 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !681
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34, !prof !687

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ssa_name_info, ptr %25, i64 0, i32 1
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, -4
  store i8 %33, ptr %31, align 8
  store ptr null, ptr %25, align 8, !tbaa !688
  store i32 %28, ptr %26, align 4, !tbaa !682
  br label %34

34:                                               ; preds = %30, %23
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !689 !PGOFuncName !690 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 32, label %4
    i16 34, label %6
    i16 36, label %8
  ], !prof !691

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
  %12 = load ptr, ptr %11, align 8, !tbaa !665
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_name_info_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !669 !PGOFuncName !692 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !693

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !694
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !696 !PGOFuncName !697 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !698

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !699
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ssa_name_info_p_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %2 = load ptr, ptr @info_for_ssa_name, align 8, !tbaa !665
  %3 = tail call fastcc i32 @VEC_ssa_name_info_p_base_space(ptr noundef %2, i32 noundef %0) #21, !range !703
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !704

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @info_for_ssa_name, align 8, !tbaa !665
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ssa_name_info_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !705 !PGOFuncName !706 {
  %3 = load i32, ptr %0, align 8, !tbaa !694
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !694
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ssa_name_info_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !669 !PGOFuncName !707 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ssa_name_info_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !701 !PGOFuncName !708 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !709

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !710
  %7 = load i32, ptr %0, align 8, !tbaa !694
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
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_def(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !711 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8, !prof !712

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_ssa_name_ann(ptr noundef nonnull %0) #21
  br label %11

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #21
  %10 = getelementptr inbounds %struct.var_ann_d, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ %7, %6 ]
  store ptr %1, ptr %12, align 8, !tbaa !665
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_global_livein(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !713 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !665
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !714
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !715
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #21
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !717
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %68, label %20, !prof !718

18:                                               ; preds = %20
  %19 = getelementptr inbounds i8, ptr %6, i64 8
  br label %32

20:                                               ; preds = %2, %20
  %21 = phi ptr [ %29, %20 ], [ %15, %2 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !665
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !714
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !719
  %27 = load i32, ptr %3, align 4, !tbaa !681
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %27) #21
  %29 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %28, ptr %21, align 8, !tbaa !665
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !717
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %18, label %20, !prof !720, !llvm.loop !721

32:                                               ; preds = %18, %65
  %33 = phi ptr [ %29, %18 ], [ %66, %65 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %34 = getelementptr inbounds ptr, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !tbaa !665
  %36 = tail call fastcc ptr @ei_start_1(ptr noundef %35) #21
  store i32 0, ptr %6, align 8, !tbaa.struct !722
  store ptr %36, ptr %19, align 8, !tbaa.struct !723
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %36, ptr noundef nonnull %5) #21, !range !717
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %65, label %39, !prof !724

39:                                               ; preds = %32, %59
  %40 = phi ptr [ %60, %59 ], [ %34, %32 ]
  %41 = load ptr, ptr %5, align 8, !tbaa !665
  %42 = load ptr, ptr %41, align 8, !tbaa !725
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !728
  %45 = load ptr, ptr @cfun, align 8, !tbaa !665
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !714
  %48 = load ptr, ptr %47, align 8, !tbaa !730
  %49 = icmp eq ptr %42, %48
  br i1 %49, label %59, label %50, !prof !731

50:                                               ; preds = %39
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %44) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59, !prof !732

53:                                               ; preds = %50
  %54 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %44) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59, !prof !733

56:                                               ; preds = %53
  %57 = getelementptr inbounds ptr, ptr %40, i64 1
  store ptr %42, ptr %40, align 8, !tbaa !665
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %44) #22
  br label %59

59:                                               ; preds = %56, %53, %50, %39
  %60 = phi ptr [ %40, %50 ], [ %40, %53 ], [ %57, %56 ], [ %40, %39 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #21
  %61 = load i32, ptr %6, align 8
  %62 = load ptr, ptr %19, align 8
  %63 = call fastcc zeroext i8 @ei_cond(i32 %61, ptr %62, ptr noundef nonnull %5) #21, !range !717
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %39, !prof !734, !llvm.loop !735

65:                                               ; preds = %59, %32
  %66 = phi ptr [ %34, %32 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  %67 = icmp eq ptr %66, %15
  br i1 %67, label %68, label %32, !prof !736, !llvm.loop !737

68:                                               ; preds = %65, %2
  tail call void @free(ptr noundef %15) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !738 !PGOFuncName !739 {
  %4 = load ptr, ptr %1, align 8, !tbaa !740
  store ptr %4, ptr %0, align 8, !tbaa !742
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !744
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !745

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !742
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !746
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !748
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !749
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !750
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !681
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !751 !PGOFuncName !752 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !750
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !753

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !754

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !681
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !755, !llvm.loop !756

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !681
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !681
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !748
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !742
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !748
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !757

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !749
  store i64 %35, ptr %3, align 8, !tbaa !750
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !758

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !681
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !681
  %40 = load i32, ptr %23, align 8, !tbaa !748
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !748
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !759, !llvm.loop !760

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !761
  store ptr %44, ptr %0, align 8, !tbaa !742
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !762

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !746
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !681
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !750
  store i32 %16, ptr %1, align 4, !tbaa !681
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !763 !PGOFuncName !764 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !765 !PGOFuncName !766 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !750
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !750
  %6 = load i32, ptr %1, align 4, !tbaa !681
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !681
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !767 !PGOFuncName !768 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !769 !PGOFuncName !770 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !717
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !771

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !665
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !772 !PGOFuncName !773 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !774

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !775

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !776
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !776
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !769 !PGOFuncName !778 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !779

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !772 !PGOFuncName !780 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !774

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !781 !PGOFuncName !782 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !783

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !784
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !786 !PGOFuncName !787 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !788

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !665
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !789 !PGOFuncName !790 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_decl_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !791 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6, %10
  %11 = load i32, ptr %4, align 4, !tbaa !681
  %12 = tail call ptr @referenced_var_lookup(i32 noundef %11) #22
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %12, i32 noundef 0) #22
  %13 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !717
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !792

16:                                               ; preds = %10, %6
  %17 = tail call i32 @fputc(i32 125, ptr %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %20

18:                                               ; preds = %2
  %19 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %0)
  br label %20

20:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_decl_set(ptr noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_decl_set(ptr noundef %2, ptr noundef %0) #21
  %3 = load ptr, ptr @stderr, align 8, !tbaa !665
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_defs_stack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !791 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %0)
  %4 = icmp slt i32 %1, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1) #21
  br label %7

7:                                                ; preds = %5, %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1) #21
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
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %24) #21
  br label %53

26:                                               ; preds = %13
  %27 = load i64, ptr %18, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !681
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !671
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
  %45 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 22, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %44, i32 noundef 0) #22
  %46 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %0)
  %47 = icmp eq ptr %43, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %43, i32 noundef 0) #22
  br label %51

49:                                               ; preds = %41
  %50 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 5, i64 1, ptr %0)
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
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !793 !PGOFuncName !794 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_defs_stack(i32 noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_defs_stack(ptr noundef %2, i32 noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_currdefs(ptr noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %3 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 32, i64 1, ptr %0)
  %4 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #21
  %5 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !717
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1, %31
  %8 = phi ptr [ %32, %31 ], [ %4, %1 ]
  %9 = load ptr, ptr @cfun, align 8, !tbaa !665
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !673
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !795
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !671
  %18 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %13, i32 noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15, %7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 9, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %8, i32 noundef 0) #22
  %22 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %0)
  %23 = tail call ptr @get_current_def(ptr noundef %8) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @get_current_def(ptr noundef %8) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #22
  br label %29

27:                                               ; preds = %20
  %28 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 5, i64 1, ptr %0)
  br label %29

29:                                               ; preds = %27, %25
  %30 = tail call i32 @fputc(i32 10, ptr %0)
  br label %31

31:                                               ; preds = %15, %29
  %32 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #21
  %33 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !717
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %7, label %35, !llvm.loop !796

35:                                               ; preds = %31, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !797 !PGOFuncName !798 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #21
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #21
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !799 !PGOFuncName !800 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #21, !range !717
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #7 !prof !801 !PGOFuncName !802 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !797 !PGOFuncName !803 {
  store ptr %1, ptr %0, align 8, !tbaa !804
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !806
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !808
  %6 = tail call i64 @htab_size(ptr noundef %1) #22
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !809
  %9 = load ptr, ptr %5, align 8, !tbaa !808
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !665
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !808
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !810, !llvm.loop !811

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !812

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !665
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !813 !PGOFuncName !814 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !673
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !815

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !816
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !799 !PGOFuncName !817 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !808
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !809
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #7 !prof !801 !PGOFuncName !818 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !809
  %5 = load ptr, ptr %2, align 8, !tbaa !808
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !808
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !819

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !665
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_currdefs() local_unnamed_addr #0 !prof !791 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_currdefs(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_ssa(ptr noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !820
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !665
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #22
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %4) #21
  tail call void @dump_def_blocks(ptr noundef %0) #21
  tail call void @dump_defs_stack(ptr noundef %0, i32 noundef -1) #21
  tail call void @dump_currdefs(ptr noundef %0) #21
  tail call void @dump_tree_ssa_stats(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_def_blocks(ptr noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %0)
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @debug_def_blocks_r, ptr noundef %0) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_ssa_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @repl_tbl, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 24, i64 1, ptr %0)
  %9 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %0)
  %13 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %13) #21
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr @repl_tbl, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %0)
  %19 = load ptr, ptr @repl_tbl, align 8, !tbaa !665
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %19) #21
  %20 = load ptr, ptr @repl_tbl, align 8
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %1, %17, %14
  %23 = phi i1 [ false, %1 ], [ %21, %17 ], [ false, %14 ]
  %24 = load ptr, ptr @def_blocks, align 8, !tbaa !665
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
define dso_local void @debug_tree_ssa() local_unnamed_addr #0 !prof !791 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_tree_ssa(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !791 !PGOFuncName !828 {
  %3 = tail call i64 @htab_size(ptr noundef %1) #22
  %4 = tail call i64 @htab_elements(ptr noundef %1) #22
  %5 = tail call double @htab_collisions(ptr noundef %1) #22
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef %3, i64 noundef %4, double noundef %5) #21
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_tree_ssa_stats() local_unnamed_addr #0 !prof !791 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_tree_ssa_stats(ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_def_blocks_r(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !791 !PGOFuncName !829 {
  %3 = load ptr, ptr %0, align 8, !tbaa !665
  %4 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 5, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !830
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !681
  tail call void @print_generic_expr(ptr noundef %1, ptr noundef %5, i32 noundef %6) #22
  %7 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !832
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4) #22
  %9 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !833
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %10, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4) #22
  %11 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !834
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %12, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #22
  ret i32 1
}

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_def_blocks() local_unnamed_addr #0 !prof !791 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_def_blocks(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rewrite_into_ssa() #0 !prof !835 !PGOFuncName !836 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !837

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 59) #22
  br label %4

4:                                                ; preds = %3, %0
  tail call void @init_ssa_operands() #22
  tail call fastcc void @init_ssa_renamer() #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !665
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !714
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !715
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #22
  store ptr %10, ptr @interesting_blocks, align 8, !tbaa !665
  tail call void @sbitmap_zero(ptr noundef %10) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !665
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !714
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !715
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr @xmalloc(i64 noundef %17) #22
  %19 = load ptr, ptr @cfun, align 8, !tbaa !665
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !714
  %22 = load ptr, ptr %21, align 8, !tbaa !730
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !838
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !839
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %43, label %28, !prof !840

28:                                               ; preds = %4, %28
  %29 = phi ptr [ %36, %28 ], [ %24, %4 ]
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !728
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %18, i64 %33
  store ptr %30, ptr %34, align 8, !tbaa !665
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !838
  %37 = load ptr, ptr @cfun, align 8, !tbaa !665
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !714
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !839
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %43, label %28, !prof !841, !llvm.loop !842

43:                                               ; preds = %28, %4
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  tail call void @compute_dominance_frontiers(ptr noundef %18) #22
  tail call fastcc void @mark_def_site_blocks() #21
  tail call fastcc void @insert_phi_nodes(ptr noundef %18) #21
  %44 = load ptr, ptr @cfun, align 8, !tbaa !665
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !714
  %47 = load ptr, ptr %46, align 8, !tbaa !730
  tail call fastcc void @rewrite_blocks(ptr noundef %47, i32 noundef 0) #21
  %48 = load ptr, ptr @cfun, align 8, !tbaa !665
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !714
  %51 = load ptr, ptr %50, align 8, !tbaa !730
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !838
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !839
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %75, label %57, !prof !840

57:                                               ; preds = %43, %57
  %58 = phi ptr [ %68, %57 ], [ %53, %43 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !728
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %18, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !665
  tail call void @bitmap_obstack_free(ptr noundef %63) #22
  %64 = load i32, ptr %59, align 8, !tbaa !728
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %18, i64 %65
  store ptr null, ptr %66, align 8, !tbaa !665
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !838
  %69 = load ptr, ptr @cfun, align 8, !tbaa !665
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !714
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !839
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %57, !prof !841, !llvm.loop !843

75:                                               ; preds = %57, %43
  tail call void @free(ptr noundef %18) #21
  %76 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  %77 = load ptr, ptr %76, align 8, !tbaa !844
  tail call void @free(ptr noundef %77) #21
  %78 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  tail call void @free(ptr noundef %78) #21
  tail call fastcc void @fini_ssa_renamer() #21
  %79 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81, !prof !837

81:                                               ; preds = %75
  tail call void @timevar_pop_1(i32 noundef 59) #22
  br label %82

82:                                               ; preds = %81, %75
  ret i32 0
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_ssa_operands() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_ssa_renamer() unnamed_addr #0 !prof !835 !PGOFuncName !846 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !673
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 10
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, -2
  store i8 %7, ptr %5, align 8
  %8 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !837

10:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2310, ptr noundef nonnull @.str.1) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !665
  br label %12

12:                                               ; preds = %0, %10
  %13 = phi ptr [ %2, %0 ], [ %11, %10 ]
  %14 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %13) #21
  %15 = tail call i64 @htab_elements(ptr noundef %14) #22
  %16 = tail call ptr @htab_create(i64 noundef %15, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #22
  store ptr %16, ptr @def_blocks, align 8, !tbaa !665
  %17 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #21
  %18 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #21, !range !717
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25, !prof !847

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %22, %20 ], [ %17, %12 ]
  tail call void @set_current_def(ptr noundef %21, ptr noundef null) #21
  %22 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #21
  %23 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #21, !range !717
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %20, label %25, !prof !848, !llvm.loop !849

25:                                               ; preds = %20, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #23
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @compute_dominance_frontiers(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_site_blocks() unnamed_addr #0 !prof !835 !PGOFuncName !850 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.mark_def_sites_global_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store i8 1, ptr %1, align 8
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !851
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @mark_def_sites_block, ptr %4, align 8, !tbaa !853
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !854
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %6, ptr %2, align 8, !tbaa !855
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !857
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %8, align 8, !tbaa !858
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #22
  %9 = load ptr, ptr @cfun, align 8, !tbaa !665
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !714
  %12 = load ptr, ptr %11, align 8, !tbaa !730
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %12) #22
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #22
  %13 = load ptr, ptr %2, align 8, !tbaa !855
  call void @bitmap_obstack_free(ptr noundef %13) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_phi_nodes(ptr noundef %0) unnamed_addr #0 !prof !835 !PGOFuncName !859 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !837

7:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 57) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %10 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #21
  %11 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !717
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28, !prof !847

13:                                               ; preds = %8, %24
  %14 = phi ptr [ %25, %24 ], [ %10, %8 ]
  %15 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !860

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @get_phi_state(ptr noundef %14) #21, !range !861
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %24, label %20, !prof !862

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !671
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %22) #22
  br label %24

24:                                               ; preds = %17, %20, %13
  %25 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #21
  %26 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #21, !range !717
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %13, label %28, !prof !848, !llvm.loop !863

28:                                               ; preds = %24, %8
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %4) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !717
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31, !prof !840

31:                                               ; preds = %28, %31
  %32 = load i32, ptr %4, align 4, !tbaa !681
  %33 = tail call ptr @referenced_var_lookup(i32 noundef %32) #22
  %34 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %33) #21
  %35 = getelementptr inbounds %struct.def_blocks_d, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !832
  %37 = tail call ptr @compute_idf(ptr noundef %36, ptr noundef %0) #22
  tail call fastcc void @insert_phi_nodes_for(ptr noundef %33, ptr noundef %37, i8 noundef zeroext 0) #21
  tail call void @bitmap_obstack_free(ptr noundef %37) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !717
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %31, !prof !864, !llvm.loop !865

40:                                               ; preds = %31, %28
  tail call void @bitmap_obstack_free(ptr noundef %9) #22
  %41 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !837

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
define internal fastcc void @rewrite_blocks(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !866 !PGOFuncName !867 {
  %3 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !868

6:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 58) #22
  br label %7

7:                                                ; preds = %6, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i8 1, ptr %3, align 8
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, ptr @rewrite_enter_block, ptr @rewrite_update_enter_block, !prof !869
  %10 = select i1 %8, ptr @rewrite_leave_block, ptr @rewrite_update_leave_block, !prof !869
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 2
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 3
  store ptr %10, ptr %12, align 8
  %13 = tail call fastcc ptr @VEC_tree_heap_alloc() #21
  store ptr %13, ptr @block_defs_stack, align 8, !tbaa !665
  call void @init_walk_dominator_tree(ptr noundef nonnull %3) #22
  call void @walk_dominator_tree(ptr noundef nonnull %3, ptr noundef %0) #22
  call void @fini_walk_dominator_tree(ptr noundef nonnull %3) #22
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !868

16:                                               ; preds = %7
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !681
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  call void @dump_dfa_stats(ptr noundef nonnull %14) #22
  %21 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !665
  call void @dump_tree_ssa_stats(ptr noundef %24) #21
  br label %25

25:                                               ; preds = %20, %23, %16, %7
  call fastcc void @VEC_tree_heap_free() #21
  %26 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !868

28:                                               ; preds = %25
  call void @timevar_pop_1(i32 noundef 58) #22
  br label %29

29:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_ssa_renamer() unnamed_addr #0 !prof !870 !PGOFuncName !871 {
  %1 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !872

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #22
  store ptr null, ptr @def_blocks, align 8, !tbaa !665
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !665
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !673
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 8
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @def_blocks_hash(ptr nocapture noundef readonly %0) #0 !prof !873 !PGOFuncName !874 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !665
  %3 = load ptr, ptr %0, align 8, !tbaa !830
  %4 = tail call i32 %2(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @def_blocks_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !875 !PGOFuncName !876 {
  %3 = load ptr, ptr %0, align 8, !tbaa !830
  %4 = load ptr, ptr %1, align 8, !tbaa !830
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @def_blocks_free(ptr nocapture noundef %0) #0 !prof !877 !PGOFuncName !878 {
  %2 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !832
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  store ptr null, ptr %2, align 8, !tbaa !832
  %4 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !834
  tail call void @bitmap_obstack_free(ptr noundef %5) #22
  store ptr null, ptr %4, align 8, !tbaa !834
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !833
  tail call void @bitmap_obstack_free(ptr noundef %7) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_def_sites_block(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !879 !PGOFuncName !880 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !857
  %6 = load ptr, ptr %5, align 8, !tbaa !855
  tail call void @bitmap_clear(ptr noundef %6) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13, !prof !881

9:                                                ; preds = %2, %9
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  tail call fastcc void @mark_def_sites(ptr noundef %1, ptr noundef %10, ptr noundef %6) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %9, label %13, !prof !882, !llvm.loop !883

13:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !884 !PGOFuncName !885 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !804
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !808
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !809
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !886 !PGOFuncName !887 {
  %2 = load ptr, ptr %0, align 8, !tbaa !804
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_sites(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !888 !PGOFuncName !889 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  tail call fastcc void @update_stmt(ptr noundef %1) #21
  %5 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !890

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 748, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %3, %7
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 0) #21
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 0) #21
  %9 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #21, !range !717
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %63, !prof !890

11:                                               ; preds = %8
  %12 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 1) #21
  %13 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %34, !prof !891

15:                                               ; preds = %11, %30
  %16 = phi ptr [ %31, %30 ], [ %12, %11 ]
  %17 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %16) #21
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !681
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %24, label %23, !prof !892

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 760, ptr noundef nonnull @.str.1) #22
  br label %24

24:                                               ; preds = %15, %23
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !671
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %26) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !893

29:                                               ; preds = %24
  tail call fastcc void @set_livein_block(ptr noundef nonnull %17, ptr noundef %0) #21
  br label %30

30:                                               ; preds = %29, %24
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %31 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #21
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %15, label %34, !prof !894, !llvm.loop !895

34:                                               ; preds = %30, %11
  %35 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %1) #21
  %36 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %53, !prof !896

38:                                               ; preds = %34, %46
  %39 = phi ptr [ %50, %46 ], [ %35, %34 ]
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !681
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %46, label %45, !prof !897

45:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 770, ptr noundef nonnull @.str.1) #22
  br label %46

46:                                               ; preds = %38, %45
  tail call fastcc void @set_def_block(ptr noundef nonnull %39, ptr noundef %0, i8 noundef zeroext 0) #21
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %39, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !671
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %48) #22
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 1) #21
  %50 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #21
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %38, label %53, !prof !898, !llvm.loop !899

53:                                               ; preds = %46, %34
  %54 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %1) #21, !range !717
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59, !prof !900

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %1) #21, !range !717
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59, !prof !901

59:                                               ; preds = %56, %53
  %60 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !728
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %62) #21
  br label %63

63:                                               ; preds = %56, %59, %8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !902 !PGOFuncName !903 {
  %2 = load ptr, ptr %0, align 8, !tbaa !804
  %3 = load ptr, ptr %2, align 8, !tbaa !904
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !902 !PGOFuncName !906 {
  %2 = load ptr, ptr %0, align 8, !tbaa !804
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !907
  store ptr %4, ptr %0, align 8, !tbaa !804
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !884 !PGOFuncName !908 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !909
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !910

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !671
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !911

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !912
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !884 !PGOFuncName !914 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !911

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !915
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !888 !PGOFuncName !917 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !918

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #22
  tail call void @update_stmt_operands(ptr noundef %0) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_register_defs(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 !prof !919 !PGOFuncName !920 {
  tail call fastcc void @gimple_set_plf(ptr noundef %0, i8 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_rewrite_uses(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 !prof !921 !PGOFuncName !922 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !923 !PGOFuncName !924 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !925
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !926 !PGOFuncName !927 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !928

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 771, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !929
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !931 !PGOFuncName !932 {
  %2 = load i8, ptr %0, align 8, !tbaa !933
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !934 !PGOFuncName !935 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !936
  %4 = load ptr, ptr %3, align 8, !tbaa !665
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_livein_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !938 !PGOFuncName !939 {
  %3 = tail call fastcc i32 @get_phi_state(ptr noundef %0) #21, !range !861
  %4 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.def_blocks_d, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !833
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !728
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #22
  %10 = icmp eq i32 %3, 1
  br i1 %10, label %11, label %25, !prof !940

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !832
  %14 = tail call i32 @bitmap_first_set_bit(ptr noundef %13) #22
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %25, label %16, !prof !941

16:                                               ; preds = %11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !665
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !714
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !719
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef %14) #21
  %23 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %1, ptr noundef %22) #22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !942

25:                                               ; preds = %2, %11, %16
  tail call fastcc void @set_phi_state(ptr noundef %0, i32 noundef 2) #21
  br label %26

26:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !943 !PGOFuncName !944 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !945
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !946

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !947
  store ptr %7, ptr %2, align 8, !tbaa !945
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !949
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !950
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !951

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !952
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !949
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #21
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !933
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !888 !PGOFuncName !953 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #21
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !929
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_def_block(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !954 !PGOFuncName !955 {
  %4 = tail call fastcc i32 @get_phi_state(ptr noundef %0) #21, !range !861
  %5 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !832
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !728
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %17, label %12, !prof !956

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.def_blocks_d, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !834
  %15 = load i32, ptr %8, align 8, !tbaa !728
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %15) #22
  br label %17

17:                                               ; preds = %12, %3
  %18 = icmp eq i32 %4, 0
  %19 = select i1 %18, i32 1, i32 2, !prof !957
  tail call fastcc void @set_phi_state(ptr noundef %0, i32 noundef %19) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #6 !prof !958 !PGOFuncName !959 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !945
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !960

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !947
  store ptr %8, ptr %2, align 8, !tbaa !945
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !961
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !962

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !963
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #21
  %17 = load ptr, ptr %11, align 8, !tbaa !965
  store ptr %17, ptr %10, align 8, !tbaa !961
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !933
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rewrite_uses_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !966 !PGOFuncName !967 {
  %2 = tail call fastcc zeroext i8 @gimple_visited_p(ptr noundef %0) #21, !range !717
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @register_defs_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !968 !PGOFuncName !969 {
  %2 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #21
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !970 !PGOFuncName !971 {
  %3 = load ptr, ptr %0, align 8, !tbaa !844
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !972

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
  %15 = load i64, ptr %14, align 8, !tbaa !749
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !671
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !671
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !749
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !749
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !973 !PGOFuncName !974 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !925
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !975 !PGOFuncName !976 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 !prof !919 !PGOFuncName !977 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048, !prof !978
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 !prof !921 !PGOFuncName !979 {
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
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !980 !PGOFuncName !981 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !982

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 747, ptr noundef nonnull @.str.1) #22
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !983

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !961
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #21
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !961
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !984

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !985

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !965
  store ptr %25, ptr %18, align 8, !tbaa !961
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !986

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !945
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #21
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !945
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !987

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !988

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !947
  store ptr %41, ptr %32, align 8, !tbaa !945
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !933
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !989 !PGOFuncName !990 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !991

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !671
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !992 !PGOFuncName !993 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !994

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !671
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !926 !PGOFuncName !995 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !996

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !671
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !997 !PGOFuncName !998 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !999

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !671
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1000 !PGOFuncName !1001 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !925
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_phi_state(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1002 !PGOFuncName !1003 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %9, !prof !1004

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
define internal fastcc ptr @get_def_blocks_for(ptr noundef %0) unnamed_addr #0 !prof !1005 !PGOFuncName !1006 {
  %2 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !830
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 1) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !1007

7:                                                ; preds = %1
  %8 = call ptr @xmalloc(i64 noundef 32) #22
  store ptr %0, ptr %8, align 8, !tbaa !830
  %9 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %10 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !832
  %11 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !834
  %13 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %14 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !833
  store ptr %8, ptr %4, align 8, !tbaa !665
  br label %15

15:                                               ; preds = %1, %7
  %16 = phi ptr [ %8, %7 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_state(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1008 !PGOFuncName !1009 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %14, !prof !1010

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
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1011 !PGOFuncName !1012 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1013 !PGOFuncName !1014 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !671
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1015

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3103, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1016 !PGOFuncName !1017 {
  %2 = load ptr, ptr %0, align 8, !tbaa !665
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !966 !PGOFuncName !1018 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !968 !PGOFuncName !1019 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_def_blocks_for(ptr noundef %0) unnamed_addr #0 !prof !1020 !PGOFuncName !1021 {
  %2 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !830
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !665
  %4 = call ptr @htab_find(ptr noundef %3, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @compute_idf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_phi_nodes_for(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1022 !PGOFuncName !1023 {
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
  br i1 %10, label %11, label %12, !prof !1024

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1082, ptr noundef nonnull @.str.1) #22
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !834
  %15 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !832
  %18 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !833
  tail call fastcc void @prune_unused_phi_nodes(ptr noundef %1, ptr noundef %17, ptr noundef %19) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %4) #21
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #21, !range !717
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %74, label %22, !prof !1025

22:                                               ; preds = %12
  %23 = icmp eq i8 %2, 0
  br label %24

24:                                               ; preds = %22, %70
  %25 = load ptr, ptr @cfun, align 8, !tbaa !665
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !714
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !719
  %30 = load i32, ptr %4, align 4, !tbaa !681
  %31 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %29, i32 noundef %30) #21
  br i1 %23, label %32, label %36, !prof !1026

32:                                               ; preds = %24
  %33 = load i64, ptr %0, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %41, label %56, !prof !1027

36:                                               ; preds = %24
  call fastcc void @mark_block_for_update(ptr noundef %31) #21
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %40, label %56, !prof !1027

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  br label %42

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1109, ptr noundef nonnull @.str.1) #22
  br label %42

42:                                               ; preds = %40, %41
  %43 = getelementptr inbounds i8, ptr %7, i64 8
  %44 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %31) #22
  %45 = call ptr @duplicate_ssa_name(ptr noundef nonnull %0, ptr noundef %44) #22
  call fastcc void @gimple_phi_set_result(ptr noundef %44, ptr noundef %45) #21
  call fastcc void @add_new_name_mapping(ptr noundef %45, ptr noundef nonnull %0) #21
  %46 = call fastcc ptr @ei_start_1(ptr noundef %31) #21
  store i32 0, ptr %7, align 8, !tbaa.struct !722
  store ptr %46, ptr %43, align 8, !tbaa.struct !723
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #21, !range !717
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49, !prof !1028

49:                                               ; preds = %42, %49
  %50 = load ptr, ptr %5, align 8, !tbaa !665
  call void @add_phi_arg(ptr noundef %44, ptr noundef nonnull %0, ptr noundef %50, i32 noundef 0) #22
  call fastcc void @ei_next(ptr noundef nonnull %7) #21
  %51 = load i32, ptr %7, align 8
  %52 = load ptr, ptr %43, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %5) #21, !range !717
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %49, !prof !1029, !llvm.loop !1030

55:                                               ; preds = %49, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  br label %70

56:                                               ; preds = %36, %32
  %57 = phi i64 [ %38, %36 ], [ %34, %32 ]
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !681
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %62, label %61, !prof !1031

61:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1129, ptr noundef nonnull @.str.1) #22
  br label %62

62:                                               ; preds = %56, %61
  %63 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %31) #22
  %64 = call ptr @target_for_debug_bind(ptr noundef nonnull %0) #22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66, !prof !1031

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
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #21, !range !717
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %24, !prof !1032, !llvm.loop !1033

74:                                               ; preds = %70, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_unused_phi_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1022 !PGOFuncName !1034 {
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
  %9 = load ptr, ptr %2, align 8, !tbaa !740
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !1035

11:                                               ; preds = %3
  tail call void @bitmap_clear(ptr noundef %0) #22
  br label %188

12:                                               ; preds = %3
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %14 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %2) #22
  %15 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %0, ptr noundef %13) #22
  %16 = load ptr, ptr %0, align 8, !tbaa !740
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !1036

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
  store i32 1, ptr %27, align 4, !tbaa !1037
  %28 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !1039
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %6) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31, !prof !1040

31:                                               ; preds = %19, %31
  %32 = phi i32 [ %49, %31 ], [ 1, %19 ]
  %33 = load ptr, ptr @cfun, align 8, !tbaa !665
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !714
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !719
  %38 = load i32, ptr %6, align 4, !tbaa !681
  %39 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %38) #21
  %40 = zext i32 %32 to i64
  %41 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %40
  store i32 %38, ptr %41, align 4, !tbaa !1037
  %42 = tail call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %39) #22
  %43 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %40, i32 1
  store i32 %42, ptr %43, align 4, !tbaa !1039
  %44 = add i32 %32, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %45
  store i32 %38, ptr %46, align 4, !tbaa !1037
  %47 = tail call i32 @bb_dom_dfs_out(i32 noundef 1, ptr noundef %39) #22
  %48 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %45, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !1039
  %49 = add i32 %32, 2
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %50 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %31, !prof !1041, !llvm.loop !1042

52:                                               ; preds = %31, %19
  %53 = phi i32 [ 1, %19 ], [ %49, %31 ]
  tail call void @bitmap_obstack_free(ptr noundef %13) #22
  %54 = icmp eq i32 %53, %24
  br i1 %54, label %56, label %55, !prof !1043

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 894, ptr noundef nonnull @.str.1) #22
  br label %56

56:                                               ; preds = %52, %55
  %57 = zext i32 %53 to i64
  tail call void @spec_qsort(ptr noundef nonnull %27, i64 noundef %57, i64 noundef 8, ptr noundef nonnull @cmp_dfsnum) #22
  %58 = load i32, ptr %27, align 4, !tbaa !1037
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %61, label %60, !prof !1043

60:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 900, ptr noundef nonnull @.str.1) #22
  br label %61

61:                                               ; preds = %56, %60
  %62 = add i32 %22, 1
  %63 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %62) #21
  store ptr %63, ptr %4, align 8, !tbaa !665
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %63, i32 noundef 1) #21
  %64 = icmp ugt i32 %53, 1
  br i1 %64, label %65, label %109, !prof !1044

65:                                               ; preds = %61, %105
  %66 = phi i64 [ %107, %105 ], [ 1, %61 ]
  %67 = phi i32 [ %93, %105 ], [ 1, %61 ]
  %68 = phi i32 [ %106, %105 ], [ 1, %61 ]
  %69 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66
  %70 = load i32, ptr %69, align 4, !tbaa !1037
  %71 = icmp eq i32 %70, %67
  br i1 %71, label %72, label %83, !prof !1045

72:                                               ; preds = %65
  %73 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %63) #21
  %74 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %63) #21
  %75 = add i32 %74, -1
  %76 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %63, i32 noundef %75) #21
  %77 = zext i32 %68 to i64
  %78 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %77
  store i32 %76, ptr %78, align 4, !tbaa !1037
  %79 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !1039
  %81 = add i32 %80, 1
  %82 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %77, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !1039
  br label %90

83:                                               ; preds = %65
  %84 = zext i32 %68 to i64
  %85 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %84
  store i32 %70, ptr %85, align 4, !tbaa !1037
  %86 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %66, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !1039
  %88 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %84, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !1039
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %63, i32 noundef %70) #21
  %89 = load i32, ptr %88, align 4, !tbaa !1039
  br label %90

90:                                               ; preds = %83, %72
  %91 = phi i32 [ %89, %83 ], [ %81, %72 ]
  %92 = phi i64 [ %84, %83 ], [ %77, %72 ]
  %93 = phi i32 [ %70, %83 ], [ %76, %72 ]
  %94 = add i32 %68, -1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %95, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !1039
  %98 = icmp eq i32 %91, %97
  br i1 %98, label %99, label %103, !prof !1046

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %95
  %101 = getelementptr inbounds %struct.dom_dfsnum, ptr %27, i64 %92
  %102 = load i32, ptr %101, align 4, !tbaa !1037
  store i32 %102, ptr %100, align 4, !tbaa !1037
  br label %105

103:                                              ; preds = %90
  %104 = add i32 %68, 1
  br label %105

105:                                              ; preds = %99, %103
  %106 = phi i32 [ %68, %99 ], [ %104, %103 ]
  %107 = add nuw nsw i64 %66, 1
  %108 = icmp eq i64 %107, %57
  br i1 %108, label %109, label %65, !prof !1047, !llvm.loop !1048

109:                                              ; preds = %105, %61
  %110 = phi i32 [ 1, %61 ], [ %53, %105 ]
  %111 = phi i32 [ 1, %61 ], [ %106, %105 ]
  store i32 %110, ptr %6, align 4, !tbaa !681
  %112 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %63) #21
  %113 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %63) #21
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !1043

115:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 942, ptr noundef nonnull @.str.1) #22
  br label %116

116:                                              ; preds = %109, %115
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %128, !prof !1040

120:                                              ; preds = %128
  %121 = load ptr, ptr %4, align 8
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi ptr [ %121, %120 ], [ %63, %116 ]
  %124 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %123) #21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %187, label %126, !prof !1040

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %8, i64 8
  br label %132

128:                                              ; preds = %116, %128
  %129 = load i32, ptr %6, align 4, !tbaa !681
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %129) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %130 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %120, label %128, !prof !1049, !llvm.loop !1050

132:                                              ; preds = %126, %136
  %133 = phi ptr [ %123, %126 ], [ %137, %136 ]
  %134 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %133) #21
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140, !prof !1051

136:                                              ; preds = %182, %159, %132, %143, %155
  %137 = load ptr, ptr %4, align 8
  %138 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %137) #21
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %187, label %132, !prof !1052, !llvm.loop !1053

140:                                              ; preds = %132
  %141 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %134) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155, !prof !1054

143:                                              ; preds = %140
  %144 = load ptr, ptr @cfun, align 8, !tbaa !665
  %145 = getelementptr inbounds %struct.function, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !714
  %147 = getelementptr inbounds %struct.control_flow_graph, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !719
  %149 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %148, i32 noundef %134) #21
  %150 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %149) #22
  %151 = tail call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %150) #22
  %152 = tail call fastcc i32 @find_dfsnum_interval(ptr noundef nonnull %27, i32 noundef %111, i32 noundef %151) #21
  %153 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %152) #22
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %136, label %155, !prof !1055

155:                                              ; preds = %140, %143
  %156 = phi i32 [ %152, %143 ], [ %134, %140 ]
  %157 = tail call i32 @bitmap_bit_p(ptr noundef %117, i32 noundef %156) #22
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %136, !prof !1056

159:                                              ; preds = %155
  %160 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %117, i32 noundef %156) #22
  %161 = load ptr, ptr @cfun, align 8, !tbaa !665
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !714
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !719
  %166 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %165, i32 noundef %156) #21
  %167 = tail call fastcc ptr @ei_start_1(ptr noundef %166) #21
  store i32 0, ptr %8, align 8, !tbaa.struct !722
  store ptr %167, ptr %127, align 8, !tbaa.struct !723
  %168 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %167, ptr noundef nonnull %7) #21, !range !717
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %136, label %170, !prof !1057, !llvm.loop !1053

170:                                              ; preds = %159, %182
  %171 = load ptr, ptr %7, align 8, !tbaa !665
  %172 = load ptr, ptr %171, align 8, !tbaa !725
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !728
  %175 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %174) #22
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182, !prof !1058

177:                                              ; preds = %170
  %178 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %174) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182, !prof !1059

180:                                              ; preds = %177
  %181 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %174) #22
  call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull %4, i32 noundef %174) #21
  br label %182

182:                                              ; preds = %177, %170, %180
  call fastcc void @ei_next(ptr noundef nonnull %8) #21
  %183 = load i32, ptr %8, align 8
  %184 = load ptr, ptr %127, align 8
  %185 = call fastcc zeroext i8 @ei_cond(i32 %183, ptr %184, ptr noundef nonnull %7) #21, !range !717
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %136, label %170, !prof !1060, !llvm.loop !1061

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
define internal fastcc void @mark_block_for_update(ptr noundef %0) unnamed_addr #0 !prof !1062 !PGOFuncName !1063 {
  %2 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !1064

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 458, ptr noundef nonnull @.str.1) #22
  %5 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !728
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !1065

12:                                               ; preds = %6
  %13 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %14 = load i32, ptr %8, align 8, !tbaa !728
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #22
  tail call fastcc void @initialize_flags_in_bb(ptr noundef nonnull %0) #21
  br label %16

16:                                               ; preds = %6, %12
  ret void
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #13 !prof !1066 !PGOFuncName !1067 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !671
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1068 !PGOFuncName !1069 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !1070

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 60) #22
  br label %6

6:                                                ; preds = %2, %5
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %14, label %8, !prof !1071

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !671
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !671
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %15, label %14, !prof !1070

14:                                               ; preds = %8, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 672, ptr noundef nonnull @.str.1) #22
  br label %15

15:                                               ; preds = %8, %14
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29, !prof !1072

18:                                               ; preds = %15
  %19 = load i32, ptr @update_ssa_stats, align 8, !tbaa !1073
  %20 = add i32 %19, 1
  store i32 %20, ptr @update_ssa_stats, align 8, !tbaa !1073
  %21 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !1075
  %22 = add i32 %21, 1
  store i32 %22, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !1075
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !671
  %25 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !1076
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !671
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %27) #22
  br label %29

29:                                               ; preds = %18, %15
  %30 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !1077
  %33 = load ptr, ptr @cfun, align 8, !tbaa !665
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !673
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !676
  %38 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %37) #21
  %39 = add i32 %38, -1
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %49, label %41, !prof !1078

41:                                               ; preds = %29
  %42 = icmp ult i32 %38, 9
  %43 = udiv i32 %38, 3
  %44 = select i1 %42, i32 3, i32 %43, !prof !1079
  %45 = add i32 %44, %38
  %46 = tail call ptr @sbitmap_resize(ptr noundef nonnull %30, i32 noundef %45, i32 noundef 0) #22
  store ptr %46, ptr @new_ssa_names, align 8, !tbaa !665
  %47 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  %48 = tail call ptr @sbitmap_resize(ptr noundef %47, i32 noundef %45, i32 noundef 0) #22
  store ptr %48, ptr @old_ssa_names, align 8, !tbaa !665
  br label %49

49:                                               ; preds = %41, %29
  tail call fastcc void @add_to_repl_tbl(ptr noundef %0, ptr noundef %1) #21
  %50 = tail call fastcc zeroext i8 @is_new_name(ptr noundef %1) #21, !range !717
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52, !prof !1080

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @names_replaced_by(ptr noundef %0) #21
  %54 = tail call fastcc ptr @names_replaced_by(ptr noundef %1) #21
  %55 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %53, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !671
  tail call fastcc void @SET_BIT(ptr noundef %57, i32 noundef %59) #21
  %60 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !671
  tail call fastcc void @SET_BIT(ptr noundef %60, i32 noundef %62) #21
  %63 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !1081
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !1081
  %65 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67, !prof !1070

67:                                               ; preds = %56
  tail call void @timevar_pop_1(i32 noundef 60) #22
  br label %68

68:                                               ; preds = %56, %67
  ret void
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 !prof !791 !PGOFuncName !1082 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !791 !PGOFuncName !1083 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #21
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !717
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #21, !range !925
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #21
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #21, !range !717
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !1084

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_phi_for_rewrite(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1085 !PGOFuncName !1086 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !728
  %6 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %1) #21, !range !717
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39, !prof !1087

8:                                                ; preds = %2
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %9 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !665
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11, !prof !1088

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %9, i32 noundef %5) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !665
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !714
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !715
  %18 = add nsw i32 %17, 1
  tail call fastcc void @VEC_gimple_vec_heap_reserve(i32 noundef %18) #21
  %19 = load ptr, ptr @phis_to_rewrite, align 8
  %20 = tail call fastcc i32 @VEC_gimple_vec_base_length(ptr noundef %19) #21
  %21 = icmp ugt i32 %20, %5
  br i1 %21, label %30, label %22, !prof !1089

22:                                               ; preds = %11
  %23 = load ptr, ptr @phis_to_rewrite, align 8
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %20, %22 ]
  tail call fastcc void @VEC_gimple_vec_base_quick_push(ptr noundef %23) #21
  %26 = add i32 %25, 1
  %27 = icmp ugt i32 %26, %5
  br i1 %27, label %28, label %24, !prof !1090, !llvm.loop !1091

28:                                               ; preds = %24
  %29 = load ptr, ptr @phis_to_rewrite, align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = phi ptr [ %29, %28 ], [ %19, %11 ]
  %32 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %31, i32 noundef %5) #21
  store ptr %32, ptr %3, align 8, !tbaa !665
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36, !prof !1092

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @VEC_gimple_heap_alloc() #21
  store ptr %35, ptr %3, align 8, !tbaa !665
  br label %36

36:                                               ; preds = %34, %30
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %3, ptr noundef %1) #21
  %37 = load ptr, ptr @phis_to_rewrite, align 8
  %38 = load ptr, ptr %3, align 8, !tbaa !665
  tail call fastcc void @VEC_gimple_vec_base_replace(ptr noundef %37, i32 noundef %5, ptr noundef %38) #21
  br label %39

39:                                               ; preds = %8, %2, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bb_dom_dfs_in(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bb_dom_dfs_out(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @cmp_dfsnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !1093 !PGOFuncName !1094 {
  %3 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !1039
  %5 = getelementptr inbounds %struct.dom_dfsnum, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1039
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1095 !PGOFuncName !1096 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !1097 !PGOFuncName !1098 {
  %3 = load i32, ptr %0, align 4, !tbaa !1099
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1099
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !681
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_int_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1097 !PGOFuncName !1101 {
  %2 = load i32, ptr %0, align 4, !tbaa !1099
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !1099
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !681
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1102 !PGOFuncName !1103 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !681
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1104 !PGOFuncName !1105 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1106

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !1099
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1107 !PGOFuncName !1108 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !665
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @find_dfsnum_interval(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 !prof !1109 !PGOFuncName !1110 {
  %4 = icmp ugt i32 %1, 1
  br i1 %4, label %5, label %20, !prof !1111

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %15, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %14, %5 ], [ %1, %3 ]
  %8 = add i32 %6, %7
  %9 = lshr i32 %8, 1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !1039
  %13 = icmp ugt i32 %12, %2
  %14 = select i1 %13, i32 %9, i32 %7, !prof !1112
  %15 = select i1 %13, i32 %6, i32 %9, !prof !1112
  %16 = add nuw i32 %15, 1
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %5, label %18, !prof !1113, !llvm.loop !1114

18:                                               ; preds = %5
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !1037
  ret i32 %23
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #15 !prof !1095 !PGOFuncName !1115 {
  %2 = load ptr, ptr %0, align 8, !tbaa !665
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1116

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !665
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1107 !PGOFuncName !1117 {
  %2 = load ptr, ptr %0, align 8, !tbaa !665
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1118

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #22
  store ptr %6, ptr %0, align 8, !tbaa !665
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1107 !PGOFuncName !1119 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1120

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1121
  %6 = load i32, ptr %0, align 4, !tbaa !1099
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_flags_in_bb(ptr noundef %0) unnamed_addr #0 !prof !1122 !PGOFuncName !1123 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #22
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !717
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !1124

6:                                                ; preds = %1, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  call fastcc void @set_rewrite_uses(ptr noundef %7, i8 noundef zeroext 0) #21
  call fastcc void @set_register_defs(ptr noundef %7, i8 noundef zeroext 0) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !prof !1125, !llvm.loop !1126

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !717
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21, !prof !1128

13:                                               ; preds = %10, %18
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %15 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %14) #21, !range !717
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !1129

17:                                               ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 447, ptr noundef nonnull @.str.1) #22
  br label %18

18:                                               ; preds = %13, %17
  call fastcc void @set_rewrite_uses(ptr noundef %14, i8 noundef zeroext 0) #21
  call fastcc void @set_register_defs(ptr noundef %14, i8 noundef zeroext 0) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !717
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %13, label %21, !prof !1130, !llvm.loop !1131

21:                                               ; preds = %18, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1132 !PGOFuncName !1133 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !1134

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
declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_repl_tbl(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1068 !PGOFuncName !1135 {
  %3 = alloca %struct.repl_map_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !1136
  %4 = load ptr, ptr @repl_tbl, align 8, !tbaa !665
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !665
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !1070

8:                                                ; preds = %2
  %9 = call ptr @xmalloc(i64 noundef 16) #22
  store ptr %0, ptr %9, align 8, !tbaa !1136
  %10 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %11 = getelementptr inbounds %struct.repl_map_d, ptr %9, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !1138
  store ptr %9, ptr %5, align 8, !tbaa !665
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.repl_map_d, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1138
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !671
  %18 = call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %17) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_new_name(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1139 !PGOFuncName !1140 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !671
  %4 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !1141

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !1077
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %10, label %21, !prof !1142

10:                                               ; preds = %6
  %11 = lshr i32 %3, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !749
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

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @names_replaced_by(ptr noundef %0) unnamed_addr #0 !prof !1143 !PGOFuncName !1144 {
  %2 = alloca %struct.repl_map_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !1136
  %3 = load ptr, ptr @repl_tbl, align 8, !tbaa !665
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !1145

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !665
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !1145

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.repl_map_d, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1138
  br label %12

12:                                               ; preds = %1, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_vec_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !1146 !PGOFuncName !1147 {
  %2 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !665
  %3 = tail call fastcc i32 @VEC_gimple_vec_base_space(ptr noundef %2, i32 noundef %0) #21, !range !703
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1148

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @phis_to_rewrite, align 8, !tbaa !665
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_vec_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1146 !PGOFuncName !1149 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1150

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1151
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_vec_base_quick_push(ptr noundef %0) unnamed_addr #5 !prof !1153 !PGOFuncName !1154 {
  %2 = load i32, ptr %0, align 8, !tbaa !1151
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !1151
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr null, ptr %5, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_vec_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1155 !PGOFuncName !1156 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !665
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !1157 !PGOFuncName !1158 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1146 !PGOFuncName !1159 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !665
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_vec_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !1160 !PGOFuncName !1161 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_vec_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1146 !PGOFuncName !1162 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1150

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1163
  %7 = load i32, ptr %0, align 8, !tbaa !1151
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1146 !PGOFuncName !1164 {
  %2 = load ptr, ptr %0, align 8, !tbaa !665
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1165

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #22
  store ptr %6, ptr %0, align 8, !tbaa !665
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1146 !PGOFuncName !1166 {
  %3 = load i32, ptr %0, align 8, !tbaa !1167
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1167
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1146 !PGOFuncName !1169 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1150

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1170
  %6 = load i32, ptr %0, align 8, !tbaa !1167
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_enter_block(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !879 !PGOFuncName !1171 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !1172

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !681
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !728
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.32, i32 noundef %13) #21
  br label %15

15:                                               ; preds = %11, %7, %2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef null) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #22
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29, !prof !1173

18:                                               ; preds = %15, %24
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %19) #21
  %21 = call zeroext i8 @is_gimple_reg(ptr noundef %20) #22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24, !prof !1174

23:                                               ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1404, ptr noundef nonnull @.str.1) #22
  br label %24

24:                                               ; preds = %18, %23
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !671
  call fastcc void @register_new_def(ptr noundef %20, ptr noundef %26) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %18, label %29, !prof !1175, !llvm.loop !1176

29:                                               ; preds = %24, %15
  %30 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !728
  %33 = lshr i32 %32, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !749
  %37 = and i32 %32, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %39, %36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42, !prof !1177

42:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48, !prof !1178

45:                                               ; preds = %42, %45
  call fastcc void @rewrite_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %45, label %48, !prof !1179, !llvm.loop !1180

48:                                               ; preds = %45, %42, %29
  call fastcc void @rewrite_add_phi_arguments(ptr noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !879 !PGOFuncName !1181 {
  %3 = load ptr, ptr @block_defs_stack, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6, !prof !1182

6:                                                ; preds = %2, %22
  %7 = phi ptr [ %25, %22 ], [ %3, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10, !prof !1183

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %22, !prof !1184

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !671
  %17 = tail call zeroext i8 @is_gimple_reg(ptr noundef %16) #22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22, !prof !1185

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
  br i1 %27, label %28, label %6, !prof !1186

28:                                               ; preds = %22, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rewrite_update_enter_block(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !1187 !PGOFuncName !1188 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !1189

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !681
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !728
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.34, i32 noundef %15) #21
  br label %17

17:                                               ; preds = %13, %9, %2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef null) #21
  %18 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !728
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %95, label %23, !prof !1190

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #21
  store i32 0, ptr %4, align 8, !tbaa.struct !722
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8, !tbaa.struct !723
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %3) #21, !range !717
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28, !prof !1191

28:                                               ; preds = %23, %34
  %29 = load ptr, ptr %3, align 8, !tbaa !665
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !1192
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39, !prof !1193

34:                                               ; preds = %28
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %25, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %3) #21, !range !717
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %28, !prof !1194, !llvm.loop !1195

39:                                               ; preds = %34, %28, %23
  %40 = phi i1 [ true, %23 ], [ %33, %28 ], [ %33, %34 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #22
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !717
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %70, !prof !1196

43:                                               ; preds = %39, %67
  %44 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  %45 = call fastcc zeroext i8 @register_defs_p(ptr noundef %44) #21, !range !717
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %67, label %47, !prof !1197

47:                                               ; preds = %43
  %48 = call fastcc ptr @gimple_phi_result(ptr noundef %44) #21
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !671
  %51 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %50) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53, !prof !1198

53:                                               ; preds = %47
  call fastcc void @register_new_update_single(ptr noundef nonnull %48, ptr noundef %50) #21
  br label %63

54:                                               ; preds = %47
  %55 = call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %48) #21, !range !717
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57, !prof !1199

57:                                               ; preds = %54
  %58 = call fastcc ptr @names_replaced_by(ptr noundef nonnull %48) #21
  call fastcc void @register_new_update_set(ptr noundef nonnull %48, ptr noundef %58) #21
  br label %59

59:                                               ; preds = %57, %54
  %60 = call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %48) #21, !range !717
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %63, label %62, !prof !1200

62:                                               ; preds = %59
  call fastcc void @register_new_update_single(ptr noundef nonnull %48, ptr noundef nonnull %48) #21
  br label %63

63:                                               ; preds = %59, %62, %53
  br i1 %40, label %67, label %64, !prof !1201

64:                                               ; preds = %63
  %65 = load i64, ptr %48, align 8
  %66 = or i64 %65, 4194304
  store i64 %66, ptr %48, align 8
  br label %67

67:                                               ; preds = %63, %64, %43
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !717
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %43, label %70, !prof !1202, !llvm.loop !1203

70:                                               ; preds = %67, %39
  %71 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  %72 = load i32, ptr %19, align 8, !tbaa !728
  %73 = lshr i32 %72, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %71, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !749
  %77 = and i32 %72, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %79, %76
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %94, label %82, !prof !1204

82:                                               ; preds = %70
  %83 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %84 = call i32 @bitmap_bit_p(ptr noundef %83, i32 noundef %72) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87, !prof !1204

86:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2136, ptr noundef nonnull @.str.1) #22
  br label %87

87:                                               ; preds = %82, %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !717
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94, !prof !1205

90:                                               ; preds = %87, %90
  %91 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call fastcc void @rewrite_update_stmt(ptr noundef %91, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call fastcc void @gsi_next(ptr noundef nonnull %5) #21
  %92 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21, !range !717
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %90, label %94, !prof !1206, !llvm.loop !1207

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
define internal void @rewrite_update_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !1187 !PGOFuncName !1208 {
  %3 = load ptr, ptr @block_defs_stack, align 8
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6, !prof !1182

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %8 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %7) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !1209

10:                                               ; preds = %6
  %11 = load ptr, ptr @block_defs_stack, align 8
  %12 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %11) #21
  tail call void @set_current_def(ptr noundef nonnull %8, ptr noundef %12) #21
  %13 = load ptr, ptr @block_defs_stack, align 8
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %6, !prof !1210

16:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !866 !PGOFuncName !1211 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #22
  ret ptr %1
}

; Function Attrs: optsize
declare void @dump_dfa_stats(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #15 !prof !866 !PGOFuncName !1212 {
  %1 = load ptr, ptr @block_defs_stack, align 8, !tbaa !665
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1213

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @block_defs_stack, align 8, !tbaa !665
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !1214 !PGOFuncName !1215 {
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 1) #21
  %2 = load ptr, ptr @block_defs_stack, align 8, !tbaa !665
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1216 !PGOFuncName !1217 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !671
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_def(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1218 !PGOFuncName !1219 {
  %3 = tail call fastcc i32 @get_phi_state(ptr noundef %1) #21, !range !861
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %14, label %5, !prof !1220

5:                                                ; preds = %2
  %6 = tail call ptr @get_current_def(ptr noundef %1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !1221

8:                                                ; preds = %5
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1) #22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !1185

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
define internal fastcc void @rewrite_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !1222 !PGOFuncName !1223 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #23
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #21
  %4 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !1224

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1306, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %3) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !1225

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %3) #21, !range !717
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %73, label %13, !prof !1226

13:                                               ; preds = %10, %7
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !1227

16:                                               ; preds = %13
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !681
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 19, i64 1, ptr nonnull %14)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !665
  tail call void @print_gimple_stmt(ptr noundef %22, ptr noundef %3, i32 noundef 0, i32 noundef 2) #22
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %20, %16, %13
  %26 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %3) #21, !range !717
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28, !prof !1228

28:                                               ; preds = %25
  %29 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 1) #21
  %30 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %46, !prof !1229

32:                                               ; preds = %28, %41
  %33 = phi ptr [ %43, %41 ], [ %29, %28 ]
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %33) #21
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !681
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %41, label %40, !prof !892

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %41

41:                                               ; preds = %32, %40
  %42 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %34) #21
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %33, ptr noundef %42) #21
  %43 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #21
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %32, label %46, !prof !1230, !llvm.loop !1231

46:                                               ; preds = %41, %28, %25
  %47 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %3) #21, !range !717
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %73, label %49, !prof !1232

49:                                               ; preds = %46
  %50 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 2) #21
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73, !prof !1233

53:                                               ; preds = %49, %69
  %54 = phi ptr [ %70, %69 ], [ %50, %49 ]
  %55 = call fastcc ptr @get_def_from_ptr(ptr noundef %54) #21
  %56 = call fastcc ptr @make_ssa_name(ptr noundef %55, ptr noundef %3) #21
  %57 = load i64, ptr %55, align 8
  %58 = and i64 %57, 65535
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !681
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %63, label %62, !prof !897

62:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1333, ptr noundef nonnull @.str.1) #22
  br label %63

63:                                               ; preds = %53, %62
  store ptr %56, ptr %54, align 8, !tbaa !665
  %64 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %54) #21
  call fastcc void @register_new_def(ptr noundef %64, ptr noundef nonnull %55) #21
  %65 = call ptr @target_for_debug_bind(ptr noundef nonnull %55) #22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !897

67:                                               ; preds = %63
  %68 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %65, ptr noundef %56, ptr noundef %3) #22
  call void @gsi_insert_after(ptr noundef nonnull %0, ptr noundef %68, i32 noundef 1) #22
  br label %69

69:                                               ; preds = %67, %63
  %70 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #21
  %71 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %53, label %73, !prof !1234, !llvm.loop !1235

73:                                               ; preds = %69, %49, %46, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_add_phi_arguments(ptr noundef %0) unnamed_addr #0 !prof !879 !PGOFuncName !1236 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !722
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !723
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10, !prof !1237

10:                                               ; preds = %1, %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %11 = load ptr, ptr %2, align 8, !tbaa !665
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1238
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %13) #22
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !717
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %27, !prof !1239

16:                                               ; preds = %10, %16
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21
  %18 = call fastcc ptr @gimple_phi_result(ptr noundef %17) #21
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !671
  %21 = call fastcc ptr @get_reaching_def(ptr noundef %20) #21
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !671
  %24 = call fastcc i32 @gimple_location(ptr noundef %23) #21
  call void @add_phi_arg(ptr noundef %17, ptr noundef %21, ptr noundef %11, i32 noundef %24) #22
  call fastcc void @gsi_next(ptr noundef nonnull %4) #21
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #21, !range !717
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %16, label %27, !prof !1240, !llvm.loop !1241

27:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %28 = load i32, ptr %3, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %2) #21, !range !717
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %10, !prof !1242, !llvm.loop !1243

32:                                               ; preds = %27, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(i32 noundef %0) unnamed_addr #0 !prof !1244 !PGOFuncName !1245 {
  %2 = load ptr, ptr @block_defs_stack, align 8, !tbaa !665
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef %0) #21, !range !703
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1246

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef %0) #22
  store ptr %6, ptr @block_defs_stack, align 8, !tbaa !665
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1247 !PGOFuncName !1248 {
  %3 = load i32, ptr %0, align 8, !tbaa !699
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !699
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1244 !PGOFuncName !1249 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !1250

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1251
  %7 = load i32, ptr %0, align 8, !tbaa !699
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !1252 !PGOFuncName !1253 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !936
  store ptr %1, ptr %4, align 8, !tbaa !665
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_reaching_def(ptr noundef %0) unnamed_addr #0 !prof !1254 !PGOFuncName !1255 {
  %2 = tail call ptr @get_current_def(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %16, !prof !1256

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !681
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %13, label %10, !prof !1257

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !671
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
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1258 !PGOFuncName !1259 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6, !prof !1260

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 783, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %8, align 4, !tbaa !929
  %9 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #21
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1261 !PGOFuncName !1262 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !665
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #22
  ret ptr %4
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #6 !prof !1263 !PGOFuncName !1264 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !961
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1265

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !963
  %8 = load ptr, ptr %3, align 8, !tbaa !965
  store ptr %8, ptr %2, align 8, !tbaa !961
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !933
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 !prof !1252 !PGOFuncName !1266 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1267
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !1268

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1269
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1269
  store ptr %2, ptr %6, align 8, !tbaa !1267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !1252 !PGOFuncName !1270 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !1271

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !1272

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !1267
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #21
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !1252 !PGOFuncName !1273 {
  store ptr %1, ptr %0, align 8, !tbaa !1267
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1269
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1269
  store ptr %0, ptr %4, align 8, !tbaa !1267
  store ptr %0, ptr %3, align 8, !tbaa !1269
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_default_def_for(ptr noundef %0) unnamed_addr #0 !prof !1274 !PGOFuncName !1275 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = tail call ptr @gimple_default_def(ptr noundef %2, ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !1276

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
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1277 !PGOFuncName !1278 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !671
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1247 !PGOFuncName !1279 {
  %2 = load i32, ptr %0, align 8, !tbaa !699
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !699
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !665
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @symbol_marked_for_renaming(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1280 !PGOFuncName !1281 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !673
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !795
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !671
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %8) #22
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_update_single(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1282 !PGOFuncName !1283 {
  %3 = tail call ptr @get_current_def(ptr noundef %1) #21
  tail call fastcc void @VEC_tree_heap_reserve(i32 noundef 2) #21
  %4 = load ptr, ptr @block_defs_stack, align 8
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef %3) #21
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef %1) #21
  tail call void @set_current_def(ptr noundef %1, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_update_set(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1284 !PGOFuncName !1285 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #21
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !717
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !1286

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @cfun, align 8, !tbaa !665
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !673
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !676
  %13 = load i32, ptr %4, align 4, !tbaa !681
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %13) #21
  tail call fastcc void @register_new_update_single(ptr noundef %0, ptr noundef %14) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !717
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !prof !1287, !llvm.loop !1288

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_old_name(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1289 !PGOFuncName !1290 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !671
  %4 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !1291

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !1077
  %9 = icmp ult i32 %3, %8
  br i1 %9, label %10, label %22, !prof !1292

10:                                               ; preds = %6
  %11 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  %12 = lshr i32 %3, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !749
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
define internal fastcc void @rewrite_update_stmt(ptr noundef %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 !prof !1293 !PGOFuncName !1294 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  %4 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %0) #21, !range !717
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !1295

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %0) #21, !range !717
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %61, label %9, !prof !1296

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12, !prof !1297

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !681
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 39, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !665
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %0, i32 noundef 0, i32 noundef 2) #22
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %16, %12, %9
  %22 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %0) #21, !range !717
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %24, !prof !1298

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #21, !range !717
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27, !prof !1299

27:                                               ; preds = %24
  %28 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 1) #21
  %29 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27, %35
  %32 = phi ptr [ %36, %35 ], [ %28, %27 ]
  %33 = tail call fastcc zeroext i8 @maybe_replace_use_in_debug_stmt(ptr noundef %32) #21, !range !717
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %31, label %49, !llvm.loop !1300

39:                                               ; preds = %31
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #21
  tail call fastcc void @update_stmt(ptr noundef %0) #21
  br label %49

40:                                               ; preds = %24
  %41 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 5) #21
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49, !prof !1301

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %46, %44 ], [ %41, %40 ]
  tail call fastcc void @maybe_replace_use(ptr noundef %45) #21
  %46 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #21
  %47 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %44, label %49, !prof !1302, !llvm.loop !1303

49:                                               ; preds = %35, %44, %27, %40, %39, %21
  %50 = tail call fastcc zeroext i8 @register_defs_p(ptr noundef %0) #21, !range !717
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52, !prof !1304

52:                                               ; preds = %49
  %53 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 10) #21
  %54 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %61, !prof !1305

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %58, %56 ], [ %53, %52 ]
  tail call fastcc void @maybe_register_def(ptr noundef %57, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #21
  %58 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %3) #21
  %59 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #21
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %56, label %61, !prof !1306, !llvm.loop !1307

61:                                               ; preds = %56, %52, %49, %6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_update_phi_arguments(ptr noundef %0) unnamed_addr #0 !prof !1308 !PGOFuncName !1309 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !722
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !723
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %2) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %105, label %10, !prof !1191

10:                                               ; preds = %1, %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %11 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !665
  %12 = load ptr, ptr %2, align 8, !tbaa !665
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1238
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !728
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %100, label %19, !prof !1310

19:                                               ; preds = %10
  %20 = load ptr, ptr @phis_to_rewrite, align 8
  %21 = load ptr, ptr %13, align 8, !tbaa !1238
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !728
  %24 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %20, i32 noundef %23) #21
  %25 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %4) #21, !range !703
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %100, label %27, !prof !1311

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  %29 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  br label %30

30:                                               ; preds = %27, %96
  %31 = phi i32 [ 0, %27 ], [ %97, %96 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !665
  %33 = tail call fastcc zeroext i8 @rewrite_uses_p(ptr noundef %32) #21, !range !717
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !1312

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2006, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %30, %35
  %37 = load i32, ptr %28, align 4, !tbaa !1313
  %38 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %32, i32 noundef %37) #21
  %39 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41, !prof !1314

41:                                               ; preds = %36
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !681
  %46 = icmp eq i32 %45, 3
  %47 = icmp eq i64 %43, 141
  %48 = or i1 %46, %47
  br i1 %48, label %54, label %96, !prof !1315

49:                                               ; preds = %36
  %50 = tail call fastcc ptr @gimple_phi_result(ptr noundef %32) #21
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !671
  %53 = tail call fastcc ptr @get_reaching_def(ptr noundef %52) #21
  br label %69

54:                                               ; preds = %41
  br i1 %46, label %58, label %55, !prof !1316

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !671
  br label %58

58:                                               ; preds = %54, %55
  %59 = phi ptr [ %57, %55 ], [ %39, %54 ]
  %60 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %59) #21
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62, !prof !1317

62:                                               ; preds = %58
  %63 = tail call fastcc ptr @get_reaching_def(ptr noundef %59) #21
  br label %69

64:                                               ; preds = %58
  %65 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %39) #21, !range !717
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67, !prof !1318

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %39) #21
  br label %69

69:                                               ; preds = %62, %67, %49
  %70 = phi ptr [ %53, %49 ], [ %63, %62 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72, !prof !1319

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %38) #21
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %38, ptr noundef nonnull %70) #21
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !671
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #21, !range !925
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %83, !prof !1320

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %75) #21
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83, !prof !1321

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
  %89 = load i32, ptr %29, align 8, !tbaa !1192
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !1322

92:                                               ; preds = %88
  %93 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #21
  %94 = load i64, ptr %93, align 8
  %95 = or i64 %94, 4194304
  store i64 %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %88, %92, %41
  %97 = add i32 %31, 1
  %98 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %24, i32 noundef %97, ptr noundef nonnull %4) #21, !range !703
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %30, !prof !1323, !llvm.loop !1324

100:                                              ; preds = %96, %19, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %101 = load i32, ptr %3, align 8
  %102 = load ptr, ptr %7, align 8
  %103 = call fastcc zeroext i8 @ei_cond(i32 %101, ptr %102, ptr noundef nonnull %2) #21, !range !717
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %10, !prof !1325, !llvm.loop !1326

105:                                              ; preds = %100, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @maybe_replace_use_in_debug_stmt(ptr noundef %0) unnamed_addr #0 !prof !791 !PGOFuncName !1327 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !681
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !671
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
  %18 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %2) #21, !range !717
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
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !791 !PGOFuncName !1328 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_replace_use(ptr noundef %0) unnamed_addr #0 !prof !1329 !PGOFuncName !1330 {
  %2 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !681
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8, !prof !1331

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !671
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ %2, %1 ]
  %13 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %12) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15, !prof !1332

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @get_reaching_def(ptr noundef %12) #21
  br label %22

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %2) #21, !range !717
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20, !prof !1333

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @get_reaching_def(ptr noundef nonnull %2) #21
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %16, %15 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %23, %2
  %26 = or i1 %24, %25
  br i1 %26, label %28, label %27, !prof !1334

27:                                               ; preds = %22
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %23) #21
  br label %28

28:                                               ; preds = %17, %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_register_def(ptr nocapture noundef %0, ptr noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #0 !prof !1335 !PGOFuncName !1336 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !681
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %15, label %12, !prof !1337

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !671
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi ptr [ %14, %12 ], [ %6, %3 ]
  %17 = tail call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %16) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %85, label %19, !prof !1338

19:                                               ; preds = %15
  %20 = load i64, ptr %6, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !681
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %83, !prof !1339

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %6, ptr noundef %1) #21
  store ptr %26, ptr %0, align 8, !tbaa !665
  %27 = tail call ptr @target_for_debug_bind(ptr noundef %16) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %83, label %29, !prof !1340

29:                                               ; preds = %25
  %30 = tail call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %27, ptr noundef %26, ptr noundef %1) #22
  %31 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !717
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
  store i32 0, ptr %4, align 8, !tbaa.struct !722
  %40 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %39, ptr %40, align 8, !tbaa.struct !723
  %41 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %39, ptr noundef nonnull %5) #21, !range !717
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %36, %53
  %44 = phi ptr [ %54, %53 ], [ null, %36 ]
  %45 = load ptr, ptr %5, align 8, !tbaa !665
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !1192
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1875, ptr noundef nonnull @.str.1) #22
  br label %53

53:                                               ; preds = %52, %50, %43
  %54 = phi ptr [ %44, %43 ], [ %45, %50 ], [ %45, %52 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #21
  %55 = load i32, ptr %4, align 8
  %56 = load ptr, ptr %40, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %5) #21, !range !717
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %43, !llvm.loop !1341

59:                                               ; preds = %53
  %60 = icmp eq ptr %54, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1238
  %64 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %63) #21, !range !717
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @phi_nodes(ptr noundef %63) #21
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load ptr, ptr %62, align 8, !tbaa !1238
  %71 = load ptr, ptr @cfun, align 8, !tbaa !665
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !714
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !839
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %36, %69, %66, %61, %59
  %78 = phi ptr [ %54, %69 ], [ %54, %66 ], [ %54, %61 ], [ null, %59 ], [ null, %36 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 1881, ptr noundef nonnull @.str.1) #22
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
  %86 = tail call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %6) #21, !range !717
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88, !prof !1342

88:                                               ; preds = %85
  %89 = tail call fastcc ptr @names_replaced_by(ptr noundef nonnull %6) #21
  tail call fastcc void @register_new_update_set(ptr noundef nonnull %6, ptr noundef %89) #21
  br label %90

90:                                               ; preds = %88, %85
  %91 = tail call fastcc zeroext i8 @is_old_name(ptr noundef nonnull %6) #21, !range !717
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !1343

93:                                               ; preds = %90
  tail call fastcc void @register_new_update_single(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  br label %94

94:                                               ; preds = %90, %93, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !791 !PGOFuncName !1344 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !717
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1665, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr null, ptr %10, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !791 !PGOFuncName !1345 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !671
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !791 !PGOFuncName !1346 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !749
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1622, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !791 !PGOFuncName !1347 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !925
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !791 !PGOFuncName !1348 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !681
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !791 !PGOFuncName !1349 {
  %2 = load ptr, ptr %0, align 8, !tbaa !804
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !907
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !791 !PGOFuncName !1350 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !809
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !791 !PGOFuncName !1351 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1352
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !791 !PGOFuncName !1353 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !909
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 510, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !671
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1354
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !1355 !PGOFuncName !1356 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1357

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1167
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1358

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !665
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !665
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 !prof !1359 !PGOFuncName !1360 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !671
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #21, !range !925
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !1361

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 544, ptr noundef nonnull @.str.1) #22
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1362 !PGOFuncName !1363 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !671
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0) unnamed_addr #0 !prof !1364 !PGOFuncName !1365 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #21
  %3 = getelementptr inbounds %struct.phi_arg_d, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !1366
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1368 !PGOFuncName !1369 {
  %4 = trunc i64 %1 to i32
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #21
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !1366
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_names_replaced_by(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !791 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #22
  %5 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 6, i64 1, ptr %0)
  %6 = tail call fastcc ptr @names_replaced_by(ptr noundef %1) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !717
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %9
  %10 = load ptr, ptr @cfun, align 8, !tbaa !665
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !673
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !676
  %15 = load i32, ptr %3, align 4, !tbaa !681
  %16 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %15) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %16, i32 noundef 0) #22
  %17 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !717
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !1370

20:                                               ; preds = %9, %2
  %21 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_names_replaced_by(ptr noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_names_replaced_by(ptr noundef %2, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_update_ssa(ptr noundef %0) local_unnamed_addr #0 !prof !791 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !681
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %5 = load ptr, ptr @cfun, align 8, !tbaa !665
  %6 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %5) #21, !range !717
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @sbitmap_first_set_bit(ptr noundef nonnull %9) #22
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %15 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 23, i64 1, ptr %0)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 62, i64 1, ptr %0)
  %17 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %17) #21
  %18 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !717
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !665
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !673
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !676
  %26 = load i32, ptr %2, align 4, !tbaa !681
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %26) #21
  tail call void @dump_names_replaced_by(ptr noundef %0, ptr noundef %27) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %28 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !717
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !1371

30:                                               ; preds = %20, %14
  %31 = tail call i32 @fputc(i32 10, ptr %0)
  %32 = load i32, ptr @update_ssa_stats, align 8, !tbaa !1073
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %32) #21
  %34 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !1081
  %35 = load i32, ptr @update_ssa_stats, align 8, !tbaa !1073
  %36 = sub i32 %34, %35
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %36) #21
  %38 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !1081
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %38) #21
  %40 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !1075
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %40) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %42

42:                                               ; preds = %30, %11, %8
  %43 = load ptr, ptr @cfun, align 8, !tbaa !665
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !673
  %46 = getelementptr inbounds %struct.gimple_df, ptr %45, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !795
  %48 = load ptr, ptr %47, align 8, !tbaa !740
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 33, i64 1, ptr %0)
  %52 = load ptr, ptr @cfun, align 8, !tbaa !665
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !673
  %55 = getelementptr inbounds %struct.gimple_df, ptr %54, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !795
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %56) #21
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !740
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 51, i64 1, ptr %0)
  %66 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %66, ptr noundef nonnull %2) #21
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !717
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64, %69
  %70 = load ptr, ptr @cfun, align 8, !tbaa !665
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !673
  %73 = getelementptr inbounds %struct.gimple_df, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !676
  %75 = load i32, ptr %2, align 4, !tbaa !681
  %76 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %74, i32 noundef %75) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %76, i32 noundef 0) #22
  %77 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !717
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %69, !llvm.loop !1372

80:                                               ; preds = %69, %64, %61, %58
  %81 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  br label %82

82:                                               ; preds = %1, %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @need_ssa_update_p(ptr noundef readonly %0) local_unnamed_addr #0 !prof !1373 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1374

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2918, ptr noundef nonnull @.str.1) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7, !prof !1375

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !673
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !1376

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !795
  %14 = load ptr, ptr %13, align 8, !tbaa !740
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %7, %11, %4
  %18 = phi i8 [ 1, %4 ], [ 0, %7 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: optsize
declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !1377 !PGOFuncName !1378 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !1379
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !1381
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !1382
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !1383
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !1384
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10, !prof !1385

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !749
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !prof !1386 !PGOFuncName !1387 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !1388
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %12, !prof !1389

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !1383
  %10 = load i32, ptr %7, align 4, !tbaa !1379
  br label %18

11:                                               ; preds = %22
  store i32 %20, ptr %7, align 4, !tbaa !1379
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i64 [ %28, %11 ], [ %4, %2 ]
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !1381
  br i1 %15, label %30, label %38, !prof !1389

18:                                               ; preds = %6, %22
  %19 = phi i32 [ %10, %6 ], [ %20, %22 ]
  %20 = add i32 %19, 1
  %21 = icmp ult i32 %20, %9
  br i1 %21, label %22, label %40, !prof !1390

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %24 = shl i32 %20, 6
  store i32 %24, ptr %23, align 8, !tbaa !1381
  %25 = load ptr, ptr %0, align 8, !tbaa !1384
  %26 = zext i32 %20 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !749
  store i64 %28, ptr %3, align 8, !tbaa !1388
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %18, label %11, !prof !1391, !llvm.loop !1392

30:                                               ; preds = %12, %30
  %31 = phi i32 [ %33, %30 ], [ %17, %12 ]
  %32 = phi i64 [ %34, %30 ], [ %13, %12 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !prof !1393, !llvm.loop !1394

37:                                               ; preds = %30
  store i32 %33, ptr %16, align 8, !tbaa !1381
  store i64 %34, ptr %3, align 8, !tbaa !1388
  br label %38

38:                                               ; preds = %12, %37
  %39 = phi i32 [ %33, %37 ], [ %17, %12 ]
  store i32 %39, ptr %1, align 4, !tbaa !681
  br label %41

40:                                               ; preds = %18
  store i32 %20, ptr %7, align 4, !tbaa !1379
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !1395 !PGOFuncName !1396 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !1388
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !1388
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !1381
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !1381
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_update_ssa() local_unnamed_addr #0 !prof !791 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !665
  tail call void @dump_update_ssa(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_update_ssa() local_unnamed_addr #0 !prof !1397 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %4 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  %5 = load ptr, ptr %4, align 8, !tbaa !844
  tail call void @free(ptr noundef %5) #21
  tail call void @free(ptr noundef %4) #21
  store ptr null, ptr @old_ssa_names, align 8, !tbaa !665
  %6 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %7 = load ptr, ptr %6, align 8, !tbaa !844
  tail call void @free(ptr noundef %7) #21
  tail call void @free(ptr noundef %6) #21
  store ptr null, ptr @new_ssa_names, align 8, !tbaa !665
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !665
  tail call void @htab_delete(ptr noundef %8) #22
  store ptr null, ptr @repl_tbl, align 8, !tbaa !665
  %9 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !673
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !795
  tail call void @bitmap_clear(ptr noundef %13) #22
  %14 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !1076
  tail call void @bitmap_obstack_free(ptr noundef %14) #22
  store ptr null, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !1076
  %15 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17, !prof !1398

17:                                               ; preds = %0
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %1) #21
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20, !prof !1399

20:                                               ; preds = %17, %20
  %21 = load ptr, ptr @cfun, align 8, !tbaa !665
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !673
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !676
  %26 = load i32, ptr %1, align 4, !tbaa !681
  %27 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %26) #21
  tail call void @release_ssa_name(ptr noundef %27) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %20, !prof !1400, !llvm.loop !1401

30:                                               ; preds = %20
  %31 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi ptr [ %31, %30 ], [ %15, %17 ]
  tail call void @bitmap_obstack_free(ptr noundef %33) #22
  store ptr null, ptr @names_to_release, align 8, !tbaa !665
  br label %34

34:                                               ; preds = %32, %0
  tail call fastcc void @clear_ssa_name_info() #21
  tail call fastcc void @fini_ssa_renamer() #21
  %35 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !665
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37, !prof !1402

37:                                               ; preds = %34
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %35, ptr noundef nonnull %1) #21
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %49, label %40, !prof !1403

40:                                               ; preds = %37, %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %41 = load ptr, ptr @phis_to_rewrite, align 8
  %42 = load i32, ptr %1, align 4, !tbaa !681
  %43 = tail call fastcc ptr @VEC_gimple_vec_base_index(ptr noundef %41, i32 noundef %42) #21
  store ptr %43, ptr %3, align 8, !tbaa !665
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %3) #21
  %44 = load ptr, ptr @phis_to_rewrite, align 8
  tail call fastcc void @VEC_gimple_vec_base_replace(ptr noundef %44, i32 noundef %42, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %40, !prof !1404, !llvm.loop !1405

47:                                               ; preds = %40
  %48 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !665
  br label %49

49:                                               ; preds = %47, %37, %34
  %50 = phi ptr [ %48, %47 ], [ %35, %37 ], [ null, %34 ]
  tail call void @bitmap_obstack_free(ptr noundef %50) #22
  store ptr null, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !665
  %51 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  tail call void @bitmap_obstack_free(ptr noundef %51) #22
  store ptr null, ptr @blocks_to_update, align 8, !tbaa !665
  store ptr null, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @clear_ssa_name_info() unnamed_addr #18 !prof !1397 !PGOFuncName !1406 {
  %1 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !681
  %2 = add i32 %1, 1
  store i32 %2, ptr @current_info_for_ssa_name_age, align 4, !tbaa !681
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #15 !prof !1157 !PGOFuncName !1407 {
  %2 = load ptr, ptr %0, align 8, !tbaa !665
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1408

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !665
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_new_def_for(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !1409 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = tail call ptr @duplicate_ssa_name(ptr noundef %0, ptr noundef %1) #22
  store ptr %6, ptr %2, align 8, !tbaa !665
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !925
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %30, !prof !1410

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef %10) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !722
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !723
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %4) #21, !range !717
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %29, label %15, !prof !1411

15:                                               ; preds = %9, %24
  %16 = load ptr, ptr %4, align 8, !tbaa !665
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !1192
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !1412

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8
  %23 = or i64 %22, 4194304
  store i64 %23, ptr %6, align 8
  br label %29

24:                                               ; preds = %15
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %25 = load i32, ptr %5, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %4) #21, !range !717
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %15, !prof !1413, !llvm.loop !1414

29:                                               ; preds = %24, %9, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %30

30:                                               ; preds = %29, %3
  tail call void @register_new_name_mapping(ptr noundef %6, ptr noundef %0) #21
  tail call void @set_current_def(ptr noundef %0, ptr noundef %6) #21
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1415 !PGOFuncName !1416 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !671
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_new_name_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1417 {
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !1418

5:                                                ; preds = %2
  %6 = load ptr, ptr @cfun, align 8, !tbaa !665
  tail call fastcc void @init_update_ssa(ptr noundef %6) #21
  %7 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %10 = load ptr, ptr @cfun, align 8, !tbaa !665
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %13, label %12, !prof !1419

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2881, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %8, %12
  tail call fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_update_ssa(ptr noundef %0) unnamed_addr #0 !prof !1397 !PGOFuncName !1420 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !673
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !676
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #21
  %8 = icmp ult i32 %7, 9
  %9 = udiv i32 %7, 3
  %10 = select i1 %8, i32 3, i32 %9, !prof !1421
  %11 = add i32 %10, %7
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %11) #22
  store ptr %12, ptr @old_ssa_names, align 8, !tbaa !665
  tail call void @sbitmap_zero(ptr noundef %12) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !665
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !673
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !676
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #21
  %19 = icmp ult i32 %18, 9
  %20 = udiv i32 %18, 3
  %21 = select i1 %19, i32 3, i32 %20, !prof !1421
  %22 = add i32 %21, %18
  %23 = tail call ptr @sbitmap_alloc(i32 noundef %22) #22
  store ptr %23, ptr @new_ssa_names, align 8, !tbaa !665
  tail call void @sbitmap_zero(ptr noundef %23) #22
  %24 = tail call ptr @htab_create(i64 noundef 20, ptr noundef nonnull @repl_map_hash, ptr noundef nonnull @repl_map_eq, ptr noundef nonnull @repl_map_free) #22
  store ptr %24, ptr @repl_tbl, align 8, !tbaa !665
  store ptr null, ptr @names_to_release, align 8, !tbaa !665
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @update_ssa_stats, i8 0, i64 24, i1 false)
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %25, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !1076
  store ptr %0, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @repl_map_hash(ptr nocapture noundef readonly %0) #0 !prof !1422 !PGOFuncName !1423 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !665
  %3 = load ptr, ptr %0, align 8, !tbaa !1136
  %4 = tail call i32 %2(ptr noundef %3) #22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @repl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !1424 !PGOFuncName !1425 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1136
  %4 = load ptr, ptr %1, align 8, !tbaa !1136
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @repl_map_free(ptr nocapture noundef %0) #0 !prof !1068 !PGOFuncName !1426 {
  %2 = getelementptr inbounds %struct.repl_map_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1138
  tail call void @bitmap_obstack_free(ptr noundef %3) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_sym_for_renaming(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1427 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !673
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !795
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !671
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_set_for_renaming(ptr noundef readonly %0) local_unnamed_addr #0 !prof !791 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = icmp eq ptr %0, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !740
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = load i32, ptr %3, align 4, !tbaa !681
  %13 = tail call ptr @referenced_var_lookup(i32 noundef %12) #22
  tail call void @mark_sym_for_renaming(ptr noundef %13) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !1428

16:                                               ; preds = %11, %8, %1, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @name_mappings_registered_p() local_unnamed_addr #0 !prof !1429 {
  %1 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3, !prof !1430

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !665
  %5 = icmp eq ptr %1, %4
  br i1 %5, label %7, label %6, !prof !1431

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2932, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %3, %6
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !665
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !1432

10:                                               ; preds = %7
  %11 = tail call i64 @htab_elements(ptr noundef nonnull %8) #22
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %10, %0
  %15 = phi i8 [ 0, %0 ], [ 0, %7 ], [ %13, %10 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @name_registered_for_update_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1433 {
  %2 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !1434

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !665
  %6 = icmp eq ptr %2, %5
  br i1 %6, label %8, label %7, !prof !1435

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2945, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc zeroext i8 @is_new_name(ptr noundef %0) #21, !range !717
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !1436

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_old_name(ptr noundef %0) #21, !range !717
  br label %13

13:                                               ; preds = %8, %11, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %8 ], [ %12, %11 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ssa_names_to_replace() local_unnamed_addr #0 !prof !1437 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  store i32 0, ptr %1, align 4, !tbaa !681
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr @cfun, align 8
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %9, label %8, !prof !1438

8:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2961, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %0, %8
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %11 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %11) #21
  %12 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14, !prof !1439

14:                                               ; preds = %9, %14
  %15 = load i32, ptr %1, align 4, !tbaa !681
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %15) #22
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %14, !prof !1440, !llvm.loop !1441

19:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_ssa_name_after_update_ssa(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1442 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !665
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @update_ssa_initialized_fn, align 8
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %8, label %7, !prof !1443

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2976, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !1444

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %12, ptr @names_to_release, align 8, !tbaa !665
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %9, %8 ]
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !671
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_ssa(i32 noundef %0) local_unnamed_addr #0 !prof !1445 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  %5 = alloca %struct.sbitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !681
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !665
  %8 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %7) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %319, label %10, !prof !1446

10:                                               ; preds = %1
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !1447

13:                                               ; preds = %10
  tail call void @timevar_push_1(i32 noundef 60) #22
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !1448

17:                                               ; preds = %14
  %18 = load ptr, ptr @cfun, align 8, !tbaa !665
  tail call fastcc void @init_update_ssa(ptr noundef %18) #21
  %19 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !665
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !665
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %25, label %24, !prof !1447

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3242, ptr noundef nonnull @.str.1) #22
  br label %25

25:                                               ; preds = %20, %24
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %26, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !665
  %27 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !665
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !1449

29:                                               ; preds = %25
  %30 = load ptr, ptr @cfun, align 8, !tbaa !665
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !714
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !715
  %35 = tail call fastcc ptr @VEC_gimple_vec_heap_alloc(i32 noundef %34) #21
  store ptr %35, ptr @phis_to_rewrite, align 8, !tbaa !665
  br label %36

36:                                               ; preds = %29, %25
  %37 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %37, ptr @blocks_to_update, align 8, !tbaa !665
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  %38 = add i32 %0, -2048
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 21)
  switch i32 %39, label %40 [
    i32 7, label %42
    i32 0, label %46
    i32 1, label %46
    i32 3, label %46
  ], !prof !1450

40:                                               ; preds = %36
  %41 = icmp eq i32 %0, 16384
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3256, ptr noundef nonnull @.str.1) #22
  br i1 %41, label %42, label %46, !prof !1451

42:                                               ; preds = %36, %40
  %43 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  tail call void @sbitmap_zero(ptr noundef %43) #22
  %44 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  tail call void @sbitmap_zero(ptr noundef %44) #22
  %45 = load ptr, ptr @repl_tbl, align 8, !tbaa !665
  tail call void @htab_empty(ptr noundef %45) #22
  br label %46

46:                                               ; preds = %36, %36, %36, %42, %40
  %47 = icmp ne i32 %0, 4096
  %48 = zext i1 %47 to i8
  br i1 %47, label %49, label %61, !prof !1452

49:                                               ; preds = %46
  %50 = load ptr, ptr @cfun, align 8, !tbaa !665
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !673
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !676
  %55 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %54) #21
  %56 = zext i32 %55 to i64
  %57 = tail call ptr @htab_create(i64 noundef %56, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #22
  store ptr %57, ptr @def_blocks, align 8, !tbaa !665
  %58 = tail call fastcc zeroext i8 @switch_virtuals_to_full_rewrite_p() #21, !range !717
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60, !prof !1453

60:                                               ; preds = %49
  tail call fastcc void @switch_virtuals_to_full_rewrite() #21
  br label %62

61:                                               ; preds = %46
  store ptr null, ptr @def_blocks, align 8, !tbaa !665
  br label %62

62:                                               ; preds = %61, %60, %49
  %63 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %64 = tail call i32 @sbitmap_first_set_bit(ptr noundef %63) #22
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %68, label %66, !prof !1454

66:                                               ; preds = %62
  %67 = load ptr, ptr @cfun, align 8, !tbaa !665
  br label %80

68:                                               ; preds = %62
  tail call fastcc void @prepare_names_to_update(i8 noundef zeroext %48) #21
  %69 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %70 = tail call i32 @sbitmap_first_set_bit(ptr noundef %69) #22
  %71 = icmp slt i32 %70, 0
  %72 = load ptr, ptr @cfun, align 8, !tbaa !665
  br i1 %71, label %73, label %80, !prof !1455

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !673
  %76 = getelementptr inbounds %struct.gimple_df, ptr %75, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !795
  %78 = load ptr, ptr %77, align 8, !tbaa !740
  %79 = icmp eq ptr %78, null
  br i1 %79, label %315, label %80, !prof !1456

80:                                               ; preds = %66, %68, %73
  %81 = phi ptr [ %67, %66 ], [ %72, %68 ], [ %72, %73 ]
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !673
  %84 = getelementptr inbounds %struct.gimple_df, ptr %83, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !795
  %86 = load ptr, ptr %85, align 8, !tbaa !740
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88, !prof !1457

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !714
  %91 = load ptr, ptr %90, align 8, !tbaa !730
  tail call fastcc void @prepare_block_for_update(ptr noundef %91, i8 noundef zeroext %48) #21
  br label %95

92:                                               ; preds = %80
  %93 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %94 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %93) #22
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %91, %88 ], [ %94, %92 ]
  br i1 %47, label %97, label %208, !prof !1458

97:                                               ; preds = %95
  %98 = load ptr, ptr @cfun, align 8, !tbaa !665
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !714
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !715
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 3
  %105 = tail call ptr @xmalloc(i64 noundef %104) #22
  %106 = load ptr, ptr @cfun, align 8, !tbaa !665
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !714
  %109 = load ptr, ptr %108, align 8, !tbaa !730
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !838
  %112 = getelementptr inbounds %struct.control_flow_graph, ptr %108, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !839
  %114 = icmp eq ptr %111, %113
  br i1 %114, label %130, label %115, !prof !1459

115:                                              ; preds = %97, %115
  %116 = phi ptr [ %123, %115 ], [ %111, %97 ]
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !728
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %105, i64 %120
  store ptr %117, ptr %121, align 8, !tbaa !665
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !838
  %124 = load ptr, ptr @cfun, align 8, !tbaa !665
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !714
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !839
  %129 = icmp eq ptr %123, %128
  br i1 %129, label %130, label %115, !prof !1460, !llvm.loop !1461

130:                                              ; preds = %115, %97
  tail call void @compute_dominance_frontiers(ptr noundef %105) #22
  %131 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  %132 = tail call i32 @sbitmap_first_set_bit(ptr noundef %131) #22
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %155, !prof !1462

134:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %135 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !1077
  %138 = tail call ptr @sbitmap_alloc(i32 noundef %137) #22
  %139 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  tail call void @sbitmap_copy(ptr noundef %138, ptr noundef %139) #22
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef %138) #21
  %140 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #21, !range !717
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %153, label %142, !prof !1463

142:                                              ; preds = %134, %142
  %143 = load ptr, ptr @cfun, align 8, !tbaa !665
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !673
  %146 = getelementptr inbounds %struct.gimple_df, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !676
  %148 = load i32, ptr %3, align 4, !tbaa !681
  %149 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %147, i32 noundef %148) #21
  %150 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  tail call fastcc void @insert_updated_phi_nodes_for(ptr noundef %149, ptr noundef %105, ptr noundef %150, i32 noundef %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #21
  %151 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #21, !range !717
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %142, !prof !1464, !llvm.loop !1465

153:                                              ; preds = %142, %134
  %154 = load ptr, ptr %138, align 8, !tbaa !844
  tail call void @free(ptr noundef %154) #21
  tail call void @free(ptr noundef %138) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %155

155:                                              ; preds = %153, %130
  %156 = load ptr, ptr @cfun, align 8, !tbaa !665
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !673
  %159 = getelementptr inbounds %struct.gimple_df, ptr %158, i64 0, i32 9
  %160 = load ptr, ptr %159, align 8, !tbaa !795
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %160, ptr noundef nonnull %3) #21
  %161 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %171, label %163, !prof !1459

163:                                              ; preds = %155, %163
  %164 = load i32, ptr %3, align 4, !tbaa !681
  %165 = tail call ptr @referenced_var_lookup(i32 noundef %164) #22
  %166 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  tail call fastcc void @insert_updated_phi_nodes_for(ptr noundef %165, ptr noundef %105, ptr noundef %166, i32 noundef %0) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %167 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %163, !prof !1466, !llvm.loop !1467

169:                                              ; preds = %163
  %170 = load ptr, ptr @cfun, align 8, !tbaa !665
  br label %171

171:                                              ; preds = %169, %155
  %172 = phi ptr [ %170, %169 ], [ %156, %155 ]
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !714
  %175 = load ptr, ptr %174, align 8, !tbaa !730
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !838
  %178 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !839
  %180 = icmp eq ptr %177, %179
  br i1 %180, label %199, label %181, !prof !1459

181:                                              ; preds = %171, %181
  %182 = phi ptr [ %192, %181 ], [ %177, %171 ]
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !728
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %105, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !665
  tail call void @bitmap_obstack_free(ptr noundef %187) #22
  %188 = load i32, ptr %183, align 8, !tbaa !728
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %105, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !665
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !838
  %193 = load ptr, ptr @cfun, align 8, !tbaa !665
  %194 = getelementptr inbounds %struct.function, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !714
  %196 = getelementptr inbounds %struct.control_flow_graph, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !839
  %198 = icmp eq ptr %192, %197
  br i1 %198, label %199, label %181, !prof !1460, !llvm.loop !1468

199:                                              ; preds = %181, %171
  tail call void @free(ptr noundef %105) #21
  %200 = load ptr, ptr @cfun, align 8, !tbaa !665
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !714
  %203 = load ptr, ptr %202, align 8, !tbaa !730
  %204 = icmp eq ptr %96, %203
  br i1 %204, label %208, label %205, !prof !1469

205:                                              ; preds = %199
  %206 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %207 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %206) #22
  br label %208

208:                                              ; preds = %199, %205, %95
  %209 = phi ptr [ %96, %95 ], [ %207, %205 ], [ %96, %199 ]
  %210 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %210) #21
  %211 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !717
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %223, label %213, !prof !1470

213:                                              ; preds = %208, %213
  %214 = load ptr, ptr @cfun, align 8, !tbaa !665
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !673
  %217 = getelementptr inbounds %struct.gimple_df, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !676
  %219 = load i32, ptr %3, align 4, !tbaa !681
  %220 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %218, i32 noundef %219) #21
  tail call void @set_current_def(ptr noundef %220, ptr noundef null) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %221 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !717
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %213, !prof !1471, !llvm.loop !1472

223:                                              ; preds = %213, %208
  %224 = load ptr, ptr @cfun, align 8, !tbaa !665
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !673
  %227 = getelementptr inbounds %struct.gimple_df, ptr %226, i64 0, i32 9
  %228 = load ptr, ptr %227, align 8, !tbaa !795
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %228, ptr noundef nonnull %3) #21
  %229 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %238, label %231, !prof !1473

231:                                              ; preds = %223, %231
  %232 = load i32, ptr %3, align 4, !tbaa !681
  %233 = tail call ptr @referenced_var_lookup(i32 noundef %232) #22
  tail call void @set_current_def(ptr noundef %233, ptr noundef null) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %234 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %231, !prof !1474, !llvm.loop !1475

236:                                              ; preds = %231
  %237 = load ptr, ptr @cfun, align 8, !tbaa !665
  br label %238

238:                                              ; preds = %236, %223
  %239 = phi ptr [ %237, %236 ], [ %224, %223 ]
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !714
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !715
  %244 = tail call ptr @sbitmap_alloc(i32 noundef %243) #22
  store ptr %244, ptr @interesting_blocks, align 8, !tbaa !665
  tail call void @sbitmap_zero(ptr noundef %244) #22
  %245 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %245, ptr noundef nonnull %3) #21
  %246 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %253, label %248, !prof !1470

248:                                              ; preds = %238, %248
  %249 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  %250 = load i32, ptr %3, align 4, !tbaa !681
  tail call fastcc void @SET_BIT(ptr noundef %249, i32 noundef %250) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %251 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !717
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %248, !prof !1476, !llvm.loop !1477

253:                                              ; preds = %248, %238
  tail call fastcc void @rewrite_blocks(ptr noundef %209, i32 noundef 1) #21
  %254 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  %255 = load ptr, ptr %254, align 8, !tbaa !844
  tail call void @free(ptr noundef %255) #21
  %256 = load ptr, ptr @interesting_blocks, align 8, !tbaa !665
  tail call void @free(ptr noundef %256) #21
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %258 = icmp eq ptr %257, null
  br i1 %258, label %315, label %259, !prof !1478

259:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  tail call void @dump_update_ssa(ptr noundef nonnull %257) #21
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 9
  %262 = load i32, ptr %261, align 8, !tbaa !728
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.45, i32 noundef %262) #21
  %264 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %264, ptr noundef nonnull %6) #21
  %265 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !717
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %259, %267
  %268 = phi i32 [ %269, %267 ], [ 0, %259 ]
  %269 = add nuw nsw i32 %268, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %270 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !717
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %267, !llvm.loop !1479

272:                                              ; preds = %267, %259
  %273 = phi i32 [ 0, %259 ], [ %269, %267 ]
  %274 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %275 = load ptr, ptr @cfun, align 8, !tbaa !665
  %276 = getelementptr inbounds %struct.function, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !714
  %278 = getelementptr inbounds %struct.control_flow_graph, ptr %277, i64 0, i32 5
  %279 = load i32, ptr %278, align 8, !tbaa !715
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %274, ptr noundef nonnull @.str.46, i32 noundef %279) #21
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %282 = sitofp i32 %273 to float
  %283 = fpext float %282 to double
  %284 = fmul double %283, 1.000000e+02
  %285 = load ptr, ptr @cfun, align 8, !tbaa !665
  %286 = getelementptr inbounds %struct.function, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !714
  %288 = getelementptr inbounds %struct.control_flow_graph, ptr %287, i64 0, i32 5
  %289 = load i32, ptr %288, align 8, !tbaa !715
  %290 = sitofp i32 %289 to float
  %291 = fpext float %290 to double
  %292 = fdiv double %284, %291
  %293 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.47, i32 noundef %273, double noundef %292) #21
  %294 = load i32, ptr @dump_flags, align 4, !tbaa !681
  %295 = and i32 %294, 8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %312, label %297

297:                                              ; preds = %272
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %299 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 17, i64 1, ptr %298)
  %300 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %300, ptr noundef nonnull %6) #21
  %301 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !717
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %297, %303
  %304 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %305 = load i32, ptr %6, align 4, !tbaa !681
  %306 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %304, ptr noundef nonnull @.str.49, i32 noundef %305) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  %307 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %6) #21, !range !717
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %303, !llvm.loop !1480

309:                                              ; preds = %303, %297
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %311 = tail call i32 @fputc(i32 10, ptr %310)
  br label %312

312:                                              ; preds = %309, %272
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %314 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %313)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  br label %315

315:                                              ; preds = %253, %312, %73
  tail call void @delete_update_ssa() #21
  %316 = load i8, ptr @timevar_enable, align 1, !tbaa !671
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %319, label %318, !prof !1447

318:                                              ; preds = %315
  tail call void @timevar_pop_1(i32 noundef 60) #22
  br label %319

319:                                              ; preds = %315, %318, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_vec_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1481 !PGOFuncName !1482 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #22
  ret ptr %2
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @switch_virtuals_to_full_rewrite_p() unnamed_addr #1 !prof !1483 !PGOFuncName !1484 {
  %1 = load i32, ptr @update_ssa_stats, align 8, !tbaa !1073
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !665
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 91, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !1485
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %13, label %6, !prof !1487

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.param_info, ptr %2, i64 92, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !1485
  %9 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !1075
  %10 = mul i32 %9, %8
  %11 = icmp ugt i32 %1, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %0
  %14 = phi i8 [ 0, %0 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_virtuals_to_full_rewrite() unnamed_addr #0 !prof !791 !PGOFuncName !1488 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  store i32 0, ptr %1, align 4, !tbaa !681
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 41, i64 1, ptr nonnull %3)
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %8 = load i32, ptr @update_ssa_stats, align 8, !tbaa !1073
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.51, i32 noundef %8) #21
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %11 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !1075
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.52, i32 noundef %11) #21
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !665
  %14 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 87, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %5, %0
  %16 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %16) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %15, %31
  %20 = load ptr, ptr @cfun, align 8, !tbaa !665
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !673
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !676
  %25 = load i32, ptr %1, align 4, !tbaa !681
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %25) #21
  %27 = tail call zeroext i8 @is_gimple_reg(ptr noundef %26) #22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  tail call fastcc void @RESET_BIT(ptr noundef %30, i32 noundef %25) #21
  br label %31

31:                                               ; preds = %19, %29
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %32 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %19, !llvm.loop !1489

34:                                               ; preds = %31, %15
  %35 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %35) #21
  %36 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34, %50
  %39 = load ptr, ptr @cfun, align 8, !tbaa !665
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !673
  %42 = getelementptr inbounds %struct.gimple_df, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !676
  %44 = load i32, ptr %1, align 4, !tbaa !681
  %45 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %43, i32 noundef %44) #21
  %46 = tail call zeroext i8 @is_gimple_reg(ptr noundef %45) #22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  tail call fastcc void @RESET_BIT(ptr noundef %49, i32 noundef %44) #21
  br label %50

50:                                               ; preds = %38, %48
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #21
  %51 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !717
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %38, !llvm.loop !1490

53:                                               ; preds = %50, %34
  %54 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !1076
  tail call void @mark_set_for_renaming(ptr noundef %54) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_names_to_update(i8 noundef zeroext %0) unnamed_addr #0 !prof !1491 !PGOFuncName !1492 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !681
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %5 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !1493

7:                                                ; preds = %1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %2) #21
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !1399

10:                                               ; preds = %7, %10
  %11 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  %12 = load i32, ptr %2, align 4, !tbaa !681
  tail call fastcc void @RESET_BIT(ptr noundef %11, i32 noundef %12) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !717
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %10, !prof !1400, !llvm.loop !1494

15:                                               ; preds = %10, %7, %1
  %16 = load ptr, ptr @new_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %16) #21
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !717
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19, !prof !1495

19:                                               ; preds = %15, %19
  %20 = load ptr, ptr @cfun, align 8, !tbaa !665
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !673
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !676
  %25 = load i32, ptr %2, align 4, !tbaa !681
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %25) #21
  tail call fastcc void @prepare_def_site_for(ptr noundef %26, i8 noundef zeroext %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %27 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !717
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %19, !prof !1496, !llvm.loop !1497

29:                                               ; preds = %19, %15
  %30 = load ptr, ptr @old_ssa_names, align 8, !tbaa !665
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !717
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %56, label %33, !prof !1495

33:                                               ; preds = %29, %47
  %34 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  %35 = icmp eq ptr %34, null
  %36 = load i32, ptr %2, align 4, !tbaa !681
  br i1 %35, label %40, label %37, !prof !1498

37:                                               ; preds = %33
  %38 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %34, i32 noundef %36) #22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47, !prof !1499

40:                                               ; preds = %37, %33
  %41 = load ptr, ptr @cfun, align 8, !tbaa !665
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !673
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !676
  %46 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %36) #21
  tail call fastcc void @prepare_def_site_for(ptr noundef %46, i8 noundef zeroext %0) #21
  br label %47

47:                                               ; preds = %40, %37
  %48 = load ptr, ptr @cfun, align 8, !tbaa !665
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !673
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !676
  %53 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %52, i32 noundef %36) #21
  tail call fastcc void @prepare_use_sites_for(ptr noundef %53, i8 noundef zeroext %0) #21
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %54 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %2) #21, !range !717
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %33, !prof !1500, !llvm.loop !1501

56:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_block_for_update(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1502 !PGOFuncName !1503 {
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
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %40, !prof !1504

10:                                               ; preds = %2, %37
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %12 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #21
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !681
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %21, label %18, !prof !1505

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !671
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %20, %18 ], [ %12, %10 ]
  %23 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %37, label %25, !prof !1506

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  call fastcc void @mark_def_interesting(ptr noundef %22, ptr noundef %11, ptr noundef %0, i8 noundef zeroext %1) #21
  %27 = call fastcc ptr @ei_start_1(ptr noundef %0) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !722
  store ptr %27, ptr %26, align 8, !tbaa.struct !723
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %4) #21, !range !717
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30, !prof !1507

30:                                               ; preds = %25, %30
  %31 = load ptr, ptr %4, align 8, !tbaa !665
  %32 = load ptr, ptr %31, align 8, !tbaa !725
  call fastcc void @mark_use_interesting(ptr noundef %22, ptr noundef %11, ptr noundef %32, i8 noundef zeroext %1) #21
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %33 = load i32, ptr %5, align 8
  %34 = load ptr, ptr %26, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %4) #21, !range !717
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %30, !prof !1508, !llvm.loop !1509

37:                                               ; preds = %30, %25, %21
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %10, label %40, !prof !1510, !llvm.loop !1511

40:                                               ; preds = %37, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %95, !prof !1512

43:                                               ; preds = %40, %92
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #23
  %44 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %45 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %7, ptr noundef %44, i32 noundef 5) #21
  %46 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %68, !prof !1513

48:                                               ; preds = %43, %64
  %49 = phi ptr [ %65, %64 ], [ %45, %43 ]
  %50 = call fastcc ptr @get_use_from_ptr(ptr noundef %49) #21
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !681
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %59, label %56, !prof !1514

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !671
  br label %59

59:                                               ; preds = %48, %56
  %60 = phi ptr [ %58, %56 ], [ %50, %48 ]
  %61 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %60) #21
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !1515

63:                                               ; preds = %59
  call fastcc void @mark_use_interesting(ptr noundef %60, ptr noundef %44, ptr noundef %0, i8 noundef zeroext %1) #21
  br label %64

64:                                               ; preds = %63, %59
  %65 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #21
  %66 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %48, label %68, !prof !1516, !llvm.loop !1517

68:                                               ; preds = %64, %43
  %69 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %7, ptr noundef %44, i32 noundef 10) #21
  %70 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %92, !prof !1518

72:                                               ; preds = %68, %88
  %73 = phi ptr [ %89, %88 ], [ %69, %68 ]
  %74 = call fastcc ptr @get_def_from_ptr(ptr noundef %73) #21
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !681
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %83, label %80, !prof !1519

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !671
  br label %83

83:                                               ; preds = %72, %80
  %84 = phi ptr [ %82, %80 ], [ %74, %72 ]
  %85 = call fastcc zeroext i8 @symbol_marked_for_renaming(ptr noundef %84) #21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87, !prof !1520

87:                                               ; preds = %83
  call fastcc void @mark_def_interesting(ptr noundef %84, ptr noundef %44, ptr noundef %0, i8 noundef zeroext %1) #21
  br label %88

88:                                               ; preds = %87, %83
  %89 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %7) #21
  %90 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #21
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %72, label %92, !prof !1521, !llvm.loop !1522

92:                                               ; preds = %88, %68
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #23
  call fastcc void @gsi_next(ptr noundef nonnull %3) #21
  %93 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21, !range !717
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %43, label %95, !prof !1523, !llvm.loop !1524

95:                                               ; preds = %92, %40
  %96 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98, !prof !1525

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %100, %98 ], [ %96, %95 ]
  call fastcc void @prepare_block_for_update(ptr noundef nonnull %99, i8 noundef zeroext %1) #21
  %100 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %99) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %98, !prof !1526, !llvm.loop !1527

102:                                              ; preds = %98, %95
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator_for_set(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_updated_phi_nodes_for(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1528 !PGOFuncName !1529 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %9 = tail call fastcc ptr @find_def_blocks_for(ptr noundef %0) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11, !prof !1530

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !832
  %14 = load ptr, ptr %13, align 8, !tbaa !740
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16, !prof !1531

16:                                               ; preds = %11
  %17 = tail call ptr @compute_idf(ptr noundef nonnull %13, ptr noundef %1) #22
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %52, !prof !1532

22:                                               ; preds = %16
  switch i32 %3, label %51 [
    i32 2048, label %23
    i32 8192, label %52
  ], !prof !1533

23:                                               ; preds = %22
  %24 = load ptr, ptr %12, align 8, !tbaa !832
  %25 = tail call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %24) #22
  %26 = load ptr, ptr @cfun, align 8, !tbaa !665
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !714
  %29 = load ptr, ptr %28, align 8, !tbaa !730
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %53, label %31, !prof !1534

31:                                               ; preds = %23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %17, ptr noundef nonnull %6) #21
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34, !prof !1535

34:                                               ; preds = %31, %48
  %35 = load ptr, ptr @cfun, align 8, !tbaa !665
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !714
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !719
  %40 = load i32, ptr %6, align 4, !tbaa !681
  %41 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %39, i32 noundef %40) #21
  %42 = icmp eq ptr %41, %25
  br i1 %42, label %48, label %43, !prof !1536

43:                                               ; preds = %34
  %44 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %41, ptr noundef %25) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46, !prof !1537

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %40) #22
  br label %48

48:                                               ; preds = %34, %43, %46
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %34, !prof !1538, !llvm.loop !1539

51:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 3054, ptr noundef nonnull @.str.1) #22
  br label %52

52:                                               ; preds = %16, %51, %22
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %17) #22
  br label %53

53:                                               ; preds = %48, %52, %31, %23
  %54 = load ptr, ptr %18, align 8, !tbaa !740
  %55 = icmp eq ptr %54, null
  br i1 %55, label %90, label %56, !prof !1540

56:                                               ; preds = %53
  %57 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef nonnull %18) #22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %6) #21
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60, !prof !1541

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %8, i64 8
  br label %62

62:                                               ; preds = %60, %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  %63 = load ptr, ptr @cfun, align 8, !tbaa !665
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !714
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !719
  %68 = load i32, ptr %6, align 4, !tbaa !681
  %69 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %67, i32 noundef %68) #21
  %70 = tail call fastcc ptr @ei_start_1(ptr noundef %69) #21
  store i32 0, ptr %8, align 8, !tbaa.struct !722
  store ptr %70, ptr %61, align 8, !tbaa.struct !723
  %71 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %70, ptr noundef nonnull %7) #21, !range !717
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %86, label %73, !prof !1542

73:                                               ; preds = %62, %81
  %74 = load ptr, ptr %7, align 8, !tbaa !665
  %75 = load ptr, ptr %74, align 8, !tbaa !725
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !728
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %81, !prof !1543

79:                                               ; preds = %73
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %77) #22
  br label %81

81:                                               ; preds = %73, %79
  call fastcc void @ei_next(ptr noundef nonnull %8) #21
  %82 = load i32, ptr %8, align 8
  %83 = load ptr, ptr %61, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %7) #21, !range !717
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %73, !prof !1544, !llvm.loop !1545

86:                                               ; preds = %81, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %62, !prof !1546, !llvm.loop !1547

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
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !1442 !PGOFuncName !1548 {
  %3 = load ptr, ptr %0, align 8, !tbaa !844
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1549

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
  %15 = load i64, ptr %14, align 8, !tbaa !749
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !671
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !671
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !749
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !749
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_def_site_for(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1550 !PGOFuncName !1551 {
  %3 = load ptr, ptr @names_to_release, align 8, !tbaa !665
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !1552

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !671
  %8 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !1553

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2618, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %2, %5, %10
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !671
  %14 = tail call fastcc ptr @gimple_bb(ptr noundef %13) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16, !prof !1554

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !728
  %19 = load ptr, ptr @cfun, align 8, !tbaa !665
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !714
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !715
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %26, label %25, !prof !1555

25:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2624, ptr noundef nonnull @.str.1) #22
  br label %26

26:                                               ; preds = %16, %25
  tail call fastcc void @mark_block_for_update(ptr noundef nonnull %14) #21
  tail call fastcc void @mark_def_interesting(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %14, i8 noundef zeroext %1) #21
  br label %27

27:                                               ; preds = %26, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_use_sites_for(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1556 !PGOFuncName !1557 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #23
  %4 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %0) #21
  %5 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !717
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %25, !prof !1558

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %22, %20 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !671
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #21, !range !925
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %18, !prof !1559

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %8) #21
  %15 = sext i32 %14 to i64
  %16 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %10, i64 noundef %15) #21
  %17 = load ptr, ptr %16, align 8, !tbaa !725
  br label %20

18:                                               ; preds = %7
  %19 = tail call fastcc ptr @gimple_bb(ptr noundef %10) #21
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %17, %13 ]
  tail call fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %10, ptr noundef %21, i8 noundef zeroext %1) #21
  %22 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #21
  %23 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #21, !range !717
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %7, label %25, !prof !1560, !llvm.loop !1561

25:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_def_interesting(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1562 !PGOFuncName !1563 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @blocks_to_update, align 8, !tbaa !665
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !728
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !1564

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 2431, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %4, %12
  tail call fastcc void @set_register_defs(ptr noundef %1, i8 noundef zeroext 1) #21
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %42, label %15, !prof !1565

15:                                               ; preds = %13
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !925
  %17 = icmp eq i32 %16, 16
  %18 = zext i1 %17 to i8
  tail call fastcc void @set_def_block(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %18) #21
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %42, !prof !1566

22:                                               ; preds = %15
  %23 = tail call fastcc zeroext i8 @is_new_name(ptr noundef nonnull %0) #21, !range !717
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25, !prof !1567

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %26 = tail call fastcc ptr @names_replaced_by(ptr noundef nonnull %0) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28, !prof !1568

28:                                               ; preds = %25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull %6) #21
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31, !prof !1569

31:                                               ; preds = %28, %31
  %32 = load ptr, ptr @cfun, align 8, !tbaa !665
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !673
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !676
  %37 = load i32, ptr %6, align 4, !tbaa !681
  %38 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %36, i32 noundef %37) #21
  tail call fastcc void @set_def_block(ptr noundef %38, ptr noundef %2, i8 noundef zeroext %18) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !717
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %31, !prof !1570, !llvm.loop !1571

41:                                               ; preds = %31, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %42

42:                                               ; preds = %15, %22, %41, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1556 !PGOFuncName !1572 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !1573
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1269
  store ptr %6, ptr %0, align 8, !tbaa !1575
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !717
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !1576
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1577 !PGOFuncName !1578 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1575
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1573
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 !prof !1579 !PGOFuncName !1580 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #21
  %4 = load ptr, ptr %3, align 8, !tbaa !1352
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1581 !PGOFuncName !1582 {
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #21
  tail call fastcc void @mark_block_for_update(ptr noundef %5) #21
  tail call fastcc void @mark_block_for_update(ptr noundef %2) #21
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #21, !range !925
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %10, !prof !1583

8:                                                ; preds = %4
  tail call fastcc void @mark_phi_for_rewrite(ptr noundef %5, ptr noundef %1) #21
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %24, label %15, !prof !1584

10:                                               ; preds = %4
  tail call fastcc void @set_rewrite_uses(ptr noundef %1, i8 noundef zeroext 1) #21
  %11 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %1) #21, !range !717
  %12 = icmp ne i8 %11, 0
  %13 = icmp eq i8 %3, 0
  %14 = or i1 %13, %12
  br i1 %14, label %24, label %15, !prof !1585

15:                                               ; preds = %10, %8
  %16 = tail call fastcc ptr @get_def_blocks_for(ptr noundef %0) #21
  %17 = getelementptr inbounds %struct.def_blocks_d, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !832
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !728
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !1586

23:                                               ; preds = %15
  tail call fastcc void @set_livein_block(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %24

24:                                               ; preds = %8, %23, %15, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #6 !prof !1587 !PGOFuncName !1588 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1575
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1269
  store ptr %4, ptr %0, align 8, !tbaa !1575
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #21, !range !717
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !1589
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!662}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!36 = !{ptr @get_current_def, ptr @get_ssa_name_ann, i64 2619662}
!37 = !{ptr @get_current_def, ptr @var_ann, i64 3898666}
!38 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_base_length, i64 5551892}
!39 = !{ptr @get_ssa_name_ann, ptr @VEC_tree_base_length, i64 18}
!40 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_heap_reserve, i64 18}
!41 = !{ptr @get_ssa_name_ann, ptr @xcalloc, i64 35843}
!42 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_base_quick_push, i64 35843}
!43 = !{ptr @get_ssa_name_ann, ptr @VEC_ssa_name_info_p_base_index, i64 5551892}
!44 = !{ptr @VEC_ssa_name_info_p_heap_reserve, ptr @VEC_ssa_name_info_p_base_space, i64 17}
!45 = !{ptr @VEC_ssa_name_info_p_heap_reserve, ptr @vec_heap_p_reserve, i64 10}
!46 = !{ptr @set_current_def, ptr @get_ssa_name_ann, i64 1844612}
!47 = !{ptr @set_current_def, ptr @var_ann, i64 2852315}
!48 = !{ptr @compute_global_livein, ptr @xmalloc, i64 15615}
!49 = !{ptr @compute_global_livein, ptr @bmp_iter_set_init, i64 15615}
!50 = !{ptr @compute_global_livein, ptr @bmp_iter_set, i64 41420}
!51 = !{ptr @compute_global_livein, ptr @VEC_basic_block_base_index, i64 25805}
!52 = !{ptr @compute_global_livein, ptr @bmp_iter_next, i64 25805}
!53 = !{ptr @compute_global_livein, ptr @ei_start_1, i64 170922}
!54 = !{ptr @compute_global_livein, ptr @ei_cond, i64 409634}
!55 = !{ptr @compute_global_livein, ptr @bitmap_bit_p, i64 403294}
!56 = !{ptr @compute_global_livein, ptr @bitmap_set_bit, i64 145116}
!57 = !{ptr @compute_global_livein, ptr @ei_next, i64 238712}
!58 = !{ptr @compute_global_livein, ptr @free, i64 15615}
!59 = !{ptr @ei_cond, ptr @ei_end_p, i64 15621298}
!60 = !{ptr @ei_cond, ptr @ei_edge, i64 10603816}
!61 = !{ptr @ei_next, ptr @ei_container, i64 21207631}
!62 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 10603816}
!63 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!64 = !{ptr @ei_end_p, ptr @ei_container, i64 31162334}
!65 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 15621298}
!66 = !{ptr @ei_edge, ptr @ei_container, i64 21207631}
!67 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 10603816}
!68 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!69 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 17928}
!70 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 17928}
!71 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 493260}
!72 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 475332}
!73 = !{ptr @first_htab_element, ptr @htab_size, i64 17928}
!74 = !{ptr @rewrite_into_ssa, ptr @timevar_push_1, i64 1}
!75 = !{ptr @rewrite_into_ssa, ptr @init_ssa_operands, i64 8964}
!76 = !{ptr @rewrite_into_ssa, ptr @init_ssa_renamer, i64 8964}
!77 = !{ptr @rewrite_into_ssa, ptr @sbitmap_alloc, i64 8964}
!78 = !{ptr @rewrite_into_ssa, ptr @sbitmap_zero, i64 8964}
!79 = !{ptr @rewrite_into_ssa, ptr @xmalloc, i64 8964}
!80 = !{ptr @rewrite_into_ssa, ptr @bitmap_obstack_alloc_stat, i64 189310}
!81 = !{ptr @rewrite_into_ssa, ptr @calculate_dominance_info, i64 8964}
!82 = !{ptr @rewrite_into_ssa, ptr @compute_dominance_frontiers, i64 8964}
!83 = !{ptr @rewrite_into_ssa, ptr @mark_def_site_blocks, i64 8964}
!84 = !{ptr @rewrite_into_ssa, ptr @insert_phi_nodes, i64 8964}
!85 = !{ptr @rewrite_into_ssa, ptr @rewrite_blocks, i64 8964}
!86 = !{ptr @rewrite_into_ssa, ptr @bitmap_obstack_free, i64 189310}
!87 = !{ptr @rewrite_into_ssa, ptr @free, i64 26892}
!88 = !{ptr @rewrite_into_ssa, ptr @fini_ssa_renamer, i64 8964}
!89 = !{ptr @rewrite_into_ssa, ptr @timevar_pop_1, i64 1}
!90 = !{ptr @init_ssa_renamer, ptr @fancy_abort, i64 1}
!91 = !{ptr @init_ssa_renamer, ptr @gimple_referenced_vars, i64 8964}
!92 = !{ptr @init_ssa_renamer, ptr @htab_elements, i64 8964}
!93 = !{ptr @init_ssa_renamer, ptr @htab_create, i64 8964}
!94 = !{ptr @init_ssa_renamer, ptr @first_referenced_var, i64 8964}
!95 = !{ptr @init_ssa_renamer, ptr @end_referenced_vars_p, i64 246604}
!96 = !{ptr @init_ssa_renamer, ptr @set_current_def, i64 237640}
!97 = !{ptr @init_ssa_renamer, ptr @next_referenced_var, i64 237640}
!98 = !{ptr @mark_def_site_blocks, ptr @bitmap_obstack_alloc_stat, i64 8964}
!99 = !{ptr @mark_def_site_blocks, ptr @init_walk_dominator_tree, i64 8964}
!100 = !{ptr @mark_def_site_blocks, ptr @walk_dominator_tree, i64 8964}
!101 = !{ptr @mark_def_site_blocks, ptr @fini_walk_dominator_tree, i64 8964}
!102 = !{ptr @mark_def_site_blocks, ptr @bitmap_obstack_free, i64 8964}
!103 = !{ptr @insert_phi_nodes, ptr @timevar_push_1, i64 1}
!104 = !{ptr @insert_phi_nodes, ptr @bitmap_obstack_alloc_stat, i64 8964}
!105 = !{ptr @insert_phi_nodes, ptr @first_referenced_var, i64 8964}
!106 = !{ptr @insert_phi_nodes, ptr @end_referenced_vars_p, i64 246604}
!107 = !{ptr @insert_phi_nodes, ptr @find_def_blocks_for, i64 309380}
!108 = !{ptr @insert_phi_nodes, ptr @get_phi_state, i64 210867}
!109 = !{ptr @insert_phi_nodes, ptr @bitmap_set_bit, i64 71739}
!110 = !{ptr @insert_phi_nodes, ptr @next_referenced_var, i64 237640}
!111 = !{ptr @insert_phi_nodes, ptr @bmp_iter_set_init, i64 8964}
!112 = !{ptr @insert_phi_nodes, ptr @bmp_iter_set, i64 80704}
!113 = !{ptr @insert_phi_nodes, ptr @referenced_var_lookup, i64 71740}
!114 = !{ptr @insert_phi_nodes, ptr @compute_idf, i64 71740}
!115 = !{ptr @insert_phi_nodes, ptr @insert_phi_nodes_for, i64 71740}
!116 = !{ptr @insert_phi_nodes, ptr @bitmap_obstack_free, i64 80704}
!117 = !{ptr @insert_phi_nodes, ptr @bmp_iter_next, i64 71740}
!118 = !{ptr @insert_phi_nodes, ptr @timevar_pop_1, i64 1}
!119 = !{ptr @rewrite_blocks, ptr @timevar_push_1, i64 1}
!120 = !{ptr @rewrite_blocks, ptr @VEC_tree_heap_alloc, i64 57899}
!121 = !{ptr @rewrite_blocks, ptr @init_walk_dominator_tree, i64 57899}
!122 = !{ptr @rewrite_blocks, ptr @walk_dominator_tree, i64 57899}
!123 = !{ptr @rewrite_blocks, ptr @fini_walk_dominator_tree, i64 57899}
!124 = !{ptr @rewrite_blocks, ptr @VEC_tree_heap_free, i64 57899}
!125 = !{ptr @rewrite_blocks, ptr @timevar_pop_1, i64 1}
!126 = !{ptr @fini_ssa_renamer, ptr @htab_delete, i64 47582}
!127 = !{ptr @def_blocks_free, ptr @bitmap_obstack_free, i64 1362369}
!128 = !{ptr @def_blocks_free, ptr @free, i64 454123}
!129 = !{ptr @mark_def_sites_block, ptr @bitmap_clear, i64 198294}
!130 = !{ptr @mark_def_sites_block, ptr @gsi_start_bb, i64 198294}
!131 = !{ptr @mark_def_sites_block, ptr @gsi_end_p, i64 772250}
!132 = !{ptr @mark_def_sites_block, ptr @gsi_stmt, i64 573956}
!133 = !{ptr @mark_def_sites_block, ptr @mark_def_sites, i64 573956}
!134 = !{ptr @mark_def_sites_block, ptr @gsi_next, i64 573956}
!135 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 5469224}
!136 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 5469224}
!137 = !{ptr @mark_def_sites, ptr @update_stmt, i64 573958}
!138 = !{ptr @mark_def_sites, ptr @fancy_abort, i64 3}
!139 = !{ptr @mark_def_sites, ptr @set_register_defs, i64 960222}
!140 = !{ptr @mark_def_sites, ptr @set_rewrite_uses, i64 1124769}
!141 = !{ptr @mark_def_sites, ptr @is_gimple_debug, i64 573958}
!142 = !{ptr @mark_def_sites, ptr @op_iter_init_use, i64 573957}
!143 = !{ptr @mark_def_sites, ptr @op_iter_done, i64 2084989}
!144 = !{ptr @mark_def_sites, ptr @get_use_from_ptr, i64 550811}
!145 = !{ptr @mark_def_sites, ptr @bitmap_bit_p, i64 550811}
!146 = !{ptr @mark_def_sites, ptr @set_livein_block, i64 222781}
!147 = !{ptr @mark_def_sites, ptr @op_iter_next_use, i64 550811}
!148 = !{ptr @mark_def_sites, ptr @op_iter_init_tree, i64 573957}
!149 = !{ptr @mark_def_sites, ptr @set_def_block, i64 386264}
!150 = !{ptr @mark_def_sites, ptr @bitmap_set_bit, i64 386264}
!151 = !{ptr @mark_def_sites, ptr @op_iter_next_tree, i64 386264}
!152 = !{ptr @mark_def_sites, ptr @rewrite_uses_p, i64 573957}
!153 = !{ptr @mark_def_sites, ptr @register_defs_p, i64 122543}
!154 = !{ptr @mark_def_sites, ptr @SET_BIT, i64 542613}
!155 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 573958}
!156 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 572924}
!157 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 572924}
!158 = !{ptr @set_register_defs, ptr @gimple_set_plf, i64 8695947}
!159 = !{ptr @set_rewrite_uses, ptr @gimple_set_visited, i64 11010379}
!160 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 6717753}
!161 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!162 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 7256038}
!163 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 7256038}
!164 = !{ptr @set_livein_block, ptr @get_phi_state, i64 1843910}
!165 = !{ptr @set_livein_block, ptr @get_def_blocks_for, i64 1843910}
!166 = !{ptr @set_livein_block, ptr @bitmap_set_bit, i64 1843910}
!167 = !{ptr @set_livein_block, ptr @bitmap_first_set_bit, i64 72019}
!168 = !{ptr @set_livein_block, ptr @VEC_basic_block_base_index, i64 72018}
!169 = !{ptr @set_livein_block, ptr @dominated_by_p, i64 72018}
!170 = !{ptr @set_livein_block, ptr @set_phi_state, i64 1771943}
!171 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!172 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 573958}
!173 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 573958}
!174 = !{ptr @set_def_block, ptr @get_phi_state, i64 1424759}
!175 = !{ptr @set_def_block, ptr @get_def_blocks_for, i64 1424759}
!176 = !{ptr @set_def_block, ptr @bitmap_set_bit, i64 1755339}
!177 = !{ptr @set_def_block, ptr @set_phi_state, i64 1424759}
!178 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!179 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 386264}
!180 = !{ptr @rewrite_uses_p, ptr @gimple_visited_p, i64 11674838}
!181 = !{ptr @register_defs_p, ptr @gimple_plf, i64 7229034}
!182 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 18676898}
!183 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!184 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 5446228}
!185 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 829683}
!186 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 7256038}
!187 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 967178}
!188 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 5446228}
!189 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 829682}
!190 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 7256038}
!191 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 967177}
!192 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 1796859}
!193 = !{ptr @get_phi_state, ptr @get_ssa_name_ann, i64 543870}
!194 = !{ptr @get_phi_state, ptr @var_ann, i64 3348482}
!195 = !{ptr @get_def_blocks_for, ptr @htab_find_slot, i64 5713652}
!196 = !{ptr @get_def_blocks_for, ptr @xmalloc, i64 454124}
!197 = !{ptr @get_def_blocks_for, ptr @bitmap_obstack_alloc_stat, i64 1362372}
!198 = !{ptr @set_phi_state, ptr @get_ssa_name_ann, i64 543750}
!199 = !{ptr @set_phi_state, ptr @var_ann, i64 2652951}
!200 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 898760}
!201 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!202 = !{ptr @find_def_blocks_for, ptr @htab_find, i64 622583}
!203 = !{ptr @insert_phi_nodes_for, ptr @find_def_blocks_for, i64 177053}
!204 = !{ptr @insert_phi_nodes_for, ptr @fancy_abort, i64 7522}
!205 = !{ptr @insert_phi_nodes_for, ptr @bitmap_and_compl_into, i64 177053}
!206 = !{ptr @insert_phi_nodes_for, ptr @prune_unused_phi_nodes, i64 177053}
!207 = !{ptr @insert_phi_nodes_for, ptr @bmp_iter_set_init, i64 177053}
!208 = !{ptr @insert_phi_nodes_for, ptr @bmp_iter_set, i64 294783}
!209 = !{ptr @insert_phi_nodes_for, ptr @VEC_basic_block_base_index, i64 117730}
!210 = !{ptr @insert_phi_nodes_for, ptr @mark_block_for_update, i64 91201}
!211 = !{ptr @insert_phi_nodes_for, ptr @create_phi_node, i64 117731}
!212 = !{ptr @insert_phi_nodes_for, ptr @duplicate_ssa_name, i64 33371}
!213 = !{ptr @insert_phi_nodes_for, ptr @gimple_phi_set_result, i64 33371}
!214 = !{ptr @insert_phi_nodes_for, ptr @add_new_name_mapping, i64 33371}
!215 = !{ptr @insert_phi_nodes_for, ptr @ei_start_1, i64 33371}
!216 = !{ptr @insert_phi_nodes_for, ptr @ei_cond, i64 104271}
!217 = !{ptr @insert_phi_nodes_for, ptr @add_phi_arg, i64 70900}
!218 = !{ptr @insert_phi_nodes_for, ptr @ei_next, i64 70900}
!219 = !{ptr @insert_phi_nodes_for, ptr @target_for_debug_bind, i64 84360}
!220 = !{ptr @insert_phi_nodes_for, ptr @gimple_phi_result_ptr, i64 1}
!221 = !{ptr @insert_phi_nodes_for, ptr @get_def_from_ptr, i64 1}
!222 = !{ptr @insert_phi_nodes_for, ptr @gimple_build_debug_bind_stat, i64 1}
!223 = !{ptr @insert_phi_nodes_for, ptr @gsi_after_labels, i64 1}
!224 = !{ptr @insert_phi_nodes_for, ptr @gsi_insert_before, i64 1}
!225 = !{ptr @insert_phi_nodes_for, ptr @set_register_defs, i64 117730}
!226 = !{ptr @insert_phi_nodes_for, ptr @mark_phi_for_rewrite, i64 117730}
!227 = !{ptr @insert_phi_nodes_for, ptr @bmp_iter_next, i64 117730}
!228 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_clear, i64 84849}
!229 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_obstack_alloc_stat, i64 165398}
!230 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_and_compl, i64 92204}
!231 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_and_compl_into, i64 92204}
!232 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_obstack_free, i64 165398}
!233 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_ior, i64 73194}
!234 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_count_bits, i64 73194}
!235 = !{ptr @prune_unused_phi_nodes, ptr @xmalloc, i64 73194}
!236 = !{ptr @prune_unused_phi_nodes, ptr @bmp_iter_set_init, i64 146388}
!237 = !{ptr @prune_unused_phi_nodes, ptr @bmp_iter_set, i64 1779280}
!238 = !{ptr @prune_unused_phi_nodes, ptr @VEC_basic_block_base_index, i64 1704304}
!239 = !{ptr @prune_unused_phi_nodes, ptr @bb_dom_dfs_in, i64 1586576}
!240 = !{ptr @prune_unused_phi_nodes, ptr @bb_dom_dfs_out, i64 718326}
!241 = !{ptr @prune_unused_phi_nodes, ptr @bmp_iter_next, i64 1632892}
!242 = !{ptr @prune_unused_phi_nodes, ptr @fancy_abort, i64 3}
!243 = !{ptr @prune_unused_phi_nodes, ptr @spec_qsort, i64 73194}
!244 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_heap_alloc, i64 73194}
!245 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_quick_push, i64 791520}
!246 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_pop, i64 1759557}
!247 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_length, i64 1832751}
!248 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_base_index, i64 718326}
!249 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_heap_safe_push, i64 968037}
!250 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_bit_p, i64 2662570}
!251 = !{ptr @prune_unused_phi_nodes, ptr @get_immediate_dominator, i64 868250}
!252 = !{ptr @prune_unused_phi_nodes, ptr @find_dfsnum_interval, i64 868250}
!253 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_set_bit, i64 171199}
!254 = !{ptr @prune_unused_phi_nodes, ptr @ei_start_1, i64 117728}
!255 = !{ptr @prune_unused_phi_nodes, ptr @ei_cond, i64 451215}
!256 = !{ptr @prune_unused_phi_nodes, ptr @ei_next, i64 333487}
!257 = !{ptr @prune_unused_phi_nodes, ptr @VEC_int_heap_free, i64 73194}
!258 = !{ptr @prune_unused_phi_nodes, ptr @bitmap_copy, i64 73194}
!259 = !{ptr @prune_unused_phi_nodes, ptr @free, i64 73194}
!260 = !{ptr @mark_block_for_update, ptr @fancy_abort, i64 1}
!261 = !{ptr @mark_block_for_update, ptr @bitmap_bit_p, i64 9752108}
!262 = !{ptr @mark_block_for_update, ptr @bitmap_set_bit, i64 1911562}
!263 = !{ptr @mark_block_for_update, ptr @initialize_flags_in_bb, i64 1911562}
!264 = !{ptr @add_new_name_mapping, ptr @timevar_push_1, i64 1}
!265 = !{ptr @add_new_name_mapping, ptr @fancy_abort, i64 2}
!266 = !{ptr @add_new_name_mapping, ptr @is_gimple_reg, i64 460417}
!267 = !{ptr @add_new_name_mapping, ptr @bitmap_set_bit, i64 37553}
!268 = !{ptr @add_new_name_mapping, ptr @VEC_tree_base_length, i64 460417}
!269 = !{ptr @add_new_name_mapping, ptr @sbitmap_resize, i64 650}
!270 = !{ptr @add_new_name_mapping, ptr @add_to_repl_tbl, i64 460417}
!271 = !{ptr @add_new_name_mapping, ptr @is_new_name, i64 460417}
!272 = !{ptr @add_new_name_mapping, ptr @names_replaced_by, i64 8446}
!273 = !{ptr @add_new_name_mapping, ptr @bitmap_ior_into, i64 4223}
!274 = !{ptr @add_new_name_mapping, ptr @SET_BIT, i64 920834}
!275 = !{ptr @add_new_name_mapping, ptr @timevar_pop_1, i64 1}
!276 = !{ptr @mark_phi_for_rewrite, ptr @rewrite_uses_p, i64 698776}
!277 = !{ptr @mark_phi_for_rewrite, ptr @set_rewrite_uses, i64 385716}
!278 = !{ptr @mark_phi_for_rewrite, ptr @bitmap_set_bit, i64 359186}
!279 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_heap_reserve, i64 359186}
!280 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_length, i64 359186}
!281 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_quick_push, i64 14132}
!282 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_index, i64 359186}
!283 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_heap_alloc, i64 312190}
!284 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_heap_safe_push, i64 359186}
!285 = !{ptr @mark_phi_for_rewrite, ptr @VEC_gimple_vec_base_replace, i64 359186}
!286 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 73195}
!287 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_heap_reserve, i64 968057}
!288 = !{ptr @VEC_int_heap_safe_push, ptr @VEC_int_base_quick_push, i64 968057}
!289 = !{ptr @VEC_int_heap_free, ptr @free, i64 73194}
!290 = !{ptr @VEC_int_heap_reserve, ptr @VEC_int_base_space, i64 968057}
!291 = !{ptr @VEC_int_heap_reserve, ptr @vec_heap_o_reserve, i64 25419}
!292 = !{ptr @initialize_flags_in_bb, ptr @gsi_start_phis, i64 1911561}
!293 = !{ptr @initialize_flags_in_bb, ptr @gsi_end_p, i64 10040333}
!294 = !{ptr @initialize_flags_in_bb, ptr @gsi_stmt, i64 6217211}
!295 = !{ptr @initialize_flags_in_bb, ptr @set_rewrite_uses, i64 6217211}
!296 = !{ptr @initialize_flags_in_bb, ptr @set_register_defs, i64 6217211}
!297 = !{ptr @initialize_flags_in_bb, ptr @gsi_next, i64 6217211}
!298 = !{ptr @initialize_flags_in_bb, ptr @gsi_start_bb, i64 1911561}
!299 = !{ptr @initialize_flags_in_bb, ptr @gimple_modified_p, i64 5400672}
!300 = !{ptr @initialize_flags_in_bb, ptr @fancy_abort, i64 1}
!301 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 5400674}
!302 = !{ptr @add_to_repl_tbl, ptr @htab_find_slot, i64 460417}
!303 = !{ptr @add_to_repl_tbl, ptr @xmalloc, i64 460416}
!304 = !{ptr @add_to_repl_tbl, ptr @bitmap_obstack_alloc_stat, i64 460416}
!305 = !{ptr @add_to_repl_tbl, ptr @bitmap_set_bit, i64 460417}
!306 = !{ptr @names_replaced_by, ptr @htab_find_slot, i64 583668}
!307 = !{ptr @VEC_gimple_vec_heap_reserve, ptr @VEC_gimple_vec_base_space, i64 359187}
!308 = !{ptr @VEC_gimple_vec_heap_reserve, ptr @vec_heap_p_reserve, i64 18}
!309 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 312192}
!310 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 359187}
!311 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 359187}
!312 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 359187}
!313 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 25}
!314 = !{ptr @rewrite_enter_block, ptr @fprintf, i64 1}
!315 = !{ptr @rewrite_enter_block, ptr @VEC_tree_heap_safe_push, i64 198294}
!316 = !{ptr @rewrite_enter_block, ptr @gsi_start_phis, i64 198294}
!317 = !{ptr @rewrite_enter_block, ptr @gsi_end_p, i64 974152}
!318 = !{ptr @rewrite_enter_block, ptr @gsi_stmt, i64 26530}
!319 = !{ptr @rewrite_enter_block, ptr @gimple_phi_result, i64 26530}
!320 = !{ptr @rewrite_enter_block, ptr @is_gimple_reg, i64 26530}
!321 = !{ptr @rewrite_enter_block, ptr @fancy_abort, i64 1}
!322 = !{ptr @rewrite_enter_block, ptr @register_new_def, i64 26530}
!323 = !{ptr @rewrite_enter_block, ptr @gsi_next, i64 593082}
!324 = !{ptr @rewrite_enter_block, ptr @gsi_start_bb, i64 182776}
!325 = !{ptr @rewrite_enter_block, ptr @rewrite_stmt, i64 566552}
!326 = !{ptr @rewrite_enter_block, ptr @rewrite_add_phi_arguments, i64 198294}
!327 = !{ptr @rewrite_leave_block, ptr @VEC_tree_base_length, i64 469805}
!328 = !{ptr @rewrite_leave_block, ptr @VEC_tree_base_pop, i64 468256}
!329 = !{ptr @rewrite_leave_block, ptr @is_gimple_reg, i64 129508}
!330 = !{ptr @rewrite_leave_block, ptr @set_current_def, i64 271511}
!331 = !{ptr @rewrite_update_enter_block, ptr @fprintf, i64 1}
!332 = !{ptr @rewrite_update_enter_block, ptr @VEC_tree_heap_safe_push, i64 3047299}
!333 = !{ptr @rewrite_update_enter_block, ptr @bitmap_bit_p, i64 4977946}
!334 = !{ptr @rewrite_update_enter_block, ptr @ei_start_1, i64 1930648}
!335 = !{ptr @rewrite_update_enter_block, ptr @ei_cond, i64 4892262}
!336 = !{ptr @rewrite_update_enter_block, ptr @ei_next, i64 2961614}
!337 = !{ptr @rewrite_update_enter_block, ptr @gsi_start_phis, i64 1930648}
!338 = !{ptr @rewrite_update_enter_block, ptr @gsi_end_p, i64 10219354}
!339 = !{ptr @rewrite_update_enter_block, ptr @gsi_stmt, i64 6358059}
!340 = !{ptr @rewrite_update_enter_block, ptr @register_defs_p, i64 915676}
!341 = !{ptr @rewrite_update_enter_block, ptr @gimple_phi_result, i64 389344}
!342 = !{ptr @rewrite_update_enter_block, ptr @symbol_marked_for_renaming, i64 389344}
!343 = !{ptr @rewrite_update_enter_block, ptr @register_new_update_single, i64 285554}
!344 = !{ptr @rewrite_update_enter_block, ptr @is_new_name, i64 200438}
!345 = !{ptr @rewrite_update_enter_block, ptr @names_replaced_by, i64 103209}
!346 = !{ptr @rewrite_update_enter_block, ptr @register_new_update_set, i64 103209}
!347 = !{ptr @rewrite_update_enter_block, ptr @is_old_name, i64 200438}
!348 = !{ptr @rewrite_update_enter_block, ptr @gsi_next, i64 6358059}
!349 = !{ptr @rewrite_update_enter_block, ptr @fancy_abort, i64 1}
!350 = !{ptr @rewrite_update_enter_block, ptr @gsi_start_bb, i64 1930647}
!351 = !{ptr @rewrite_update_enter_block, ptr @rewrite_update_stmt, i64 5442383}
!352 = !{ptr @rewrite_update_enter_block, ptr @rewrite_update_phi_arguments, i64 1930648}
!353 = !{ptr @rewrite_update_leave_block, ptr @VEC_tree_base_length, i64 4531751}
!354 = !{ptr @rewrite_update_leave_block, ptr @VEC_tree_base_pop, i64 5992395}
!355 = !{ptr @rewrite_update_leave_block, ptr @set_current_def, i64 1484452}
!356 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 57899}
!357 = !{ptr @VEC_tree_heap_free, ptr @free, i64 57898}
!358 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 3519243}
!359 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 3519243}
!360 = !{ptr @register_new_def, ptr @get_phi_state, i64 412793}
!361 = !{ptr @register_new_def, ptr @get_current_def, i64 273650}
!362 = !{ptr @register_new_def, ptr @is_gimple_reg, i64 130528}
!363 = !{ptr @register_new_def, ptr @VEC_tree_heap_safe_push, i64 273651}
!364 = !{ptr @register_new_def, ptr @set_current_def, i64 412793}
!365 = !{ptr @rewrite_stmt, ptr @gsi_stmt, i64 566557}
!366 = !{ptr @rewrite_stmt, ptr @fancy_abort, i64 3}
!367 = !{ptr @rewrite_stmt, ptr @rewrite_uses_p, i64 1109171}
!368 = !{ptr @rewrite_stmt, ptr @register_defs_p, i64 657757}
!369 = !{ptr @rewrite_stmt, ptr @fwrite, i64 1}
!370 = !{ptr @rewrite_stmt, ptr @print_gimple_stmt, i64 1}
!371 = !{ptr @rewrite_stmt, ptr @fputc, i64 1}
!372 = !{ptr @rewrite_stmt, ptr @op_iter_init_use, i64 451414}
!373 = !{ptr @rewrite_stmt, ptr @op_iter_done, i64 1774750}
!374 = !{ptr @rewrite_stmt, ptr @get_use_from_ptr, i64 550810}
!375 = !{ptr @rewrite_stmt, ptr @get_reaching_def, i64 550810}
!376 = !{ptr @rewrite_stmt, ptr @set_ssa_use_from_ptr, i64 550810}
!377 = !{ptr @rewrite_stmt, ptr @op_iter_next_use, i64 550810}
!378 = !{ptr @rewrite_stmt, ptr @op_iter_init_def, i64 386263}
!379 = !{ptr @rewrite_stmt, ptr @get_def_from_ptr, i64 772526}
!380 = !{ptr @rewrite_stmt, ptr @make_ssa_name, i64 386263}
!381 = !{ptr @rewrite_stmt, ptr @register_new_def, i64 386263}
!382 = !{ptr @rewrite_stmt, ptr @target_for_debug_bind, i64 386263}
!383 = !{ptr @rewrite_stmt, ptr @gimple_build_debug_bind_stat, i64 1}
!384 = !{ptr @rewrite_stmt, ptr @gsi_insert_after, i64 1}
!385 = !{ptr @rewrite_stmt, ptr @op_iter_next_def, i64 386263}
!386 = !{ptr @rewrite_add_phi_arguments, ptr @ei_start_1, i64 198294}
!387 = !{ptr @rewrite_add_phi_arguments, ptr @ei_cond, i64 503682}
!388 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_start_phis, i64 305388}
!389 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_end_p, i64 397368}
!390 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_stmt, i64 91980}
!391 = !{ptr @rewrite_add_phi_arguments, ptr @gimple_phi_result, i64 91980}
!392 = !{ptr @rewrite_add_phi_arguments, ptr @get_reaching_def, i64 91980}
!393 = !{ptr @rewrite_add_phi_arguments, ptr @gimple_location, i64 91980}
!394 = !{ptr @rewrite_add_phi_arguments, ptr @add_phi_arg, i64 91980}
!395 = !{ptr @rewrite_add_phi_arguments, ptr @gsi_next, i64 91980}
!396 = !{ptr @rewrite_add_phi_arguments, ptr @ei_next, i64 305388}
!397 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 5015383}
!398 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 97722}
!399 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 2821617}
!400 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 2821617}
!401 = !{ptr @get_reaching_def, ptr @get_current_def, i64 4747989}
!402 = !{ptr @get_reaching_def, ptr @get_default_def_for, i64 49893}
!403 = !{ptr @get_reaching_def, ptr @set_current_def, i64 49893}
!404 = !{ptr @op_iter_init_def, ptr @fancy_abort, i64 2}
!405 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 4872270}
!406 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 4872270}
!407 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 641227}
!408 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 2821615}
!409 = !{ptr @get_default_def_for, ptr @gimple_default_def, i64 49892}
!410 = !{ptr @get_default_def_for, ptr @gimple_build_nop, i64 28458}
!411 = !{ptr @get_default_def_for, ptr @make_ssa_name, i64 28458}
!412 = !{ptr @get_default_def_for, ptr @set_default_def, i64 28458}
!413 = !{ptr @symbol_marked_for_renaming, ptr @bitmap_bit_p, i64 16471552}
!414 = !{ptr @register_new_update_single, ptr @get_current_def, i64 1496140}
!415 = !{ptr @register_new_update_single, ptr @VEC_tree_heap_reserve, i64 1496140}
!416 = !{ptr @register_new_update_single, ptr @VEC_tree_base_quick_push, i64 2992280}
!417 = !{ptr @register_new_update_single, ptr @set_current_def, i64 1496140}
!418 = !{ptr @register_new_update_set, ptr @bmp_iter_set_init, i64 459846}
!419 = !{ptr @register_new_update_set, ptr @bmp_iter_set, i64 923877}
!420 = !{ptr @register_new_update_set, ptr @VEC_tree_base_index, i64 464031}
!421 = !{ptr @register_new_update_set, ptr @register_new_update_single, i64 464031}
!422 = !{ptr @register_new_update_set, ptr @bmp_iter_next, i64 464031}
!423 = !{ptr @rewrite_update_stmt, ptr @rewrite_uses_p, i64 8394173}
!424 = !{ptr @rewrite_update_stmt, ptr @register_defs_p, i64 5533059}
!425 = !{ptr @rewrite_update_stmt, ptr @fwrite, i64 1}
!426 = !{ptr @rewrite_update_stmt, ptr @print_gimple_stmt, i64 1}
!427 = !{ptr @rewrite_update_stmt, ptr @fputc, i64 1}
!428 = !{ptr @rewrite_update_stmt, ptr @is_gimple_debug, i64 2861114}
!429 = !{ptr @rewrite_update_stmt, ptr @op_iter_init_use, i64 2861114}
!430 = !{ptr @rewrite_update_stmt, ptr @op_iter_done, i64 10946225}
!431 = !{ptr @rewrite_update_stmt, ptr @maybe_replace_use_in_debug_stmt, i64 6}
!432 = !{ptr @rewrite_update_stmt, ptr @op_iter_next_use, i64 5655642}
!433 = !{ptr @rewrite_update_stmt, ptr @maybe_replace_use, i64 5655636}
!434 = !{ptr @rewrite_update_stmt, ptr @op_iter_init_def, i64 1116456}
!435 = !{ptr @rewrite_update_stmt, ptr @maybe_register_def, i64 1313013}
!436 = !{ptr @rewrite_update_stmt, ptr @op_iter_next_def, i64 1313013}
!437 = !{ptr @rewrite_update_phi_arguments, ptr @ei_start_1, i64 1930648}
!438 = !{ptr @rewrite_update_phi_arguments, ptr @ei_cond, i64 4945694}
!439 = !{ptr @rewrite_update_phi_arguments, ptr @bitmap_bit_p, i64 3015046}
!440 = !{ptr @rewrite_update_phi_arguments, ptr @VEC_gimple_vec_base_index, i64 791001}
!441 = !{ptr @rewrite_update_phi_arguments, ptr @VEC_gimple_base_iterate, i64 1689761}
!442 = !{ptr @rewrite_update_phi_arguments, ptr @rewrite_uses_p, i64 898760}
!443 = !{ptr @rewrite_update_phi_arguments, ptr @fancy_abort, i64 1}
!444 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_arg_imm_use_ptr, i64 898760}
!445 = !{ptr @rewrite_update_phi_arguments, ptr @get_use_from_ptr, i64 898761}
!446 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_result, i64 170616}
!447 = !{ptr @rewrite_update_phi_arguments, ptr @get_reaching_def, i64 822552}
!448 = !{ptr @rewrite_update_phi_arguments, ptr @symbol_marked_for_renaming, i64 713906}
!449 = !{ptr @rewrite_update_phi_arguments, ptr @is_old_name, i64 345580}
!450 = !{ptr @rewrite_update_phi_arguments, ptr @phi_arg_index_from_use, i64 822552}
!451 = !{ptr @rewrite_update_phi_arguments, ptr @set_ssa_use_from_ptr, i64 822552}
!452 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_code, i64 822552}
!453 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_num_args, i64 387579}
!454 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_arg_location, i64 96422}
!455 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_location, i64 726129}
!456 = !{ptr @rewrite_update_phi_arguments, ptr @gimple_phi_arg_set_location, i64 822552}
!457 = !{ptr @rewrite_update_phi_arguments, ptr @ei_next, i64 3015046}
!458 = !{ptr @maybe_replace_use, ptr @get_use_from_ptr, i64 5655639}
!459 = !{ptr @maybe_replace_use, ptr @symbol_marked_for_renaming, i64 5655639}
!460 = !{ptr @maybe_replace_use, ptr @get_reaching_def, i64 3282645}
!461 = !{ptr @maybe_replace_use, ptr @is_old_name, i64 3983460}
!462 = !{ptr @maybe_replace_use, ptr @set_ssa_use_from_ptr, i64 1448252}
!463 = !{ptr @maybe_register_def, ptr @get_def_from_ptr, i64 1313012}
!464 = !{ptr @maybe_register_def, ptr @symbol_marked_for_renaming, i64 1313012}
!465 = !{ptr @maybe_register_def, ptr @make_ssa_name, i64 226505}
!466 = !{ptr @maybe_register_def, ptr @target_for_debug_bind, i64 226505}
!467 = !{ptr @maybe_register_def, ptr @gimple_build_debug_bind_stat, i64 1}
!468 = !{ptr @maybe_register_def, ptr @gsi_one_before_end_p, i64 1}
!469 = !{ptr @maybe_register_def, ptr @stmt_ends_bb_p, i64 1}
!470 = !{ptr @maybe_register_def, ptr @fancy_abort, i64 2}
!471 = !{ptr @maybe_register_def, ptr @ei_next, i64 8}
!472 = !{ptr @maybe_register_def, ptr @ei_cond, i64 8}
!473 = !{ptr @maybe_register_def, ptr @gsi_insert_after, i64 1}
!474 = !{ptr @maybe_register_def, ptr @register_new_update_single, i64 746556}
!475 = !{ptr @maybe_register_def, ptr @is_new_name, i64 730813}
!476 = !{ptr @maybe_register_def, ptr @names_replaced_by, i64 356637}
!477 = !{ptr @maybe_register_def, ptr @register_new_update_set, i64 356637}
!478 = !{ptr @maybe_register_def, ptr @is_old_name, i64 730813}
!479 = !{ptr @phi_arg_index_from_use, ptr @gimple_code, i64 1035273}
!480 = !{ptr @phi_arg_index_from_use, ptr @fancy_abort, i64 1}
!481 = !{ptr @phi_arg_index_from_use, ptr @gimple_phi_arg, i64 1035273}
!482 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 96422}
!483 = !{ptr @gimple_phi_arg_set_location, ptr @gimple_phi_arg, i64 822553}
!484 = !{ptr @need_ssa_update_p, ptr @fancy_abort, i64 1}
!485 = !{ptr @delete_update_ssa, ptr @free, i64 195948}
!486 = !{ptr @delete_update_ssa, ptr @htab_delete, i64 48987}
!487 = !{ptr @delete_update_ssa, ptr @bitmap_clear, i64 48987}
!488 = !{ptr @delete_update_ssa, ptr @bitmap_obstack_free, i64 147061}
!489 = !{ptr @delete_update_ssa, ptr @bmp_iter_set_init, i64 49050}
!490 = !{ptr @delete_update_ssa, ptr @bmp_iter_set, i64 361637}
!491 = !{ptr @delete_update_ssa, ptr @VEC_tree_base_index, i64 407}
!492 = !{ptr @delete_update_ssa, ptr @release_ssa_name, i64 407}
!493 = !{ptr @delete_update_ssa, ptr @bmp_iter_next, i64 312587}
!494 = !{ptr @delete_update_ssa, ptr @clear_ssa_name_info, i64 48987}
!495 = !{ptr @delete_update_ssa, ptr @fini_ssa_renamer, i64 48987}
!496 = !{ptr @delete_update_ssa, ptr @VEC_gimple_vec_base_index, i64 312180}
!497 = !{ptr @delete_update_ssa, ptr @VEC_gimple_heap_free, i64 312180}
!498 = !{ptr @delete_update_ssa, ptr @VEC_gimple_vec_base_replace, i64 312180}
!499 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 312191}
!500 = !{ptr @create_new_def_for, ptr @duplicate_ssa_name, i64 111856}
!501 = !{ptr @create_new_def_for, ptr @gimple_code, i64 111856}
!502 = !{ptr @create_new_def_for, ptr @gimple_bb, i64 70102}
!503 = !{ptr @create_new_def_for, ptr @ei_start_1, i64 70102}
!504 = !{ptr @create_new_def_for, ptr @ei_cond, i64 93354}
!505 = !{ptr @create_new_def_for, ptr @ei_next, i64 23252}
!506 = !{ptr @create_new_def_for, ptr @register_new_name_mapping, i64 111856}
!507 = !{ptr @create_new_def_for, ptr @set_current_def, i64 111856}
!508 = !{ptr @register_new_name_mapping, ptr @init_update_ssa, i64 26409}
!509 = !{ptr @register_new_name_mapping, ptr @fancy_abort, i64 1}
!510 = !{ptr @register_new_name_mapping, ptr @add_new_name_mapping, i64 427047}
!511 = !{ptr @init_update_ssa, ptr @VEC_tree_base_length, i64 97974}
!512 = !{ptr @init_update_ssa, ptr @sbitmap_alloc, i64 97974}
!513 = !{ptr @init_update_ssa, ptr @sbitmap_zero, i64 97974}
!514 = !{ptr @init_update_ssa, ptr @htab_create, i64 48987}
!515 = !{ptr @init_update_ssa, ptr @bitmap_obstack_alloc_stat, i64 48987}
!516 = !{ptr @repl_map_free, ptr @bitmap_obstack_free, i64 460417}
!517 = !{ptr @repl_map_free, ptr @free, i64 460417}
!518 = !{ptr @mark_sym_for_renaming, ptr @bitmap_set_bit, i64 1609552}
!519 = !{ptr @name_mappings_registered_p, ptr @fancy_abort, i64 1}
!520 = !{ptr @name_mappings_registered_p, ptr @htab_elements, i64 10400}
!521 = !{ptr @name_registered_for_update_p, ptr @fancy_abort, i64 1}
!522 = !{ptr @name_registered_for_update_p, ptr @is_new_name, i64 446418}
!523 = !{ptr @name_registered_for_update_p, ptr @is_old_name, i64 446054}
!524 = !{ptr @ssa_names_to_replace, ptr @fancy_abort, i64 1}
!525 = !{ptr @ssa_names_to_replace, ptr @bitmap_obstack_alloc_stat, i64 36}
!526 = !{ptr @ssa_names_to_replace, ptr @sbitmap_iter_init, i64 36}
!527 = !{ptr @ssa_names_to_replace, ptr @sbitmap_iter_cond, i64 239}
!528 = !{ptr @ssa_names_to_replace, ptr @bitmap_set_bit, i64 203}
!529 = !{ptr @ssa_names_to_replace, ptr @sbitmap_iter_next, i64 203}
!530 = !{ptr @release_ssa_name_after_update_ssa, ptr @fancy_abort, i64 2}
!531 = !{ptr @release_ssa_name_after_update_ssa, ptr @bitmap_obstack_alloc_stat, i64 100}
!532 = !{ptr @release_ssa_name_after_update_ssa, ptr @bitmap_set_bit, i64 406}
!533 = !{ptr @update_ssa, ptr @need_ssa_update_p, i64 317820}
!534 = !{ptr @update_ssa, ptr @timevar_push_1, i64 1}
!535 = !{ptr @update_ssa, ptr @init_update_ssa, i64 22579}
!536 = !{ptr @update_ssa, ptr @fancy_abort, i64 9791}
!537 = !{ptr @update_ssa, ptr @bitmap_obstack_alloc_stat, i64 4415448}
!538 = !{ptr @update_ssa, ptr @VEC_gimple_vec_heap_alloc, i64 2}
!539 = !{ptr @update_ssa, ptr @calculate_dominance_info, i64 48952}
!540 = !{ptr @update_ssa, ptr @sbitmap_zero, i64 72840}
!541 = !{ptr @update_ssa, ptr @htab_empty, i64 11952}
!542 = !{ptr @update_ssa, ptr @VEC_tree_base_length, i64 38619}
!543 = !{ptr @update_ssa, ptr @htab_create, i64 38619}
!544 = !{ptr @update_ssa, ptr @switch_virtuals_to_full_rewrite_p, i64 38619}
!545 = !{ptr @update_ssa, ptr @switch_virtuals_to_full_rewrite, i64 1}
!546 = !{ptr @update_ssa, ptr @sbitmap_first_set_bit, i64 113927}
!547 = !{ptr @update_ssa, ptr @prepare_names_to_update, i64 26372}
!548 = !{ptr @update_ssa, ptr @prepare_block_for_update, i64 22579}
!549 = !{ptr @update_ssa, ptr @nearest_common_dominator_for_set, i64 42380}
!550 = !{ptr @update_ssa, ptr @xmalloc, i64 38603}
!551 = !{ptr @update_ssa, ptr @compute_dominance_frontiers, i64 38603}
!552 = !{ptr @update_ssa, ptr @sbitmap_alloc, i64 64960}
!553 = !{ptr @update_ssa, ptr @sbitmap_copy, i64 16024}
!554 = !{ptr @update_ssa, ptr @sbitmap_iter_init, i64 64960}
!555 = !{ptr @update_ssa, ptr @sbitmap_iter_cond, i64 431244}
!556 = !{ptr @update_ssa, ptr @VEC_tree_base_index, i64 366284}
!557 = !{ptr @update_ssa, ptr @insert_updated_phi_nodes_for, i64 136113}
!558 = !{ptr @update_ssa, ptr @sbitmap_iter_next, i64 366284}
!559 = !{ptr @update_ssa, ptr @free, i64 168523}
!560 = !{ptr @update_ssa, ptr @bmp_iter_set_init, i64 136476}
!561 = !{ptr @update_ssa, ptr @bmp_iter_set, i64 2150524}
!562 = !{ptr @update_ssa, ptr @referenced_var_lookup, i64 83383}
!563 = !{ptr @update_ssa, ptr @bmp_iter_next, i64 2014048}
!564 = !{ptr @update_ssa, ptr @bitmap_obstack_free, i64 4317544}
!565 = !{ptr @update_ssa, ptr @set_current_def, i64 313554}
!566 = !{ptr @update_ssa, ptr @SET_BIT, i64 1930635}
!567 = !{ptr @update_ssa, ptr @rewrite_blocks, i64 48936}
!568 = !{ptr @update_ssa, ptr @dump_update_ssa, i64 1}
!569 = !{ptr @update_ssa, ptr @fprintf, i64 13}
!570 = !{ptr @update_ssa, ptr @fwrite, i64 1}
!571 = !{ptr @update_ssa, ptr @delete_update_ssa, i64 48952}
!572 = !{ptr @update_ssa, ptr @timevar_pop_1, i64 1}
!573 = !{ptr @VEC_gimple_vec_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 1}
!574 = !{ptr @prepare_names_to_update, ptr @bmp_iter_set_init, i64 100}
!575 = !{ptr @prepare_names_to_update, ptr @bmp_iter_set, i64 507}
!576 = !{ptr @prepare_names_to_update, ptr @RESET_BIT, i64 407}
!577 = !{ptr @prepare_names_to_update, ptr @bmp_iter_next, i64 407}
!578 = !{ptr @prepare_names_to_update, ptr @sbitmap_iter_init, i64 52744}
!579 = !{ptr @prepare_names_to_update, ptr @sbitmap_iter_cond, i64 751088}
!580 = !{ptr @prepare_names_to_update, ptr @VEC_tree_base_index, i64 970144}
!581 = !{ptr @prepare_names_to_update, ptr @prepare_def_site_for, i64 698261}
!582 = !{ptr @prepare_names_to_update, ptr @sbitmap_iter_next, i64 698344}
!583 = !{ptr @prepare_names_to_update, ptr @bitmap_bit_p, i64 15813}
!584 = !{ptr @prepare_names_to_update, ptr @prepare_use_sites_for, i64 271883}
!585 = !{ptr @prepare_block_for_update, ptr @mark_block_for_update, i64 1245944}
!586 = !{ptr @prepare_block_for_update, ptr @gsi_start_phis, i64 1245944}
!587 = !{ptr @prepare_block_for_update, ptr @gsi_end_p, i64 6269024}
!588 = !{ptr @prepare_block_for_update, ptr @gsi_stmt, i64 3777136}
!589 = !{ptr @prepare_block_for_update, ptr @gimple_phi_result, i64 407587}
!590 = !{ptr @prepare_block_for_update, ptr @symbol_marked_for_renaming, i64 8399647}
!591 = !{ptr @prepare_block_for_update, ptr @mark_def_interesting, i64 713275}
!592 = !{ptr @prepare_block_for_update, ptr @ei_start_1, i64 131076}
!593 = !{ptr @prepare_block_for_update, ptr @ei_cond, i64 499402}
!594 = !{ptr @prepare_block_for_update, ptr @mark_use_interesting, i64 2040504}
!595 = !{ptr @prepare_block_for_update, ptr @ei_next, i64 368326}
!596 = !{ptr @prepare_block_for_update, ptr @gsi_next, i64 3777136}
!597 = !{ptr @prepare_block_for_update, ptr @gsi_start_bb, i64 1245944}
!598 = !{ptr @prepare_block_for_update, ptr @op_iter_init_use, i64 3369549}
!599 = !{ptr @prepare_block_for_update, ptr @op_iter_done, i64 14731158}
!600 = !{ptr @prepare_block_for_update, ptr @get_use_from_ptr, i64 5209630}
!601 = !{ptr @prepare_block_for_update, ptr @op_iter_next_use, i64 5209630}
!602 = !{ptr @prepare_block_for_update, ptr @op_iter_init_def, i64 3369549}
!603 = !{ptr @prepare_block_for_update, ptr @get_def_from_ptr, i64 2782430}
!604 = !{ptr @prepare_block_for_update, ptr @op_iter_next_def, i64 2782430}
!605 = !{ptr @prepare_block_for_update, ptr @first_dom_son, i64 1245944}
!606 = !{ptr @prepare_block_for_update, ptr @prepare_block_for_update, i64 1223365}
!607 = !{ptr @prepare_block_for_update, ptr @next_dom_son, i64 1223365}
!608 = !{ptr @insert_updated_phi_nodes_for, ptr @find_def_blocks_for, i64 136117}
!609 = !{ptr @insert_updated_phi_nodes_for, ptr @compute_idf, i64 133426}
!610 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_obstack_alloc_stat, i64 133426}
!611 = !{ptr @insert_updated_phi_nodes_for, ptr @nearest_common_dominator_for_set, i64 94393}
!612 = !{ptr @insert_updated_phi_nodes_for, ptr @bmp_iter_set_init, i64 199696}
!613 = !{ptr @insert_updated_phi_nodes_for, ptr @bmp_iter_set, i64 1138243}
!614 = !{ptr @insert_updated_phi_nodes_for, ptr @VEC_basic_block_base_index, i64 938547}
!615 = !{ptr @insert_updated_phi_nodes_for, ptr @dominated_by_p, i64 491046}
!616 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_set_bit, i64 3468969}
!617 = !{ptr @insert_updated_phi_nodes_for, ptr @bmp_iter_next, i64 938547}
!618 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_copy, i64 39033}
!619 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_ior_into, i64 105304}
!620 = !{ptr @insert_updated_phi_nodes_for, ptr @ei_start_1, i64 434671}
!621 = !{ptr @insert_updated_phi_nodes_for, ptr @ei_cond, i64 3721641}
!622 = !{ptr @insert_updated_phi_nodes_for, ptr @ei_next, i64 3286970}
!623 = !{ptr @insert_updated_phi_nodes_for, ptr @insert_phi_nodes_for, i64 105304}
!624 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_obstack_free, i64 266852}
!625 = !{ptr @prepare_def_site_for, ptr @bitmap_bit_p, i64 31182}
!626 = !{ptr @prepare_def_site_for, ptr @fancy_abort, i64 2}
!627 = !{ptr @prepare_def_site_for, ptr @gimple_bb, i64 698286}
!628 = !{ptr @prepare_def_site_for, ptr @mark_block_for_update, i64 687508}
!629 = !{ptr @prepare_def_site_for, ptr @mark_def_interesting, i64 687508}
!630 = !{ptr @prepare_use_sites_for, ptr @first_readonly_imm_use, i64 271892}
!631 = !{ptr @prepare_use_sites_for, ptr @end_readonly_imm_use_p, i64 2095108}
!632 = !{ptr @prepare_use_sites_for, ptr @gimple_code, i64 1823216}
!633 = !{ptr @prepare_use_sites_for, ptr @phi_arg_index_from_use, i64 212720}
!634 = !{ptr @prepare_use_sites_for, ptr @gimple_phi_arg_edge, i64 212720}
!635 = !{ptr @prepare_use_sites_for, ptr @gimple_bb, i64 1610496}
!636 = !{ptr @prepare_use_sites_for, ptr @mark_use_interesting, i64 1823216}
!637 = !{ptr @prepare_use_sites_for, ptr @next_readonly_imm_use, i64 1823216}
!638 = !{ptr @mark_def_interesting, ptr @bitmap_bit_p, i64 1400783}
!639 = !{ptr @mark_def_interesting, ptr @fancy_abort, i64 1}
!640 = !{ptr @mark_def_interesting, ptr @set_register_defs, i64 1400783}
!641 = !{ptr @mark_def_interesting, ptr @gimple_code, i64 918932}
!642 = !{ptr @mark_def_interesting, ptr @set_def_block, i64 1038494}
!643 = !{ptr @mark_def_interesting, ptr @is_new_name, i64 205658}
!644 = !{ptr @mark_def_interesting, ptr @names_replaced_by, i64 115378}
!645 = !{ptr @mark_def_interesting, ptr @bmp_iter_set_init, i64 115377}
!646 = !{ptr @mark_def_interesting, ptr @bmp_iter_set, i64 234939}
!647 = !{ptr @mark_def_interesting, ptr @VEC_tree_base_index, i64 119562}
!648 = !{ptr @mark_def_interesting, ptr @bmp_iter_next, i64 119562}
!649 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 271892}
!650 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 212720}
!651 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 212720}
!652 = !{ptr @mark_use_interesting, ptr @gimple_bb, i64 3863727}
!653 = !{ptr @mark_use_interesting, ptr @mark_block_for_update, i64 7727454}
!654 = !{ptr @mark_use_interesting, ptr @gimple_code, i64 3863727}
!655 = !{ptr @mark_use_interesting, ptr @mark_phi_for_rewrite, i64 581047}
!656 = !{ptr @mark_use_interesting, ptr @set_rewrite_uses, i64 3282680}
!657 = !{ptr @mark_use_interesting, ptr @is_gimple_debug, i64 3282680}
!658 = !{ptr @mark_use_interesting, ptr @get_def_blocks_for, i64 2444982}
!659 = !{ptr @mark_use_interesting, ptr @bitmap_bit_p, i64 2444982}
!660 = !{ptr @mark_use_interesting, ptr @set_livein_block, i64 1621128}
!661 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 1823222}
!662 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!663 = !{!"function_entry_count", i64 6518328}
!664 = !{!"branch_weights", i32 2619663, i32 3898667}
!665 = !{!666, !666, i64 0}
!666 = !{!"any pointer", !667, i64 0}
!667 = !{!"omnipotent char", !668, i64 0}
!668 = !{!"Simple C/C++ TBAA"}
!669 = !{!"function_entry_count", i64 5551892}
!670 = !{!"tree-into-ssa.c:get_ssa_name_ann"}
!671 = !{!667, !667, i64 0}
!672 = !{!"branch_weights", i32 5551876, i32 18}
!673 = !{!674, !666, i64 24}
!674 = !{!"function", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !666, i64 32, !666, i64 40, !666, i64 48, !666, i64 56, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !666, i64 96, !675, i64 104, !675, i64 108, !675, i64 112, !675, i64 116, !675, i64 120, !675, i64 124, !666, i64 128, !675, i64 136, !675, i64 137, !675, i64 138, !675, i64 138, !675, i64 138, !675, i64 138, !675, i64 138, !675, i64 138, !675, i64 138, !675, i64 139, !675, i64 139, !675, i64 139, !675, i64 139, !675, i64 139, !675, i64 139, !675, i64 139}
!675 = !{!"int", !667, i64 0}
!676 = !{!677, !666, i64 16}
!677 = !{!"gimple_df", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !678, i64 32, !678, i64 48, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !675, i64 96, !679, i64 104}
!678 = !{!"pt_solution", !675, i64 0, !675, i64 0, !675, i64 0, !675, i64 0, !675, i64 0, !675, i64 0, !666, i64 8}
!679 = !{!"ssa_operands", !666, i64 0, !675, i64 8, !675, i64 12, !667, i64 16, !666, i64 24, !666, i64 32}
!680 = !{!"branch_weights", i32 143, i32 1}
!681 = !{!675, !675, i64 0}
!682 = !{!683, !675, i64 12}
!683 = !{!"ssa_name_info", !666, i64 0, !675, i64 8, !675, i64 12}
!684 = !{!"branch_weights", i32 143, i32 286617}
!685 = distinct !{!685, !686}
!686 = !{!"llvm.loop.mustprogress"}
!687 = !{!"branch_weights", i32 375673, i32 5176221}
!688 = !{!683, !666, i64 0}
!689 = !{!"function_entry_count", i64 12752416}
!690 = !{!"tree-into-ssa.c:var_ann"}
!691 = !{!"branch_weights", i32 116921708, i32 -597613169, i32 3818934, i32 24064}
!692 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_length"}
!693 = !{!"branch_weights", i32 2, i32 5551892}
!694 = !{!695, !675, i64 0}
!695 = !{!"VEC_ssa_name_info_p_base", !675, i64 0, !675, i64 4, !667, i64 8}
!696 = !{!"function_entry_count", i64 5803092}
!697 = !{!"tree-into-ssa.c:VEC_tree_base_length"}
!698 = !{!"branch_weights", i32 1, i32 5803093}
!699 = !{!700, !675, i64 0}
!700 = !{!"VEC_tree_base", !675, i64 0, !675, i64 4, !667, i64 8}
!701 = !{!"function_entry_count", i64 17}
!702 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_heap_reserve"}
!703 = !{i32 0, i32 2}
!704 = !{!"branch_weights", i32 11, i32 8}
!705 = !{!"function_entry_count", i64 35844}
!706 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_quick_push"}
!707 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_index"}
!708 = !{!"tree-into-ssa.c:VEC_ssa_name_info_p_base_space"}
!709 = !{!"branch_weights", i32 2, i32 17}
!710 = !{!695, !675, i64 4}
!711 = !{!"function_entry_count", i64 4696927}
!712 = !{!"branch_weights", i32 1844613, i32 2852316}
!713 = !{!"function_entry_count", i64 15615}
!714 = !{!674, !666, i64 8}
!715 = !{!716, !675, i64 32}
!716 = !{!"control_flow_graph", !666, i64 0, !666, i64 8, !666, i64 16, !675, i64 24, !675, i64 28, !675, i64 32, !666, i64 40, !675, i64 48, !667, i64 52, !667, i64 60, !675, i64 68, !675, i64 72}
!717 = !{i8 0, i8 2}
!718 = !{!"branch_weights", i32 1, i32 15615}
!719 = !{!716, !666, i64 16}
!720 = !{!"branch_weights", i32 15615, i32 10192}
!721 = distinct !{!721, !686}
!722 = !{i64 0, i64 4, !681, i64 8, i64 8, !665}
!723 = !{i64 0, i64 8, !665}
!724 = !{!"branch_weights", i32 1, i32 170932}
!725 = !{!726, !666, i64 0}
!726 = !{!"edge_def", !666, i64 0, !666, i64 8, !667, i64 16, !666, i64 24, !666, i64 32, !675, i64 40, !675, i64 44, !675, i64 48, !675, i64 52, !727, i64 56}
!727 = !{!"long", !667, i64 0}
!728 = !{!729, !675, i64 80}
!729 = !{!"basic_block_def", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !667, i64 32, !666, i64 48, !666, i64 56, !667, i64 64, !727, i64 72, !675, i64 80, !675, i64 84, !675, i64 88, !675, i64 92, !675, i64 96}
!730 = !{!716, !666, i64 0}
!731 = !{!"branch_weights", i32 1, i32 238727}
!732 = !{!"branch_weights", i32 164595, i32 74133}
!733 = !{!"branch_weights", i32 145127, i32 19469}
!734 = !{!"branch_weights", i32 170932, i32 67795}
!735 = distinct !{!735, !686}
!736 = !{!"branch_weights", i32 15615, i32 155318}
!737 = distinct !{!737, !686}
!738 = !{!"function_entry_count", i64 1308570}
!739 = !{!"tree-into-ssa.c:bmp_iter_set_init"}
!740 = !{!741, !666, i64 0}
!741 = !{!"bitmap_head_def", !666, i64 0, !666, i64 8, !675, i64 16, !666, i64 24}
!742 = !{!743, !666, i64 0}
!743 = !{!"", !666, i64 0, !666, i64 8, !675, i64 16, !727, i64 24}
!744 = !{!743, !666, i64 8}
!745 = !{!"branch_weights", i32 178635, i32 1129937}
!746 = !{!747, !675, i64 16}
!747 = !{!"bitmap_element_def", !666, i64 0, !666, i64 8, !675, i64 16, !667, i64 24}
!748 = !{!743, !675, i64 16}
!749 = !{!727, !727, i64 0}
!750 = !{!743, !727, i64 24}
!751 = !{!"function_entry_count", i64 7005991}
!752 = !{!"tree-into-ssa.c:bmp_iter_set"}
!753 = !{!"branch_weights", i32 1935239, i32 5070754}
!754 = !{!"branch_weights", i32 5697421, i32 1}
!755 = !{!"branch_weights", i32 32851483, i32 5697421}
!756 = distinct !{!756, !686}
!757 = !{!"branch_weights", i32 1, i32 1490069}
!758 = !{!"branch_weights", i32 1044901, i32 626669}
!759 = !{!"branch_weights", i32 1490069, i32 181500}
!760 = distinct !{!760, !686}
!761 = !{!747, !666, i64 0}
!762 = !{!"branch_weights", i32 1308571, i32 181500}
!763 = !{!"function_entry_count", i64 3349550}
!764 = !{!"tree-into-ssa.c:VEC_basic_block_base_index"}
!765 = !{!"function_entry_count", i64 5697421}
!766 = !{!"tree-into-ssa.c:bmp_iter_next"}
!767 = !{!"function_entry_count", i64 5017482}
!768 = !{!"tree-into-ssa.c:ei_start_1"}
!769 = !{!"function_entry_count", i64 15621298}
!770 = !{!"tree-into-ssa.c:ei_cond"}
!771 = !{!"branch_weights", i32 10603817, i32 5017483}
!772 = !{!"function_entry_count", i64 10603816}
!773 = !{!"tree-into-ssa.c:ei_next"}
!774 = !{!"branch_weights", i32 1, i32 10603817}
!775 = !{!"branch_weights", i32 10603817, i32 1}
!776 = !{!777, !675, i64 0}
!777 = !{!"", !675, i64 0, !666, i64 8}
!778 = !{!"tree-into-ssa.c:ei_end_p"}
!779 = !{!"branch_weights", i32 80262, i32 15541038}
!780 = !{!"tree-into-ssa.c:ei_edge"}
!781 = !{!"function_entry_count", i64 26225114}
!782 = !{!"tree-into-ssa.c:VEC_edge_base_length"}
!783 = !{!"branch_weights", i32 80262, i32 26144854}
!784 = !{!785, !675, i64 0}
!785 = !{!"VEC_edge_base", !675, i64 0, !675, i64 4, !667, i64 8}
!786 = !{!"function_entry_count", i64 73577599}
!787 = !{!"tree-into-ssa.c:ei_container"}
!788 = !{!"branch_weights", i32 1, i32 73577600}
!789 = !{!"function_entry_count", i64 10816536}
!790 = !{!"tree-into-ssa.c:VEC_edge_base_index"}
!791 = !{!"function_entry_count", i64 0}
!792 = distinct !{!792, !686}
!793 = !{!"function_entry_count", i64 1920467}
!794 = !{!"tree-into-ssa.c:VEC_tree_base_index"}
!795 = !{!677, !666, i64 88}
!796 = distinct !{!796, !686}
!797 = !{!"function_entry_count", i64 17928}
!798 = !{!"tree-into-ssa.c:first_referenced_var"}
!799 = !{!"function_entry_count", i64 493260}
!800 = !{!"tree-into-ssa.c:end_referenced_vars_p"}
!801 = !{!"function_entry_count", i64 475332}
!802 = !{!"tree-into-ssa.c:next_referenced_var"}
!803 = !{!"tree-into-ssa.c:first_htab_element"}
!804 = !{!805, !666, i64 0}
!805 = !{!"", !666, i64 0, !666, i64 8, !666, i64 16}
!806 = !{!807, !666, i64 24}
!807 = !{!"htab", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !727, i64 32, !727, i64 40, !727, i64 48, !675, i64 56, !675, i64 60, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !666, i64 96, !675, i64 104}
!808 = !{!805, !666, i64 8}
!809 = !{!805, !666, i64 16}
!810 = !{!"branch_weights", i32 56069, i32 1}
!811 = distinct !{!811, !686}
!812 = !{!"branch_weights", i32 17929, i32 1}
!813 = !{!"function_entry_count", i64 26892}
!814 = !{!"tree-into-ssa.c:gimple_referenced_vars"}
!815 = !{!"branch_weights", i32 1, i32 26893}
!816 = !{!677, !666, i64 0}
!817 = !{!"tree-into-ssa.c:end_htab_p"}
!818 = !{!"tree-into-ssa.c:next_htab_element"}
!819 = !{!"branch_weights", i32 987077, i32 17929}
!820 = !{!821, !666, i64 176}
!821 = !{!"lang_hooks", !666, i64 0, !727, i64 8, !666, i64 16, !666, i64 24, !666, i64 32, !666, i64 40, !666, i64 48, !666, i64 56, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !666, i64 96, !666, i64 104, !666, i64 112, !666, i64 120, !666, i64 128, !666, i64 136, !666, i64 144, !666, i64 152, !666, i64 160, !666, i64 168, !666, i64 176, !666, i64 184, !666, i64 192, !666, i64 200, !666, i64 208, !666, i64 216, !666, i64 224, !666, i64 232, !822, i64 240, !823, i64 248, !824, i64 256, !825, i64 272, !826, i64 432, !827, i64 560, !666, i64 584, !666, i64 592, !666, i64 600, !666, i64 608, !666, i64 616, !666, i64 624, !666, i64 632, !666, i64 640, !666, i64 648, !666, i64 656, !666, i64 664, !667, i64 672}
!822 = !{!"lang_hooks_for_tree_inlining", !666, i64 0}
!823 = !{!"lang_hooks_for_callgraph", !666, i64 0}
!824 = !{!"lang_hooks_for_tree_dump", !666, i64 0, !666, i64 8}
!825 = !{!"lang_hooks_for_decls", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !666, i64 32, !666, i64 40, !666, i64 48, !666, i64 56, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !666, i64 96, !666, i64 104, !666, i64 112, !666, i64 120, !666, i64 128, !666, i64 136, !666, i64 144, !666, i64 152}
!826 = !{!"lang_hooks_for_types", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !666, i64 32, !666, i64 40, !666, i64 48, !666, i64 56, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !666, i64 96, !666, i64 104, !666, i64 112, !667, i64 120}
!827 = !{!"lang_hooks_for_lto", !666, i64 0, !666, i64 8, !666, i64 16}
!828 = !{!"tree-into-ssa.c:htab_statistics"}
!829 = !{!"tree-into-ssa.c:debug_def_blocks_r"}
!830 = !{!831, !666, i64 0}
!831 = !{!"def_blocks_d", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24}
!832 = !{!831, !666, i64 8}
!833 = !{!831, !666, i64 24}
!834 = !{!831, !666, i64 16}
!835 = !{!"function_entry_count", i64 8964}
!836 = !{!"tree-into-ssa.c:rewrite_into_ssa"}
!837 = !{!"branch_weights", i32 8965, i32 1}
!838 = !{!729, !666, i64 56}
!839 = !{!716, !666, i64 8}
!840 = !{!"branch_weights", i32 1, i32 8964}
!841 = !{!"branch_weights", i32 8964, i32 180367}
!842 = distinct !{!842, !686}
!843 = distinct !{!843, !686}
!844 = !{!845, !666, i64 0}
!845 = !{!"simple_bitmap_def", !666, i64 0, !675, i64 8, !675, i64 12, !667, i64 16}
!846 = !{!"tree-into-ssa.c:init_ssa_renamer"}
!847 = !{!"branch_weights", i32 8964, i32 1}
!848 = !{!"branch_weights", i32 228703, i32 8964}
!849 = distinct !{!849, !686}
!850 = !{!"tree-into-ssa.c:mark_def_site_blocks"}
!851 = !{!852, !666, i64 8}
!852 = !{!"dom_walk_data", !675, i64 0, !666, i64 8, !666, i64 16, !666, i64 24, !666, i64 32, !666, i64 40, !727, i64 48, !666, i64 56}
!853 = !{!852, !666, i64 16}
!854 = !{!852, !666, i64 24}
!855 = !{!856, !666, i64 0}
!856 = !{!"mark_def_sites_global_data", !666, i64 0}
!857 = !{!852, !666, i64 32}
!858 = !{!852, !727, i64 48}
!859 = !{!"tree-into-ssa.c:insert_phi_nodes"}
!860 = !{!"branch_weights", i32 26777, i32 210891}
!861 = !{i32 0, i32 4}
!862 = !{!"branch_weights", i32 139144, i32 71748}
!863 = distinct !{!863, !686}
!864 = !{!"branch_weights", i32 8964, i32 62784}
!865 = distinct !{!865, !686}
!866 = !{!"function_entry_count", i64 57899}
!867 = !{!"tree-into-ssa.c:rewrite_blocks"}
!868 = !{!"branch_weights", i32 57900, i32 1}
!869 = !{!"branch_weights", i32 8965, i32 48936}
!870 = !{!"function_entry_count", i64 57951}
!871 = !{!"tree-into-ssa.c:fini_ssa_renamer"}
!872 = !{!"branch_weights", i32 10369, i32 47584}
!873 = !{!"function_entry_count", i64 6391731}
!874 = !{!"tree-into-ssa.c:def_blocks_hash"}
!875 = !{!"function_entry_count", i64 6304549}
!876 = !{!"tree-into-ssa.c:def_blocks_eq"}
!877 = !{!"function_entry_count", i64 454123}
!878 = !{!"tree-into-ssa.c:def_blocks_free"}
!879 = !{!"function_entry_count", i64 198294}
!880 = !{!"tree-into-ssa.c:mark_def_sites_block"}
!881 = !{!"branch_weights", i32 198294, i32 1}
!882 = !{!"branch_weights", i32 375665, i32 198294}
!883 = distinct !{!883, !686}
!884 = !{!"function_entry_count", i64 5469224}
!885 = !{!"tree-into-ssa.c:gsi_start_bb"}
!886 = !{!"function_entry_count", i64 28672496}
!887 = !{!"tree-into-ssa.c:gsi_end_p"}
!888 = !{!"function_entry_count", i64 573958}
!889 = !{!"tree-into-ssa.c:mark_def_sites"}
!890 = !{!"branch_weights", i32 573959, i32 1}
!891 = !{!"branch_weights", i32 550813, i32 23146}
!892 = !{!"branch_weights", i32 550813, i32 1}
!893 = !{!"branch_weights", i32 222782, i32 328032}
!894 = !{!"branch_weights", i32 0, i32 550813}
!895 = distinct !{!895, !686}
!896 = !{!"branch_weights", i32 386265, i32 187694}
!897 = !{!"branch_weights", i32 386265, i32 1}
!898 = !{!"branch_weights", i32 0, i32 386265}
!899 = distinct !{!899, !686}
!900 = !{!"branch_weights", i32 122544, i32 451416}
!901 = !{!"branch_weights", i32 31344, i32 91201}
!902 = !{!"function_entry_count", i64 17611436}
!903 = !{!"tree-into-ssa.c:gsi_stmt"}
!904 = !{!905, !666, i64 0}
!905 = !{!"gimple_seq_node_d", !666, i64 0, !666, i64 8, !666, i64 16}
!906 = !{!"tree-into-ssa.c:gsi_next"}
!907 = !{!905, !666, i64 16}
!908 = !{!"tree-into-ssa.c:bb_seq"}
!909 = !{!729, !675, i64 96}
!910 = !{!"branch_weights", i32 5469225, i32 1}
!911 = !{!"branch_weights", i32 76760, i32 5392466}
!912 = !{!913, !666, i64 0}
!913 = !{!"gimple_bb_info", !666, i64 0, !666, i64 8}
!914 = !{!"tree-into-ssa.c:gimple_seq_first"}
!915 = !{!916, !666, i64 0}
!916 = !{!"gimple_seq_d", !666, i64 0, !666, i64 8, !666, i64 16}
!917 = !{!"tree-into-ssa.c:update_stmt"}
!918 = !{!"branch_weights", i32 1034, i32 572926}
!919 = !{!"function_entry_count", i64 8695947}
!920 = !{!"tree-into-ssa.c:set_register_defs"}
!921 = !{!"function_entry_count", i64 11010379}
!922 = !{!"tree-into-ssa.c:set_rewrite_uses"}
!923 = !{!"function_entry_count", i64 6717753}
!924 = !{!"tree-into-ssa.c:is_gimple_debug"}
!925 = !{i32 0, i32 256}
!926 = !{!"function_entry_count", i64 7256038}
!927 = !{!"tree-into-ssa.c:op_iter_init_use"}
!928 = !{!"branch_weights", i32 -1081460096, i32 885}
!929 = !{!930, !675, i64 4}
!930 = !{!"ssa_operand_iterator_d", !667, i64 0, !675, i64 4, !666, i64 8, !666, i64 16, !675, i64 24, !675, i64 28, !666, i64 32}
!931 = !{!"function_entry_count", i64 29537133}
!932 = !{!"tree-into-ssa.c:op_iter_done"}
!933 = !{!930, !667, i64 0}
!934 = !{!"function_entry_count", i64 12865656}
!935 = !{!"tree-into-ssa.c:get_use_from_ptr"}
!936 = !{!937, !666, i64 24}
!937 = !{!"ssa_use_operand_d", !666, i64 0, !666, i64 8, !667, i64 16, !666, i64 24}
!938 = !{!"function_entry_count", i64 1843910}
!939 = !{!"tree-into-ssa.c:set_livein_block"}
!940 = !{!"branch_weights", i32 72019, i32 1771893}
!941 = !{!"branch_weights", i32 1, i32 72019}
!942 = !{!"branch_weights", i32 51, i32 71969}
!943 = !{!"function_entry_count", i64 19222934}
!944 = !{!"tree-into-ssa.c:op_iter_next_use"}
!945 = !{!930, !666, i64 16}
!946 = !{!"branch_weights", i32 7256039, i32 11966897}
!947 = !{!948, !666, i64 0}
!948 = !{!"use_optype_d", !666, i64 0, !937, i64 8}
!949 = !{!930, !675, i64 24}
!950 = !{!930, !675, i64 28}
!951 = !{!"branch_weights", i32 1, i32 7256039}
!952 = !{!930, !666, i64 32}
!953 = !{!"tree-into-ssa.c:op_iter_init_tree"}
!954 = !{!"function_entry_count", i64 1424759}
!955 = !{!"tree-into-ssa.c:set_def_block"}
!956 = !{!"branch_weights", i32 1094181, i32 330580}
!957 = !{!"branch_weights", i32 415029, i32 1009732}
!958 = !{!"function_entry_count", i64 960222}
!959 = !{!"tree-into-ssa.c:op_iter_next_tree"}
!960 = !{!"branch_weights", i32 960223, i32 1}
!961 = !{!930, !666, i64 8}
!962 = !{!"branch_weights", i32 573959, i32 386265}
!963 = !{!964, !666, i64 8}
!964 = !{!"def_optype_d", !666, i64 0, !666, i64 8}
!965 = !{!964, !666, i64 0}
!966 = !{!"function_entry_count", i64 11674838}
!967 = !{!"tree-into-ssa.c:rewrite_uses_p"}
!968 = !{!"function_entry_count", i64 7229034}
!969 = !{!"tree-into-ssa.c:register_defs_p"}
!970 = !{!"function_entry_count", i64 3394097}
!971 = !{!"tree-into-ssa.c:SET_BIT"}
!972 = !{!"branch_weights", i32 3394098, i32 1}
!973 = !{!"function_entry_count", i64 18676898}
!974 = !{!"tree-into-ssa.c:gimple_has_ops"}
!975 = !{!"function_entry_count", i64 56039474}
!976 = !{!"tree-into-ssa.c:gimple_code"}
!977 = !{!"tree-into-ssa.c:gimple_set_plf"}
!978 = !{!"branch_weights", i32 6791171, i32 1904778}
!979 = !{!"tree-into-ssa.c:gimple_set_visited"}
!980 = !{!"function_entry_count", i64 12702266}
!981 = !{!"tree-into-ssa.c:op_iter_init"}
!982 = !{!"branch_weights", i32 614, i32 -383341341}
!983 = !{!"branch_weights", i32 7256039, i32 5446229}
!984 = !{!"branch_weights", i32 1820334266, i32 327149382}
!985 = !{!"branch_weights", i32 688649, i32 141035}
!986 = !{!"branch_weights", i32 5446229, i32 7256039}
!987 = !{!"branch_weights", i32 1861239512, i32 286244136}
!988 = !{!"branch_weights", i32 447659, i32 519520}
!989 = !{!"function_entry_count", i64 5446228}
!990 = !{!"tree-into-ssa.c:gimple_def_ops"}
!991 = !{!"branch_weights", i32 5370, i32 5440860}
!992 = !{!"function_entry_count", i64 829682}
!993 = !{!"tree-into-ssa.c:gimple_vdef"}
!994 = !{!"branch_weights", i32 1, i32 829683}
!995 = !{!"tree-into-ssa.c:gimple_use_ops"}
!996 = !{!"branch_weights", i32 5370, i32 7250670}
!997 = !{!"function_entry_count", i64 967177}
!998 = !{!"tree-into-ssa.c:gimple_vuse"}
!999 = !{!"branch_weights", i32 201357, i32 765822}
!1000 = !{!"function_entry_count", i64 1796859}
!1001 = !{!"tree-into-ssa.c:gimple_has_mem_ops"}
!1002 = !{!"function_entry_count", i64 3892352}
!1003 = !{!"tree-into-ssa.c:get_phi_state"}
!1004 = !{!"branch_weights", i32 543870, i32 3348484}
!1005 = !{!"function_entry_count", i64 5713652}
!1006 = !{!"tree-into-ssa.c:get_def_blocks_for"}
!1007 = !{!"branch_weights", i32 454124, i32 5259530}
!1008 = !{!"function_entry_count", i64 3196701}
!1009 = !{!"tree-into-ssa.c:set_phi_state"}
!1010 = !{!"branch_weights", i32 543750, i32 2652953}
!1011 = !{!"function_entry_count", i64 898760}
!1012 = !{!"tree-into-ssa.c:gimple_phi_arg_imm_use_ptr"}
!1013 = !{!"function_entry_count", i64 2853008}
!1014 = !{!"tree-into-ssa.c:gimple_phi_arg"}
!1015 = !{!"branch_weights", i32 1, i32 2853009}
!1016 = !{!"function_entry_count", i64 5254235}
!1017 = !{!"tree-into-ssa.c:get_def_from_ptr"}
!1018 = !{!"tree-into-ssa.c:gimple_visited_p"}
!1019 = !{!"tree-into-ssa.c:gimple_plf"}
!1020 = !{!"function_entry_count", i64 622583}
!1021 = !{!"tree-into-ssa.c:find_def_blocks_for"}
!1022 = !{!"function_entry_count", i64 177053}
!1023 = !{!"tree-into-ssa.c:insert_phi_nodes_for"}
!1024 = !{!"branch_weights", i32 1, i32 177054}
!1025 = !{!"branch_weights", i32 59323, i32 117731}
!1026 = !{!"branch_weights", i32 26530, i32 91202}
!1027 = !{!"branch_weights", i32 33371, i32 84361}
!1028 = !{!"branch_weights", i32 1, i32 33370}
!1029 = !{!"branch_weights", i32 33370, i32 37531}
!1030 = distinct !{!1030, !686}
!1031 = !{!"branch_weights", i32 84361, i32 1}
!1032 = !{!"branch_weights", i32 117731, i32 0}
!1033 = distinct !{!1033, !686}
!1034 = !{!"tree-into-ssa.c:prune_unused_phi_nodes"}
!1035 = !{!"branch_weights", i32 84850, i32 92205}
!1036 = !{!"branch_weights", i32 19010, i32 73196}
!1037 = !{!1038, !675, i64 0}
!1038 = !{!"dom_dfsnum", !675, i64 0, !675, i64 4}
!1039 = !{!1038, !675, i64 4}
!1040 = !{!"branch_weights", i32 1, i32 73195}
!1041 = !{!"branch_weights", i32 73195, i32 645147}
!1042 = distinct !{!1042, !686}
!1043 = !{!"branch_weights", i32 73196, i32 1}
!1044 = !{!"branch_weights", i32 73195, i32 1}
!1045 = !{!"branch_weights", i32 718342, i32 718342}
!1046 = !{!"branch_weights", i32 176205, i32 1260479}
!1047 = !{!"branch_weights", i32 73195, i32 1363488}
!1048 = distinct !{!1048, !686}
!1049 = !{!"branch_weights", i32 73195, i32 841391}
!1050 = distinct !{!1050, !686}
!1051 = !{!"branch_weights", i32 246, i32 967813}
!1052 = !{!"branch_weights", i32 73195, i32 894863}
!1053 = distinct !{!1053, !686}
!1054 = !{!"branch_weights", i32 868271, i32 99543}
!1055 = !{!"branch_weights", i32 643906, i32 224366}
!1056 = !{!"branch_weights", i32 117731, i32 206178}
!1057 = !{!"branch_weights", i32 1, i32 117730}
!1058 = !{!"branch_weights", i32 169146, i32 164350}
!1059 = !{!"branch_weights", i32 53473, i32 115674}
!1060 = !{!"branch_weights", i32 117730, i32 215765}
!1061 = distinct !{!1061, !686}
!1062 = !{!"function_entry_count", i64 9752108}
!1063 = !{!"tree-into-ssa.c:mark_block_for_update"}
!1064 = !{!"branch_weights", i32 1, i32 9752109}
!1065 = !{!"branch_weights", i32 1911562, i32 7840548}
!1066 = !{!"function_entry_count", i64 33370}
!1067 = !{!"tree-into-ssa.c:gimple_phi_set_result"}
!1068 = !{!"function_entry_count", i64 460417}
!1069 = !{!"tree-into-ssa.c:add_new_name_mapping"}
!1070 = !{!"branch_weights", i32 460418, i32 1}
!1071 = !{!"branch_weights", i32 1, i32 460418}
!1072 = !{!"branch_weights", i32 37553, i32 422866}
!1073 = !{!1074, !675, i64 0}
!1074 = !{!"update_ssa_stats_d", !675, i64 0, !675, i64 4, !666, i64 8, !675, i64 16}
!1075 = !{!1074, !675, i64 16}
!1076 = !{!1074, !666, i64 8}
!1077 = !{!845, !675, i64 8}
!1078 = !{!"branch_weights", i32 460094, i32 325}
!1079 = !{!"branch_weights", i32 1, i32 325}
!1080 = !{!"branch_weights", i32 456196, i32 4223}
!1081 = !{!1074, !675, i64 4}
!1082 = !{!"tree-into-ssa.c:gimple_phi_result_ptr"}
!1083 = !{!"tree-into-ssa.c:gsi_after_labels"}
!1084 = distinct !{!1084, !686}
!1085 = !{!"function_entry_count", i64 698776}
!1086 = !{!"tree-into-ssa.c:mark_phi_for_rewrite"}
!1087 = !{!"branch_weights", i32 385717, i32 313061}
!1088 = !{!"branch_weights", i32 26530, i32 359188}
!1089 = !{!"branch_weights", i32 345056, i32 14132}
!1090 = !{!"branch_weights", i32 14132, i32 0}
!1091 = distinct !{!1091, !686}
!1092 = !{!"branch_weights", i32 312193, i32 46996}
!1093 = !{!"function_entry_count", i64 8952500}
!1094 = !{!"tree-into-ssa.c:cmp_dfsnum"}
!1095 = !{!"function_entry_count", i64 73195}
!1096 = !{!"tree-into-ssa.c:VEC_int_heap_alloc"}
!1097 = !{!"function_entry_count", i64 1759593}
!1098 = !{!"tree-into-ssa.c:VEC_int_base_quick_push"}
!1099 = !{!1100, !675, i64 0}
!1100 = !{!"VEC_int_base", !675, i64 0, !675, i64 4, !667, i64 8}
!1101 = !{!"tree-into-ssa.c:VEC_int_base_pop"}
!1102 = !{!"function_entry_count", i64 718341}
!1103 = !{!"tree-into-ssa.c:VEC_int_base_index"}
!1104 = !{!"function_entry_count", i64 1832788}
!1105 = !{!"tree-into-ssa.c:VEC_int_base_length"}
!1106 = !{!"branch_weights", i32 1, i32 1832789}
!1107 = !{!"function_entry_count", i64 968057}
!1108 = !{!"tree-into-ssa.c:VEC_int_heap_safe_push"}
!1109 = !{!"function_entry_count", i64 868270}
!1110 = !{!"tree-into-ssa.c:find_dfsnum_interval"}
!1111 = !{!"branch_weights", i32 868270, i32 1}
!1112 = !{!"branch_weights", i32 3035404, i32 2991199}
!1113 = !{!"branch_weights", i32 5158332, i32 868270}
!1114 = distinct !{!1114, !686}
!1115 = !{!"tree-into-ssa.c:VEC_int_heap_free"}
!1116 = !{!"branch_weights", i32 1, i32 73196}
!1117 = !{!"tree-into-ssa.c:VEC_int_heap_reserve"}
!1118 = !{!"branch_weights", i32 25419, i32 942640}
!1119 = !{!"tree-into-ssa.c:VEC_int_base_space"}
!1120 = !{!"branch_weights", i32 1, i32 968058}
!1121 = !{!1100, !675, i64 4}
!1122 = !{!"function_entry_count", i64 1911561}
!1123 = !{!"tree-into-ssa.c:initialize_flags_in_bb"}
!1124 = !{!"branch_weights", i32 816539, i32 1095023}
!1125 = !{!"branch_weights", i32 0, i32 816539}
!1126 = distinct !{!1126, !686}
!1127 = !{i64 0, i64 8, !665, i64 8, i64 8, !665, i64 16, i64 8, !665}
!1128 = !{!"branch_weights", i32 1911561, i32 1}
!1129 = !{!"branch_weights", i32 5400675, i32 1}
!1130 = !{!"branch_weights", i32 3489114, i32 1911561}
!1131 = distinct !{!1131, !686}
!1132 = !{!"function_entry_count", i64 5400674}
!1133 = !{!"tree-into-ssa.c:gimple_modified_p"}
!1134 = !{!"branch_weights", i32 4355, i32 5396321}
!1135 = !{!"tree-into-ssa.c:add_to_repl_tbl"}
!1136 = !{!1137, !666, i64 0}
!1137 = !{!"repl_map_d", !666, i64 0, !666, i64 8}
!1138 = !{!1137, !666, i64 8}
!1139 = !{!"function_entry_count", i64 2043743}
!1140 = !{!"tree-into-ssa.c:is_new_name"}
!1141 = !{!"branch_weights", i32 407, i32 2043338}
!1142 = !{!"branch_weights", i32 2043338, i32 1}
!1143 = !{!"function_entry_count", i64 583668}
!1144 = !{!"tree-into-ssa.c:names_replaced_by"}
!1145 = !{!"branch_weights", i32 1, i32 583669}
!1146 = !{!"function_entry_count", i64 359187}
!1147 = !{!"tree-into-ssa.c:VEC_gimple_vec_heap_reserve"}
!1148 = !{!"branch_weights", i32 18, i32 359171}
!1149 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_length"}
!1150 = !{!"branch_weights", i32 1, i32 359188}
!1151 = !{!1152, !675, i64 0}
!1152 = !{!"VEC_gimple_vec_base", !675, i64 0, !675, i64 4, !667, i64 8}
!1153 = !{!"function_entry_count", i64 14131}
!1154 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_quick_push"}
!1155 = !{!"function_entry_count", i64 1462380}
!1156 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_index"}
!1157 = !{!"function_entry_count", i64 312192}
!1158 = !{!"tree-into-ssa.c:VEC_gimple_heap_alloc"}
!1159 = !{!"tree-into-ssa.c:VEC_gimple_heap_safe_push"}
!1160 = !{!"function_entry_count", i64 671379}
!1161 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_replace"}
!1162 = !{!"tree-into-ssa.c:VEC_gimple_vec_base_space"}
!1163 = !{!1152, !675, i64 4}
!1164 = !{!"tree-into-ssa.c:VEC_gimple_heap_reserve"}
!1165 = !{!"branch_weights", i32 25, i32 359164}
!1166 = !{!"tree-into-ssa.c:VEC_gimple_base_quick_push"}
!1167 = !{!1168, !675, i64 0}
!1168 = !{!"VEC_gimple_base", !675, i64 0, !675, i64 4, !667, i64 8}
!1169 = !{!"tree-into-ssa.c:VEC_gimple_base_space"}
!1170 = !{!1168, !675, i64 4}
!1171 = !{!"tree-into-ssa.c:rewrite_enter_block"}
!1172 = !{!"branch_weights", i32 198295, i32 1}
!1173 = !{!"branch_weights", i32 26530, i32 171765}
!1174 = !{!"branch_weights", i32 1, i32 26530}
!1175 = !{!"branch_weights", i32 0, i32 26530}
!1176 = distinct !{!1176, !686}
!1177 = !{!"branch_weights", i32 15518, i32 182778}
!1178 = !{!"branch_weights", i32 182777, i32 1}
!1179 = !{!"branch_weights", i32 383781, i32 182777}
!1180 = distinct !{!1180, !686}
!1181 = !{!"tree-into-ssa.c:rewrite_leave_block"}
!1182 = !{!"branch_weights", i32 1, i32 127}
!1183 = !{!"branch_weights", i32 198295, i32 273651}
!1184 = !{!"branch_weights", i32 130529, i32 143123}
!1185 = !{!"branch_weights", i32 1, i32 130529}
!1186 = !{!"branch_weights", i32 127, i32 60408833}
!1187 = !{!"function_entry_count", i64 3047299}
!1188 = !{!"tree-into-ssa.c:rewrite_update_enter_block"}
!1189 = !{!"branch_weights", i32 3047300, i32 1}
!1190 = !{!"branch_weights", i32 1116652, i32 1930649}
!1191 = !{!"branch_weights", i32 1, i32 1930648}
!1192 = !{!726, !675, i64 48}
!1193 = !{!"branch_weights", i32 2961617, i32 1}
!1194 = !{!"branch_weights", i32 1930648, i32 1030969}
!1195 = distinct !{!1195, !686}
!1196 = !{!"branch_weights", i32 915677, i32 1014972}
!1197 = !{!"branch_weights", i32 526333, i32 389345}
!1198 = !{!"branch_weights", i32 200439, i32 188907}
!1199 = !{!"branch_weights", i32 97230, i32 103210}
!1200 = !{!"branch_weights", i32 103791, i32 96649}
!1201 = !{!"branch_weights", i32 389345, i32 1}
!1202 = !{!"branch_weights", i32 0, i32 915677}
!1203 = distinct !{!1203, !686}
!1204 = !{!"branch_weights", i32 1, i32 1930649}
!1205 = !{!"branch_weights", i32 1930648, i32 1}
!1206 = !{!"branch_weights", i32 3511741, i32 1930648}
!1207 = distinct !{!1207, !686}
!1208 = !{!"tree-into-ssa.c:rewrite_update_leave_block"}
!1209 = !{!"branch_weights", i32 3047300, i32 1496141}
!1210 = !{!"branch_weights", i32 127, i32 581560193}
!1211 = !{!"tree-into-ssa.c:VEC_tree_heap_alloc"}
!1212 = !{!"tree-into-ssa.c:VEC_tree_heap_free"}
!1213 = !{!"branch_weights", i32 1, i32 57900}
!1214 = !{!"function_entry_count", i64 3519243}
!1215 = !{!"tree-into-ssa.c:VEC_tree_heap_safe_push"}
!1216 = !{!"function_entry_count", i64 1799960}
!1217 = !{!"tree-into-ssa.c:gimple_phi_result"}
!1218 = !{!"function_entry_count", i64 412793}
!1219 = !{!"tree-into-ssa.c:register_new_def"}
!1220 = !{!"branch_weights", i32 139144, i32 273651}
!1221 = !{!"branch_weights", i32 143123, i32 130529}
!1222 = !{!"function_entry_count", i64 566557}
!1223 = !{!"tree-into-ssa.c:rewrite_stmt"}
!1224 = !{!"branch_weights", i32 566558, i32 1}
!1225 = !{!"branch_weights", i32 115143, i32 451416}
!1226 = !{!"branch_weights", i32 23943, i32 91201}
!1227 = !{!"branch_weights", i32 542616, i32 1}
!1228 = !{!"branch_weights", i32 91201, i32 451416}
!1229 = !{!"branch_weights", i32 451415, i32 1}
!1230 = !{!"branch_weights", i32 99398, i32 451415}
!1231 = distinct !{!1231, !686}
!1232 = !{!"branch_weights", i32 156352, i32 386265}
!1233 = !{!"branch_weights", i32 386264, i32 1}
!1234 = !{!"branch_weights", i32 1, i32 386264}
!1235 = distinct !{!1235, !686}
!1236 = !{!"tree-into-ssa.c:rewrite_add_phi_arguments"}
!1237 = !{!"branch_weights", i32 1, i32 198294}
!1238 = !{!726, !666, i64 8}
!1239 = !{!"branch_weights", i32 91980, i32 213410}
!1240 = !{!"branch_weights", i32 0, i32 91980}
!1241 = distinct !{!1241, !686}
!1242 = !{!"branch_weights", i32 198294, i32 107096}
!1243 = distinct !{!1243, !686}
!1244 = !{!"function_entry_count", i64 5015383}
!1245 = !{!"tree-into-ssa.c:VEC_tree_heap_reserve"}
!1246 = !{!"branch_weights", i32 97722, i32 4917663}
!1247 = !{!"function_entry_count", i64 6511523}
!1248 = !{!"tree-into-ssa.c:VEC_tree_base_quick_push"}
!1249 = !{!"tree-into-ssa.c:VEC_tree_base_space"}
!1250 = !{!"branch_weights", i32 1, i32 5015384}
!1251 = !{!700, !675, i64 4}
!1252 = !{!"function_entry_count", i64 2821617}
!1253 = !{!"tree-into-ssa.c:set_ssa_use_from_ptr"}
!1254 = !{!"function_entry_count", i64 4747989}
!1255 = !{!"tree-into-ssa.c:get_reaching_def"}
!1256 = !{!"branch_weights", i32 49893, i32 4698098}
!1257 = !{!"branch_weights", i32 39116, i32 10778}
!1258 = !{!"function_entry_count", i64 4872270}
!1259 = !{!"tree-into-ssa.c:op_iter_init_def"}
!1260 = !{!"branch_weights", i32 -1397137133, i32 1189}
!1261 = !{!"function_entry_count", i64 641227}
!1262 = !{!"tree-into-ssa.c:make_ssa_name"}
!1263 = !{!"function_entry_count", i64 9353977}
!1264 = !{!"tree-into-ssa.c:op_iter_next_def"}
!1265 = !{!"branch_weights", i32 4872271, i32 4481708}
!1266 = !{!"tree-into-ssa.c:delink_imm_use"}
!1267 = !{!937, !666, i64 0}
!1268 = !{!"branch_weights", i32 1377257, i32 1444362}
!1269 = !{!937, !666, i64 8}
!1270 = !{!"tree-into-ssa.c:link_imm_use"}
!1271 = !{!"branch_weights", i32 1, i32 2821618}
!1272 = !{!"branch_weights", i32 2821618, i32 1}
!1273 = !{!"tree-into-ssa.c:link_imm_use_to_list"}
!1274 = !{!"function_entry_count", i64 49892}
!1275 = !{!"tree-into-ssa.c:get_default_def_for"}
!1276 = !{!"branch_weights", i32 28459, i32 21435}
!1277 = !{!"function_entry_count", i64 818110}
!1278 = !{!"tree-into-ssa.c:gimple_location"}
!1279 = !{!"tree-into-ssa.c:VEC_tree_base_pop"}
!1280 = !{!"function_entry_count", i64 16471552}
!1281 = !{!"tree-into-ssa.c:symbol_marked_for_renaming"}
!1282 = !{!"function_entry_count", i64 1496140}
!1283 = !{!"tree-into-ssa.c:register_new_update_single"}
!1284 = !{!"function_entry_count", i64 459846}
!1285 = !{!"tree-into-ssa.c:register_new_update_set"}
!1286 = !{!"branch_weights", i32 1, i32 459846}
!1287 = !{!"branch_weights", i32 459846, i32 4186}
!1288 = distinct !{!1288, !686}
!1289 = !{!"function_entry_count", i64 5706346}
!1290 = !{!"tree-into-ssa.c:is_old_name"}
!1291 = !{!"branch_weights", i32 407, i32 5705941}
!1292 = !{!"branch_weights", i32 5705941, i32 1}
!1293 = !{!"function_entry_count", i64 5442388}
!1294 = !{!"tree-into-ssa.c:rewrite_update_stmt"}
!1295 = !{!"branch_weights", i32 2581275, i32 2861115}
!1296 = !{!"branch_weights", i32 2490605, i32 90671}
!1297 = !{!"branch_weights", i32 2951785, i32 1}
!1298 = !{!"branch_weights", i32 90671, i32 2861115}
!1299 = !{!"branch_weights", i32 2861115, i32 1}
!1300 = distinct !{!1300, !686}
!1301 = !{!"branch_weights", i32 2861114, i32 1}
!1302 = !{!"branch_weights", i32 2794526, i32 2861114}
!1303 = distinct !{!1303, !686}
!1304 = !{!"branch_weights", i32 1835330, i32 1116456}
!1305 = !{!"branch_weights", i32 1116455, i32 1}
!1306 = !{!"branch_weights", i32 196558, i32 1116455}
!1307 = distinct !{!1307, !686}
!1308 = !{!"function_entry_count", i64 1930648}
!1309 = !{!"tree-into-ssa.c:rewrite_update_phi_arguments"}
!1310 = !{!"branch_weights", i32 2224047, i32 791002}
!1311 = !{!"branch_weights", i32 1, i32 791001}
!1312 = !{!"branch_weights", i32 1, i32 898761}
!1313 = !{!726, !675, i64 44}
!1314 = !{!"branch_weights", i32 170616, i32 728146}
!1315 = !{!"branch_weights", i32 -237894950, i32 80918790}
!1316 = !{!"branch_weights", i32 736, i32 713173}
!1317 = !{!"branch_weights", i32 345582, i32 368327}
!1318 = !{!"branch_weights", i32 61970, i32 283613}
!1319 = !{!"branch_weights", i32 694, i32 2147482954}
!1320 = !{!"branch_weights", i32 387581, i32 434974}
!1321 = !{!"branch_weights", i32 96423, i32 291159}
!1322 = !{!"branch_weights", i32 884523, i32 1}
!1323 = !{!"branch_weights", i32 791001, i32 107760}
!1324 = distinct !{!1324, !686}
!1325 = !{!"branch_weights", i32 1930648, i32 1084400}
!1326 = distinct !{!1326, !686}
!1327 = !{!"tree-into-ssa.c:maybe_replace_use_in_debug_stmt"}
!1328 = !{!"tree-into-ssa.c:gimple_debug_bind_reset_value"}
!1329 = !{!"function_entry_count", i64 5655639}
!1330 = !{!"tree-into-ssa.c:maybe_replace_use"}
!1331 = !{!"branch_weights", i32 655095, i32 5000546}
!1332 = !{!"branch_weights", i32 3983461, i32 1672180}
!1333 = !{!"branch_weights", i32 2372995, i32 1610467}
!1334 = !{!"branch_weights", i32 1200047306, i32 947436342}
!1335 = !{!"function_entry_count", i64 1313012}
!1336 = !{!"tree-into-ssa.c:maybe_register_def"}
!1337 = !{!"branch_weights", i32 226506, i32 1086508}
!1338 = !{!"branch_weights", i32 730814, i32 582200}
!1339 = !{!"branch_weights", i32 226506, i32 355695}
!1340 = !{!"branch_weights", i32 226506, i32 1}
!1341 = distinct !{!1341, !686}
!1342 = !{!"branch_weights", i32 374177, i32 356638}
!1343 = !{!"branch_weights", i32 566458, i32 164357}
!1344 = !{!"tree-into-ssa.c:gimple_set_op"}
!1345 = !{!"tree-into-ssa.c:gimple_num_ops"}
!1346 = !{!"tree-into-ssa.c:gimple_ops"}
!1347 = !{!"tree-into-ssa.c:gimple_statement_structure"}
!1348 = !{!"tree-into-ssa.c:gss_for_code"}
!1349 = !{!"tree-into-ssa.c:gsi_one_before_end_p"}
!1350 = !{!"tree-into-ssa.c:gsi_bb"}
!1351 = !{!"tree-into-ssa.c:single_pred_p"}
!1352 = !{!729, !666, i64 0}
!1353 = !{!"tree-into-ssa.c:phi_nodes"}
!1354 = !{!913, !666, i64 8}
!1355 = !{!"function_entry_count", i64 1689761}
!1356 = !{!"tree-into-ssa.c:VEC_gimple_base_iterate"}
!1357 = !{!"branch_weights", i32 1, i32 1689762}
!1358 = !{!"branch_weights", i32 898761, i32 791002}
!1359 = !{!"function_entry_count", i64 1035273}
!1360 = !{!"tree-into-ssa.c:phi_arg_index_from_use"}
!1361 = !{!"branch_weights", i32 1035274, i32 1}
!1362 = !{!"function_entry_count", i64 387580}
!1363 = !{!"tree-into-ssa.c:gimple_phi_num_args"}
!1364 = !{!"function_entry_count", i64 96422}
!1365 = !{!"tree-into-ssa.c:gimple_phi_arg_location"}
!1366 = !{!1367, !675, i64 40}
!1367 = !{!"phi_arg_d", !937, i64 0, !666, i64 32, !675, i64 40}
!1368 = !{!"function_entry_count", i64 822553}
!1369 = !{!"tree-into-ssa.c:gimple_phi_arg_set_location"}
!1370 = distinct !{!1370, !686}
!1371 = distinct !{!1371, !686}
!1372 = distinct !{!1372, !686}
!1373 = !{!"function_entry_count", i64 374657}
!1374 = !{!"branch_weights", i32 1, i32 374658}
!1375 = !{!"branch_weights", i32 26373, i32 348286}
!1376 = !{!"branch_weights", i32 11358, i32 336929}
!1377 = !{!"function_entry_count", i64 117739}
!1378 = !{!"tree-into-ssa.c:sbitmap_iter_init"}
!1379 = !{!1380, !675, i64 12}
!1380 = !{!"", !666, i64 0, !675, i64 8, !675, i64 12, !675, i64 16, !727, i64 24}
!1381 = !{!1380, !675, i64 16}
!1382 = !{!845, !675, i64 12}
!1383 = !{!1380, !675, i64 8}
!1384 = !{!1380, !666, i64 0}
!1385 = !{!"branch_weights", i32 1, i32 117740}
!1386 = !{!"function_entry_count", i64 1182604}
!1387 = !{!"tree-into-ssa.c:sbitmap_iter_cond"}
!1388 = !{!1380, !727, i64 24}
!1389 = !{!"branch_weights", i32 1064865, i32 1}
!1390 = !{!"branch_weights", i32 1048102, i32 117740}
!1391 = !{!"branch_weights", i32 100976, i32 1064865}
!1392 = distinct !{!1392, !686}
!1393 = !{!"branch_weights", i32 5904236, i32 1064865}
!1394 = distinct !{!1394, !686}
!1395 = !{!"function_entry_count", i64 1064865}
!1396 = !{!"tree-into-ssa.c:sbitmap_iter_next"}
!1397 = !{!"function_entry_count", i64 48987}
!1398 = !{!"branch_weights", i32 48889, i32 100}
!1399 = !{!"branch_weights", i32 1, i32 199}
!1400 = !{!"branch_weights", i32 199, i32 615}
!1401 = distinct !{!1401, !686}
!1402 = !{!"branch_weights", i32 37, i32 48952}
!1403 = !{!"branch_weights", i32 1, i32 48951}
!1404 = !{!"branch_weights", i32 48951, i32 263242}
!1405 = distinct !{!1405, !686}
!1406 = !{!"tree-into-ssa.c:clear_ssa_name_info"}
!1407 = !{!"tree-into-ssa.c:VEC_gimple_heap_free"}
!1408 = !{!"branch_weights", i32 1, i32 312193}
!1409 = !{!"function_entry_count", i64 111856}
!1410 = !{!"branch_weights", i32 70103, i32 41755}
!1411 = !{!"branch_weights", i32 46850, i32 23253}
!1412 = !{!"branch_weights", i32 23253, i32 1}
!1413 = !{!"branch_weights", i32 23253, i32 0}
!1414 = distinct !{!1414, !686}
!1415 = !{!"function_entry_count", i64 6880777}
!1416 = !{!"tree-into-ssa.c:gimple_bb"}
!1417 = !{!"function_entry_count", i64 427047}
!1418 = !{!"branch_weights", i32 26409, i32 400640}
!1419 = !{!"branch_weights", i32 427048, i32 1}
!1420 = !{!"tree-into-ssa.c:init_update_ssa"}
!1421 = !{!"branch_weights", i32 3120, i32 45869}
!1422 = !{!"function_entry_count", i64 1431750}
!1423 = !{!"tree-into-ssa.c:repl_map_hash"}
!1424 = !{!"function_entry_count", i64 1084892}
!1425 = !{!"tree-into-ssa.c:repl_map_eq"}
!1426 = !{!"tree-into-ssa.c:repl_map_free"}
!1427 = !{!"function_entry_count", i64 1609552}
!1428 = distinct !{!1428, !686}
!1429 = !{!"function_entry_count", i64 38227}
!1430 = !{!"branch_weights", i32 27827, i32 10402}
!1431 = !{!"branch_weights", i32 10402, i32 1}
!1432 = !{!"branch_weights", i32 1, i32 10402}
!1433 = !{!"function_entry_count", i64 4955367}
!1434 = !{!"branch_weights", i32 4508951, i32 446418}
!1435 = !{!"branch_weights", i32 446418, i32 1}
!1436 = !{!"branch_weights", i32 446055, i32 364}
!1437 = !{!"function_entry_count", i64 36}
!1438 = !{!"branch_weights", i32 1407, i32 37}
!1439 = !{!"branch_weights", i32 1, i32 147}
!1440 = !{!"branch_weights", i32 147, i32 689}
!1441 = distinct !{!1441, !686}
!1442 = !{!"function_entry_count", i64 406}
!1443 = !{!"branch_weights", i32 165649, i32 815}
!1444 = !{!"branch_weights", i32 100, i32 308}
!1445 = !{!"function_entry_count", i64 317820}
!1446 = !{!"branch_weights", i32 268870, i32 48952}
!1447 = !{!"branch_weights", i32 48952, i32 1}
!1448 = !{!"branch_weights", i32 22580, i32 26373}
!1449 = !{!"branch_weights", i32 2, i32 48951}
!1450 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1}
!1451 = !{!"branch_weights", i32 10810, i32 38143}
!1452 = !{!"branch_weights", i32 38620, i32 10333}
!1453 = !{!"branch_weights", i32 38620, i32 1}
!1454 = !{!"branch_weights", i32 26373, i32 22580}
!1455 = !{!"branch_weights", i32 17, i32 26357}
!1456 = !{!"branch_weights", i32 17, i32 1}
!1457 = !{!"branch_weights", i32 26357, i32 22580}
!1458 = !{!"branch_weights", i32 38604, i32 10333}
!1459 = !{!"branch_weights", i32 1, i32 38603}
!1460 = !{!"branch_weights", i32 38603, i32 4279061}
!1461 = distinct !{!1461, !686}
!1462 = !{!"branch_weights", i32 16025, i32 22580}
!1463 = !{!"branch_weights", i32 1, i32 16024}
!1464 = !{!"branch_weights", i32 16024, i32 78403}
!1465 = distinct !{!1465, !686}
!1466 = !{!"branch_weights", i32 38603, i32 3089}
!1467 = distinct !{!1467, !686}
!1468 = distinct !{!1468, !686}
!1469 = !{!"branch_weights", i32 22580, i32 16025}
!1470 = !{!"branch_weights", i32 1, i32 48935}
!1471 = !{!"branch_weights", i32 48935, i32 222929}
!1472 = distinct !{!1472, !686}
!1473 = !{!"branch_weights", i32 7244, i32 41692}
!1474 = !{!"branch_weights", i32 41692, i32 0}
!1475 = distinct !{!1475, !686}
!1476 = !{!"branch_weights", i32 48935, i32 1881714}
!1477 = distinct !{!1477, !686}
!1478 = !{!"branch_weights", i32 48936, i32 1}
!1479 = distinct !{!1479, !686}
!1480 = distinct !{!1480, !686}
!1481 = !{!"function_entry_count", i64 1}
!1482 = !{!"tree-into-ssa.c:VEC_gimple_vec_heap_alloc"}
!1483 = !{!"function_entry_count", i64 38619}
!1484 = !{!"tree-into-ssa.c:switch_virtuals_to_full_rewrite_p"}
!1485 = !{!1486, !675, i64 8}
!1486 = !{!"param_info", !666, i64 0, !675, i64 8, !667, i64 12, !675, i64 16, !675, i64 20, !666, i64 24}
!1487 = !{!"branch_weights", i32 38609, i32 12}
!1488 = !{!"tree-into-ssa.c:switch_virtuals_to_full_rewrite"}
!1489 = distinct !{!1489, !686}
!1490 = distinct !{!1490, !686}
!1491 = !{!"function_entry_count", i64 26372}
!1492 = !{!"tree-into-ssa.c:prepare_names_to_update"}
!1493 = !{!"branch_weights", i32 26274, i32 100}
!1494 = distinct !{!1494, !686}
!1495 = !{!"branch_weights", i32 1, i32 26372}
!1496 = !{!"branch_weights", i32 26372, i32 400105}
!1497 = distinct !{!1497, !686}
!1498 = !{!"branch_weights", i32 256080, i32 15814}
!1499 = !{!"branch_weights", i32 15732, i32 83}
!1500 = !{!"branch_weights", i32 26372, i32 245521}
!1501 = distinct !{!1501, !686}
!1502 = !{!"function_entry_count", i64 1245944}
!1503 = !{!"tree-into-ssa.c:prepare_block_for_update"}
!1504 = !{!"branch_weights", i32 407587, i32 838358}
!1505 = !{!"branch_weights", i32 1, i32 407587}
!1506 = !{!"branch_weights", i32 276512, i32 131076}
!1507 = !{!"branch_weights", i32 1, i32 131075}
!1508 = !{!"branch_weights", i32 131075, i32 237252}
!1509 = distinct !{!1509, !686}
!1510 = !{!"branch_weights", i32 0, i32 407587}
!1511 = distinct !{!1511, !686}
!1512 = !{!"branch_weights", i32 1245944, i32 1}
!1513 = !{!"branch_weights", i32 3369551, i32 1}
!1514 = !{!"branch_weights", i32 655095, i32 4554540}
!1515 = !{!"branch_weights", i32 3537455, i32 1672180}
!1516 = !{!"branch_weights", i32 1840083, i32 3369551}
!1517 = distinct !{!1517, !686}
!1518 = !{!"branch_weights", i32 2782432, i32 587120}
!1519 = !{!"branch_weights", i32 226506, i32 2555927}
!1520 = !{!"branch_weights", i32 2200233, i32 582200}
!1521 = !{!"branch_weights", i32 0, i32 2782432}
!1522 = distinct !{!1522, !686}
!1523 = !{!"branch_weights", i32 2123608, i32 1245944}
!1524 = distinct !{!1524, !686}
!1525 = !{!"branch_weights", i32 22579, i32 1223366}
!1526 = !{!"branch_weights", i32 1223366, i32 0}
!1527 = distinct !{!1527, !686}
!1528 = !{!"function_entry_count", i64 136117}
!1529 = !{!"tree-into-ssa.c:insert_updated_phi_nodes_for"}
!1530 = !{!"branch_weights", i32 106, i32 136013}
!1531 = !{!"branch_weights", i32 2585, i32 133429}
!1532 = !{!"branch_weights", i32 94397, i32 39033}
!1533 = !{!"branch_weights", i32 1, i32 188794, i32 1}
!1534 = !{!"branch_weights", i32 1, i32 94397}
!1535 = !{!"branch_weights", i32 1, i32 94396}
!1536 = !{!"branch_weights", i32 12831, i32 491072}
!1537 = !{!"branch_weights", i32 309063, i32 182010}
!1538 = !{!"branch_weights", i32 94396, i32 409506}
!1539 = distinct !{!1539, !686}
!1540 = !{!"branch_weights", i32 28123, i32 105307}
!1541 = !{!"branch_weights", i32 1, i32 105306}
!1542 = !{!"branch_weights", i32 1, i32 434683}
!1543 = !{!"branch_weights", i32 3287067, i32 1}
!1544 = !{!"branch_weights", i32 434683, i32 2852384}
!1545 = distinct !{!1545, !686}
!1546 = !{!"branch_weights", i32 105306, i32 329378}
!1547 = distinct !{!1547, !686}
!1548 = !{!"tree-into-ssa.c:RESET_BIT"}
!1549 = !{!"branch_weights", i32 407, i32 1}
!1550 = !{!"function_entry_count", i64 698286}
!1551 = !{!"tree-into-ssa.c:prepare_def_site_for"}
!1552 = !{!"branch_weights", i32 667106, i32 31182}
!1553 = !{!"branch_weights", i32 31182, i32 1}
!1554 = !{!"branch_weights", i32 10778, i32 687510}
!1555 = !{!"branch_weights", i32 687510, i32 1}
!1556 = !{!"function_entry_count", i64 271892}
!1557 = !{!"tree-into-ssa.c:prepare_use_sites_for"}
!1558 = !{!"branch_weights", i32 271892, i32 1}
!1559 = !{!"branch_weights", i32 212721, i32 1610503}
!1560 = !{!"branch_weights", i32 1551331, i32 271892}
!1561 = distinct !{!1561, !686}
!1562 = !{!"function_entry_count", i64 1400783}
!1563 = !{!"tree-into-ssa.c:mark_def_interesting"}
!1564 = !{!"branch_weights", i32 1, i32 1400784}
!1565 = !{!"branch_weights", i32 481852, i32 918933}
!1566 = !{!"branch_weights", i32 205659, i32 713275}
!1567 = !{!"branch_weights", i32 90281, i32 115379}
!1568 = !{!"branch_weights", i32 1, i32 115379}
!1569 = !{!"branch_weights", i32 1, i32 115378}
!1570 = !{!"branch_weights", i32 115378, i32 4186}
!1571 = distinct !{!1571, !686}
!1572 = !{!"tree-into-ssa.c:first_readonly_imm_use"}
!1573 = !{!1574, !666, i64 8}
!1574 = !{!"immediate_use_iterator_d", !666, i64 0, !666, i64 8, !937, i64 16, !666, i64 48}
!1575 = !{!1574, !666, i64 0}
!1576 = !{!"branch_weights", i32 264854, i32 7040}
!1577 = !{!"function_entry_count", i64 4190228}
!1578 = !{!"tree-into-ssa.c:end_readonly_imm_use_p"}
!1579 = !{!"function_entry_count", i64 212720}
!1580 = !{!"tree-into-ssa.c:gimple_phi_arg_edge"}
!1581 = !{!"function_entry_count", i64 3863727}
!1582 = !{!"tree-into-ssa.c:mark_use_interesting"}
!1583 = !{!"branch_weights", i32 581047, i32 3282682}
!1584 = !{!"branch_weights", i32 1418745, i32 2444984}
!1585 = !{!"branch_weights", i32 -2020898675, i32 -375970731}
!1586 = !{!"branch_weights", i32 1621130, i32 823855}
!1587 = !{!"function_entry_count", i64 1823222}
!1588 = !{!"tree-into-ssa.c:next_readonly_imm_use"}
!1589 = !{!"branch_weights", i32 1558370, i32 264854}
