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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_ssa_name_info_p_base = type { i32, i32, [1 x ptr] }
%struct.ssa_name_info = type { ptr, i8, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.var_ann_d = type { i8, i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.def_blocks_d = type { ptr, ptr, ptr, ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.mark_def_sites_global_data = type { ptr }
%struct.repl_map_d = type { ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_gimple_vec_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.dom_dfsnum = type { i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.gimple_bb_info = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !242 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !243
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !242 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !243
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !242 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !253

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !247
  %11 = load i8, ptr %3, align 1, !tbaa !254
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !242 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !253

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !247
  %11 = load i8, ptr %3, align 1, !tbaa !254
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !242 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !243
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !253

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !247
  %11 = load i8, ptr %3, align 1, !tbaa !254
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !242 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !243
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !242 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !253

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !255
  store i8 %12, ptr %4, align 1, !tbaa !254
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !242 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !253

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !255
  store i8 %12, ptr %4, align 1, !tbaa !254
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !242 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !243
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !253

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !255
  store i8 %12, ptr %4, align 1, !tbaa !254
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !242 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !242 {
  %2 = load i32, ptr %0, align 8, !tbaa !257
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !242 {
  %2 = load i32, ptr %0, align 8, !tbaa !257
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !242 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !258
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !242 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !258
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !242 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !242 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !242 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !242 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !259

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !242 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @get_current_def(ptr noundef readonly %0) local_unnamed_addr #9 !prof !262 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %65, !prof !263

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !254
  %8 = load ptr, ptr @info_for_ssa_name, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !264

10:                                               ; preds = %5
  %11 = load i32, ptr %8, align 8, !tbaa !265
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ 0, %5 ]
  %14 = icmp ult i32 %7, %13
  br i1 %14, label %52, label %15, !prof !267

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !243
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !268
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !270
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %20, align 8, !tbaa !274
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i32 [ %23, %22 ], [ 0, %15 ]
  br i1 %9, label %32, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %8, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !276
  %29 = load i32, ptr %8, align 8, !tbaa !265
  %30 = sub i32 %28, %29
  %31 = icmp uge i32 %30, %25
  br label %34

32:                                               ; preds = %24
  %33 = icmp eq i32 %25, 0
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i1 [ %31, %26 ], [ %33, %32 ]
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call ptr @vec_heap_p_reserve(ptr noundef %8, i32 noundef %25) #19
  store ptr %37, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %38

38:                                               ; preds = %36, %34
  %39 = icmp ult i32 %13, %25
  br i1 %39, label %40, label %52

40:                                               ; preds = %38, %40
  %41 = phi i32 [ %42, %40 ], [ %13, %38 ]
  %42 = add nuw i32 %41, 1
  %43 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %44 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %45 = getelementptr inbounds %struct.ssa_name_info, ptr %43, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !277
  %46 = load ptr, ptr @info_for_ssa_name, align 8
  %47 = load i32, ptr %46, align 8, !tbaa !265
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 8, !tbaa !265
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %46, i64 0, i32 2, i64 %49
  store ptr %43, ptr %50, align 8, !tbaa !243
  %51 = icmp eq i32 %42, %25
  br i1 %51, label %52, label %40, !llvm.loop !279

52:                                               ; preds = %40, %38, %12
  %53 = load ptr, ptr @info_for_ssa_name, align 8
  %54 = zext i32 %7 to i64
  %55 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %53, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !243
  %57 = getelementptr inbounds %struct.ssa_name_info, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !277
  %59 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %83, !prof !264

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.ssa_name_info, ptr %56, i64 0, i32 1
  %63 = load i8, ptr %62, align 8
  %64 = and i8 %63, -4
  store i8 %64, ptr %62, align 8
  store ptr null, ptr %56, align 8, !tbaa !280
  store i32 %59, ptr %57, align 4, !tbaa !277
  br label %83

65:                                               ; preds = %1
  %66 = trunc i64 %2 to i16
  switch i16 %66, label %71 [
    i16 32, label %67
    i16 34, label %69
  ], !prof !281

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %75

71:                                               ; preds = %65
  %72 = icmp eq i64 %3, 36
  %73 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %74 = select i1 %72, ptr %73, ptr null
  br label %75

75:                                               ; preds = %71, %69, %67
  %76 = phi ptr [ %68, %67 ], [ %70, %69 ], [ %74, %71 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !282

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 8, !tbaa !243
  br label %80

80:                                               ; preds = %75, %78
  %81 = phi ptr [ %79, %78 ], [ null, %75 ]
  %82 = getelementptr inbounds %struct.var_ann_d, ptr %81, i64 0, i32 2
  br label %83

83:                                               ; preds = %61, %52, %80
  %84 = phi ptr [ %82, %80 ], [ %56, %52 ], [ %56, %61 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !243
  ret ptr %85
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_current_def(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !283 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %66, !prof !284

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !254
  %9 = load ptr, ptr @info_for_ssa_name, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !285

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 8, !tbaa !265
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %53, label %16, !prof !286

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfun, align 8, !tbaa !243
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !268
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !270
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !287

23:                                               ; preds = %16
  %24 = load i32, ptr %21, align 8, !tbaa !274
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ]
  br i1 %10, label %33, label %27, !prof !288

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !276
  %30 = load i32, ptr %9, align 8, !tbaa !265
  %31 = sub i32 %29, %30
  %32 = icmp uge i32 %31, %26
  br label %35

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, 0
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i1 [ %32, %27 ], [ %34, %33 ]
  br i1 %36, label %39, label %37, !prof !289

37:                                               ; preds = %35
  %38 = tail call ptr @vec_heap_p_reserve(ptr noundef %9, i32 noundef %26) #19
  store ptr %38, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %39

39:                                               ; preds = %37, %35
  %40 = icmp ult i32 %14, %26
  br i1 %40, label %41, label %53, !prof !290

41:                                               ; preds = %39, %41
  %42 = phi i32 [ %43, %41 ], [ %14, %39 ]
  %43 = add nuw i32 %42, 1
  %44 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %45 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %46 = getelementptr inbounds %struct.ssa_name_info, ptr %44, i64 0, i32 2
  store i32 %45, ptr %46, align 4, !tbaa !277
  %47 = load ptr, ptr @info_for_ssa_name, align 8
  %48 = load i32, ptr %47, align 8, !tbaa !265
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !265
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %44, ptr %51, align 8, !tbaa !243
  %52 = icmp eq i32 %43, %26
  br i1 %52, label %53, label %41, !prof !291, !llvm.loop !279

53:                                               ; preds = %41, %39, %13
  %54 = load ptr, ptr @info_for_ssa_name, align 8
  %55 = zext i32 %8 to i64
  %56 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %54, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !243
  %58 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !277
  %60 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %81, !prof !292

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 1
  %64 = load i8, ptr %63, align 8
  %65 = and i8 %64, -4
  store i8 %65, ptr %63, align 8
  store ptr null, ptr %57, align 8, !tbaa !280
  store i32 %60, ptr %58, align 4, !tbaa !277
  br label %81

66:                                               ; preds = %2
  %67 = trunc i64 %3 to i16
  switch i16 %67, label %72 [
    i16 32, label %68
    i16 34, label %70
  ], !prof !293

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %76

72:                                               ; preds = %66
  %73 = icmp eq i64 %4, 36
  %74 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %75 = select i1 %73, ptr %74, ptr null
  br label %76

76:                                               ; preds = %72, %70, %68
  %77 = phi ptr [ %69, %68 ], [ %71, %70 ], [ %75, %72 ]
  %78 = icmp ne ptr %77, null
  tail call void @llvm.assume(i1 %78)
  %79 = load ptr, ptr %77, align 8, !tbaa !243
  %80 = getelementptr inbounds %struct.var_ann_d, ptr %79, i64 0, i32 2
  br label %81

81:                                               ; preds = %62, %53, %76
  %82 = phi ptr [ %80, %76 ], [ %57, %53 ], [ %57, %62 ]
  store ptr %1, ptr %82, align 8, !tbaa !243
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @compute_global_livein(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !242 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !243
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !295
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !297
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @bitmap_zero_bits, ptr %12
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !299
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !301
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %17, %21
  br label %23

23:                                               ; preds = %87, %2
  %24 = phi ptr [ %14, %2 ], [ %80, %87 ]
  %25 = phi i32 [ 0, %2 ], [ %81, %87 ]
  %26 = phi i64 [ %19, %2 ], [ %97, %87 ]
  %27 = phi i32 [ %22, %2 ], [ %98, %87 ]
  %28 = phi ptr [ %11, %2 ], [ %96, %87 ]
  %29 = icmp eq i64 %26, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %58, %23
  %31 = phi ptr [ %24, %23 ], [ %49, %58 ]
  %32 = phi i32 [ %25, %23 ], [ %59, %58 ]
  %33 = phi i64 [ %26, %23 ], [ %63, %58 ]
  %34 = phi i32 [ %27, %23 ], [ %60, %58 ]
  %35 = and i64 %33, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %41, %37 ], [ %34, %30 ]
  %39 = phi i64 [ %40, %37 ], [ %33, %30 ]
  %40 = lshr exact i64 %39, 1
  %41 = add i32 %38, 1
  %42 = and i64 %39, 2
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %37, label %79, !llvm.loop !302

44:                                               ; preds = %23
  %45 = add i32 %27, 63
  %46 = and i32 %45, -64
  %47 = add i32 %25, 1
  br label %48

48:                                               ; preds = %75, %44
  %49 = phi ptr [ %24, %44 ], [ %73, %75 ]
  %50 = phi i64 [ %26, %44 ], [ %70, %75 ]
  %51 = phi i32 [ %46, %44 ], [ %78, %75 ]
  %52 = phi i32 [ %47, %44 ], [ 0, %75 ]
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %69, label %54

54:                                               ; preds = %48
  %55 = add i32 %51, 128
  %56 = shl i32 %52, 6
  %57 = sub i32 %55, %56
  br label %58

58:                                               ; preds = %54, %65
  %59 = phi i32 [ %67, %65 ], [ %52, %54 ]
  %60 = phi i32 [ %66, %65 ], [ %51, %54 ]
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !301
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %30

65:                                               ; preds = %58
  %66 = add i32 %60, 64
  %67 = add i32 %59, 1
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %58, !llvm.loop !303

69:                                               ; preds = %65, %48
  %70 = phi i64 [ %50, %48 ], [ %63, %65 ]
  %71 = phi i32 [ %51, %48 ], [ %57, %65 ]
  %72 = phi i32 [ %52, %48 ], [ 2, %65 ]
  %73 = load ptr, ptr %49, align 8, !tbaa !304
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %73, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !299
  %78 = shl i32 %77, 7
  br label %48, !llvm.loop !305

79:                                               ; preds = %69, %37, %30
  %80 = phi ptr [ %31, %30 ], [ %31, %37 ], [ %73, %69 ]
  %81 = phi i32 [ %32, %30 ], [ %32, %37 ], [ %72, %69 ]
  %82 = phi i64 [ %33, %30 ], [ %40, %37 ], [ %70, %69 ]
  %83 = phi i32 [ %34, %30 ], [ %41, %37 ], [ %71, %69 ]
  %84 = phi i1 [ false, %30 ], [ false, %37 ], [ true, %69 ]
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = icmp eq ptr %28, %11
  br i1 %86, label %154, label %101

87:                                               ; preds = %79
  %88 = load ptr, ptr @cfun, align 8, !tbaa !243
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !294
  %91 = getelementptr inbounds %struct.control_flow_graph, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !306
  %93 = zext i32 %83 to i64
  %94 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %92, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !243
  %96 = getelementptr inbounds ptr, ptr %28, i64 1
  store ptr %95, ptr %28, align 8, !tbaa !243
  %97 = lshr i64 %82, 1
  %98 = add i32 %83, 1
  br label %23, !llvm.loop !307

99:                                               ; preds = %122
  %100 = icmp eq ptr %108, %11
  br i1 %100, label %154, label %101, !llvm.loop !308

101:                                              ; preds = %85, %99
  %102 = phi ptr [ %108, %99 ], [ %28, %85 ]
  %103 = getelementptr inbounds ptr, ptr %102, i64 -1
  %104 = load ptr, ptr %103, align 8, !tbaa !243
  %105 = icmp eq ptr %104, null
  br label %106

106:                                              ; preds = %152, %101
  %107 = phi i32 [ 0, %101 ], [ %153, %152 ]
  %108 = phi ptr [ %103, %101 ], [ %143, %152 ]
  br i1 %105, label %109, label %110

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %110

110:                                              ; preds = %109, %106
  %111 = load ptr, ptr %104, align 8, !tbaa !243
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %111, align 8, !tbaa !309
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi i32 [ %114, %113 ], [ 0, %110 ]
  %117 = icmp eq i32 %116, %107
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = zext i32 %107 to i64
  %120 = getelementptr inbounds %struct.VEC_edge_base, ptr %111, i64 0, i32 2, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !243
  br label %122

122:                                              ; preds = %115, %118
  %123 = phi ptr [ %121, %118 ], [ null, %115 ]
  br i1 %117, label %99, label %124

124:                                              ; preds = %122
  %125 = load ptr, ptr %123, align 8, !tbaa !311
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %127 = load i32, ptr %126, align 8, !tbaa !313
  %128 = load ptr, ptr @cfun, align 8, !tbaa !243
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !294
  %131 = load ptr, ptr %130, align 8, !tbaa !315
  %132 = icmp eq ptr %125, %131
  br i1 %132, label %142, label %133

133:                                              ; preds = %124
  %134 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %127) #19
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %127) #19
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = getelementptr inbounds ptr, ptr %108, i64 1
  store ptr %125, ptr %108, align 8, !tbaa !243
  %141 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %0, i32 noundef %127) #19
  br label %142

142:                                              ; preds = %124, %133, %136, %139
  %143 = phi ptr [ %108, %133 ], [ %108, %136 ], [ %140, %139 ], [ %108, %124 ]
  %144 = load ptr, ptr %104, align 8, !tbaa !243
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %144, align 8, !tbaa !309
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i32 [ %147, %146 ], [ 0, %142 ]
  %150 = icmp ult i32 %107, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %152

152:                                              ; preds = %148, %151
  %153 = add i32 %107, 1
  br label %106, !llvm.loop !316

154:                                              ; preds = %99, %85
  tail call void @free(ptr noundef %11)
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_decl_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !242 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %85, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %0)
  %6 = load ptr, ptr %1, align 8, !tbaa !297
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @bitmap_zero_bits, ptr %6
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !299
  %11 = shl i32 %10, 7
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !301
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = or disjoint i32 %11, %15
  br label %17

17:                                               ; preds = %78, %4
  %18 = phi i32 [ 0, %4 ], [ %73, %78 ]
  %19 = phi i64 [ %13, %4 ], [ %81, %78 ]
  %20 = phi ptr [ %8, %4 ], [ %75, %78 ]
  %21 = phi i32 [ %16, %4 ], [ %82, %78 ]
  %22 = icmp eq i64 %19, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %51, %17
  %24 = phi i32 [ %18, %17 ], [ %52, %51 ]
  %25 = phi i64 [ %19, %17 ], [ %56, %51 ]
  %26 = phi ptr [ %20, %17 ], [ %43, %51 ]
  %27 = phi i32 [ %21, %17 ], [ %53, %51 ]
  %28 = and i64 %25, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %23, %30
  %31 = phi i32 [ %34, %30 ], [ %27, %23 ]
  %32 = phi i64 [ %33, %30 ], [ %25, %23 ]
  %33 = lshr exact i64 %32, 1
  %34 = add i32 %31, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %72, !llvm.loop !302

37:                                               ; preds = %17
  %38 = add i32 %21, 63
  %39 = and i32 %38, -64
  %40 = add i32 %18, 1
  br label %41

41:                                               ; preds = %68, %37
  %42 = phi i64 [ %19, %37 ], [ %63, %68 ]
  %43 = phi ptr [ %20, %37 ], [ %66, %68 ]
  %44 = phi i32 [ %39, %37 ], [ %71, %68 ]
  %45 = phi i32 [ %40, %37 ], [ 0, %68 ]
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %62, label %47

47:                                               ; preds = %41
  %48 = add i32 %44, 128
  %49 = shl i32 %45, 6
  %50 = sub i32 %48, %49
  br label %51

51:                                               ; preds = %47, %58
  %52 = phi i32 [ %60, %58 ], [ %45, %47 ]
  %53 = phi i32 [ %59, %58 ], [ %44, %47 ]
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !301
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %23

58:                                               ; preds = %51
  %59 = add i32 %53, 64
  %60 = add i32 %52, 1
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %51, !llvm.loop !303

62:                                               ; preds = %58, %41
  %63 = phi i64 [ %42, %41 ], [ %56, %58 ]
  %64 = phi i32 [ %44, %41 ], [ %50, %58 ]
  %65 = phi i32 [ %45, %41 ], [ 2, %58 ]
  %66 = load ptr, ptr %43, align 8, !tbaa !304
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !299
  %71 = shl i32 %70, 7
  br label %41, !llvm.loop !305

72:                                               ; preds = %62, %30, %23
  %73 = phi i32 [ %24, %23 ], [ %24, %30 ], [ %65, %62 ]
  %74 = phi i64 [ %25, %23 ], [ %33, %30 ], [ %63, %62 ]
  %75 = phi ptr [ %26, %23 ], [ %26, %30 ], [ %66, %62 ]
  %76 = phi i32 [ %27, %23 ], [ %34, %30 ], [ %64, %62 ]
  %77 = phi i1 [ false, %23 ], [ false, %30 ], [ true, %62 ]
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = tail call ptr @referenced_var_lookup(i32 noundef %76) #19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %79, i32 noundef 0) #19
  %80 = tail call i32 @fputc(i32 32, ptr %0)
  %81 = lshr i64 %74, 1
  %82 = add i32 %76, 1
  br label %17, !llvm.loop !317

83:                                               ; preds = %72
  %84 = tail call i32 @fputc(i32 125, ptr %0)
  br label %87

85:                                               ; preds = %2
  %86 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  br label %87

87:                                               ; preds = %85, %83
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_decl_set(ptr noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_decl_set(ptr noundef %2, ptr noundef %0)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !243
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_defs_stack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !242 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %0)
  %4 = icmp slt i32 %1, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %1)
  br label %7

7:                                                ; preds = %5, %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 1)
  %10 = load ptr, ptr @block_defs_stack, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %10, align 8, !tbaa !274
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  br label %16

16:                                               ; preds = %14, %62
  %17 = phi i32 [ %63, %62 ], [ 1, %14 ]
  %18 = phi i32 [ %64, %62 ], [ %15, %14 ]
  %19 = add nsw i32 %18, -1
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %16
  %22 = load ptr, ptr @block_defs_stack, align 8
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %22, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !243
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = add nsw i32 %17, 1
  %29 = icmp slt i32 %17, %1
  %30 = select i1 %4, i1 true, i1 %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %28)
  br label %62

33:                                               ; preds = %21
  %34 = load i64, ptr %25, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !258
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !254
  %42 = tail call zeroext i8 @is_gimple_reg(ptr noundef %41) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = add nsw i32 %18, -2
  %46 = load ptr, ptr @block_defs_stack, align 8
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %46, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !243
  br label %50

50:                                               ; preds = %33, %39, %44
  %51 = phi i32 [ %19, %39 ], [ %45, %44 ], [ %19, %33 ]
  %52 = phi ptr [ %25, %39 ], [ %25, %44 ], [ null, %33 ]
  %53 = phi ptr [ %41, %39 ], [ %49, %44 ], [ %25, %33 ]
  %54 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %53, i32 noundef 0) #19
  %55 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  %56 = icmp eq ptr %52, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %52, i32 noundef 0) #19
  br label %60

58:                                               ; preds = %50
  %59 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 5, i64 1, ptr %0)
  br label %60

60:                                               ; preds = %58, %57
  %61 = tail call i32 @fputc(i32 10, ptr %0)
  br label %62

62:                                               ; preds = %27, %60, %31
  %63 = phi i32 [ %28, %31 ], [ %17, %60 ], [ %28, %27 ]
  %64 = phi i32 [ %19, %31 ], [ %51, %60 ], [ %19, %27 ]
  %65 = phi i1 [ false, %31 ], [ false, %60 ], [ true, %27 ]
  br i1 %65, label %66, label %16, !llvm.loop !318

66:                                               ; preds = %62, %16
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_defs_stack(i32 noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_defs_stack(ptr noundef %2, i32 noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_currdefs(ptr noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 32, i64 1, ptr %0)
  %3 = load ptr, ptr @cfun, align 8, !tbaa !243
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !268
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !319
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  %11 = getelementptr inbounds %struct.htab, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !320
  %13 = tail call i64 @htab_size(ptr noundef %10) #19
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  br label %15

15:                                               ; preds = %19, %9
  %16 = phi ptr [ %12, %9 ], [ %20, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !243
  %18 = icmp ult ptr %17, inttoptr (i64 2 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds ptr, ptr %16, i64 1
  %21 = icmp ult ptr %20, %14
  br i1 %21, label %15, label %22, !llvm.loop !322

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %16, %15 ], [ %20, %19 ]
  %24 = icmp ult ptr %23, %14
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !243
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi ptr [ %26, %25 ], [ null, %22 ]
  %29 = icmp ult ptr %23, %14
  br i1 %29, label %30, label %68

30:                                               ; preds = %27, %65
  %31 = phi ptr [ %66, %65 ], [ %28, %27 ]
  %32 = phi ptr [ %59, %65 ], [ %23, %27 ]
  %33 = load ptr, ptr @cfun, align 8, !tbaa !243
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !268
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !323
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !254
  %42 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %37, i32 noundef %41) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39, %30
  %45 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 9, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %31, i32 noundef 0) #19
  %46 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %0)
  %47 = tail call ptr @get_current_def(ptr noundef %31)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @get_current_def(ptr noundef %31)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %50, i32 noundef 0) #19
  br label %53

51:                                               ; preds = %44
  %52 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 5, i64 1, ptr %0)
  br label %53

53:                                               ; preds = %51, %49
  %54 = tail call i32 @fputc(i32 10, ptr %0)
  br label %55

55:                                               ; preds = %39, %53
  br label %56

56:                                               ; preds = %55, %61
  %57 = phi ptr [ %59, %61 ], [ %32, %55 ]
  %58 = phi ptr [ %64, %61 ], [ undef, %55 ]
  %59 = getelementptr inbounds ptr, ptr %57, i64 1
  %60 = icmp ult ptr %59, %14
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load ptr, ptr %59, align 8, !tbaa !243
  %63 = icmp ult ptr %62, inttoptr (i64 2 to ptr)
  %64 = select i1 %63, ptr %58, ptr %62
  br i1 %63, label %56, label %65

65:                                               ; preds = %61, %56
  %66 = phi ptr [ null, %56 ], [ %64, %61 ]
  %67 = icmp ult ptr %59, %14
  br i1 %67, label %30, label %68, !llvm.loop !324

68:                                               ; preds = %65, %27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_currdefs() local_unnamed_addr #10 !prof !242 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_currdefs(ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_tree_ssa(ptr noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !325
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !243
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #19
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %4)
  tail call void @dump_def_blocks(ptr noundef %0)
  tail call void @dump_defs_stack(ptr noundef %0, i32 noundef -1)
  tail call void @dump_currdefs(ptr noundef %0)
  tail call void @dump_tree_ssa_stats(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_def_blocks(ptr noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr %0)
  %3 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @debug_def_blocks_r, ptr noundef %0) #19
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_tree_ssa_stats(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @repl_tbl, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 24, i64 1, ptr %0)
  br label %9

9:                                                ; preds = %1, %7
  %10 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %0)
  %14 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %14)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %0)
  %20 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  tail call fastcc void @htab_statistics(ptr noundef %0, ptr noundef %20)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %23 = icmp ne ptr %22, null
  %24 = load ptr, ptr @repl_tbl, align 8
  %25 = icmp ne ptr %24, null
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 @fputc(i32 10, ptr %0)
  br label %29

29:                                               ; preds = %21, %27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_tree_ssa() local_unnamed_addr #10 !prof !242 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_tree_ssa(ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @htab_statistics(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 !prof !242 {
  %3 = tail call i64 @htab_size(ptr noundef %1) #19
  %4 = tail call i64 @htab_elements(ptr noundef %1) #19
  %5 = tail call double @htab_collisions(ptr noundef %1) #19
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %3, i64 noundef %4, double noundef %5)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_tree_ssa_stats() local_unnamed_addr #10 !prof !242 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_tree_ssa_stats(ptr noundef %1)
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @debug_def_blocks_r(ptr nocapture noundef readonly %0, ptr noundef %1) #10 !prof !242 {
  %3 = load ptr, ptr %0, align 8, !tbaa !243
  %4 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !333
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !258
  tail call void @print_generic_expr(ptr noundef %1, ptr noundef %5, i32 noundef %6) #19
  %7 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !335
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %8, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2) #19
  %9 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %10, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2) #19
  %11 = getelementptr inbounds %struct.def_blocks_d, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !337
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22) #19
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_def_blocks() local_unnamed_addr #10 !prof !242 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_def_blocks(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rewrite_into_ssa() #12 !prof !338 !PGOFuncName !339 {
  %1 = alloca %struct.def_blocks_d, align 8
  %2 = alloca %struct.def_blocks_d, align 8
  %3 = alloca %struct.dom_walk_data, align 8
  %4 = alloca %struct.mark_def_sites_global_data, align 8
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !340

7:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 59) #19
  br label %8

8:                                                ; preds = %7, %0
  tail call void @init_ssa_operands() #19
  %9 = load ptr, ptr @cfun, align 8, !tbaa !243
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 10
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, -2
  store i8 %14, ptr %12, align 8
  %15 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !340

17:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2310, ptr noundef nonnull @.str.32) #19
  br label %18

18:                                               ; preds = %17, %8
  %19 = load ptr, ptr @cfun, align 8, !tbaa !243
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !268
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !341

23:                                               ; preds = %18
  %24 = load ptr, ptr %21, align 8, !tbaa !319
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ null, %18 ]
  %27 = tail call i64 @htab_elements(ptr noundef %26) #19
  %28 = tail call ptr @htab_create(i64 noundef %27, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #19
  store ptr %28, ptr @def_blocks, align 8, !tbaa !243
  %29 = load ptr, ptr @cfun, align 8, !tbaa !243
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !268
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !341

33:                                               ; preds = %25
  %34 = load ptr, ptr %31, align 8, !tbaa !319
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi ptr [ %34, %33 ], [ null, %25 ]
  %37 = getelementptr inbounds %struct.htab, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !320
  %39 = tail call i64 @htab_size(ptr noundef %36) #19
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  br label %41

41:                                               ; preds = %45, %35
  %42 = phi ptr [ %38, %35 ], [ %46, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !243
  %44 = icmp ult ptr %43, inttoptr (i64 2 to ptr)
  br i1 %44, label %45, label %48, !prof !342

45:                                               ; preds = %41
  %46 = getelementptr inbounds ptr, ptr %42, i64 1
  %47 = icmp ult ptr %46, %40
  br i1 %47, label %41, label %48, !prof !343, !llvm.loop !322

48:                                               ; preds = %45, %41
  %49 = phi ptr [ %42, %41 ], [ %46, %45 ]
  %50 = icmp ult ptr %49, %40
  br i1 %50, label %51, label %53, !prof !340

51:                                               ; preds = %48
  %52 = load ptr, ptr %49, align 8, !tbaa !243
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %52, %51 ], [ null, %48 ]
  %55 = icmp ult ptr %49, %40
  br i1 %55, label %56, label %151, !prof !344

56:                                               ; preds = %53, %148
  %57 = phi ptr [ %149, %148 ], [ %54, %53 ]
  %58 = phi ptr [ %142, %148 ], [ %49, %53 ]
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %122, !prof !284

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !254
  %65 = load ptr, ptr @info_for_ssa_name, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !285

67:                                               ; preds = %62
  %68 = load i32, ptr %65, align 8, !tbaa !265
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %68, %67 ], [ 0, %62 ]
  %71 = icmp ult i32 %64, %70
  br i1 %71, label %109, label %72, !prof !286

72:                                               ; preds = %69
  %73 = load ptr, ptr @cfun, align 8, !tbaa !243
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !268
  %76 = getelementptr inbounds %struct.gimple_df, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !270
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !287

79:                                               ; preds = %72
  %80 = load i32, ptr %77, align 8, !tbaa !274
  br label %81

81:                                               ; preds = %79, %72
  %82 = phi i32 [ %80, %79 ], [ 0, %72 ]
  br i1 %66, label %89, label %83, !prof !288

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %65, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !276
  %86 = load i32, ptr %65, align 8, !tbaa !265
  %87 = sub i32 %85, %86
  %88 = icmp uge i32 %87, %82
  br label %91

89:                                               ; preds = %81
  %90 = icmp eq i32 %82, 0
  br label %91

91:                                               ; preds = %89, %83
  %92 = phi i1 [ %88, %83 ], [ %90, %89 ]
  br i1 %92, label %95, label %93, !prof !289

93:                                               ; preds = %91
  %94 = tail call ptr @vec_heap_p_reserve(ptr noundef %65, i32 noundef %82) #19
  store ptr %94, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %95

95:                                               ; preds = %93, %91
  %96 = icmp ult i32 %70, %82
  br i1 %96, label %97, label %109, !prof !290

97:                                               ; preds = %95, %97
  %98 = phi i32 [ %99, %97 ], [ %70, %95 ]
  %99 = add nuw i32 %98, 1
  %100 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %101 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %102 = getelementptr inbounds %struct.ssa_name_info, ptr %100, i64 0, i32 2
  store i32 %101, ptr %102, align 4, !tbaa !277
  %103 = load ptr, ptr @info_for_ssa_name, align 8
  %104 = load i32, ptr %103, align 8, !tbaa !265
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 8, !tbaa !265
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %103, i64 0, i32 2, i64 %106
  store ptr %100, ptr %107, align 8, !tbaa !243
  %108 = icmp eq i32 %99, %82
  br i1 %108, label %109, label %97, !prof !291, !llvm.loop !279

109:                                              ; preds = %97, %95, %69
  %110 = load ptr, ptr @info_for_ssa_name, align 8
  %111 = zext i32 %64 to i64
  %112 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %110, i64 0, i32 2, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !243
  %114 = getelementptr inbounds %struct.ssa_name_info, ptr %113, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !277
  %116 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %137, !prof !292

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.ssa_name_info, ptr %113, i64 0, i32 1
  %120 = load i8, ptr %119, align 8
  %121 = and i8 %120, -4
  store i8 %121, ptr %119, align 8
  store ptr null, ptr %113, align 8, !tbaa !280
  store i32 %116, ptr %114, align 4, !tbaa !277
  br label %137

122:                                              ; preds = %56
  %123 = trunc i64 %59 to i16
  switch i16 %123, label %128 [
    i16 32, label %124
    i16 34, label %126
  ], !prof !293

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.tree_var_decl, ptr %57, i64 0, i32 1
  br label %132

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tree_parm_decl, ptr %57, i64 0, i32 2
  br label %132

128:                                              ; preds = %122
  %129 = icmp eq i64 %60, 36
  %130 = getelementptr inbounds %struct.tree_result_decl, ptr %57, i64 0, i32 1
  %131 = select i1 %129, ptr %130, ptr null
  br label %132

132:                                              ; preds = %128, %126, %124
  %133 = phi ptr [ %125, %124 ], [ %127, %126 ], [ %131, %128 ]
  %134 = icmp ne ptr %133, null
  tail call void @llvm.assume(i1 %134)
  %135 = load ptr, ptr %133, align 8, !tbaa !243
  %136 = getelementptr inbounds %struct.var_ann_d, ptr %135, i64 0, i32 2
  br label %137

137:                                              ; preds = %109, %118, %132
  %138 = phi ptr [ %136, %132 ], [ %113, %118 ], [ %113, %109 ]
  store ptr null, ptr %138, align 8, !tbaa !243
  br label %139

139:                                              ; preds = %144, %137
  %140 = phi ptr [ %58, %137 ], [ %142, %144 ]
  %141 = phi ptr [ undef, %137 ], [ %147, %144 ]
  %142 = getelementptr inbounds ptr, ptr %140, i64 1
  %143 = icmp ult ptr %142, %40
  br i1 %143, label %144, label %148, !prof !345

144:                                              ; preds = %139
  %145 = load ptr, ptr %142, align 8, !tbaa !243
  %146 = icmp ult ptr %145, inttoptr (i64 2 to ptr)
  %147 = select i1 %146, ptr %141, ptr %145, !prof !346
  br i1 %146, label %139, label %148, !prof !346

148:                                              ; preds = %144, %139
  %149 = phi ptr [ null, %139 ], [ %147, %144 ]
  %150 = icmp ult ptr %142, %40
  br i1 %150, label %56, label %151, !prof !347, !llvm.loop !348

151:                                              ; preds = %148, %53
  %152 = load ptr, ptr @cfun, align 8, !tbaa !243
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !294
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 5
  %156 = load i32, ptr %155, align 8, !tbaa !295
  %157 = tail call ptr @sbitmap_alloc(i32 noundef %156) #19
  store ptr %157, ptr @interesting_blocks, align 8, !tbaa !243
  tail call void @sbitmap_zero(ptr noundef %157) #19
  %158 = load ptr, ptr @cfun, align 8, !tbaa !243
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !294
  %161 = getelementptr inbounds %struct.control_flow_graph, ptr %160, i64 0, i32 5
  %162 = load i32, ptr %161, align 8, !tbaa !295
  %163 = sext i32 %162 to i64
  %164 = shl nsw i64 %163, 3
  %165 = tail call ptr @xmalloc(i64 noundef %164) #19
  %166 = load ptr, ptr @cfun, align 8, !tbaa !243
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !294
  %169 = load ptr, ptr %168, align 8, !tbaa !315
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !349
  %172 = getelementptr inbounds %struct.control_flow_graph, ptr %168, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !350
  %174 = icmp eq ptr %171, %173
  br i1 %174, label %190, label %175, !prof !351

175:                                              ; preds = %151, %175
  %176 = phi ptr [ %183, %175 ], [ %171, %151 ]
  %177 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %176, i64 0, i32 9
  %179 = load i32, ptr %178, align 8, !tbaa !313
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %165, i64 %180
  store ptr %177, ptr %181, align 8, !tbaa !243
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %176, i64 0, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !349
  %184 = load ptr, ptr @cfun, align 8, !tbaa !243
  %185 = getelementptr inbounds %struct.function, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !294
  %187 = getelementptr inbounds %struct.control_flow_graph, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !350
  %189 = icmp eq ptr %183, %188
  br i1 %189, label %190, label %175, !prof !352, !llvm.loop !353

190:                                              ; preds = %175, %151
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  tail call void @compute_dominance_frontiers(ptr noundef %165) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %191 = load i8, ptr %3, align 8
  %192 = and i8 %191, -4
  %193 = or disjoint i8 %192, 1
  store i8 %193, ptr %3, align 8
  %194 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 1
  store ptr null, ptr %194, align 8, !tbaa !354
  %195 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 2
  store ptr @mark_def_sites_block, ptr %195, align 8, !tbaa !356
  %196 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 3
  store ptr null, ptr %196, align 8, !tbaa !357
  %197 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %197, ptr %4, align 8, !tbaa !358
  %198 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 4
  store ptr %4, ptr %198, align 8, !tbaa !360
  %199 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 6
  store i64 0, ptr %199, align 8, !tbaa !361
  call void @init_walk_dominator_tree(ptr noundef nonnull %3) #19
  %200 = load ptr, ptr @cfun, align 8, !tbaa !243
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !294
  %203 = load ptr, ptr %202, align 8, !tbaa !315
  call void @walk_dominator_tree(ptr noundef nonnull %3, ptr noundef %203) #19
  call void @fini_walk_dominator_tree(ptr noundef nonnull %3) #19
  %204 = load ptr, ptr %4, align 8, !tbaa !358
  call void @bitmap_obstack_free(ptr noundef %204) #19
  store ptr null, ptr %4, align 8, !tbaa !358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  %205 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %208, label %207, !prof !340

207:                                              ; preds = %190
  call void @timevar_push_1(i32 noundef 57) #19
  br label %208

208:                                              ; preds = %207, %190
  %209 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %210 = load ptr, ptr @cfun, align 8, !tbaa !243
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !268
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214, !prof !341

214:                                              ; preds = %208
  %215 = load ptr, ptr %212, align 8, !tbaa !319
  br label %216

216:                                              ; preds = %214, %208
  %217 = phi ptr [ %215, %214 ], [ null, %208 ]
  %218 = getelementptr inbounds %struct.htab, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !320
  %220 = call i64 @htab_size(ptr noundef %217) #19
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  br label %222

222:                                              ; preds = %226, %216
  %223 = phi ptr [ %219, %216 ], [ %227, %226 ]
  %224 = load ptr, ptr %223, align 8, !tbaa !243
  %225 = icmp ult ptr %224, inttoptr (i64 2 to ptr)
  br i1 %225, label %226, label %229, !prof !342

226:                                              ; preds = %222
  %227 = getelementptr inbounds ptr, ptr %223, i64 1
  %228 = icmp ult ptr %227, %221
  br i1 %228, label %222, label %229, !prof !343, !llvm.loop !322

229:                                              ; preds = %226, %222
  %230 = phi ptr [ %223, %222 ], [ %227, %226 ]
  %231 = icmp ult ptr %230, %221
  br i1 %231, label %232, label %234, !prof !340

232:                                              ; preds = %229
  %233 = load ptr, ptr %230, align 8, !tbaa !243
  br label %234

234:                                              ; preds = %232, %229
  %235 = phi ptr [ %233, %232 ], [ null, %229 ]
  %236 = icmp ult ptr %230, %221
  br i1 %236, label %237, label %347, !prof !344

237:                                              ; preds = %234, %344
  %238 = phi ptr [ %345, %344 ], [ %235, %234 ]
  %239 = phi ptr [ %338, %344 ], [ %230, %234 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  store ptr %238, ptr %2, align 8, !tbaa !333
  %240 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %241 = call ptr @htab_find(ptr noundef %240, ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  %242 = icmp eq ptr %241, null
  br i1 %242, label %334, label %243, !prof !362

243:                                              ; preds = %237
  %244 = load i64, ptr %238, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 141
  br i1 %246, label %247, label %310, !prof !363

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.tree_ssa_name, ptr %238, i64 0, i32 3
  %249 = load i32, ptr %248, align 8, !tbaa !254
  %250 = load ptr, ptr @info_for_ssa_name, align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252, !prof !364

252:                                              ; preds = %247
  %253 = load i32, ptr %250, align 8, !tbaa !265
  br label %254

254:                                              ; preds = %252, %247
  %255 = phi i32 [ %253, %252 ], [ 0, %247 ]
  %256 = icmp ult i32 %249, %255
  br i1 %256, label %294, label %257, !prof !365

257:                                              ; preds = %254
  %258 = load ptr, ptr @cfun, align 8, !tbaa !243
  %259 = getelementptr inbounds %struct.function, ptr %258, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !268
  %261 = getelementptr inbounds %struct.gimple_df, ptr %260, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !270
  %263 = icmp eq ptr %262, null
  br i1 %263, label %266, label %264, !prof !366

264:                                              ; preds = %257
  %265 = load i32, ptr %262, align 8, !tbaa !274
  br label %266

266:                                              ; preds = %264, %257
  %267 = phi i32 [ %265, %264 ], [ 0, %257 ]
  br i1 %251, label %274, label %268, !prof !366

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %250, i64 0, i32 1
  %270 = load i32, ptr %269, align 4, !tbaa !276
  %271 = load i32, ptr %250, align 8, !tbaa !265
  %272 = sub i32 %270, %271
  %273 = icmp uge i32 %272, %267
  br label %276

274:                                              ; preds = %266
  %275 = icmp eq i32 %267, 0
  br label %276

276:                                              ; preds = %274, %268
  %277 = phi i1 [ %273, %268 ], [ %275, %274 ]
  br i1 %277, label %280, label %278, !prof !367

278:                                              ; preds = %276
  %279 = call ptr @vec_heap_p_reserve(ptr noundef %250, i32 noundef %267) #19
  store ptr %279, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %280

280:                                              ; preds = %278, %276
  %281 = icmp ult i32 %255, %267
  br i1 %281, label %282, label %294, !prof !368

282:                                              ; preds = %280, %282
  %283 = phi i32 [ %284, %282 ], [ %255, %280 ]
  %284 = add nuw i32 %283, 1
  %285 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %286 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %287 = getelementptr inbounds %struct.ssa_name_info, ptr %285, i64 0, i32 2
  store i32 %286, ptr %287, align 4, !tbaa !277
  %288 = load ptr, ptr @info_for_ssa_name, align 8
  %289 = load i32, ptr %288, align 8, !tbaa !265
  %290 = add i32 %289, 1
  store i32 %290, ptr %288, align 8, !tbaa !265
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %288, i64 0, i32 2, i64 %291
  store ptr %285, ptr %292, align 8, !tbaa !243
  %293 = icmp eq i32 %284, %267
  br i1 %293, label %294, label %282, !prof !369, !llvm.loop !279

294:                                              ; preds = %282, %280, %254
  %295 = load ptr, ptr @info_for_ssa_name, align 8
  %296 = zext i32 %249 to i64
  %297 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %295, i64 0, i32 2, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !243
  %299 = getelementptr inbounds %struct.ssa_name_info, ptr %298, i64 0, i32 2
  %300 = load i32, ptr %299, align 4, !tbaa !277
  %301 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %302 = icmp ult i32 %300, %301
  br i1 %302, label %303, label %307, !prof !370

303:                                              ; preds = %294
  %304 = getelementptr inbounds %struct.ssa_name_info, ptr %298, i64 0, i32 1
  %305 = load i8, ptr %304, align 8
  %306 = and i8 %305, -4
  store i8 %306, ptr %304, align 8
  store ptr null, ptr %298, align 8, !tbaa !280
  store i32 %301, ptr %299, align 4, !tbaa !277
  br label %307

307:                                              ; preds = %303, %294
  %308 = getelementptr inbounds %struct.ssa_name_info, ptr %298, i64 0, i32 1
  %309 = load i8, ptr %308, align 8
  br label %326

310:                                              ; preds = %243
  %311 = trunc i64 %244 to i16
  switch i16 %311, label %316 [
    i16 32, label %312
    i16 34, label %314
  ], !prof !371

312:                                              ; preds = %310
  %313 = getelementptr inbounds %struct.tree_var_decl, ptr %238, i64 0, i32 1
  br label %320

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.tree_parm_decl, ptr %238, i64 0, i32 2
  br label %320

316:                                              ; preds = %310
  %317 = icmp eq i64 %245, 36
  %318 = getelementptr inbounds %struct.tree_result_decl, ptr %238, i64 0, i32 1
  %319 = select i1 %317, ptr %318, ptr null
  br label %320

320:                                              ; preds = %316, %314, %312
  %321 = phi ptr [ %313, %312 ], [ %315, %314 ], [ %319, %316 ]
  %322 = icmp ne ptr %321, null
  call void @llvm.assume(i1 %322)
  %323 = load ptr, ptr %321, align 8, !tbaa !243
  %324 = load i8, ptr %323, align 8
  %325 = lshr i8 %324, 2
  br label %326

326:                                              ; preds = %307, %320
  %327 = phi i8 [ %309, %307 ], [ %325, %320 ]
  %328 = and i8 %327, 3
  %329 = icmp eq i8 %328, 1
  br i1 %329, label %334, label %330, !prof !372

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.tree_decl_minimal, ptr %238, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !254
  %333 = call zeroext i8 @bitmap_set_bit(ptr noundef %209, i32 noundef %332) #19
  br label %334

334:                                              ; preds = %330, %326, %237
  br label %335

335:                                              ; preds = %334, %340
  %336 = phi ptr [ %338, %340 ], [ %239, %334 ]
  %337 = phi ptr [ %343, %340 ], [ undef, %334 ]
  %338 = getelementptr inbounds ptr, ptr %336, i64 1
  %339 = icmp ult ptr %338, %221
  br i1 %339, label %340, label %344, !prof !345

340:                                              ; preds = %335
  %341 = load ptr, ptr %338, align 8, !tbaa !243
  %342 = icmp ult ptr %341, inttoptr (i64 2 to ptr)
  %343 = select i1 %342, ptr %337, ptr %341, !prof !346
  br i1 %342, label %335, label %344, !prof !346

344:                                              ; preds = %340, %335
  %345 = phi ptr [ null, %335 ], [ %343, %340 ]
  %346 = icmp ult ptr %338, %221
  br i1 %346, label %237, label %347, !prof !347, !llvm.loop !373

347:                                              ; preds = %344, %234
  %348 = load ptr, ptr %209, align 8, !tbaa !297
  %349 = icmp eq ptr %348, null
  %350 = select i1 %349, ptr @bitmap_zero_bits, ptr %348, !prof !341
  %351 = getelementptr inbounds %struct.bitmap_element_def, ptr %350, i64 0, i32 2
  %352 = load i32, ptr %351, align 8, !tbaa !299
  %353 = shl i32 %352, 7
  %354 = getelementptr inbounds %struct.bitmap_element_def, ptr %350, i64 0, i32 3
  %355 = load i64, ptr %354, align 8, !tbaa !301
  %356 = icmp eq i64 %355, 0
  %357 = zext i1 %356 to i32
  %358 = or disjoint i32 %353, %357
  br label %359

359:                                              ; preds = %420, %347
  %360 = phi i64 [ %355, %347 ], [ %427, %420 ]
  %361 = phi i32 [ 0, %347 ], [ %416, %420 ]
  %362 = phi ptr [ %350, %347 ], [ %417, %420 ]
  %363 = phi i32 [ %358, %347 ], [ %428, %420 ]
  %364 = icmp eq i64 %360, 0
  br i1 %364, label %379, label %365, !prof !374

365:                                              ; preds = %393, %359
  %366 = phi i64 [ %360, %359 ], [ %398, %393 ]
  %367 = phi i32 [ %361, %359 ], [ %394, %393 ]
  %368 = phi ptr [ %362, %359 ], [ %385, %393 ]
  %369 = phi i32 [ %363, %359 ], [ %395, %393 ]
  %370 = and i64 %366, 1
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %372, label %414, !prof !375

372:                                              ; preds = %365, %372
  %373 = phi i32 [ %376, %372 ], [ %369, %365 ]
  %374 = phi i64 [ %375, %372 ], [ %366, %365 ]
  %375 = lshr exact i64 %374, 1
  %376 = add i32 %373, 1
  %377 = and i64 %374, 2
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %372, label %414, !prof !376, !llvm.loop !302

379:                                              ; preds = %359
  %380 = add i32 %363, 63
  %381 = and i32 %380, -64
  %382 = add i32 %361, 1
  br label %383

383:                                              ; preds = %410, %379
  %384 = phi i64 [ %360, %379 ], [ %405, %410 ]
  %385 = phi ptr [ %362, %379 ], [ %408, %410 ]
  %386 = phi i32 [ %381, %379 ], [ %413, %410 ]
  %387 = phi i32 [ %382, %379 ], [ 0, %410 ]
  %388 = icmp eq i32 %387, 2
  br i1 %388, label %404, label %389, !prof !377

389:                                              ; preds = %383
  %390 = add i32 %386, 128
  %391 = shl i32 %387, 6
  %392 = sub i32 %390, %391
  br label %393

393:                                              ; preds = %389, %400
  %394 = phi i32 [ %402, %400 ], [ %387, %389 ]
  %395 = phi i32 [ %401, %400 ], [ %386, %389 ]
  %396 = zext i32 %394 to i64
  %397 = getelementptr inbounds %struct.bitmap_element_def, ptr %385, i64 0, i32 3, i64 %396
  %398 = load i64, ptr %397, align 8, !tbaa !301
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %365, !prof !378

400:                                              ; preds = %393
  %401 = add i32 %395, 64
  %402 = add i32 %394, 1
  %403 = icmp eq i32 %402, 2
  br i1 %403, label %404, label %393, !prof !379, !llvm.loop !303

404:                                              ; preds = %400, %383
  %405 = phi i64 [ %384, %383 ], [ %398, %400 ]
  %406 = phi i32 [ %386, %383 ], [ %392, %400 ]
  %407 = phi i32 [ %387, %383 ], [ 2, %400 ]
  %408 = load ptr, ptr %385, align 8, !tbaa !304
  %409 = icmp eq ptr %408, null
  br i1 %409, label %414, label %410, !prof !380

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.bitmap_element_def, ptr %408, i64 0, i32 2
  %412 = load i32, ptr %411, align 8, !tbaa !299
  %413 = shl i32 %412, 7
  br label %383, !llvm.loop !305

414:                                              ; preds = %404, %372, %365
  %415 = phi i64 [ %366, %365 ], [ %375, %372 ], [ %405, %404 ]
  %416 = phi i32 [ %367, %365 ], [ %367, %372 ], [ %407, %404 ]
  %417 = phi ptr [ %368, %365 ], [ %368, %372 ], [ %408, %404 ]
  %418 = phi i32 [ %369, %365 ], [ %376, %372 ], [ %406, %404 ]
  %419 = phi i1 [ false, %365 ], [ false, %372 ], [ true, %404 ]
  br i1 %419, label %429, label %420, !prof !381

420:                                              ; preds = %414
  %421 = call ptr @referenced_var_lookup(i32 noundef %418) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #19
  store ptr %421, ptr %1, align 8, !tbaa !333
  %422 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %423 = call ptr @htab_find(ptr noundef %422, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #19
  %424 = getelementptr inbounds %struct.def_blocks_d, ptr %423, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !335
  %426 = call ptr @compute_idf(ptr noundef %425, ptr noundef %165) #19
  call fastcc void @insert_phi_nodes_for(ptr noundef %421, ptr noundef %426, i8 noundef zeroext 0)
  call void @bitmap_obstack_free(ptr noundef %426) #19
  %427 = lshr i64 %415, 1
  %428 = add i32 %418, 1
  br label %359, !llvm.loop !382

429:                                              ; preds = %414
  call void @bitmap_obstack_free(ptr noundef nonnull %209) #19
  %430 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %433, label %432, !prof !340

432:                                              ; preds = %429
  call void @timevar_pop_1(i32 noundef 57) #19
  br label %433

433:                                              ; preds = %429, %432
  %434 = load ptr, ptr @cfun, align 8, !tbaa !243
  %435 = getelementptr inbounds %struct.function, ptr %434, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !294
  %437 = load ptr, ptr %436, align 8, !tbaa !315
  call fastcc void @rewrite_blocks(ptr noundef %437, i32 noundef 0)
  %438 = load ptr, ptr @cfun, align 8, !tbaa !243
  %439 = getelementptr inbounds %struct.function, ptr %438, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !294
  %441 = load ptr, ptr %440, align 8, !tbaa !315
  %442 = getelementptr inbounds %struct.basic_block_def, ptr %441, i64 0, i32 6
  %443 = load ptr, ptr %442, align 8, !tbaa !349
  %444 = getelementptr inbounds %struct.control_flow_graph, ptr %440, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !350
  %446 = icmp eq ptr %443, %445
  br i1 %446, label %465, label %447, !prof !351

447:                                              ; preds = %433, %447
  %448 = phi ptr [ %458, %447 ], [ %443, %433 ]
  %449 = getelementptr inbounds %struct.basic_block_def, ptr %448, i64 0, i32 9
  %450 = load i32, ptr %449, align 8, !tbaa !313
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %165, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !243
  call void @bitmap_obstack_free(ptr noundef %453) #19
  %454 = load i32, ptr %449, align 8, !tbaa !313
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds ptr, ptr %165, i64 %455
  store ptr null, ptr %456, align 8, !tbaa !243
  %457 = getelementptr inbounds %struct.basic_block_def, ptr %448, i64 0, i32 6
  %458 = load ptr, ptr %457, align 8, !tbaa !349
  %459 = load ptr, ptr @cfun, align 8, !tbaa !243
  %460 = getelementptr inbounds %struct.function, ptr %459, i64 0, i32 1
  %461 = load ptr, ptr %460, align 8, !tbaa !294
  %462 = getelementptr inbounds %struct.control_flow_graph, ptr %461, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !350
  %464 = icmp eq ptr %458, %463
  br i1 %464, label %465, label %447, !prof !352, !llvm.loop !383

465:                                              ; preds = %447, %433
  call void @free(ptr noundef %165)
  %466 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  %467 = load ptr, ptr %466, align 8, !tbaa !384
  call void @free(ptr noundef %467)
  %468 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  call void @free(ptr noundef %468)
  %469 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %470 = icmp eq ptr %469, null
  br i1 %470, label %472, label %471, !prof !341

471:                                              ; preds = %465
  call void @htab_delete(ptr noundef nonnull %469) #19
  store ptr null, ptr @def_blocks, align 8, !tbaa !243
  br label %472

472:                                              ; preds = %465, %471
  %473 = load ptr, ptr @cfun, align 8, !tbaa !243
  %474 = getelementptr inbounds %struct.function, ptr %473, i64 0, i32 3
  %475 = load ptr, ptr %474, align 8, !tbaa !268
  %476 = getelementptr inbounds %struct.gimple_df, ptr %475, i64 0, i32 10
  %477 = load i8, ptr %476, align 8
  %478 = or i8 %477, 1
  store i8 %478, ptr %476, align 8
  %479 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %482, label %481, !prof !340

481:                                              ; preds = %472
  call void @timevar_pop_1(i32 noundef 59) #19
  br label %482

482:                                              ; preds = %481, %472
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_names_replaced_by(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !242 {
  %3 = alloca %struct.repl_map_d, align 8
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #19
  %4 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !386
  %5 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %6 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #19
  %7 = icmp ne ptr %6, null
  call void @llvm.assume(i1 %7)
  %8 = load ptr, ptr %6, align 8, !tbaa !243, !nonnull !388, !noundef !388
  %9 = getelementptr inbounds %struct.repl_map_d, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !389
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %11 = load ptr, ptr %10, align 8, !tbaa !297
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @bitmap_zero_bits, ptr %11
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !299
  %16 = shl i32 %15, 7
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !301
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  br label %22

22:                                               ; preds = %83, %2
  %23 = phi i64 [ %18, %2 ], [ %93, %83 ]
  %24 = phi i32 [ 0, %2 ], [ %79, %83 ]
  %25 = phi i32 [ %21, %2 ], [ %94, %83 ]
  %26 = phi ptr [ %13, %2 ], [ %81, %83 ]
  %27 = icmp eq i64 %23, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %56, %22
  %29 = phi i64 [ %23, %22 ], [ %61, %56 ]
  %30 = phi i32 [ %24, %22 ], [ %57, %56 ]
  %31 = phi i32 [ %25, %22 ], [ %58, %56 ]
  %32 = phi ptr [ %26, %22 ], [ %49, %56 ]
  %33 = and i64 %29, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %28, %35
  %36 = phi i32 [ %39, %35 ], [ %31, %28 ]
  %37 = phi i64 [ %38, %35 ], [ %29, %28 ]
  %38 = lshr exact i64 %37, 1
  %39 = add i32 %36, 1
  %40 = and i64 %37, 2
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %35, label %77, !llvm.loop !302

42:                                               ; preds = %22
  %43 = add i32 %25, 63
  %44 = and i32 %43, -64
  %45 = add i32 %24, 1
  br label %46

46:                                               ; preds = %73, %42
  %47 = phi i64 [ %23, %42 ], [ %68, %73 ]
  %48 = phi i32 [ %44, %42 ], [ %76, %73 ]
  %49 = phi ptr [ %26, %42 ], [ %71, %73 ]
  %50 = phi i32 [ %45, %42 ], [ 0, %73 ]
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %67, label %52

52:                                               ; preds = %46
  %53 = add i32 %48, 128
  %54 = shl i32 %50, 6
  %55 = sub i32 %53, %54
  br label %56

56:                                               ; preds = %52, %63
  %57 = phi i32 [ %65, %63 ], [ %50, %52 ]
  %58 = phi i32 [ %64, %63 ], [ %48, %52 ]
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !301
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %28

63:                                               ; preds = %56
  %64 = add i32 %58, 64
  %65 = add i32 %57, 1
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %56, !llvm.loop !303

67:                                               ; preds = %63, %46
  %68 = phi i64 [ %47, %46 ], [ %61, %63 ]
  %69 = phi i32 [ %48, %46 ], [ %55, %63 ]
  %70 = phi i32 [ %50, %46 ], [ 2, %63 ]
  %71 = load ptr, ptr %49, align 8, !tbaa !304
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !299
  %76 = shl i32 %75, 7
  br label %46, !llvm.loop !305

77:                                               ; preds = %67, %35, %28
  %78 = phi i64 [ %29, %28 ], [ %38, %35 ], [ %68, %67 ]
  %79 = phi i32 [ %30, %28 ], [ %30, %35 ], [ %70, %67 ]
  %80 = phi i32 [ %31, %28 ], [ %39, %35 ], [ %69, %67 ]
  %81 = phi ptr [ %32, %28 ], [ %32, %35 ], [ %71, %67 ]
  %82 = phi i1 [ false, %28 ], [ false, %35 ], [ true, %67 ]
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr @cfun, align 8, !tbaa !243
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !268
  %87 = getelementptr inbounds %struct.gimple_df, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !270
  %89 = zext i32 %80 to i64
  %90 = getelementptr inbounds %struct.VEC_tree_base, ptr %88, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !243
  call void @print_generic_expr(ptr noundef %0, ptr noundef %91, i32 noundef 0) #19
  %92 = call i32 @fputc(i32 32, ptr %0)
  %93 = lshr i64 %78, 1
  %94 = add i32 %80, 1
  br label %22, !llvm.loop !390

95:                                               ; preds = %77
  %96 = call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_names_replaced_by(ptr noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_names_replaced_by(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_update_ssa(ptr noundef %0) local_unnamed_addr #10 !prof !242 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !243
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2918, ptr noundef nonnull @.str.32) #19
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = icmp eq ptr %10, null
  br i1 %11, label %213, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !323
  %15 = load ptr, ptr %14, align 8, !tbaa !297
  %16 = icmp eq ptr %15, null
  br i1 %16, label %213, label %17

17:                                               ; preds = %5, %12
  %18 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %19 = icmp eq ptr %18, null
  br i1 %19, label %102, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @sbitmap_first_set_bit(ptr noundef nonnull %18) #19
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %102

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 23, i64 1, ptr %0)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 62, i64 1, ptr %0)
  %26 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %27 = getelementptr inbounds %struct.simple_bitmap_def, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !391
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %26, i64 0, i32 3
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i64, ptr %29, align 8, !tbaa !301
  br label %33

33:                                               ; preds = %23, %31
  %34 = phi i64 [ 0, %23 ], [ %32, %31 ]
  br label %35

35:                                               ; preds = %33, %79
  %36 = phi i64 [ %88, %79 ], [ %34, %33 ]
  %37 = phi i32 [ %89, %79 ], [ 0, %33 ]
  %38 = phi i32 [ %77, %79 ], [ 0, %33 ]
  %39 = phi i32 [ %78, %79 ], [ 0, %33 ]
  %40 = icmp eq i64 %36, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = add i32 %38, 1
  %43 = tail call i32 @llvm.umax.i32(i32 %28, i32 %42)
  %44 = add i32 %38, 1
  %45 = icmp ult i32 %44, %28
  br i1 %45, label %58, label %73

46:                                               ; preds = %58
  %47 = shl i32 %59, 6
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i64 [ %36, %35 ], [ %62, %46 ]
  %50 = phi i32 [ %37, %35 ], [ %47, %46 ]
  %51 = phi i32 [ %38, %35 ], [ %59, %46 ]
  %52 = phi i1 [ %40, %35 ], [ %63, %46 ]
  %53 = and i64 %49, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %64, label %73

55:                                               ; preds = %58
  %56 = add i32 %59, 1
  %57 = icmp ult i32 %56, %28
  br i1 %57, label %58, label %71, !llvm.loop !392

58:                                               ; preds = %41, %55
  %59 = phi i32 [ %56, %55 ], [ %44, %41 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %29, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !301
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %55, label %46, !llvm.loop !392

64:                                               ; preds = %48, %64
  %65 = phi i32 [ %67, %64 ], [ %50, %48 ]
  %66 = phi i64 [ %68, %64 ], [ %49, %48 ]
  %67 = add i32 %65, 1
  %68 = lshr exact i64 %66, 1
  %69 = and i64 %66, 2
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %64, label %73, !llvm.loop !393

71:                                               ; preds = %55
  %72 = shl i32 %59, 6
  br label %73

73:                                               ; preds = %64, %71, %41, %48
  %74 = phi i1 [ %52, %48 ], [ %40, %41 ], [ %63, %71 ], [ %52, %64 ]
  %75 = phi i64 [ %49, %48 ], [ %36, %41 ], [ %62, %71 ], [ %68, %64 ]
  %76 = phi i32 [ %50, %48 ], [ %37, %41 ], [ %72, %71 ], [ %67, %64 ]
  %77 = phi i32 [ %51, %48 ], [ %43, %41 ], [ %43, %71 ], [ %51, %64 ]
  %78 = phi i32 [ %50, %48 ], [ %39, %41 ], [ %39, %71 ], [ %67, %64 ]
  br i1 %74, label %90, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr @cfun, align 8, !tbaa !243
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !268
  %83 = getelementptr inbounds %struct.gimple_df, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !270
  %85 = zext i32 %78 to i64
  %86 = getelementptr inbounds %struct.VEC_tree_base, ptr %84, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !243
  tail call void @dump_names_replaced_by(ptr noundef %0, ptr noundef %87)
  %88 = lshr i64 %75, 1
  %89 = add i32 %76, 1
  br label %35, !llvm.loop !394

90:                                               ; preds = %73
  %91 = tail call i32 @fputc(i32 10, ptr %0)
  %92 = load i32, ptr @update_ssa_stats, align 8, !tbaa !395
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %92)
  %94 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !397
  %95 = load i32, ptr @update_ssa_stats, align 8, !tbaa !395
  %96 = sub i32 %94, %95
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %96)
  %98 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !397
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %98)
  %100 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !398
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %100)
  br label %102

102:                                              ; preds = %90, %20, %17
  %103 = load ptr, ptr @cfun, align 8, !tbaa !243
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !268
  %106 = getelementptr inbounds %struct.gimple_df, ptr %105, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !323
  %108 = load ptr, ptr %107, align 8, !tbaa !297
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %102
  %111 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 33, i64 1, ptr %0)
  %112 = load ptr, ptr @cfun, align 8, !tbaa !243
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !268
  %115 = getelementptr inbounds %struct.gimple_df, ptr %114, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !323
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %116)
  %117 = tail call i32 @fputc(i32 10, ptr %0)
  br label %118

118:                                              ; preds = %110, %102
  %119 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %120 = icmp eq ptr %119, null
  br i1 %120, label %211, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %119, align 8, !tbaa !297
  %123 = icmp eq ptr %122, null
  br i1 %123, label %211, label %124

124:                                              ; preds = %121
  %125 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 51, i64 1, ptr %0)
  %126 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %127 = load ptr, ptr %126, align 8, !tbaa !297
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, ptr @bitmap_zero_bits, ptr %127
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !299
  %132 = shl i32 %131, 7
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %129, i64 0, i32 3
  %134 = load i64, ptr %133, align 8, !tbaa !301
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = or disjoint i32 %132, %136
  br label %138

138:                                              ; preds = %199, %124
  %139 = phi ptr [ %129, %124 ], [ %194, %199 ]
  %140 = phi i32 [ 0, %124 ], [ %195, %199 ]
  %141 = phi i64 [ %134, %124 ], [ %209, %199 ]
  %142 = phi i32 [ %137, %124 ], [ %210, %199 ]
  %143 = icmp eq i64 %141, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %172, %138
  %145 = phi ptr [ %139, %138 ], [ %163, %172 ]
  %146 = phi i32 [ %140, %138 ], [ %173, %172 ]
  %147 = phi i64 [ %141, %138 ], [ %177, %172 ]
  %148 = phi i32 [ %142, %138 ], [ %174, %172 ]
  %149 = and i64 %147, 1
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %193

151:                                              ; preds = %144, %151
  %152 = phi i32 [ %155, %151 ], [ %148, %144 ]
  %153 = phi i64 [ %154, %151 ], [ %147, %144 ]
  %154 = lshr exact i64 %153, 1
  %155 = add i32 %152, 1
  %156 = and i64 %153, 2
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %151, label %193, !llvm.loop !302

158:                                              ; preds = %138
  %159 = add i32 %142, 63
  %160 = and i32 %159, -64
  %161 = add i32 %140, 1
  br label %162

162:                                              ; preds = %189, %158
  %163 = phi ptr [ %139, %158 ], [ %187, %189 ]
  %164 = phi i64 [ %141, %158 ], [ %184, %189 ]
  %165 = phi i32 [ %160, %158 ], [ %192, %189 ]
  %166 = phi i32 [ %161, %158 ], [ 0, %189 ]
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %183, label %168

168:                                              ; preds = %162
  %169 = add i32 %165, 128
  %170 = shl i32 %166, 6
  %171 = sub i32 %169, %170
  br label %172

172:                                              ; preds = %168, %179
  %173 = phi i32 [ %181, %179 ], [ %166, %168 ]
  %174 = phi i32 [ %180, %179 ], [ %165, %168 ]
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds %struct.bitmap_element_def, ptr %163, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !301
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %144

179:                                              ; preds = %172
  %180 = add i32 %174, 64
  %181 = add i32 %173, 1
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %172, !llvm.loop !303

183:                                              ; preds = %179, %162
  %184 = phi i64 [ %164, %162 ], [ %177, %179 ]
  %185 = phi i32 [ %165, %162 ], [ %171, %179 ]
  %186 = phi i32 [ %166, %162 ], [ 2, %179 ]
  %187 = load ptr, ptr %163, align 8, !tbaa !304
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.bitmap_element_def, ptr %187, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !299
  %192 = shl i32 %191, 7
  br label %162, !llvm.loop !305

193:                                              ; preds = %183, %151, %144
  %194 = phi ptr [ %145, %144 ], [ %145, %151 ], [ %187, %183 ]
  %195 = phi i32 [ %146, %144 ], [ %146, %151 ], [ %186, %183 ]
  %196 = phi i64 [ %147, %144 ], [ %154, %151 ], [ %184, %183 ]
  %197 = phi i32 [ %148, %144 ], [ %155, %151 ], [ %185, %183 ]
  %198 = phi i1 [ false, %144 ], [ false, %151 ], [ true, %183 ]
  br i1 %198, label %211, label %199

199:                                              ; preds = %193
  %200 = load ptr, ptr @cfun, align 8, !tbaa !243
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !268
  %203 = getelementptr inbounds %struct.gimple_df, ptr %202, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !270
  %205 = zext i32 %197 to i64
  %206 = getelementptr inbounds %struct.VEC_tree_base, ptr %204, i64 0, i32 2, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !243
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %207, i32 noundef 0) #19
  %208 = tail call i32 @fputc(i32 32, ptr %0)
  %209 = lshr i64 %196, 1
  %210 = add i32 %197, 1
  br label %138, !llvm.loop !399

211:                                              ; preds = %193, %121, %118
  %212 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  br label %213

213:                                              ; preds = %8, %12, %211
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @need_ssa_update_p(ptr noundef readonly %0) local_unnamed_addr #12 !prof !400 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !401

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2918, ptr noundef nonnull @.str.32) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7, !prof !401

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !268
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !402

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !323
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %7, %11, %4
  %18 = phi i8 [ 1, %4 ], [ 0, %7 ], [ %16, %11 ]
  ret i8 %18
}

declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_update_ssa() local_unnamed_addr #10 !prof !242 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !243
  tail call void @dump_update_ssa(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_update_ssa() local_unnamed_addr #12 !prof !403 {
  %1 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %2 = load ptr, ptr %1, align 8, !tbaa !384
  tail call void @free(ptr noundef %2)
  tail call void @free(ptr noundef %1)
  store ptr null, ptr @old_ssa_names, align 8, !tbaa !243
  %3 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %4 = load ptr, ptr %3, align 8, !tbaa !384
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %3)
  store ptr null, ptr @new_ssa_names, align 8, !tbaa !243
  %5 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  tail call void @htab_delete(ptr noundef %5) #19
  store ptr null, ptr @repl_tbl, align 8, !tbaa !243
  %6 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !268
  %9 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !323
  tail call void @bitmap_clear(ptr noundef %10) #19
  %11 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !404
  tail call void @bitmap_obstack_free(ptr noundef %11) #19
  store ptr null, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !404
  %12 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %13 = icmp eq ptr %12, null
  br i1 %13, label %100, label %14, !prof !405

14:                                               ; preds = %0
  %15 = load ptr, ptr %12, align 8, !tbaa !297
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @bitmap_zero_bits, ptr %15, !prof !406
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !299
  %20 = shl i32 %19, 7
  %21 = getelementptr inbounds %struct.bitmap_element_def, ptr %17, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !301
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = or disjoint i32 %20, %24
  br label %26

26:                                               ; preds = %87, %14
  %27 = phi i64 [ %22, %14 ], [ %96, %87 ]
  %28 = phi i32 [ %25, %14 ], [ %97, %87 ]
  %29 = phi i32 [ 0, %14 ], [ %84, %87 ]
  %30 = phi ptr [ %17, %14 ], [ %85, %87 ]
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %46, label %32, !prof !407

32:                                               ; preds = %60, %26
  %33 = phi i64 [ %27, %26 ], [ %65, %60 ]
  %34 = phi i32 [ %28, %26 ], [ %62, %60 ]
  %35 = phi i32 [ %29, %26 ], [ %61, %60 ]
  %36 = phi ptr [ %30, %26 ], [ %53, %60 ]
  %37 = and i64 %33, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %81, !prof !408

39:                                               ; preds = %32, %39
  %40 = phi i32 [ %43, %39 ], [ %34, %32 ]
  %41 = phi i64 [ %42, %39 ], [ %33, %32 ]
  %42 = lshr exact i64 %41, 1
  %43 = add i32 %40, 1
  %44 = and i64 %41, 2
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %39, label %81, !prof !409, !llvm.loop !302

46:                                               ; preds = %26
  %47 = add i32 %28, 63
  %48 = and i32 %47, -64
  %49 = add i32 %29, 1
  br label %50

50:                                               ; preds = %77, %46
  %51 = phi i64 [ %27, %46 ], [ %72, %77 ]
  %52 = phi i32 [ %48, %46 ], [ %80, %77 ]
  %53 = phi ptr [ %30, %46 ], [ %75, %77 ]
  %54 = phi i32 [ %49, %46 ], [ 0, %77 ]
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %71, label %56, !prof !410

56:                                               ; preds = %50
  %57 = add i32 %52, 128
  %58 = shl i32 %54, 6
  %59 = sub i32 %57, %58
  br label %60

60:                                               ; preds = %56, %67
  %61 = phi i32 [ %69, %67 ], [ %54, %56 ]
  %62 = phi i32 [ %68, %67 ], [ %52, %56 ]
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds %struct.bitmap_element_def, ptr %53, i64 0, i32 3, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !301
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %32, !prof !411

67:                                               ; preds = %60
  %68 = add i32 %62, 64
  %69 = add i32 %61, 1
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %60, !prof !412, !llvm.loop !303

71:                                               ; preds = %67, %50
  %72 = phi i64 [ %51, %50 ], [ %65, %67 ]
  %73 = phi i32 [ %52, %50 ], [ %59, %67 ]
  %74 = phi i32 [ %54, %50 ], [ 2, %67 ]
  %75 = load ptr, ptr %53, align 8, !tbaa !304
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77, !prof !413

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.bitmap_element_def, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !299
  %80 = shl i32 %79, 7
  br label %50, !llvm.loop !305

81:                                               ; preds = %71, %39, %32
  %82 = phi i64 [ %33, %32 ], [ %42, %39 ], [ %72, %71 ]
  %83 = phi i32 [ %34, %32 ], [ %43, %39 ], [ %73, %71 ]
  %84 = phi i32 [ %35, %32 ], [ %35, %39 ], [ %74, %71 ]
  %85 = phi ptr [ %36, %32 ], [ %36, %39 ], [ %75, %71 ]
  %86 = phi i1 [ false, %32 ], [ false, %39 ], [ true, %71 ]
  br i1 %86, label %98, label %87, !prof !414

87:                                               ; preds = %81
  %88 = load ptr, ptr @cfun, align 8, !tbaa !243
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !268
  %91 = getelementptr inbounds %struct.gimple_df, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !270
  %93 = zext i32 %83 to i64
  %94 = getelementptr inbounds %struct.VEC_tree_base, ptr %92, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !243
  tail call void @release_ssa_name(ptr noundef %95) #19
  %96 = lshr i64 %82, 1
  %97 = add i32 %83, 1
  br label %26, !llvm.loop !415

98:                                               ; preds = %81
  %99 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  tail call void @bitmap_obstack_free(ptr noundef %99) #19
  store ptr null, ptr @names_to_release, align 8, !tbaa !243
  br label %100

100:                                              ; preds = %98, %0
  %101 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %102 = add i32 %101, 1
  store i32 %102, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %103 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105, !prof !416

105:                                              ; preds = %100
  tail call void @htab_delete(ptr noundef nonnull %103) #19
  store ptr null, ptr @def_blocks, align 8, !tbaa !243
  br label %106

106:                                              ; preds = %100, %105
  %107 = load ptr, ptr @cfun, align 8, !tbaa !243
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !268
  %110 = getelementptr inbounds %struct.gimple_df, ptr %109, i64 0, i32 10
  %111 = load i8, ptr %110, align 8
  %112 = or i8 %111, 1
  store i8 %112, ptr %110, align 8
  %113 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %114 = icmp eq ptr %113, null
  br i1 %114, label %198, label %115, !prof !417

115:                                              ; preds = %106
  %116 = load ptr, ptr %113, align 8, !tbaa !297
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, ptr @bitmap_zero_bits, ptr %116, !prof !418
  %119 = getelementptr inbounds %struct.bitmap_element_def, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !299
  %121 = shl i32 %120, 7
  %122 = getelementptr inbounds %struct.bitmap_element_def, ptr %118, i64 0, i32 3
  %123 = load i64, ptr %122, align 8, !tbaa !301
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = or disjoint i32 %121, %125
  %127 = load ptr, ptr @phis_to_rewrite, align 8
  br label %128

128:                                              ; preds = %195, %115
  %129 = phi i64 [ %123, %115 ], [ %196, %195 ]
  %130 = phi i32 [ %126, %115 ], [ %197, %195 ]
  %131 = phi i32 [ 0, %115 ], [ %186, %195 ]
  %132 = phi ptr [ %118, %115 ], [ %187, %195 ]
  %133 = icmp eq i64 %129, 0
  br i1 %133, label %148, label %134, !prof !419

134:                                              ; preds = %162, %128
  %135 = phi i64 [ %129, %128 ], [ %167, %162 ]
  %136 = phi i32 [ %130, %128 ], [ %164, %162 ]
  %137 = phi i32 [ %131, %128 ], [ %163, %162 ]
  %138 = phi ptr [ %132, %128 ], [ %155, %162 ]
  %139 = and i64 %135, 1
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %183, !prof !420

141:                                              ; preds = %134, %141
  %142 = phi i32 [ %145, %141 ], [ %136, %134 ]
  %143 = phi i64 [ %144, %141 ], [ %135, %134 ]
  %144 = lshr exact i64 %143, 1
  %145 = add i32 %142, 1
  %146 = and i64 %143, 2
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %141, label %183, !prof !421, !llvm.loop !302

148:                                              ; preds = %128
  %149 = add i32 %130, 63
  %150 = and i32 %149, -64
  %151 = add i32 %131, 1
  br label %152

152:                                              ; preds = %179, %148
  %153 = phi i64 [ %129, %148 ], [ %174, %179 ]
  %154 = phi i32 [ %150, %148 ], [ %182, %179 ]
  %155 = phi ptr [ %132, %148 ], [ %177, %179 ]
  %156 = phi i32 [ %151, %148 ], [ 0, %179 ]
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %173, label %158, !prof !422

158:                                              ; preds = %152
  %159 = add i32 %154, 128
  %160 = shl i32 %156, 6
  %161 = sub i32 %159, %160
  br label %162

162:                                              ; preds = %158, %169
  %163 = phi i32 [ %171, %169 ], [ %156, %158 ]
  %164 = phi i32 [ %170, %169 ], [ %154, %158 ]
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds %struct.bitmap_element_def, ptr %155, i64 0, i32 3, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !301
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %134, !prof !423

169:                                              ; preds = %162
  %170 = add i32 %164, 64
  %171 = add i32 %163, 1
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %162, !prof !424, !llvm.loop !303

173:                                              ; preds = %169, %152
  %174 = phi i64 [ %153, %152 ], [ %167, %169 ]
  %175 = phi i32 [ %154, %152 ], [ %161, %169 ]
  %176 = phi i32 [ %156, %152 ], [ 2, %169 ]
  %177 = load ptr, ptr %155, align 8, !tbaa !304
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179, !prof !425

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.bitmap_element_def, ptr %177, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !299
  %182 = shl i32 %181, 7
  br label %152, !llvm.loop !305

183:                                              ; preds = %173, %141, %134
  %184 = phi i64 [ %135, %134 ], [ %144, %141 ], [ %174, %173 ]
  %185 = phi i32 [ %136, %134 ], [ %145, %141 ], [ %175, %173 ]
  %186 = phi i32 [ %137, %134 ], [ %137, %141 ], [ %176, %173 ]
  %187 = phi ptr [ %138, %134 ], [ %138, %141 ], [ %177, %173 ]
  %188 = phi i1 [ false, %134 ], [ false, %141 ], [ true, %173 ]
  br i1 %188, label %198, label %189, !prof !426

189:                                              ; preds = %183
  %190 = zext i32 %185 to i64
  %191 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %127, i64 0, i32 2, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !243
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194, !prof !427

194:                                              ; preds = %189
  tail call void @free(ptr noundef %192)
  br label %195

195:                                              ; preds = %189, %194
  store ptr null, ptr %191, align 8, !tbaa !243
  %196 = lshr i64 %184, 1
  %197 = add i32 %185, 1
  br label %128, !llvm.loop !428

198:                                              ; preds = %183, %106
  tail call void @bitmap_obstack_free(ptr noundef %113) #19
  store ptr null, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %199 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  tail call void @bitmap_obstack_free(ptr noundef %199) #19
  store ptr null, ptr @blocks_to_update, align 8, !tbaa !243
  store ptr null, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @create_new_def_for(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !429 {
  %4 = tail call ptr @duplicate_ssa_name(ptr noundef %0, ptr noundef %1) #19
  store ptr %4, ptr %2, align 8, !tbaa !243
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %47, !prof !430

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !254
  %11 = icmp eq ptr %10, null
  br label %12

12:                                               ; preds = %45, %8
  %13 = phi i32 [ 0, %8 ], [ %46, %45 ]
  br i1 %11, label %14, label %15, !prof !431

14:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %15

15:                                               ; preds = %14, %12
  %16 = load ptr, ptr %10, align 8, !tbaa !243
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !432

18:                                               ; preds = %15
  %19 = load i32, ptr %16, align 8, !tbaa !309
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %27, label %23, !prof !432

23:                                               ; preds = %20
  %24 = zext i32 %13 to i64
  %25 = getelementptr inbounds %struct.VEC_edge_base, ptr %16, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !243
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ %26, %23 ], [ null, %20 ]
  br i1 %22, label %47, label %29, !prof !432

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !433
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr %4, align 8
  %36 = or i64 %35, 4194304
  store i64 %36, ptr %4, align 8
  br label %47

37:                                               ; preds = %29
  %38 = icmp eq ptr %16, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %16, align 8, !tbaa !309
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %40, %39 ], [ 0, %37 ]
  %43 = icmp ult i32 %13, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %45

45:                                               ; preds = %41, %44
  %46 = add i32 %13, 1
  br label %12, !llvm.loop !434

47:                                               ; preds = %27, %34, %3
  %48 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52, !prof !435

50:                                               ; preds = %47
  %51 = load ptr, ptr @cfun, align 8, !tbaa !243
  tail call fastcc void @init_update_ssa(ptr noundef %51)
  br label %52

52:                                               ; preds = %50, %47
  %53 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %54 = load ptr, ptr @cfun, align 8, !tbaa !243
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %57, label %56, !prof !436

56:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2881, ptr noundef nonnull @.str.32) #19
  br label %57

57:                                               ; preds = %52, %56
  tail call fastcc void @add_new_name_mapping(ptr noundef %4, ptr noundef %0)
  %58 = load i64, ptr %0, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %61, label %121, !prof !284

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !254
  %64 = load ptr, ptr @info_for_ssa_name, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !285

66:                                               ; preds = %61
  %67 = load i32, ptr %64, align 8, !tbaa !265
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ 0, %61 ]
  %70 = icmp ult i32 %63, %69
  br i1 %70, label %108, label %71, !prof !286

71:                                               ; preds = %68
  %72 = load ptr, ptr @cfun, align 8, !tbaa !243
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !268
  %75 = getelementptr inbounds %struct.gimple_df, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !270
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !287

78:                                               ; preds = %71
  %79 = load i32, ptr %76, align 8, !tbaa !274
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi i32 [ %79, %78 ], [ 0, %71 ]
  br i1 %65, label %88, label %82, !prof !288

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %64, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !276
  %85 = load i32, ptr %64, align 8, !tbaa !265
  %86 = sub i32 %84, %85
  %87 = icmp uge i32 %86, %81
  br label %90

88:                                               ; preds = %80
  %89 = icmp eq i32 %81, 0
  br label %90

90:                                               ; preds = %88, %82
  %91 = phi i1 [ %87, %82 ], [ %89, %88 ]
  br i1 %91, label %94, label %92, !prof !289

92:                                               ; preds = %90
  %93 = tail call ptr @vec_heap_p_reserve(ptr noundef %64, i32 noundef %81) #19
  store ptr %93, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %94

94:                                               ; preds = %92, %90
  %95 = icmp ult i32 %69, %81
  br i1 %95, label %96, label %108, !prof !290

96:                                               ; preds = %94, %96
  %97 = phi i32 [ %98, %96 ], [ %69, %94 ]
  %98 = add nuw i32 %97, 1
  %99 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %100 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %101 = getelementptr inbounds %struct.ssa_name_info, ptr %99, i64 0, i32 2
  store i32 %100, ptr %101, align 4, !tbaa !277
  %102 = load ptr, ptr @info_for_ssa_name, align 8
  %103 = load i32, ptr %102, align 8, !tbaa !265
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8, !tbaa !265
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %102, i64 0, i32 2, i64 %105
  store ptr %99, ptr %106, align 8, !tbaa !243
  %107 = icmp eq i32 %98, %81
  br i1 %107, label %108, label %96, !prof !291, !llvm.loop !279

108:                                              ; preds = %96, %94, %68
  %109 = load ptr, ptr @info_for_ssa_name, align 8
  %110 = zext i32 %63 to i64
  %111 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %109, i64 0, i32 2, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !243
  %113 = getelementptr inbounds %struct.ssa_name_info, ptr %112, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !277
  %115 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %136, !prof !292

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.ssa_name_info, ptr %112, i64 0, i32 1
  %119 = load i8, ptr %118, align 8
  %120 = and i8 %119, -4
  store i8 %120, ptr %118, align 8
  store ptr null, ptr %112, align 8, !tbaa !280
  store i32 %115, ptr %113, align 4, !tbaa !277
  br label %136

121:                                              ; preds = %57
  %122 = trunc i64 %58 to i16
  switch i16 %122, label %127 [
    i16 32, label %123
    i16 34, label %125
  ], !prof !293

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %131

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %131

127:                                              ; preds = %121
  %128 = icmp eq i64 %59, 36
  %129 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %130 = select i1 %128, ptr %129, ptr null
  br label %131

131:                                              ; preds = %127, %125, %123
  %132 = phi ptr [ %124, %123 ], [ %126, %125 ], [ %130, %127 ]
  %133 = icmp ne ptr %132, null
  tail call void @llvm.assume(i1 %133)
  %134 = load ptr, ptr %132, align 8, !tbaa !243
  %135 = getelementptr inbounds %struct.var_ann_d, ptr %134, i64 0, i32 2
  br label %136

136:                                              ; preds = %108, %117, %131
  %137 = phi ptr [ %135, %131 ], [ %112, %117 ], [ %112, %108 ]
  store ptr %4, ptr %137, align 8, !tbaa !243
  ret ptr %4
}

declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @register_new_name_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !437 {
  %3 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !435

5:                                                ; preds = %2
  %6 = load ptr, ptr @cfun, align 8, !tbaa !243
  tail call fastcc void @init_update_ssa(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %9 = load ptr, ptr @cfun, align 8, !tbaa !243
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %12, label %11, !prof !436

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2881, ptr noundef nonnull @.str.32) #19
  br label %12

12:                                               ; preds = %7, %11
  tail call fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_update_ssa(ptr noundef %0) unnamed_addr #12 !prof !403 !PGOFuncName !438 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !243
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !270
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !417

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 8, !tbaa !274
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %1 ]
  br i1 %7, label %20, label %12, !prof !417

12:                                               ; preds = %10
  %13 = load i32, ptr %6, align 8, !tbaa !274
  %14 = icmp ult i32 %13, 9
  %15 = or i1 %7, %14
  %16 = select i1 %14, i32 3, i32 0, !prof !439
  br i1 %15, label %20, label %17, !prof !440

17:                                               ; preds = %12
  %18 = load i32, ptr %6, align 8, !tbaa !274
  %19 = udiv i32 %18, 3
  br label %20

20:                                               ; preds = %12, %10, %17
  %21 = phi i32 [ %16, %12 ], [ %19, %17 ], [ 3, %10 ]
  %22 = add i32 %21, %11
  %23 = tail call ptr @sbitmap_alloc(i32 noundef %22) #19
  store ptr %23, ptr @old_ssa_names, align 8, !tbaa !243
  tail call void @sbitmap_zero(ptr noundef %23) #19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !243
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !268
  %27 = getelementptr inbounds %struct.gimple_df, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !270
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !417

30:                                               ; preds = %20
  %31 = load i32, ptr %28, align 8, !tbaa !274
  br label %32

32:                                               ; preds = %20, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %20 ]
  br i1 %29, label %42, label %34, !prof !417

34:                                               ; preds = %32
  %35 = load i32, ptr %28, align 8, !tbaa !274
  %36 = icmp ult i32 %35, 9
  %37 = or i1 %29, %36
  %38 = select i1 %36, i32 3, i32 0, !prof !439
  br i1 %37, label %42, label %39, !prof !440

39:                                               ; preds = %34
  %40 = load i32, ptr %28, align 8, !tbaa !274
  %41 = udiv i32 %40, 3
  br label %42

42:                                               ; preds = %34, %32, %39
  %43 = phi i32 [ %38, %34 ], [ %41, %39 ], [ 3, %32 ]
  %44 = add i32 %43, %33
  %45 = tail call ptr @sbitmap_alloc(i32 noundef %44) #19
  store ptr %45, ptr @new_ssa_names, align 8, !tbaa !243
  tail call void @sbitmap_zero(ptr noundef %45) #19
  %46 = tail call ptr @htab_create(i64 noundef 20, ptr noundef nonnull @repl_map_hash, ptr noundef nonnull @repl_map_eq, ptr noundef nonnull @repl_map_free) #19
  store ptr %46, ptr @repl_tbl, align 8, !tbaa !243
  store ptr null, ptr @names_to_release, align 8, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @update_ssa_stats, i8 0, i64 24, i1 false)
  %47 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %47, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !404
  store ptr %0, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_new_name_mapping(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !441 !PGOFuncName !442 {
  %3 = alloca %struct.repl_map_d, align 8
  %4 = alloca %struct.repl_map_d, align 8
  %5 = alloca %struct.repl_map_d, align 8
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !443

8:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 60) #19
  br label %9

9:                                                ; preds = %2, %8
  %10 = icmp eq ptr %0, %1
  br i1 %10, label %17, label %11, !prof !444

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !254
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !254
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %18, label %17, !prof !443

17:                                               ; preds = %11, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 672, ptr noundef nonnull @.str.32) #19
  br label %18

18:                                               ; preds = %11, %17
  %19 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %32, !prof !445

21:                                               ; preds = %18
  %22 = load i32, ptr @update_ssa_stats, align 8, !tbaa !395
  %23 = add i32 %22, 1
  store i32 %23, ptr @update_ssa_stats, align 8, !tbaa !395
  %24 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !398
  %25 = add i32 %24, 1
  store i32 %25, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !398
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !254
  %28 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !404
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !254
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %30) #19
  br label %32

32:                                               ; preds = %21, %18
  %33 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %34 = getelementptr inbounds %struct.simple_bitmap_def, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !446
  %36 = load ptr, ptr @cfun, align 8, !tbaa !243
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !268
  %39 = getelementptr inbounds %struct.gimple_df, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !270
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42, !prof !444

42:                                               ; preds = %32
  %43 = load i32, ptr %40, align 8, !tbaa !274
  %44 = add i32 %43, -1
  br label %45

45:                                               ; preds = %32, %42
  %46 = phi i32 [ %44, %42 ], [ -1, %32 ]
  %47 = icmp ugt i32 %35, %46
  br i1 %47, label %67, label %48, !prof !443

48:                                               ; preds = %45
  br i1 %41, label %51, label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %40, align 8, !tbaa !274
  br label %51

51:                                               ; preds = %48, %49
  %52 = phi i32 [ %50, %49 ], [ 0, %48 ]
  br i1 %41, label %61, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %40, align 8, !tbaa !274
  %55 = icmp ult i32 %54, 9
  %56 = or i1 %41, %55
  %57 = select i1 %55, i32 3, i32 0
  br i1 %56, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %40, align 8, !tbaa !274
  %60 = udiv i32 %59, 3
  br label %61

61:                                               ; preds = %53, %51, %58
  %62 = phi i32 [ %57, %53 ], [ %60, %58 ], [ 3, %51 ]
  %63 = add i32 %62, %52
  %64 = tail call ptr @sbitmap_resize(ptr noundef %33, i32 noundef %63, i32 noundef 0) #19
  store ptr %64, ptr @new_ssa_names, align 8, !tbaa !243
  %65 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %66 = tail call ptr @sbitmap_resize(ptr noundef %65, i32 noundef %63, i32 noundef 0) #19
  store ptr %66, ptr @old_ssa_names, align 8, !tbaa !243
  br label %67

67:                                               ; preds = %61, %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  store ptr %0, ptr %5, align 8, !tbaa !386
  %68 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %69 = call ptr @htab_find_slot(ptr noundef %68, ptr noundef nonnull %5, i32 noundef 1) #19
  %70 = load ptr, ptr %69, align 8, !tbaa !243
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %76, !prof !443

72:                                               ; preds = %67
  %73 = call ptr @xmalloc(i64 noundef 16) #19
  store ptr %0, ptr %73, align 8, !tbaa !386
  %74 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %75 = getelementptr inbounds %struct.repl_map_d, ptr %73, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !389
  store ptr %73, ptr %69, align 8, !tbaa !243
  br label %76

76:                                               ; preds = %67, %72
  %77 = phi ptr [ %73, %72 ], [ %70, %67 ]
  %78 = getelementptr inbounds %struct.repl_map_d, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !389
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !254
  %82 = call zeroext i8 @bitmap_set_bit(ptr noundef %79, i32 noundef %81) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  %83 = load i32, ptr %80, align 8, !tbaa !254
  %84 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %85 = icmp eq ptr %84, null
  br i1 %85, label %124, label %86, !prof !444

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.simple_bitmap_def, ptr %84, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !446
  %89 = icmp ult i32 %83, %88
  br i1 %89, label %90, label %124, !prof !443

90:                                               ; preds = %86
  %91 = lshr i32 %83, 6
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.simple_bitmap_def, ptr %84, i64 0, i32 3, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !301
  %95 = and i32 %83, 63
  %96 = zext nneg i32 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = and i64 %94, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %124, label %100, !prof !447

100:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  store ptr %0, ptr %4, align 8, !tbaa !386
  %101 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %102 = call ptr @htab_find_slot(ptr noundef %101, ptr noundef nonnull %4, i32 noundef 0) #19
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104, !prof !448

104:                                              ; preds = %100
  %105 = load ptr, ptr %102, align 8, !tbaa !243
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107, !prof !448

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.repl_map_d, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !389
  br label %110

110:                                              ; preds = %100, %104, %107
  %111 = phi ptr [ %109, %107 ], [ null, %104 ], [ null, %100 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !386
  %112 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %113 = call ptr @htab_find_slot(ptr noundef %112, ptr noundef nonnull %3, i32 noundef 0) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115, !prof !448

115:                                              ; preds = %110
  %116 = load ptr, ptr %113, align 8, !tbaa !243
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118, !prof !448

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.repl_map_d, ptr %116, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !389
  br label %121

121:                                              ; preds = %110, %115, %118
  %122 = phi ptr [ %120, %118 ], [ null, %115 ], [ null, %110 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %123 = call zeroext i8 @bitmap_ior_into(ptr noundef %111, ptr noundef %122) #19
  br label %124

124:                                              ; preds = %76, %86, %121, %90
  %125 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %126 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !254
  %128 = load ptr, ptr %125, align 8, !tbaa !384
  %129 = icmp eq ptr %128, null
  br i1 %129, label %144, label %130, !prof !443

130:                                              ; preds = %124
  %131 = lshr i32 %127, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds %struct.simple_bitmap_def, ptr %125, i64 0, i32 3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !301
  %135 = and i32 %127, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = and i64 %134, %137
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = getelementptr inbounds i8, ptr %128, i64 %132
  %142 = load i8, ptr %141, align 1, !tbaa !254
  %143 = add i8 %142, 1
  store i8 %143, ptr %141, align 1, !tbaa !254
  br label %144

144:                                              ; preds = %124, %130, %140
  %145 = and i32 %127, 63
  %146 = zext nneg i32 %145 to i64
  %147 = shl nuw i64 1, %146
  %148 = lshr i32 %127, 6
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds %struct.simple_bitmap_def, ptr %125, i64 0, i32 3, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !301
  %152 = or i64 %151, %147
  store i64 %152, ptr %150, align 8, !tbaa !301
  %153 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %154 = load i32, ptr %80, align 8, !tbaa !254
  %155 = load ptr, ptr %153, align 8, !tbaa !384
  %156 = icmp eq ptr %155, null
  br i1 %156, label %171, label %157, !prof !443

157:                                              ; preds = %144
  %158 = lshr i32 %154, 6
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds %struct.simple_bitmap_def, ptr %153, i64 0, i32 3, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !301
  %162 = and i32 %154, 63
  %163 = zext nneg i32 %162 to i64
  %164 = shl nuw i64 1, %163
  %165 = and i64 %161, %164
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = getelementptr inbounds i8, ptr %155, i64 %159
  %169 = load i8, ptr %168, align 1, !tbaa !254
  %170 = add i8 %169, 1
  store i8 %170, ptr %168, align 1, !tbaa !254
  br label %171

171:                                              ; preds = %144, %157, %167
  %172 = and i32 %154, 63
  %173 = zext nneg i32 %172 to i64
  %174 = shl nuw i64 1, %173
  %175 = lshr i32 %154, 6
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds %struct.simple_bitmap_def, ptr %153, i64 0, i32 3, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !301
  %179 = or i64 %178, %174
  store i64 %179, ptr %177, align 8, !tbaa !301
  %180 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !397
  %181 = add i32 %180, 1
  store i32 %181, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 1), align 4, !tbaa !397
  %182 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %185, label %184, !prof !443

184:                                              ; preds = %171
  call void @timevar_pop_1(i32 noundef 60) #19
  br label %185

185:                                              ; preds = %171, %184
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @mark_sym_for_renaming(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !449 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !243
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !323
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !254
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %8) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_set_for_renaming(ptr noundef readonly %0) local_unnamed_addr #10 !prof !242 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %88, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !297
  %5 = icmp eq ptr %4, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !299
  %9 = shl i32 %8, 7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !301
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = or disjoint i32 %9, %13
  br label %15

15:                                               ; preds = %76, %6
  %16 = phi i32 [ 0, %6 ], [ %71, %76 ]
  %17 = phi i64 [ %11, %6 ], [ %86, %76 ]
  %18 = phi ptr [ %4, %6 ], [ %73, %76 ]
  %19 = phi i32 [ %14, %6 ], [ %87, %76 ]
  %20 = icmp eq i64 %17, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %49, %15
  %22 = phi i32 [ %16, %15 ], [ %50, %49 ]
  %23 = phi i64 [ %17, %15 ], [ %54, %49 ]
  %24 = phi ptr [ %18, %15 ], [ %41, %49 ]
  %25 = phi i32 [ %19, %15 ], [ %51, %49 ]
  %26 = and i64 %23, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %21, %28
  %29 = phi i32 [ %32, %28 ], [ %25, %21 ]
  %30 = phi i64 [ %31, %28 ], [ %23, %21 ]
  %31 = lshr exact i64 %30, 1
  %32 = add i32 %29, 1
  %33 = and i64 %30, 2
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %28, label %70, !llvm.loop !302

35:                                               ; preds = %15
  %36 = add i32 %19, 63
  %37 = and i32 %36, -64
  %38 = add i32 %16, 1
  br label %39

39:                                               ; preds = %66, %35
  %40 = phi i64 [ %17, %35 ], [ %61, %66 ]
  %41 = phi ptr [ %18, %35 ], [ %64, %66 ]
  %42 = phi i32 [ %37, %35 ], [ %69, %66 ]
  %43 = phi i32 [ %38, %35 ], [ 0, %66 ]
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = add i32 %42, 128
  %47 = shl i32 %43, 6
  %48 = sub i32 %46, %47
  br label %49

49:                                               ; preds = %45, %56
  %50 = phi i32 [ %58, %56 ], [ %43, %45 ]
  %51 = phi i32 [ %57, %56 ], [ %42, %45 ]
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !301
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %21

56:                                               ; preds = %49
  %57 = add i32 %51, 64
  %58 = add i32 %50, 1
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %49, !llvm.loop !303

60:                                               ; preds = %56, %39
  %61 = phi i64 [ %40, %39 ], [ %54, %56 ]
  %62 = phi i32 [ %42, %39 ], [ %48, %56 ]
  %63 = phi i32 [ %43, %39 ], [ 2, %56 ]
  %64 = load ptr, ptr %41, align 8, !tbaa !304
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !299
  %69 = shl i32 %68, 7
  br label %39, !llvm.loop !305

70:                                               ; preds = %60, %28, %21
  %71 = phi i32 [ %22, %21 ], [ %22, %28 ], [ %63, %60 ]
  %72 = phi i64 [ %23, %21 ], [ %31, %28 ], [ %61, %60 ]
  %73 = phi ptr [ %24, %21 ], [ %24, %28 ], [ %64, %60 ]
  %74 = phi i32 [ %25, %21 ], [ %32, %28 ], [ %62, %60 ]
  %75 = phi i1 [ false, %21 ], [ false, %28 ], [ true, %60 ]
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = tail call ptr @referenced_var_lookup(i32 noundef %74) #19
  %78 = load ptr, ptr @cfun, align 8, !tbaa !243
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !268
  %81 = getelementptr inbounds %struct.gimple_df, ptr %80, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !323
  %83 = getelementptr inbounds %struct.tree_decl_minimal, ptr %77, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !254
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %82, i32 noundef %84) #19
  %86 = lshr i64 %72, 1
  %87 = add i32 %74, 1
  br label %15, !llvm.loop !450

88:                                               ; preds = %70, %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @name_mappings_registered_p() local_unnamed_addr #12 !prof !451 {
  %1 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3, !prof !452

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !243
  %5 = icmp eq ptr %1, %4
  br i1 %5, label %7, label %6, !prof !453

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2932, ptr noundef nonnull @.str.32) #19
  br label %7

7:                                                ; preds = %3, %6
  %8 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !454

10:                                               ; preds = %7
  %11 = tail call i64 @htab_elements(ptr noundef nonnull %8) #19
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %10, %0
  %15 = phi i8 [ 0, %0 ], [ 0, %7 ], [ %13, %10 ]
  ret i8 %15
}

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @name_registered_for_update_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !455 {
  %2 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %3 = icmp eq ptr %2, null
  br i1 %3, label %44, label %4, !prof !456

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !243
  %6 = icmp eq ptr %2, %5
  br i1 %6, label %8, label %7, !prof !457

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2945, ptr noundef nonnull @.str.32) #19
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !254
  %11 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13, !prof !458

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !446
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %28, !prof !459

17:                                               ; preds = %13
  %18 = lshr i32 %10, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !301
  %22 = and i32 %10, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  %27 = or i1 %12, %26
  br i1 %27, label %44, label %29, !prof !460

28:                                               ; preds = %13
  br i1 %12, label %44, label %29, !prof !461

29:                                               ; preds = %17, %28
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !446
  %32 = icmp ult i32 %10, %31
  br i1 %32, label %33, label %44, !prof !462

33:                                               ; preds = %29
  %34 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %35 = lshr i32 %10, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !301
  %39 = and i32 %10, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %8, %17, %33, %29, %28, %1
  %45 = phi i1 [ false, %1 ], [ %26, %17 ], [ false, %28 ], [ false, %29 ], [ %43, %33 ], [ false, %8 ]
  %46 = zext i1 %45 to i8
  ret i8 %46
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ssa_names_to_replace() local_unnamed_addr #10 !prof !242 {
  %1 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr @cfun, align 8
  %4 = icmp eq ptr %1, %3
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2961, ptr noundef nonnull @.str.32) #19
  br label %7

7:                                                ; preds = %0, %6
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %9 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !391
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %12, align 8, !tbaa !301
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %7 ]
  br label %18

18:                                               ; preds = %16, %62
  %19 = phi i32 [ %65, %62 ], [ 0, %16 ]
  %20 = phi i32 [ %59, %62 ], [ 0, %16 ]
  %21 = phi i64 [ %64, %62 ], [ %17, %16 ]
  %22 = phi i32 [ %61, %62 ], [ 0, %16 ]
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = add i32 %20, 1
  %26 = tail call i32 @llvm.umax.i32(i32 %11, i32 %25)
  %27 = add i32 %20, 1
  %28 = icmp ult i32 %27, %11
  br i1 %28, label %41, label %56

29:                                               ; preds = %41
  %30 = shl i32 %42, 6
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i32 [ %19, %18 ], [ %30, %29 ]
  %33 = phi i32 [ %20, %18 ], [ %42, %29 ]
  %34 = phi i64 [ %21, %18 ], [ %45, %29 ]
  %35 = phi i1 [ %23, %18 ], [ %46, %29 ]
  %36 = and i64 %34, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %47, label %56

38:                                               ; preds = %41
  %39 = add i32 %42, 1
  %40 = icmp ult i32 %39, %11
  br i1 %40, label %41, label %54, !llvm.loop !392

41:                                               ; preds = %24, %38
  %42 = phi i32 [ %39, %38 ], [ %27, %24 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, ptr %12, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !301
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %38, label %29, !llvm.loop !392

47:                                               ; preds = %31, %47
  %48 = phi i64 [ %51, %47 ], [ %34, %31 ]
  %49 = phi i32 [ %50, %47 ], [ %32, %31 ]
  %50 = add i32 %49, 1
  %51 = lshr exact i64 %48, 1
  %52 = and i64 %48, 2
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %47, label %56, !llvm.loop !393

54:                                               ; preds = %38
  %55 = shl i32 %42, 6
  br label %56

56:                                               ; preds = %47, %54, %24, %31
  %57 = phi i1 [ %35, %31 ], [ %23, %24 ], [ %46, %54 ], [ %35, %47 ]
  %58 = phi i32 [ %32, %31 ], [ %19, %24 ], [ %55, %54 ], [ %50, %47 ]
  %59 = phi i32 [ %33, %31 ], [ %26, %24 ], [ %26, %54 ], [ %33, %47 ]
  %60 = phi i64 [ %34, %31 ], [ %21, %24 ], [ %45, %54 ], [ %51, %47 ]
  %61 = phi i32 [ %32, %31 ], [ %22, %24 ], [ %22, %54 ], [ %50, %47 ]
  br i1 %57, label %66, label %62

62:                                               ; preds = %56
  %63 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %61) #19
  %64 = lshr i64 %60, 1
  %65 = add i32 %58, 1
  br label %18, !llvm.loop !463

66:                                               ; preds = %56
  ret ptr %8
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @release_ssa_name_after_update_ssa(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !464 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !243
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @update_ssa_initialized_fn, align 8
  %5 = icmp eq ptr %4, %2
  %6 = select i1 %3, i1 %5, i1 false, !prof !465
  br i1 %6, label %8, label %7, !prof !465

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2976, ptr noundef nonnull @.str.32) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !466

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %12, ptr @names_to_release, align 8, !tbaa !243
  br label %13

13:                                               ; preds = %11, %8
  %14 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !254
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @update_ssa(i32 noundef %0) local_unnamed_addr #12 !prof !467 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !243
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !468

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2918, ptr noundef nonnull @.str.32) #19
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %20, label %10, !prof !469

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !268
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !470

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !323
  %17 = load ptr, ptr %16, align 8, !tbaa !297
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %7, %10, %14
  %21 = phi i8 [ 1, %7 ], [ 0, %10 ], [ %19, %14 ]
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %1520, label %23, !prof !471

23:                                               ; preds = %20
  %24 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !472

26:                                               ; preds = %23
  tail call void @timevar_push_1(i32 noundef 60) #19
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !473

30:                                               ; preds = %27
  %31 = load ptr, ptr @cfun, align 8, !tbaa !243
  tail call fastcc void @init_update_ssa(ptr noundef %31)
  br label %32

32:                                               ; preds = %30, %27
  %33 = load ptr, ptr @update_ssa_initialized_fn, align 8, !tbaa !243
  %34 = load ptr, ptr @cfun, align 8, !tbaa !243
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %37, label %36, !prof !472

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3242, ptr noundef nonnull @.str.32) #19
  br label %37

37:                                               ; preds = %32, %36
  %38 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %38, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %39 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !243
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48, !prof !474

41:                                               ; preds = %37
  %42 = load ptr, ptr @cfun, align 8, !tbaa !243
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !294
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !295
  %47 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %46) #19
  store ptr %47, ptr @phis_to_rewrite, align 8, !tbaa !243
  br label %48

48:                                               ; preds = %41, %37
  %49 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %49, ptr @blocks_to_update, align 8, !tbaa !243
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  %50 = add i32 %0, -2048
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 21)
  switch i32 %51, label %52 [
    i32 7, label %54
    i32 0, label %58
    i32 1, label %58
    i32 3, label %58
  ], !prof !475

52:                                               ; preds = %48
  %53 = icmp eq i32 %0, 16384
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3256, ptr noundef nonnull @.str.32) #19
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %52
  %55 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  tail call void @sbitmap_zero(ptr noundef %55) #19
  %56 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  tail call void @sbitmap_zero(ptr noundef %56) #19
  %57 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  tail call void @htab_empty(ptr noundef %57) #19
  br label %58

58:                                               ; preds = %52, %48, %48, %48, %54
  %59 = icmp ne i32 %0, 4096
  %60 = zext i1 %59 to i8
  br i1 %59, label %61, label %296, !prof !476

61:                                               ; preds = %58
  %62 = load ptr, ptr @cfun, align 8, !tbaa !243
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !268
  %65 = getelementptr inbounds %struct.gimple_df, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !270
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !477

68:                                               ; preds = %61
  %69 = load i32, ptr %66, align 8, !tbaa !274
  br label %70

70:                                               ; preds = %61, %68
  %71 = phi i32 [ %69, %68 ], [ 0, %61 ]
  %72 = zext i32 %71 to i64
  %73 = tail call ptr @htab_create(i64 noundef %72, ptr noundef nonnull @def_blocks_hash, ptr noundef nonnull @def_blocks_eq, ptr noundef nonnull @def_blocks_free) #19
  store ptr %73, ptr @def_blocks, align 8, !tbaa !243
  %74 = load i32, ptr @update_ssa_stats, align 8, !tbaa !395
  %75 = load ptr, ptr @compiler_params, align 8, !tbaa !243
  %76 = getelementptr inbounds %struct.param_info, ptr %75, i64 91, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !478
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %86, label %79, !prof !480

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.param_info, ptr %75, i64 92, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !478
  %82 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !398
  %83 = mul i32 %82, %81
  %84 = icmp ugt i32 %74, %83
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %70, %79
  %87 = phi i8 [ 0, %70 ], [ %85, %79 ]
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %297, label %89, !prof !481

89:                                               ; preds = %86
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %91 = icmp eq ptr %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 41, i64 1, ptr nonnull %90)
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %95 = load i32, ptr @update_ssa_stats, align 8, !tbaa !395
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.47, i32 noundef %95)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %98 = load i32, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 3), align 8, !tbaa !398
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.48, i32 noundef %98)
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %101 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 87, i64 1, ptr %100)
  br label %102

102:                                              ; preds = %92, %89
  %103 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %104 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !391
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = load i64, ptr %106, align 8, !tbaa !301
  br label %110

110:                                              ; preds = %108, %102
  %111 = phi i64 [ 0, %102 ], [ %109, %108 ]
  br label %112

112:                                              ; preds = %110, %195
  %113 = phi i64 [ %196, %195 ], [ %111, %110 ]
  %114 = phi i32 [ %153, %195 ], [ 0, %110 ]
  %115 = phi i32 [ %197, %195 ], [ 0, %110 ]
  %116 = phi i32 [ %155, %195 ], [ 0, %110 ]
  %117 = icmp eq i64 %113, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = add i32 %116, 1
  %120 = tail call i32 @llvm.umax.i32(i32 %105, i32 %119)
  %121 = add i32 %116, 1
  %122 = icmp ult i32 %121, %105
  br i1 %122, label %135, label %150

123:                                              ; preds = %135
  %124 = shl i32 %136, 6
  br label %125

125:                                              ; preds = %123, %112
  %126 = phi i64 [ %113, %112 ], [ %139, %123 ]
  %127 = phi i32 [ %115, %112 ], [ %124, %123 ]
  %128 = phi i32 [ %116, %112 ], [ %136, %123 ]
  %129 = phi i1 [ %117, %112 ], [ %140, %123 ]
  %130 = and i64 %126, 1
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %141, label %150

132:                                              ; preds = %135
  %133 = add i32 %136, 1
  %134 = icmp ult i32 %133, %105
  br i1 %134, label %135, label %148, !llvm.loop !392

135:                                              ; preds = %118, %132
  %136 = phi i32 [ %133, %132 ], [ %121, %118 ]
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i64, ptr %106, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !301
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %132, label %123, !llvm.loop !392

141:                                              ; preds = %125, %141
  %142 = phi i32 [ %144, %141 ], [ %127, %125 ]
  %143 = phi i64 [ %145, %141 ], [ %126, %125 ]
  %144 = add i32 %142, 1
  %145 = lshr exact i64 %143, 1
  %146 = and i64 %143, 2
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %141, label %150, !llvm.loop !393

148:                                              ; preds = %132
  %149 = shl i32 %136, 6
  br label %150

150:                                              ; preds = %141, %148, %118, %125
  %151 = phi i1 [ %129, %125 ], [ %117, %118 ], [ %140, %148 ], [ %129, %141 ]
  %152 = phi i64 [ %126, %125 ], [ %113, %118 ], [ %139, %148 ], [ %145, %141 ]
  %153 = phi i32 [ %127, %125 ], [ %114, %118 ], [ %114, %148 ], [ %144, %141 ]
  %154 = phi i32 [ %127, %125 ], [ %115, %118 ], [ %149, %148 ], [ %144, %141 ]
  %155 = phi i32 [ %128, %125 ], [ %120, %118 ], [ %120, %148 ], [ %128, %141 ]
  br i1 %151, label %198, label %156

156:                                              ; preds = %150
  %157 = load ptr, ptr @cfun, align 8, !tbaa !243
  %158 = getelementptr inbounds %struct.function, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !268
  %160 = getelementptr inbounds %struct.gimple_df, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !270
  %162 = zext i32 %153 to i64
  %163 = getelementptr inbounds %struct.VEC_tree_base, ptr %161, i64 0, i32 2, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !243
  %165 = tail call zeroext i8 @is_gimple_reg(ptr noundef %164) #19
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %156
  %168 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %169 = load ptr, ptr %168, align 8, !tbaa !384
  %170 = icmp eq ptr %169, null
  br i1 %170, label %185, label %171

171:                                              ; preds = %167
  %172 = lshr i32 %153, 6
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds %struct.simple_bitmap_def, ptr %168, i64 0, i32 3, i64 %173
  %175 = load i64, ptr %174, align 8, !tbaa !301
  %176 = and i32 %153, 63
  %177 = zext nneg i32 %176 to i64
  %178 = shl nuw i64 1, %177
  %179 = and i64 %175, %178
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %171
  %182 = getelementptr inbounds i8, ptr %169, i64 %173
  %183 = load i8, ptr %182, align 1, !tbaa !254
  %184 = add i8 %183, -1
  store i8 %184, ptr %182, align 1, !tbaa !254
  br label %185

185:                                              ; preds = %181, %171, %167
  %186 = and i32 %153, 63
  %187 = zext nneg i32 %186 to i64
  %188 = shl nuw i64 1, %187
  %189 = xor i64 %188, -1
  %190 = lshr i32 %153, 6
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds %struct.simple_bitmap_def, ptr %168, i64 0, i32 3, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !301
  %194 = and i64 %193, %189
  store i64 %194, ptr %192, align 8, !tbaa !301
  br label %195

195:                                              ; preds = %185, %156
  %196 = lshr i64 %152, 1
  %197 = add i32 %154, 1
  br label %112, !llvm.loop !482

198:                                              ; preds = %150
  %199 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %200 = getelementptr inbounds %struct.simple_bitmap_def, ptr %199, i64 0, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !391
  %202 = getelementptr inbounds %struct.simple_bitmap_def, ptr %199, i64 0, i32 3
  %203 = icmp eq i32 %201, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %198
  %205 = load i64, ptr %202, align 8, !tbaa !301
  br label %206

206:                                              ; preds = %204, %198
  %207 = phi i64 [ 0, %198 ], [ %205, %204 ]
  br label %208

208:                                              ; preds = %206, %291
  %209 = phi i64 [ %292, %291 ], [ %207, %206 ]
  %210 = phi i32 [ %249, %291 ], [ %153, %206 ]
  %211 = phi i32 [ %293, %291 ], [ 0, %206 ]
  %212 = phi i32 [ %251, %291 ], [ 0, %206 ]
  %213 = icmp eq i64 %209, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = add i32 %212, 1
  %216 = tail call i32 @llvm.umax.i32(i32 %201, i32 %215)
  %217 = add i32 %212, 1
  %218 = icmp ult i32 %217, %201
  br i1 %218, label %231, label %246

219:                                              ; preds = %231
  %220 = shl i32 %232, 6
  br label %221

221:                                              ; preds = %219, %208
  %222 = phi i64 [ %209, %208 ], [ %235, %219 ]
  %223 = phi i32 [ %211, %208 ], [ %220, %219 ]
  %224 = phi i32 [ %212, %208 ], [ %232, %219 ]
  %225 = phi i1 [ %213, %208 ], [ %236, %219 ]
  %226 = and i64 %222, 1
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %237, label %246

228:                                              ; preds = %231
  %229 = add i32 %232, 1
  %230 = icmp ult i32 %229, %201
  br i1 %230, label %231, label %244, !llvm.loop !392

231:                                              ; preds = %214, %228
  %232 = phi i32 [ %229, %228 ], [ %217, %214 ]
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i64, ptr %202, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !301
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %228, label %219, !llvm.loop !392

237:                                              ; preds = %221, %237
  %238 = phi i32 [ %240, %237 ], [ %223, %221 ]
  %239 = phi i64 [ %241, %237 ], [ %222, %221 ]
  %240 = add i32 %238, 1
  %241 = lshr exact i64 %239, 1
  %242 = and i64 %239, 2
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %237, label %246, !llvm.loop !393

244:                                              ; preds = %228
  %245 = shl i32 %232, 6
  br label %246

246:                                              ; preds = %237, %244, %214, %221
  %247 = phi i1 [ %225, %221 ], [ %213, %214 ], [ %236, %244 ], [ %225, %237 ]
  %248 = phi i64 [ %222, %221 ], [ %209, %214 ], [ %235, %244 ], [ %241, %237 ]
  %249 = phi i32 [ %223, %221 ], [ %210, %214 ], [ %210, %244 ], [ %240, %237 ]
  %250 = phi i32 [ %223, %221 ], [ %211, %214 ], [ %245, %244 ], [ %240, %237 ]
  %251 = phi i32 [ %224, %221 ], [ %216, %214 ], [ %216, %244 ], [ %224, %237 ]
  br i1 %247, label %294, label %252

252:                                              ; preds = %246
  %253 = load ptr, ptr @cfun, align 8, !tbaa !243
  %254 = getelementptr inbounds %struct.function, ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !268
  %256 = getelementptr inbounds %struct.gimple_df, ptr %255, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !270
  %258 = zext i32 %249 to i64
  %259 = getelementptr inbounds %struct.VEC_tree_base, ptr %257, i64 0, i32 2, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !243
  %261 = tail call zeroext i8 @is_gimple_reg(ptr noundef %260) #19
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %291

263:                                              ; preds = %252
  %264 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %265 = load ptr, ptr %264, align 8, !tbaa !384
  %266 = icmp eq ptr %265, null
  br i1 %266, label %281, label %267

267:                                              ; preds = %263
  %268 = lshr i32 %249, 6
  %269 = zext nneg i32 %268 to i64
  %270 = getelementptr inbounds %struct.simple_bitmap_def, ptr %264, i64 0, i32 3, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !301
  %272 = and i32 %249, 63
  %273 = zext nneg i32 %272 to i64
  %274 = shl nuw i64 1, %273
  %275 = and i64 %271, %274
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %267
  %278 = getelementptr inbounds i8, ptr %265, i64 %269
  %279 = load i8, ptr %278, align 1, !tbaa !254
  %280 = add i8 %279, -1
  store i8 %280, ptr %278, align 1, !tbaa !254
  br label %281

281:                                              ; preds = %277, %267, %263
  %282 = and i32 %249, 63
  %283 = zext nneg i32 %282 to i64
  %284 = shl nuw i64 1, %283
  %285 = xor i64 %284, -1
  %286 = lshr i32 %249, 6
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds %struct.simple_bitmap_def, ptr %264, i64 0, i32 3, i64 %287
  %289 = load i64, ptr %288, align 8, !tbaa !301
  %290 = and i64 %289, %285
  store i64 %290, ptr %288, align 8, !tbaa !301
  br label %291

291:                                              ; preds = %281, %252
  %292 = lshr i64 %248, 1
  %293 = add i32 %250, 1
  br label %208, !llvm.loop !483

294:                                              ; preds = %246
  %295 = load ptr, ptr getelementptr inbounds (%struct.update_ssa_stats_d, ptr @update_ssa_stats, i64 0, i32 2), align 8, !tbaa !404
  tail call void @mark_set_for_renaming(ptr noundef %295)
  br label %297

296:                                              ; preds = %58
  store ptr null, ptr @def_blocks, align 8, !tbaa !243
  br label %297

297:                                              ; preds = %296, %294, %86
  %298 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %299 = tail call i32 @sbitmap_first_set_bit(ptr noundef %298) #19
  %300 = icmp sgt i32 %299, -1
  br i1 %300, label %301, label %767, !prof !484

301:                                              ; preds = %297
  %302 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %303 = icmp eq ptr %302, null
  br i1 %303, label %407, label %304, !prof !485

304:                                              ; preds = %301
  %305 = load ptr, ptr %302, align 8, !tbaa !297
  %306 = icmp eq ptr %305, null
  %307 = select i1 %306, ptr @bitmap_zero_bits, ptr %305, !prof !406
  %308 = getelementptr inbounds %struct.bitmap_element_def, ptr %307, i64 0, i32 2
  %309 = load i32, ptr %308, align 8, !tbaa !299
  %310 = shl i32 %309, 7
  %311 = getelementptr inbounds %struct.bitmap_element_def, ptr %307, i64 0, i32 3
  %312 = load i64, ptr %311, align 8, !tbaa !301
  %313 = icmp eq i64 %312, 0
  %314 = zext i1 %313 to i32
  %315 = or disjoint i32 %310, %314
  %316 = load ptr, ptr @new_ssa_names, align 8
  br label %317

317:                                              ; preds = %395, %304
  %318 = phi i32 [ 0, %304 ], [ %373, %395 ]
  %319 = phi i64 [ %312, %304 ], [ %405, %395 ]
  %320 = phi ptr [ %307, %304 ], [ %375, %395 ]
  %321 = phi i32 [ %315, %304 ], [ %406, %395 ]
  %322 = icmp eq i64 %319, 0
  br i1 %322, label %337, label %323, !prof !407

323:                                              ; preds = %351, %317
  %324 = phi i32 [ %318, %317 ], [ %352, %351 ]
  %325 = phi i64 [ %319, %317 ], [ %356, %351 ]
  %326 = phi ptr [ %320, %317 ], [ %343, %351 ]
  %327 = phi i32 [ %321, %317 ], [ %353, %351 ]
  %328 = and i64 %325, 1
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %372, !prof !408

330:                                              ; preds = %323, %330
  %331 = phi i32 [ %334, %330 ], [ %327, %323 ]
  %332 = phi i64 [ %333, %330 ], [ %325, %323 ]
  %333 = lshr exact i64 %332, 1
  %334 = add i32 %331, 1
  %335 = and i64 %332, 2
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %330, label %372, !prof !409, !llvm.loop !302

337:                                              ; preds = %317
  %338 = add i32 %321, 63
  %339 = and i32 %338, -64
  %340 = add i32 %318, 1
  br label %341

341:                                              ; preds = %368, %337
  %342 = phi i64 [ %319, %337 ], [ %363, %368 ]
  %343 = phi ptr [ %320, %337 ], [ %366, %368 ]
  %344 = phi i32 [ %339, %337 ], [ %371, %368 ]
  %345 = phi i32 [ %340, %337 ], [ 0, %368 ]
  %346 = icmp eq i32 %345, 2
  br i1 %346, label %362, label %347, !prof !410

347:                                              ; preds = %341
  %348 = add i32 %344, 128
  %349 = shl i32 %345, 6
  %350 = sub i32 %348, %349
  br label %351

351:                                              ; preds = %347, %358
  %352 = phi i32 [ %360, %358 ], [ %345, %347 ]
  %353 = phi i32 [ %359, %358 ], [ %344, %347 ]
  %354 = zext i32 %352 to i64
  %355 = getelementptr inbounds %struct.bitmap_element_def, ptr %343, i64 0, i32 3, i64 %354
  %356 = load i64, ptr %355, align 8, !tbaa !301
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %323, !prof !411

358:                                              ; preds = %351
  %359 = add i32 %353, 64
  %360 = add i32 %352, 1
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %351, !prof !412, !llvm.loop !303

362:                                              ; preds = %358, %341
  %363 = phi i64 [ %342, %341 ], [ %356, %358 ]
  %364 = phi i32 [ %344, %341 ], [ %350, %358 ]
  %365 = phi i32 [ %345, %341 ], [ 2, %358 ]
  %366 = load ptr, ptr %343, align 8, !tbaa !304
  %367 = icmp eq ptr %366, null
  br i1 %367, label %372, label %368, !prof !413

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.bitmap_element_def, ptr %366, i64 0, i32 2
  %370 = load i32, ptr %369, align 8, !tbaa !299
  %371 = shl i32 %370, 7
  br label %341, !llvm.loop !305

372:                                              ; preds = %362, %330, %323
  %373 = phi i32 [ %324, %323 ], [ %324, %330 ], [ %365, %362 ]
  %374 = phi i64 [ %325, %323 ], [ %333, %330 ], [ %363, %362 ]
  %375 = phi ptr [ %326, %323 ], [ %326, %330 ], [ %366, %362 ]
  %376 = phi i32 [ %327, %323 ], [ %334, %330 ], [ %364, %362 ]
  %377 = phi i1 [ false, %323 ], [ false, %330 ], [ true, %362 ]
  br i1 %377, label %407, label %378, !prof !414

378:                                              ; preds = %372
  %379 = load ptr, ptr %316, align 8, !tbaa !384
  %380 = icmp eq ptr %379, null
  br i1 %380, label %395, label %381, !prof !465

381:                                              ; preds = %378
  %382 = lshr i32 %376, 6
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds %struct.simple_bitmap_def, ptr %316, i64 0, i32 3, i64 %383
  %385 = load i64, ptr %384, align 8, !tbaa !301
  %386 = and i32 %376, 63
  %387 = zext nneg i32 %386 to i64
  %388 = shl nuw i64 1, %387
  %389 = and i64 %385, %388
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %381
  %392 = getelementptr inbounds i8, ptr %379, i64 %383
  %393 = load i8, ptr %392, align 1, !tbaa !254
  %394 = add i8 %393, -1
  store i8 %394, ptr %392, align 1, !tbaa !254
  br label %395

395:                                              ; preds = %391, %381, %378
  %396 = and i32 %376, 63
  %397 = zext nneg i32 %396 to i64
  %398 = shl nuw i64 1, %397
  %399 = xor i64 %398, -1
  %400 = lshr i32 %376, 6
  %401 = zext nneg i32 %400 to i64
  %402 = getelementptr inbounds %struct.simple_bitmap_def, ptr %316, i64 0, i32 3, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !301
  %404 = and i64 %403, %399
  store i64 %404, ptr %402, align 8, !tbaa !301
  %405 = lshr i64 %374, 1
  %406 = add i32 %376, 1
  br label %317, !llvm.loop !486

407:                                              ; preds = %372, %301
  %408 = phi i32 [ 0, %301 ], [ %376, %372 ]
  %409 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %410 = getelementptr inbounds %struct.simple_bitmap_def, ptr %409, i64 0, i32 2
  %411 = load i32, ptr %410, align 4, !tbaa !391
  %412 = getelementptr inbounds %struct.simple_bitmap_def, ptr %409, i64 0, i32 3
  %413 = icmp eq i32 %411, 0
  br i1 %413, label %416, label %414, !prof !487

414:                                              ; preds = %407
  %415 = load i64, ptr %412, align 8, !tbaa !301
  br label %416

416:                                              ; preds = %414, %407
  %417 = phi i64 [ 0, %407 ], [ %415, %414 ]
  br label %418

418:                                              ; preds = %416, %555
  %419 = phi i64 [ %556, %555 ], [ %417, %416 ]
  %420 = phi i32 [ %459, %555 ], [ %408, %416 ]
  %421 = phi i32 [ %557, %555 ], [ 0, %416 ]
  %422 = phi i32 [ %461, %555 ], [ 0, %416 ]
  %423 = icmp eq i64 %419, 0
  br i1 %423, label %424, label %431, !prof !488

424:                                              ; preds = %418
  %425 = add i32 %422, 1
  %426 = call i32 @llvm.umax.i32(i32 %411, i32 %425)
  %427 = add i32 %422, 1
  %428 = icmp ult i32 %427, %411
  br i1 %428, label %441, label %456, !prof !489

429:                                              ; preds = %441
  %430 = shl i32 %442, 6
  br label %431

431:                                              ; preds = %429, %418
  %432 = phi i64 [ %419, %418 ], [ %445, %429 ]
  %433 = phi i32 [ %421, %418 ], [ %430, %429 ]
  %434 = phi i32 [ %422, %418 ], [ %442, %429 ]
  %435 = phi i1 [ %423, %418 ], [ %446, %429 ]
  %436 = and i64 %432, 1
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %447, label %456, !prof !490

438:                                              ; preds = %441
  %439 = add i32 %442, 1
  %440 = icmp ult i32 %439, %411
  br i1 %440, label %441, label %454, !prof !491, !llvm.loop !392

441:                                              ; preds = %424, %438
  %442 = phi i32 [ %439, %438 ], [ %427, %424 ]
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds i64, ptr %412, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !301
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %438, label %429, !prof !492, !llvm.loop !392

447:                                              ; preds = %431, %447
  %448 = phi i32 [ %450, %447 ], [ %433, %431 ]
  %449 = phi i64 [ %451, %447 ], [ %432, %431 ]
  %450 = add i32 %448, 1
  %451 = lshr exact i64 %449, 1
  %452 = and i64 %449, 2
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %447, label %456, !prof !493, !llvm.loop !393

454:                                              ; preds = %438
  %455 = shl i32 %442, 6
  br label %456

456:                                              ; preds = %447, %454, %424, %431
  %457 = phi i1 [ %435, %431 ], [ %423, %424 ], [ %446, %454 ], [ %435, %447 ]
  %458 = phi i64 [ %432, %431 ], [ %419, %424 ], [ %445, %454 ], [ %451, %447 ]
  %459 = phi i32 [ %433, %431 ], [ %420, %424 ], [ %420, %454 ], [ %450, %447 ]
  %460 = phi i32 [ %433, %431 ], [ %421, %424 ], [ %455, %454 ], [ %450, %447 ]
  %461 = phi i32 [ %434, %431 ], [ %426, %424 ], [ %426, %454 ], [ %434, %447 ]
  br i1 %457, label %558, label %462, !prof !494

462:                                              ; preds = %456
  %463 = load ptr, ptr @cfun, align 8, !tbaa !243
  %464 = getelementptr inbounds %struct.function, ptr %463, i64 0, i32 3
  %465 = load ptr, ptr %464, align 8, !tbaa !268
  %466 = getelementptr inbounds %struct.gimple_df, ptr %465, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !270
  %468 = zext i32 %459 to i64
  %469 = getelementptr inbounds %struct.VEC_tree_base, ptr %467, i64 0, i32 2, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !243
  %471 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %472 = icmp eq ptr %471, null
  br i1 %472, label %479, label %473, !prof !495

473:                                              ; preds = %462
  %474 = getelementptr inbounds %struct.tree_ssa_name, ptr %470, i64 0, i32 3
  %475 = load i32, ptr %474, align 8, !tbaa !254
  %476 = call i32 @bitmap_bit_p(ptr noundef nonnull %471, i32 noundef %475) #19
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %479, label %478, !prof !496

478:                                              ; preds = %473
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2618, ptr noundef nonnull @.str.32) #19
  br label %479

479:                                              ; preds = %478, %473, %462
  %480 = getelementptr inbounds %struct.tree_ssa_name, ptr %470, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !254
  %482 = getelementptr inbounds %struct.gimple_statement_base, ptr %481, i64 0, i32 4
  %483 = load ptr, ptr %482, align 8, !tbaa !254
  %484 = icmp eq ptr %483, null
  br i1 %484, label %555, label %485, !prof !497

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.basic_block_def, ptr %483, i64 0, i32 9
  %487 = load i32, ptr %486, align 8, !tbaa !313
  %488 = load ptr, ptr @cfun, align 8, !tbaa !243
  %489 = getelementptr inbounds %struct.function, ptr %488, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !294
  %491 = getelementptr inbounds %struct.control_flow_graph, ptr %490, i64 0, i32 5
  %492 = load i32, ptr %491, align 8, !tbaa !295
  %493 = icmp slt i32 %487, %492
  br i1 %493, label %495, label %494, !prof !498

494:                                              ; preds = %485
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2624, ptr noundef nonnull @.str.32) #19
  br label %495

495:                                              ; preds = %494, %485
  %496 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %499, !prof !499

498:                                              ; preds = %495
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %499

499:                                              ; preds = %498, %495
  %500 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %501 = load i32, ptr %486, align 8, !tbaa !313
  %502 = call i32 @bitmap_bit_p(ptr noundef %500, i32 noundef %501) #19
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %554, !prof !500

504:                                              ; preds = %499
  %505 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %506 = load i32, ptr %486, align 8, !tbaa !313
  %507 = call zeroext i8 @bitmap_set_bit(ptr noundef %505, i32 noundef %506) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %483) #19
  %508 = load ptr, ptr %3, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %509 = icmp eq ptr %508, null
  br i1 %509, label %518, label %510, !prof !502

510:                                              ; preds = %504, %510
  %511 = phi ptr [ %516, %510 ], [ %508, %504 ]
  %512 = load ptr, ptr %511, align 8, !tbaa !503
  %513 = load i32, ptr %512, align 8
  %514 = and i32 %513, -2561
  store i32 %514, ptr %512, align 8
  %515 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %511, i64 0, i32 2
  %516 = load ptr, ptr %515, align 8, !tbaa !505
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %510, !prof !506, !llvm.loop !507

518:                                              ; preds = %510, %504
  %519 = getelementptr inbounds %struct.basic_block_def, ptr %483, i64 0, i32 13
  %520 = load i32, ptr %519, align 8, !tbaa !508, !noalias !509
  %521 = and i32 %520, 512
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %529, !prof !512

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.basic_block_def, ptr %483, i64 0, i32 7
  %525 = load ptr, ptr %524, align 8, !tbaa !254, !noalias !509
  %526 = icmp eq ptr %525, null
  br i1 %526, label %529, label %527, !prof !513

527:                                              ; preds = %523
  %528 = load ptr, ptr %525, align 8, !tbaa !514, !noalias !509
  br label %529

529:                                              ; preds = %527, %523, %518
  %530 = phi ptr [ %528, %527 ], [ null, %523 ], [ null, %518 ]
  %531 = icmp eq ptr %530, null
  br i1 %531, label %534, label %532, !prof !513

532:                                              ; preds = %529
  %533 = load ptr, ptr %530, align 8, !tbaa !516, !noalias !509
  br label %534

534:                                              ; preds = %532, %529
  %535 = phi ptr [ %533, %532 ], [ null, %529 ]
  %536 = icmp eq ptr %535, null
  br i1 %536, label %554, label %537, !prof !518

537:                                              ; preds = %534, %548
  %538 = phi ptr [ %552, %548 ], [ %535, %534 ]
  %539 = load ptr, ptr %538, align 8, !tbaa !503
  %540 = load i32, ptr %539, align 8
  %541 = and i32 %540, 255
  %542 = add nsw i32 %541, -10
  %543 = icmp ult i32 %542, -9
  %544 = and i32 %540, 8192
  %545 = icmp eq i32 %544, 0
  %546 = or i1 %545, %543
  br i1 %546, label %548, label %547, !prof !519

547:                                              ; preds = %537
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %548

548:                                              ; preds = %547, %537
  %549 = load i32, ptr %539, align 8
  %550 = and i32 %549, -2561
  store i32 %550, ptr %539, align 8
  %551 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %538, i64 0, i32 2
  %552 = load ptr, ptr %551, align 8, !tbaa !505
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %537, !prof !520, !llvm.loop !521

554:                                              ; preds = %548, %534, %499
  call fastcc void @mark_def_interesting(ptr noundef %470, ptr noundef %481, ptr noundef nonnull %483, i8 noundef zeroext %60)
  br label %555

555:                                              ; preds = %479, %554
  %556 = lshr i64 %458, 1
  %557 = add i32 %460, 1
  br label %418, !llvm.loop !522

558:                                              ; preds = %456
  %559 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %560 = getelementptr inbounds %struct.simple_bitmap_def, ptr %559, i64 0, i32 2
  %561 = load i32, ptr %560, align 4, !tbaa !391
  %562 = getelementptr inbounds %struct.simple_bitmap_def, ptr %559, i64 0, i32 3
  %563 = icmp eq i32 %561, 0
  br i1 %563, label %566, label %564, !prof !487

564:                                              ; preds = %558
  %565 = load i64, ptr %562, align 8, !tbaa !301
  br label %566

566:                                              ; preds = %564, %558
  %567 = phi i64 [ 0, %558 ], [ %565, %564 ]
  br label %568

568:                                              ; preds = %566, %752
  %569 = phi i64 [ %753, %752 ], [ %567, %566 ]
  %570 = phi i32 [ %609, %752 ], [ %459, %566 ]
  %571 = phi i32 [ %754, %752 ], [ 0, %566 ]
  %572 = phi i32 [ %611, %752 ], [ 0, %566 ]
  %573 = icmp eq i64 %569, 0
  br i1 %573, label %574, label %581, !prof !523

574:                                              ; preds = %568
  %575 = add i32 %572, 1
  %576 = call i32 @llvm.umax.i32(i32 %561, i32 %575)
  %577 = add i32 %572, 1
  %578 = icmp ult i32 %577, %561
  br i1 %578, label %591, label %606, !prof !489

579:                                              ; preds = %591
  %580 = shl i32 %592, 6
  br label %581

581:                                              ; preds = %579, %568
  %582 = phi i64 [ %569, %568 ], [ %595, %579 ]
  %583 = phi i32 [ %571, %568 ], [ %580, %579 ]
  %584 = phi i32 [ %572, %568 ], [ %592, %579 ]
  %585 = phi i1 [ %573, %568 ], [ %596, %579 ]
  %586 = and i64 %582, 1
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %597, label %606, !prof !524

588:                                              ; preds = %591
  %589 = add i32 %592, 1
  %590 = icmp ult i32 %589, %561
  br i1 %590, label %591, label %604, !prof !491, !llvm.loop !392

591:                                              ; preds = %574, %588
  %592 = phi i32 [ %589, %588 ], [ %577, %574 ]
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds i64, ptr %562, i64 %593
  %595 = load i64, ptr %594, align 8, !tbaa !301
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %588, label %579, !prof !492, !llvm.loop !392

597:                                              ; preds = %581, %597
  %598 = phi i32 [ %600, %597 ], [ %583, %581 ]
  %599 = phi i64 [ %601, %597 ], [ %582, %581 ]
  %600 = add i32 %598, 1
  %601 = lshr exact i64 %599, 1
  %602 = and i64 %599, 2
  %603 = icmp eq i64 %602, 0
  br i1 %603, label %597, label %606, !prof !525, !llvm.loop !393

604:                                              ; preds = %588
  %605 = shl i32 %592, 6
  br label %606

606:                                              ; preds = %597, %604, %574, %581
  %607 = phi i1 [ %585, %581 ], [ %573, %574 ], [ %596, %604 ], [ %585, %597 ]
  %608 = phi i64 [ %582, %581 ], [ %569, %574 ], [ %595, %604 ], [ %601, %597 ]
  %609 = phi i32 [ %583, %581 ], [ %570, %574 ], [ %570, %604 ], [ %600, %597 ]
  %610 = phi i32 [ %583, %581 ], [ %571, %574 ], [ %605, %604 ], [ %600, %597 ]
  %611 = phi i32 [ %584, %581 ], [ %576, %574 ], [ %576, %604 ], [ %584, %597 ]
  br i1 %607, label %755, label %612, !prof !526

612:                                              ; preds = %606
  %613 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %614 = icmp eq ptr %613, null
  br i1 %614, label %618, label %615, !prof !527

615:                                              ; preds = %612
  %616 = call i32 @bitmap_bit_p(ptr noundef nonnull %613, i32 noundef %609) #19
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %711, !prof !528

618:                                              ; preds = %615, %612
  %619 = load ptr, ptr @cfun, align 8, !tbaa !243
  %620 = getelementptr inbounds %struct.function, ptr %619, i64 0, i32 3
  %621 = load ptr, ptr %620, align 8, !tbaa !268
  %622 = getelementptr inbounds %struct.gimple_df, ptr %621, i64 0, i32 2
  %623 = load ptr, ptr %622, align 8, !tbaa !270
  %624 = zext i32 %609 to i64
  %625 = getelementptr inbounds %struct.VEC_tree_base, ptr %623, i64 0, i32 2, i64 %624
  %626 = load ptr, ptr %625, align 8, !tbaa !243
  %627 = load ptr, ptr @names_to_release, align 8, !tbaa !243
  %628 = icmp eq ptr %627, null
  br i1 %628, label %635, label %629, !prof !495

629:                                              ; preds = %618
  %630 = getelementptr inbounds %struct.tree_ssa_name, ptr %626, i64 0, i32 3
  %631 = load i32, ptr %630, align 8, !tbaa !254
  %632 = call i32 @bitmap_bit_p(ptr noundef nonnull %627, i32 noundef %631) #19
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %635, label %634, !prof !496

634:                                              ; preds = %629
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2618, ptr noundef nonnull @.str.32) #19
  br label %635

635:                                              ; preds = %634, %629, %618
  %636 = getelementptr inbounds %struct.tree_ssa_name, ptr %626, i64 0, i32 2
  %637 = load ptr, ptr %636, align 8, !tbaa !254
  %638 = getelementptr inbounds %struct.gimple_statement_base, ptr %637, i64 0, i32 4
  %639 = load ptr, ptr %638, align 8, !tbaa !254
  %640 = icmp eq ptr %639, null
  br i1 %640, label %711, label %641, !prof !497

641:                                              ; preds = %635
  %642 = getelementptr inbounds %struct.basic_block_def, ptr %639, i64 0, i32 9
  %643 = load i32, ptr %642, align 8, !tbaa !313
  %644 = load ptr, ptr @cfun, align 8, !tbaa !243
  %645 = getelementptr inbounds %struct.function, ptr %644, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !294
  %647 = getelementptr inbounds %struct.control_flow_graph, ptr %646, i64 0, i32 5
  %648 = load i32, ptr %647, align 8, !tbaa !295
  %649 = icmp slt i32 %643, %648
  br i1 %649, label %651, label %650, !prof !498

650:                                              ; preds = %641
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2624, ptr noundef nonnull @.str.32) #19
  br label %651

651:                                              ; preds = %650, %641
  %652 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %653 = icmp eq ptr %652, null
  br i1 %653, label %654, label %655, !prof !499

654:                                              ; preds = %651
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %655

655:                                              ; preds = %654, %651
  %656 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %657 = load i32, ptr %642, align 8, !tbaa !313
  %658 = call i32 @bitmap_bit_p(ptr noundef %656, i32 noundef %657) #19
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %710, !prof !500

660:                                              ; preds = %655
  %661 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %662 = load i32, ptr %642, align 8, !tbaa !313
  %663 = call zeroext i8 @bitmap_set_bit(ptr noundef %661, i32 noundef %662) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %639) #19
  %664 = load ptr, ptr %2, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %665 = icmp eq ptr %664, null
  br i1 %665, label %674, label %666, !prof !502

666:                                              ; preds = %660, %666
  %667 = phi ptr [ %672, %666 ], [ %664, %660 ]
  %668 = load ptr, ptr %667, align 8, !tbaa !503
  %669 = load i32, ptr %668, align 8
  %670 = and i32 %669, -2561
  store i32 %670, ptr %668, align 8
  %671 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %667, i64 0, i32 2
  %672 = load ptr, ptr %671, align 8, !tbaa !505
  %673 = icmp eq ptr %672, null
  br i1 %673, label %674, label %666, !prof !506, !llvm.loop !507

674:                                              ; preds = %666, %660
  %675 = getelementptr inbounds %struct.basic_block_def, ptr %639, i64 0, i32 13
  %676 = load i32, ptr %675, align 8, !tbaa !508, !noalias !529
  %677 = and i32 %676, 512
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %685, !prof !512

679:                                              ; preds = %674
  %680 = getelementptr inbounds %struct.basic_block_def, ptr %639, i64 0, i32 7
  %681 = load ptr, ptr %680, align 8, !tbaa !254, !noalias !529
  %682 = icmp eq ptr %681, null
  br i1 %682, label %685, label %683, !prof !513

683:                                              ; preds = %679
  %684 = load ptr, ptr %681, align 8, !tbaa !514, !noalias !529
  br label %685

685:                                              ; preds = %683, %679, %674
  %686 = phi ptr [ %684, %683 ], [ null, %679 ], [ null, %674 ]
  %687 = icmp eq ptr %686, null
  br i1 %687, label %690, label %688, !prof !513

688:                                              ; preds = %685
  %689 = load ptr, ptr %686, align 8, !tbaa !516, !noalias !529
  br label %690

690:                                              ; preds = %688, %685
  %691 = phi ptr [ %689, %688 ], [ null, %685 ]
  %692 = icmp eq ptr %691, null
  br i1 %692, label %710, label %693, !prof !518

693:                                              ; preds = %690, %704
  %694 = phi ptr [ %708, %704 ], [ %691, %690 ]
  %695 = load ptr, ptr %694, align 8, !tbaa !503
  %696 = load i32, ptr %695, align 8
  %697 = and i32 %696, 255
  %698 = add nsw i32 %697, -10
  %699 = icmp ult i32 %698, -9
  %700 = and i32 %696, 8192
  %701 = icmp eq i32 %700, 0
  %702 = or i1 %701, %699
  br i1 %702, label %704, label %703, !prof !519

703:                                              ; preds = %693
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %704

704:                                              ; preds = %703, %693
  %705 = load i32, ptr %695, align 8
  %706 = and i32 %705, -2561
  store i32 %706, ptr %695, align 8
  %707 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %694, i64 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !505
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %693, !prof !520, !llvm.loop !521

710:                                              ; preds = %704, %690, %655
  call fastcc void @mark_def_interesting(ptr noundef %626, ptr noundef %637, ptr noundef nonnull %639, i8 noundef zeroext %60)
  br label %711

711:                                              ; preds = %710, %635, %615
  %712 = load ptr, ptr @cfun, align 8, !tbaa !243
  %713 = getelementptr inbounds %struct.function, ptr %712, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !268
  %715 = getelementptr inbounds %struct.gimple_df, ptr %714, i64 0, i32 2
  %716 = load ptr, ptr %715, align 8, !tbaa !270
  %717 = zext i32 %609 to i64
  %718 = getelementptr inbounds %struct.VEC_tree_base, ptr %716, i64 0, i32 2, i64 %717
  %719 = load ptr, ptr %718, align 8, !tbaa !243
  %720 = getelementptr inbounds %struct.tree_ssa_name, ptr %719, i64 0, i32 5
  %721 = getelementptr inbounds %struct.tree_ssa_name, ptr %719, i64 0, i32 5, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !532
  %723 = icmp eq ptr %722, %720
  br i1 %723, label %752, label %724, !prof !534

724:                                              ; preds = %711, %744
  %725 = phi ptr [ %750, %744 ], [ %722, %711 ]
  %726 = phi ptr [ %748, %744 ], [ %722, %711 ]
  %727 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %725, i64 0, i32 2
  %728 = load ptr, ptr %727, align 8, !tbaa !254
  %729 = getelementptr inbounds %struct.gimple_statement_base, ptr %728, i64 0, i32 4
  %730 = load i32, ptr %728, align 8
  %731 = and i32 %730, 255
  %732 = icmp eq i32 %731, 16
  br i1 %732, label %733, label %744, !prof !535

733:                                              ; preds = %724
  %734 = getelementptr inbounds %struct.gimple_statement_phi, ptr %728, i64 0, i32 4, i64 0
  %735 = ptrtoint ptr %725 to i64
  %736 = ptrtoint ptr %734 to i64
  %737 = sub i64 %735, %736
  %738 = sdiv exact i64 %737, 48
  %739 = and i64 %738, 4294967295
  %740 = load ptr, ptr %729, align 8, !tbaa !254
  %741 = load ptr, ptr %740, align 8, !tbaa !536, !nonnull !388, !noundef !388
  %742 = getelementptr inbounds %struct.VEC_edge_base, ptr %741, i64 0, i32 2, i64 %739
  %743 = load ptr, ptr %742, align 8, !tbaa !243
  br label %744

744:                                              ; preds = %724, %733
  %745 = phi ptr [ %743, %733 ], [ %729, %724 ]
  %746 = load ptr, ptr %745, align 8, !tbaa !254
  call fastcc void @mark_use_interesting(ptr noundef %719, ptr noundef nonnull %728, ptr noundef %746, i8 noundef zeroext %60)
  %747 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %726, i64 0, i32 1
  %748 = load ptr, ptr %747, align 8, !tbaa !532
  %749 = icmp eq ptr %748, %720
  %750 = select i1 %749, ptr null, ptr %748, !prof !537
  %751 = icmp eq ptr %748, %720
  br i1 %751, label %752, label %724, !prof !538, !llvm.loop !539

752:                                              ; preds = %744, %711
  %753 = lshr i64 %608, 1
  %754 = add i32 %610, 1
  br label %568, !llvm.loop !540

755:                                              ; preds = %606
  %756 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %757 = call i32 @sbitmap_first_set_bit(ptr noundef %756) #19
  %758 = icmp slt i32 %757, 0
  br i1 %758, label %759, label %767, !prof !487

759:                                              ; preds = %755
  %760 = load ptr, ptr @cfun, align 8, !tbaa !243
  %761 = getelementptr inbounds %struct.function, ptr %760, i64 0, i32 3
  %762 = load ptr, ptr %761, align 8, !tbaa !268
  %763 = getelementptr inbounds %struct.gimple_df, ptr %762, i64 0, i32 9
  %764 = load ptr, ptr %763, align 8, !tbaa !323
  %765 = load ptr, ptr %764, align 8, !tbaa !297
  %766 = icmp eq ptr %765, null
  br i1 %766, label %1516, label %767

767:                                              ; preds = %755, %759, %297
  %768 = load ptr, ptr @cfun, align 8, !tbaa !243
  %769 = getelementptr inbounds %struct.function, ptr %768, i64 0, i32 3
  %770 = load ptr, ptr %769, align 8, !tbaa !268
  %771 = getelementptr inbounds %struct.gimple_df, ptr %770, i64 0, i32 9
  %772 = load ptr, ptr %771, align 8, !tbaa !323
  %773 = load ptr, ptr %772, align 8, !tbaa !297
  %774 = icmp eq ptr %773, null
  br i1 %774, label %779, label %775, !prof !484

775:                                              ; preds = %767
  %776 = getelementptr inbounds %struct.function, ptr %768, i64 0, i32 1
  %777 = load ptr, ptr %776, align 8, !tbaa !294
  %778 = load ptr, ptr %777, align 8, !tbaa !315
  call fastcc void @prepare_block_for_update(ptr noundef %778, i8 noundef zeroext %60)
  br label %782

779:                                              ; preds = %767
  %780 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %781 = call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %780) #19
  br label %782

782:                                              ; preds = %779, %775
  %783 = phi ptr [ %778, %775 ], [ %781, %779 ]
  br i1 %59, label %784, label %1013, !prof !476

784:                                              ; preds = %782
  %785 = load ptr, ptr @cfun, align 8, !tbaa !243
  %786 = getelementptr inbounds %struct.function, ptr %785, i64 0, i32 1
  %787 = load ptr, ptr %786, align 8, !tbaa !294
  %788 = getelementptr inbounds %struct.control_flow_graph, ptr %787, i64 0, i32 5
  %789 = load i32, ptr %788, align 8, !tbaa !295
  %790 = sext i32 %789 to i64
  %791 = shl nsw i64 %790, 3
  %792 = call ptr @xmalloc(i64 noundef %791) #19
  %793 = load ptr, ptr @cfun, align 8, !tbaa !243
  %794 = getelementptr inbounds %struct.function, ptr %793, i64 0, i32 1
  %795 = load ptr, ptr %794, align 8, !tbaa !294
  %796 = load ptr, ptr %795, align 8, !tbaa !315
  %797 = getelementptr inbounds %struct.basic_block_def, ptr %796, i64 0, i32 6
  %798 = load ptr, ptr %797, align 8, !tbaa !349
  %799 = getelementptr inbounds %struct.control_flow_graph, ptr %795, i64 0, i32 1
  %800 = load ptr, ptr %799, align 8, !tbaa !350
  %801 = icmp eq ptr %798, %800
  br i1 %801, label %817, label %802, !prof !541

802:                                              ; preds = %784, %802
  %803 = phi ptr [ %810, %802 ], [ %798, %784 ]
  %804 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %805 = getelementptr inbounds %struct.basic_block_def, ptr %803, i64 0, i32 9
  %806 = load i32, ptr %805, align 8, !tbaa !313
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds ptr, ptr %792, i64 %807
  store ptr %804, ptr %808, align 8, !tbaa !243
  %809 = getelementptr inbounds %struct.basic_block_def, ptr %803, i64 0, i32 6
  %810 = load ptr, ptr %809, align 8, !tbaa !349
  %811 = load ptr, ptr @cfun, align 8, !tbaa !243
  %812 = getelementptr inbounds %struct.function, ptr %811, i64 0, i32 1
  %813 = load ptr, ptr %812, align 8, !tbaa !294
  %814 = getelementptr inbounds %struct.control_flow_graph, ptr %813, i64 0, i32 1
  %815 = load ptr, ptr %814, align 8, !tbaa !350
  %816 = icmp eq ptr %810, %815
  br i1 %816, label %817, label %802, !prof !542, !llvm.loop !543

817:                                              ; preds = %802, %784
  call void @compute_dominance_frontiers(ptr noundef %792) #19
  %818 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %819 = call i32 @sbitmap_first_set_bit(ptr noundef %818) #19
  %820 = icmp sgt i32 %819, -1
  br i1 %820, label %821, label %893, !prof !544

821:                                              ; preds = %817
  %822 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %823 = getelementptr inbounds %struct.simple_bitmap_def, ptr %822, i64 0, i32 1
  %824 = load i32, ptr %823, align 8, !tbaa !446
  %825 = call ptr @sbitmap_alloc(i32 noundef %824) #19
  %826 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  call void @sbitmap_copy(ptr noundef %825, ptr noundef %826) #19
  %827 = getelementptr inbounds %struct.simple_bitmap_def, ptr %825, i64 0, i32 2
  %828 = load i32, ptr %827, align 4, !tbaa !391
  %829 = getelementptr inbounds %struct.simple_bitmap_def, ptr %825, i64 0, i32 3
  %830 = icmp eq i32 %828, 0
  br i1 %830, label %833, label %831, !prof !545

831:                                              ; preds = %821
  %832 = load i64, ptr %829, align 8, !tbaa !301
  br label %833

833:                                              ; preds = %821, %831
  %834 = phi i64 [ %832, %831 ], [ 0, %821 ]
  br label %835

835:                                              ; preds = %833, %879
  %836 = phi i32 [ %875, %879 ], [ 0, %833 ]
  %837 = phi i64 [ %889, %879 ], [ %834, %833 ]
  %838 = phi i32 [ %890, %879 ], [ 0, %833 ]
  %839 = phi i32 [ %878, %879 ], [ 0, %833 ]
  %840 = icmp eq i64 %837, 0
  br i1 %840, label %841, label %848, !prof !546

841:                                              ; preds = %835
  %842 = add i32 %839, 1
  %843 = call i32 @llvm.umax.i32(i32 %828, i32 %842)
  %844 = add i32 %839, 1
  %845 = icmp ult i32 %844, %828
  br i1 %845, label %858, label %873, !prof !547

846:                                              ; preds = %858
  %847 = shl i32 %859, 6
  br label %848

848:                                              ; preds = %846, %835
  %849 = phi i64 [ %837, %835 ], [ %862, %846 ]
  %850 = phi i32 [ %838, %835 ], [ %847, %846 ]
  %851 = phi i32 [ %839, %835 ], [ %859, %846 ]
  %852 = phi i1 [ %840, %835 ], [ %863, %846 ]
  %853 = and i64 %849, 1
  %854 = icmp eq i64 %853, 0
  br i1 %854, label %864, label %873, !prof !548

855:                                              ; preds = %858
  %856 = add i32 %859, 1
  %857 = icmp ult i32 %856, %828
  br i1 %857, label %858, label %871, !prof !549, !llvm.loop !392

858:                                              ; preds = %841, %855
  %859 = phi i32 [ %856, %855 ], [ %844, %841 ]
  %860 = zext i32 %859 to i64
  %861 = getelementptr inbounds i64, ptr %829, i64 %860
  %862 = load i64, ptr %861, align 8, !tbaa !301
  %863 = icmp eq i64 %862, 0
  br i1 %863, label %855, label %846, !prof !550, !llvm.loop !392

864:                                              ; preds = %848, %864
  %865 = phi i32 [ %867, %864 ], [ %850, %848 ]
  %866 = phi i64 [ %868, %864 ], [ %849, %848 ]
  %867 = add i32 %865, 1
  %868 = lshr exact i64 %866, 1
  %869 = and i64 %866, 2
  %870 = icmp eq i64 %869, 0
  br i1 %870, label %864, label %873, !prof !551, !llvm.loop !393

871:                                              ; preds = %855
  %872 = shl i32 %859, 6
  br label %873

873:                                              ; preds = %864, %871, %841, %848
  %874 = phi i1 [ %852, %848 ], [ %840, %841 ], [ %863, %871 ], [ %852, %864 ]
  %875 = phi i32 [ %850, %848 ], [ %836, %841 ], [ %836, %871 ], [ %867, %864 ]
  %876 = phi i64 [ %849, %848 ], [ %837, %841 ], [ %862, %871 ], [ %868, %864 ]
  %877 = phi i32 [ %850, %848 ], [ %838, %841 ], [ %872, %871 ], [ %867, %864 ]
  %878 = phi i32 [ %851, %848 ], [ %843, %841 ], [ %843, %871 ], [ %851, %864 ]
  br i1 %874, label %891, label %879, !prof !552

879:                                              ; preds = %873
  %880 = load ptr, ptr @cfun, align 8, !tbaa !243
  %881 = getelementptr inbounds %struct.function, ptr %880, i64 0, i32 3
  %882 = load ptr, ptr %881, align 8, !tbaa !268
  %883 = getelementptr inbounds %struct.gimple_df, ptr %882, i64 0, i32 2
  %884 = load ptr, ptr %883, align 8, !tbaa !270
  %885 = zext i32 %875 to i64
  %886 = getelementptr inbounds %struct.VEC_tree_base, ptr %884, i64 0, i32 2, i64 %885
  %887 = load ptr, ptr %886, align 8, !tbaa !243
  %888 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  call fastcc void @insert_updated_phi_nodes_for(ptr noundef %887, ptr noundef %792, ptr noundef %888, i32 noundef %0)
  %889 = lshr i64 %876, 1
  %890 = add i32 %877, 1
  br label %835, !llvm.loop !553

891:                                              ; preds = %873
  %892 = load ptr, ptr %825, align 8, !tbaa !384
  call void @free(ptr noundef %892)
  call void @free(ptr noundef %825)
  br label %893

893:                                              ; preds = %891, %817
  %894 = load ptr, ptr @cfun, align 8, !tbaa !243
  %895 = getelementptr inbounds %struct.function, ptr %894, i64 0, i32 3
  %896 = load ptr, ptr %895, align 8, !tbaa !268
  %897 = getelementptr inbounds %struct.gimple_df, ptr %896, i64 0, i32 9
  %898 = load ptr, ptr %897, align 8, !tbaa !323
  %899 = load ptr, ptr %898, align 8, !tbaa !297
  %900 = icmp eq ptr %899, null
  %901 = select i1 %900, ptr @bitmap_zero_bits, ptr %899, !prof !544
  %902 = getelementptr inbounds %struct.bitmap_element_def, ptr %901, i64 0, i32 2
  %903 = load i32, ptr %902, align 8, !tbaa !299
  %904 = shl i32 %903, 7
  %905 = getelementptr inbounds %struct.bitmap_element_def, ptr %901, i64 0, i32 3
  %906 = load i64, ptr %905, align 8, !tbaa !301
  %907 = icmp eq i64 %906, 0
  %908 = zext i1 %907 to i32
  %909 = or disjoint i32 %904, %908
  br label %910

910:                                              ; preds = %971, %893
  %911 = phi i32 [ %909, %893 ], [ %975, %971 ]
  %912 = phi ptr [ %901, %893 ], [ %967, %971 ]
  %913 = phi i32 [ 0, %893 ], [ %968, %971 ]
  %914 = phi i64 [ %906, %893 ], [ %974, %971 ]
  %915 = icmp eq i64 %914, 0
  br i1 %915, label %930, label %916, !prof !554

916:                                              ; preds = %944, %910
  %917 = phi i32 [ %911, %910 ], [ %946, %944 ]
  %918 = phi ptr [ %912, %910 ], [ %936, %944 ]
  %919 = phi i32 [ %913, %910 ], [ %945, %944 ]
  %920 = phi i64 [ %914, %910 ], [ %949, %944 ]
  %921 = and i64 %920, 1
  %922 = icmp eq i64 %921, 0
  br i1 %922, label %923, label %965, !prof !555

923:                                              ; preds = %916, %923
  %924 = phi i64 [ %926, %923 ], [ %920, %916 ]
  %925 = phi i32 [ %927, %923 ], [ %917, %916 ]
  %926 = lshr exact i64 %924, 1
  %927 = add i32 %925, 1
  %928 = and i64 %924, 2
  %929 = icmp eq i64 %928, 0
  br i1 %929, label %923, label %965, !prof !556, !llvm.loop !302

930:                                              ; preds = %910
  %931 = add i32 %911, 63
  %932 = and i32 %931, -64
  %933 = add i32 %913, 1
  br label %934

934:                                              ; preds = %961, %930
  %935 = phi i32 [ %932, %930 ], [ %964, %961 ]
  %936 = phi ptr [ %912, %930 ], [ %959, %961 ]
  %937 = phi i64 [ %914, %930 ], [ %957, %961 ]
  %938 = phi i32 [ %933, %930 ], [ 0, %961 ]
  %939 = icmp eq i32 %938, 2
  br i1 %939, label %955, label %940, !prof !557

940:                                              ; preds = %934
  %941 = add i32 %935, 128
  %942 = shl i32 %938, 6
  %943 = sub i32 %941, %942
  br label %944

944:                                              ; preds = %940, %951
  %945 = phi i32 [ %953, %951 ], [ %938, %940 ]
  %946 = phi i32 [ %952, %951 ], [ %935, %940 ]
  %947 = zext i32 %945 to i64
  %948 = getelementptr inbounds %struct.bitmap_element_def, ptr %936, i64 0, i32 3, i64 %947
  %949 = load i64, ptr %948, align 8, !tbaa !301
  %950 = icmp eq i64 %949, 0
  br i1 %950, label %951, label %916, !prof !558

951:                                              ; preds = %944
  %952 = add i32 %946, 64
  %953 = add i32 %945, 1
  %954 = icmp eq i32 %953, 2
  br i1 %954, label %955, label %944, !prof !559, !llvm.loop !303

955:                                              ; preds = %951, %934
  %956 = phi i32 [ %935, %934 ], [ %943, %951 ]
  %957 = phi i64 [ %937, %934 ], [ %949, %951 ]
  %958 = phi i32 [ %938, %934 ], [ 2, %951 ]
  %959 = load ptr, ptr %936, align 8, !tbaa !304
  %960 = icmp eq ptr %959, null
  br i1 %960, label %965, label %961, !prof !560

961:                                              ; preds = %955
  %962 = getelementptr inbounds %struct.bitmap_element_def, ptr %959, i64 0, i32 2
  %963 = load i32, ptr %962, align 8, !tbaa !299
  %964 = shl i32 %963, 7
  br label %934, !llvm.loop !305

965:                                              ; preds = %955, %923, %916
  %966 = phi i32 [ %917, %916 ], [ %927, %923 ], [ %956, %955 ]
  %967 = phi ptr [ %918, %916 ], [ %918, %923 ], [ %959, %955 ]
  %968 = phi i32 [ %919, %916 ], [ %919, %923 ], [ %958, %955 ]
  %969 = phi i64 [ %920, %916 ], [ %926, %923 ], [ %957, %955 ]
  %970 = phi i1 [ false, %916 ], [ false, %923 ], [ true, %955 ]
  br i1 %970, label %976, label %971, !prof !561

971:                                              ; preds = %965
  %972 = call ptr @referenced_var_lookup(i32 noundef %966) #19
  %973 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  call fastcc void @insert_updated_phi_nodes_for(ptr noundef %972, ptr noundef %792, ptr noundef %973, i32 noundef %0)
  %974 = lshr i64 %969, 1
  %975 = add i32 %966, 1
  br label %910, !llvm.loop !562

976:                                              ; preds = %965
  %977 = load ptr, ptr @cfun, align 8, !tbaa !243
  %978 = getelementptr inbounds %struct.function, ptr %977, i64 0, i32 1
  %979 = load ptr, ptr %978, align 8, !tbaa !294
  %980 = load ptr, ptr %979, align 8, !tbaa !315
  %981 = getelementptr inbounds %struct.basic_block_def, ptr %980, i64 0, i32 6
  %982 = load ptr, ptr %981, align 8, !tbaa !349
  %983 = getelementptr inbounds %struct.control_flow_graph, ptr %979, i64 0, i32 1
  %984 = load ptr, ptr %983, align 8, !tbaa !350
  %985 = icmp eq ptr %982, %984
  br i1 %985, label %1004, label %986, !prof !541

986:                                              ; preds = %976, %986
  %987 = phi ptr [ %997, %986 ], [ %982, %976 ]
  %988 = getelementptr inbounds %struct.basic_block_def, ptr %987, i64 0, i32 9
  %989 = load i32, ptr %988, align 8, !tbaa !313
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds ptr, ptr %792, i64 %990
  %992 = load ptr, ptr %991, align 8, !tbaa !243
  call void @bitmap_obstack_free(ptr noundef %992) #19
  %993 = load i32, ptr %988, align 8, !tbaa !313
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds ptr, ptr %792, i64 %994
  store ptr null, ptr %995, align 8, !tbaa !243
  %996 = getelementptr inbounds %struct.basic_block_def, ptr %987, i64 0, i32 6
  %997 = load ptr, ptr %996, align 8, !tbaa !349
  %998 = load ptr, ptr @cfun, align 8, !tbaa !243
  %999 = getelementptr inbounds %struct.function, ptr %998, i64 0, i32 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !294
  %1001 = getelementptr inbounds %struct.control_flow_graph, ptr %1000, i64 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !350
  %1003 = icmp eq ptr %997, %1002
  br i1 %1003, label %1004, label %986, !prof !542, !llvm.loop !563

1004:                                             ; preds = %986, %976
  call void @free(ptr noundef %792)
  %1005 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1006 = getelementptr inbounds %struct.function, ptr %1005, i64 0, i32 1
  %1007 = load ptr, ptr %1006, align 8, !tbaa !294
  %1008 = load ptr, ptr %1007, align 8, !tbaa !315
  %1009 = icmp eq ptr %783, %1008
  br i1 %1009, label %1013, label %1010, !prof !564

1010:                                             ; preds = %1004
  %1011 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %1012 = call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %1011) #19
  br label %1013

1013:                                             ; preds = %1004, %1010, %782
  %1014 = phi i32 [ %966, %1004 ], [ %966, %1010 ], [ 0, %782 ]
  %1015 = phi ptr [ %783, %1004 ], [ %1012, %1010 ], [ %783, %782 ]
  %1016 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %1017 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1016, i64 0, i32 2
  %1018 = load i32, ptr %1017, align 4, !tbaa !391
  %1019 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1016, i64 0, i32 3
  %1020 = icmp eq i32 %1018, 0
  br i1 %1020, label %1023, label %1021, !prof !417

1021:                                             ; preds = %1013
  %1022 = load i64, ptr %1019, align 8, !tbaa !301
  br label %1023

1023:                                             ; preds = %1013, %1021
  %1024 = phi i64 [ 0, %1013 ], [ %1022, %1021 ]
  br label %1025

1025:                                             ; preds = %1023, %1151
  %1026 = phi i64 [ %1153, %1151 ], [ %1024, %1023 ]
  %1027 = phi i32 [ %1154, %1151 ], [ 0, %1023 ]
  %1028 = phi i32 [ %1067, %1151 ], [ 0, %1023 ]
  %1029 = phi i32 [ %1068, %1151 ], [ %1014, %1023 ]
  %1030 = icmp eq i64 %1026, 0
  br i1 %1030, label %1031, label %1038, !prof !565

1031:                                             ; preds = %1025
  %1032 = add i32 %1028, 1
  %1033 = call i32 @llvm.umax.i32(i32 %1018, i32 %1032)
  %1034 = add i32 %1028, 1
  %1035 = icmp ult i32 %1034, %1018
  br i1 %1035, label %1048, label %1063, !prof !566

1036:                                             ; preds = %1048
  %1037 = shl i32 %1049, 6
  br label %1038

1038:                                             ; preds = %1036, %1025
  %1039 = phi i64 [ %1026, %1025 ], [ %1052, %1036 ]
  %1040 = phi i32 [ %1027, %1025 ], [ %1037, %1036 ]
  %1041 = phi i32 [ %1028, %1025 ], [ %1049, %1036 ]
  %1042 = phi i1 [ %1030, %1025 ], [ %1053, %1036 ]
  %1043 = and i64 %1039, 1
  %1044 = icmp eq i64 %1043, 0
  br i1 %1044, label %1054, label %1063, !prof !524

1045:                                             ; preds = %1048
  %1046 = add i32 %1049, 1
  %1047 = icmp ult i32 %1046, %1018
  br i1 %1047, label %1048, label %1061, !prof !567, !llvm.loop !392

1048:                                             ; preds = %1031, %1045
  %1049 = phi i32 [ %1046, %1045 ], [ %1034, %1031 ]
  %1050 = zext i32 %1049 to i64
  %1051 = getelementptr inbounds i64, ptr %1019, i64 %1050
  %1052 = load i64, ptr %1051, align 8, !tbaa !301
  %1053 = icmp eq i64 %1052, 0
  br i1 %1053, label %1045, label %1036, !prof !568, !llvm.loop !392

1054:                                             ; preds = %1038, %1054
  %1055 = phi i32 [ %1057, %1054 ], [ %1040, %1038 ]
  %1056 = phi i64 [ %1058, %1054 ], [ %1039, %1038 ]
  %1057 = add i32 %1055, 1
  %1058 = lshr exact i64 %1056, 1
  %1059 = and i64 %1056, 2
  %1060 = icmp eq i64 %1059, 0
  br i1 %1060, label %1054, label %1063, !prof !525, !llvm.loop !393

1061:                                             ; preds = %1045
  %1062 = shl i32 %1049, 6
  br label %1063

1063:                                             ; preds = %1054, %1061, %1031, %1038
  %1064 = phi i1 [ %1042, %1038 ], [ %1030, %1031 ], [ %1053, %1061 ], [ %1042, %1054 ]
  %1065 = phi i64 [ %1039, %1038 ], [ %1026, %1031 ], [ %1052, %1061 ], [ %1058, %1054 ]
  %1066 = phi i32 [ %1040, %1038 ], [ %1027, %1031 ], [ %1062, %1061 ], [ %1057, %1054 ]
  %1067 = phi i32 [ %1041, %1038 ], [ %1033, %1031 ], [ %1033, %1061 ], [ %1041, %1054 ]
  %1068 = phi i32 [ %1040, %1038 ], [ %1029, %1031 ], [ %1029, %1061 ], [ %1057, %1054 ]
  %1069 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1070 = getelementptr inbounds %struct.function, ptr %1069, i64 0, i32 3
  %1071 = load ptr, ptr %1070, align 8, !tbaa !268
  br i1 %1064, label %1155, label %1072, !prof !569

1072:                                             ; preds = %1063
  %1073 = getelementptr inbounds %struct.gimple_df, ptr %1071, i64 0, i32 2
  %1074 = load ptr, ptr %1073, align 8, !tbaa !270
  %1075 = zext i32 %1068 to i64
  %1076 = getelementptr inbounds %struct.VEC_tree_base, ptr %1074, i64 0, i32 2, i64 %1075
  %1077 = load ptr, ptr %1076, align 8, !tbaa !243
  %1078 = load i64, ptr %1077, align 8
  %1079 = and i64 %1078, 65535
  %1080 = icmp eq i64 %1079, 141
  br i1 %1080, label %1081, label %1136, !prof !284

1081:                                             ; preds = %1072
  %1082 = getelementptr inbounds %struct.tree_ssa_name, ptr %1077, i64 0, i32 3
  %1083 = load i32, ptr %1082, align 8, !tbaa !254
  %1084 = load ptr, ptr @info_for_ssa_name, align 8
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1088, label %1086, !prof !285

1086:                                             ; preds = %1081
  %1087 = load i32, ptr %1084, align 8, !tbaa !265
  br label %1088

1088:                                             ; preds = %1086, %1081
  %1089 = phi i32 [ %1087, %1086 ], [ 0, %1081 ]
  %1090 = icmp ult i32 %1083, %1089
  br i1 %1090, label %1123, label %1091, !prof !286

1091:                                             ; preds = %1088
  %1092 = icmp eq ptr %1074, null
  br i1 %1092, label %1095, label %1093, !prof !287

1093:                                             ; preds = %1091
  %1094 = load i32, ptr %1074, align 8, !tbaa !274
  br label %1095

1095:                                             ; preds = %1093, %1091
  %1096 = phi i32 [ %1094, %1093 ], [ 0, %1091 ]
  br i1 %1085, label %1103, label %1097, !prof !288

1097:                                             ; preds = %1095
  %1098 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1084, i64 0, i32 1
  %1099 = load i32, ptr %1098, align 4, !tbaa !276
  %1100 = load i32, ptr %1084, align 8, !tbaa !265
  %1101 = sub i32 %1099, %1100
  %1102 = icmp uge i32 %1101, %1096
  br label %1105

1103:                                             ; preds = %1095
  %1104 = icmp eq i32 %1096, 0
  br label %1105

1105:                                             ; preds = %1103, %1097
  %1106 = phi i1 [ %1102, %1097 ], [ %1104, %1103 ]
  br i1 %1106, label %1109, label %1107, !prof !289

1107:                                             ; preds = %1105
  %1108 = call ptr @vec_heap_p_reserve(ptr noundef %1084, i32 noundef %1096) #19
  store ptr %1108, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %1109

1109:                                             ; preds = %1107, %1105
  %1110 = icmp ult i32 %1089, %1096
  br i1 %1110, label %1111, label %1123, !prof !290

1111:                                             ; preds = %1109, %1111
  %1112 = phi i32 [ %1113, %1111 ], [ %1089, %1109 ]
  %1113 = add nuw i32 %1112, 1
  %1114 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %1115 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1116 = getelementptr inbounds %struct.ssa_name_info, ptr %1114, i64 0, i32 2
  store i32 %1115, ptr %1116, align 4, !tbaa !277
  %1117 = load ptr, ptr @info_for_ssa_name, align 8
  %1118 = load i32, ptr %1117, align 8, !tbaa !265
  %1119 = add i32 %1118, 1
  store i32 %1119, ptr %1117, align 8, !tbaa !265
  %1120 = zext i32 %1118 to i64
  %1121 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1117, i64 0, i32 2, i64 %1120
  store ptr %1114, ptr %1121, align 8, !tbaa !243
  %1122 = icmp eq i32 %1113, %1096
  br i1 %1122, label %1123, label %1111, !prof !291, !llvm.loop !279

1123:                                             ; preds = %1111, %1109, %1088
  %1124 = load ptr, ptr @info_for_ssa_name, align 8
  %1125 = zext i32 %1083 to i64
  %1126 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1124, i64 0, i32 2, i64 %1125
  %1127 = load ptr, ptr %1126, align 8, !tbaa !243
  %1128 = getelementptr inbounds %struct.ssa_name_info, ptr %1127, i64 0, i32 2
  %1129 = load i32, ptr %1128, align 4, !tbaa !277
  %1130 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1131 = icmp ult i32 %1129, %1130
  br i1 %1131, label %1132, label %1151, !prof !292

1132:                                             ; preds = %1123
  %1133 = getelementptr inbounds %struct.ssa_name_info, ptr %1127, i64 0, i32 1
  %1134 = load i8, ptr %1133, align 8
  %1135 = and i8 %1134, -4
  store i8 %1135, ptr %1133, align 8
  store ptr null, ptr %1127, align 8, !tbaa !280
  store i32 %1130, ptr %1128, align 4, !tbaa !277
  br label %1151

1136:                                             ; preds = %1072
  %1137 = trunc i64 %1078 to i16
  switch i16 %1137, label %1142 [
    i16 32, label %1138
    i16 34, label %1140
  ], !prof !293

1138:                                             ; preds = %1136
  %1139 = getelementptr inbounds %struct.tree_var_decl, ptr %1077, i64 0, i32 1
  br label %1146

1140:                                             ; preds = %1136
  %1141 = getelementptr inbounds %struct.tree_parm_decl, ptr %1077, i64 0, i32 2
  br label %1146

1142:                                             ; preds = %1136
  %1143 = icmp eq i64 %1079, 36
  %1144 = getelementptr inbounds %struct.tree_result_decl, ptr %1077, i64 0, i32 1
  %1145 = select i1 %1143, ptr %1144, ptr null
  br label %1146

1146:                                             ; preds = %1142, %1140, %1138
  %1147 = phi ptr [ %1139, %1138 ], [ %1141, %1140 ], [ %1145, %1142 ]
  %1148 = icmp ne ptr %1147, null
  call void @llvm.assume(i1 %1148)
  %1149 = load ptr, ptr %1147, align 8, !tbaa !243
  %1150 = getelementptr inbounds %struct.var_ann_d, ptr %1149, i64 0, i32 2
  br label %1151

1151:                                             ; preds = %1123, %1132, %1146
  %1152 = phi ptr [ %1150, %1146 ], [ %1127, %1132 ], [ %1127, %1123 ]
  store ptr null, ptr %1152, align 8, !tbaa !243
  %1153 = lshr i64 %1065, 1
  %1154 = add i32 %1066, 1
  br label %1025, !llvm.loop !570

1155:                                             ; preds = %1063
  %1156 = getelementptr inbounds %struct.gimple_df, ptr %1071, i64 0, i32 9
  %1157 = load ptr, ptr %1156, align 8, !tbaa !323
  %1158 = load ptr, ptr %1157, align 8, !tbaa !297
  %1159 = icmp eq ptr %1158, null
  %1160 = select i1 %1159, ptr @bitmap_zero_bits, ptr %1158, !prof !484
  %1161 = getelementptr inbounds %struct.bitmap_element_def, ptr %1160, i64 0, i32 2
  %1162 = load i32, ptr %1161, align 8, !tbaa !299
  %1163 = shl i32 %1162, 7
  %1164 = getelementptr inbounds %struct.bitmap_element_def, ptr %1160, i64 0, i32 3
  %1165 = load i64, ptr %1164, align 8, !tbaa !301
  %1166 = icmp eq i64 %1165, 0
  %1167 = zext i1 %1166 to i32
  %1168 = or disjoint i32 %1163, %1167
  br label %1169

1169:                                             ; preds = %1230, %1155
  %1170 = phi i32 [ %1168, %1155 ], [ %1233, %1230 ]
  %1171 = phi ptr [ %1160, %1155 ], [ %1226, %1230 ]
  %1172 = phi i32 [ 0, %1155 ], [ %1227, %1230 ]
  %1173 = phi i64 [ %1165, %1155 ], [ %1232, %1230 ]
  %1174 = icmp eq i64 %1173, 0
  br i1 %1174, label %1189, label %1175, !prof !571

1175:                                             ; preds = %1203, %1169
  %1176 = phi i32 [ %1170, %1169 ], [ %1205, %1203 ]
  %1177 = phi ptr [ %1171, %1169 ], [ %1195, %1203 ]
  %1178 = phi i32 [ %1172, %1169 ], [ %1204, %1203 ]
  %1179 = phi i64 [ %1173, %1169 ], [ %1208, %1203 ]
  %1180 = and i64 %1179, 1
  %1181 = icmp eq i64 %1180, 0
  br i1 %1181, label %1182, label %1224, !prof !555

1182:                                             ; preds = %1175, %1182
  %1183 = phi i64 [ %1185, %1182 ], [ %1179, %1175 ]
  %1184 = phi i32 [ %1186, %1182 ], [ %1176, %1175 ]
  %1185 = lshr exact i64 %1183, 1
  %1186 = add i32 %1184, 1
  %1187 = and i64 %1183, 2
  %1188 = icmp eq i64 %1187, 0
  br i1 %1188, label %1182, label %1224, !prof !556, !llvm.loop !302

1189:                                             ; preds = %1169
  %1190 = add i32 %1170, 63
  %1191 = and i32 %1190, -64
  %1192 = add i32 %1172, 1
  br label %1193

1193:                                             ; preds = %1220, %1189
  %1194 = phi i32 [ %1191, %1189 ], [ %1223, %1220 ]
  %1195 = phi ptr [ %1171, %1189 ], [ %1218, %1220 ]
  %1196 = phi i64 [ %1173, %1189 ], [ %1216, %1220 ]
  %1197 = phi i32 [ %1192, %1189 ], [ 0, %1220 ]
  %1198 = icmp eq i32 %1197, 2
  br i1 %1198, label %1214, label %1199, !prof !572

1199:                                             ; preds = %1193
  %1200 = add i32 %1194, 128
  %1201 = shl i32 %1197, 6
  %1202 = sub i32 %1200, %1201
  br label %1203

1203:                                             ; preds = %1199, %1210
  %1204 = phi i32 [ %1212, %1210 ], [ %1197, %1199 ]
  %1205 = phi i32 [ %1211, %1210 ], [ %1194, %1199 ]
  %1206 = zext i32 %1204 to i64
  %1207 = getelementptr inbounds %struct.bitmap_element_def, ptr %1195, i64 0, i32 3, i64 %1206
  %1208 = load i64, ptr %1207, align 8, !tbaa !301
  %1209 = icmp eq i64 %1208, 0
  br i1 %1209, label %1210, label %1175, !prof !573

1210:                                             ; preds = %1203
  %1211 = add i32 %1205, 64
  %1212 = add i32 %1204, 1
  %1213 = icmp eq i32 %1212, 2
  br i1 %1213, label %1214, label %1203, !prof !574, !llvm.loop !303

1214:                                             ; preds = %1210, %1193
  %1215 = phi i32 [ %1194, %1193 ], [ %1202, %1210 ]
  %1216 = phi i64 [ %1196, %1193 ], [ %1208, %1210 ]
  %1217 = phi i32 [ %1197, %1193 ], [ 2, %1210 ]
  %1218 = load ptr, ptr %1195, align 8, !tbaa !304
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1224, label %1220, !prof !575

1220:                                             ; preds = %1214
  %1221 = getelementptr inbounds %struct.bitmap_element_def, ptr %1218, i64 0, i32 2
  %1222 = load i32, ptr %1221, align 8, !tbaa !299
  %1223 = shl i32 %1222, 7
  br label %1193, !llvm.loop !305

1224:                                             ; preds = %1214, %1182, %1175
  %1225 = phi i32 [ %1176, %1175 ], [ %1186, %1182 ], [ %1215, %1214 ]
  %1226 = phi ptr [ %1177, %1175 ], [ %1177, %1182 ], [ %1218, %1214 ]
  %1227 = phi i32 [ %1178, %1175 ], [ %1178, %1182 ], [ %1217, %1214 ]
  %1228 = phi i64 [ %1179, %1175 ], [ %1185, %1182 ], [ %1216, %1214 ]
  %1229 = phi i1 [ false, %1175 ], [ false, %1182 ], [ true, %1214 ]
  br i1 %1229, label %1234, label %1230, !prof !576

1230:                                             ; preds = %1224
  %1231 = call ptr @referenced_var_lookup(i32 noundef %1225) #19
  call void @set_current_def(ptr noundef %1231, ptr noundef null)
  %1232 = lshr i64 %1228, 1
  %1233 = add i32 %1225, 1
  br label %1169, !llvm.loop !577

1234:                                             ; preds = %1224
  %1235 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1236 = getelementptr inbounds %struct.function, ptr %1235, i64 0, i32 1
  %1237 = load ptr, ptr %1236, align 8, !tbaa !294
  %1238 = getelementptr inbounds %struct.control_flow_graph, ptr %1237, i64 0, i32 5
  %1239 = load i32, ptr %1238, align 8, !tbaa !295
  %1240 = call ptr @sbitmap_alloc(i32 noundef %1239) #19
  store ptr %1240, ptr @interesting_blocks, align 8, !tbaa !243
  call void @sbitmap_zero(ptr noundef %1240) #19
  %1241 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %1242 = load ptr, ptr %1241, align 8, !tbaa !297
  %1243 = icmp eq ptr %1242, null
  %1244 = select i1 %1243, ptr @bitmap_zero_bits, ptr %1242, !prof !417
  %1245 = getelementptr inbounds %struct.bitmap_element_def, ptr %1244, i64 0, i32 2
  %1246 = load i32, ptr %1245, align 8, !tbaa !299
  %1247 = shl i32 %1246, 7
  %1248 = getelementptr inbounds %struct.bitmap_element_def, ptr %1244, i64 0, i32 3
  %1249 = load i64, ptr %1248, align 8, !tbaa !301
  %1250 = icmp eq i64 %1249, 0
  %1251 = zext i1 %1250 to i32
  %1252 = or disjoint i32 %1247, %1251
  br label %1253

1253:                                             ; preds = %1332, %1234
  %1254 = phi i32 [ %1252, %1234 ], [ %1342, %1332 ]
  %1255 = phi ptr [ %1244, %1234 ], [ %1310, %1332 ]
  %1256 = phi i32 [ 0, %1234 ], [ %1311, %1332 ]
  %1257 = phi i64 [ %1249, %1234 ], [ %1341, %1332 ]
  %1258 = icmp eq i64 %1257, 0
  br i1 %1258, label %1273, label %1259, !prof !578

1259:                                             ; preds = %1287, %1253
  %1260 = phi i32 [ %1254, %1253 ], [ %1289, %1287 ]
  %1261 = phi ptr [ %1255, %1253 ], [ %1279, %1287 ]
  %1262 = phi i32 [ %1256, %1253 ], [ %1288, %1287 ]
  %1263 = phi i64 [ %1257, %1253 ], [ %1292, %1287 ]
  %1264 = and i64 %1263, 1
  %1265 = icmp eq i64 %1264, 0
  br i1 %1265, label %1266, label %1308, !prof !579

1266:                                             ; preds = %1259, %1266
  %1267 = phi i64 [ %1269, %1266 ], [ %1263, %1259 ]
  %1268 = phi i32 [ %1270, %1266 ], [ %1260, %1259 ]
  %1269 = lshr exact i64 %1267, 1
  %1270 = add i32 %1268, 1
  %1271 = and i64 %1267, 2
  %1272 = icmp eq i64 %1271, 0
  br i1 %1272, label %1266, label %1308, !prof !580, !llvm.loop !302

1273:                                             ; preds = %1253
  %1274 = add i32 %1254, 63
  %1275 = and i32 %1274, -64
  %1276 = add i32 %1256, 1
  br label %1277

1277:                                             ; preds = %1304, %1273
  %1278 = phi i32 [ %1275, %1273 ], [ %1307, %1304 ]
  %1279 = phi ptr [ %1255, %1273 ], [ %1302, %1304 ]
  %1280 = phi i64 [ %1257, %1273 ], [ %1300, %1304 ]
  %1281 = phi i32 [ %1276, %1273 ], [ 0, %1304 ]
  %1282 = icmp eq i32 %1281, 2
  br i1 %1282, label %1298, label %1283, !prof !581

1283:                                             ; preds = %1277
  %1284 = add i32 %1278, 128
  %1285 = shl i32 %1281, 6
  %1286 = sub i32 %1284, %1285
  br label %1287

1287:                                             ; preds = %1283, %1294
  %1288 = phi i32 [ %1296, %1294 ], [ %1281, %1283 ]
  %1289 = phi i32 [ %1295, %1294 ], [ %1278, %1283 ]
  %1290 = zext i32 %1288 to i64
  %1291 = getelementptr inbounds %struct.bitmap_element_def, ptr %1279, i64 0, i32 3, i64 %1290
  %1292 = load i64, ptr %1291, align 8, !tbaa !301
  %1293 = icmp eq i64 %1292, 0
  br i1 %1293, label %1294, label %1259, !prof !582

1294:                                             ; preds = %1287
  %1295 = add i32 %1289, 64
  %1296 = add i32 %1288, 1
  %1297 = icmp eq i32 %1296, 2
  br i1 %1297, label %1298, label %1287, !prof !583, !llvm.loop !303

1298:                                             ; preds = %1294, %1277
  %1299 = phi i32 [ %1278, %1277 ], [ %1286, %1294 ]
  %1300 = phi i64 [ %1280, %1277 ], [ %1292, %1294 ]
  %1301 = phi i32 [ %1281, %1277 ], [ 2, %1294 ]
  %1302 = load ptr, ptr %1279, align 8, !tbaa !304
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1308, label %1304, !prof !584

1304:                                             ; preds = %1298
  %1305 = getelementptr inbounds %struct.bitmap_element_def, ptr %1302, i64 0, i32 2
  %1306 = load i32, ptr %1305, align 8, !tbaa !299
  %1307 = shl i32 %1306, 7
  br label %1277, !llvm.loop !305

1308:                                             ; preds = %1298, %1266, %1259
  %1309 = phi i32 [ %1260, %1259 ], [ %1270, %1266 ], [ %1299, %1298 ]
  %1310 = phi ptr [ %1261, %1259 ], [ %1261, %1266 ], [ %1302, %1298 ]
  %1311 = phi i32 [ %1262, %1259 ], [ %1262, %1266 ], [ %1301, %1298 ]
  %1312 = phi i64 [ %1263, %1259 ], [ %1269, %1266 ], [ %1300, %1298 ]
  %1313 = phi i1 [ false, %1259 ], [ false, %1266 ], [ true, %1298 ]
  br i1 %1313, label %1343, label %1314, !prof !585

1314:                                             ; preds = %1308
  %1315 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  %1316 = load ptr, ptr %1315, align 8, !tbaa !384
  %1317 = icmp eq ptr %1316, null
  br i1 %1317, label %1332, label %1318, !prof !586

1318:                                             ; preds = %1314
  %1319 = lshr i32 %1309, 6
  %1320 = zext nneg i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1315, i64 0, i32 3, i64 %1320
  %1322 = load i64, ptr %1321, align 8, !tbaa !301
  %1323 = and i32 %1309, 63
  %1324 = zext nneg i32 %1323 to i64
  %1325 = shl nuw i64 1, %1324
  %1326 = and i64 %1322, %1325
  %1327 = icmp eq i64 %1326, 0
  br i1 %1327, label %1328, label %1332

1328:                                             ; preds = %1318
  %1329 = getelementptr inbounds i8, ptr %1316, i64 %1320
  %1330 = load i8, ptr %1329, align 1, !tbaa !254
  %1331 = add i8 %1330, 1
  store i8 %1331, ptr %1329, align 1, !tbaa !254
  br label %1332

1332:                                             ; preds = %1314, %1318, %1328
  %1333 = and i32 %1309, 63
  %1334 = zext nneg i32 %1333 to i64
  %1335 = shl nuw i64 1, %1334
  %1336 = lshr i32 %1309, 6
  %1337 = zext nneg i32 %1336 to i64
  %1338 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1315, i64 0, i32 3, i64 %1337
  %1339 = load i64, ptr %1338, align 8, !tbaa !301
  %1340 = or i64 %1339, %1335
  store i64 %1340, ptr %1338, align 8, !tbaa !301
  %1341 = lshr i64 %1312, 1
  %1342 = add i32 %1309, 1
  br label %1253, !llvm.loop !587

1343:                                             ; preds = %1308
  call fastcc void @rewrite_blocks(ptr noundef %1015, i32 noundef 1)
  %1344 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  %1345 = load ptr, ptr %1344, align 8, !tbaa !384
  call void @free(ptr noundef %1345)
  %1346 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  call void @free(ptr noundef %1346)
  %1347 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %1348 = icmp eq ptr %1347, null
  br i1 %1348, label %1516, label %1349, !prof !472

1349:                                             ; preds = %1343
  call void @dump_update_ssa(ptr noundef nonnull %1347)
  %1350 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %1351 = getelementptr inbounds %struct.basic_block_def, ptr %1015, i64 0, i32 9
  %1352 = load i32, ptr %1351, align 8, !tbaa !313
  %1353 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1350, ptr noundef nonnull @.str.33, i32 noundef %1352)
  %1354 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %1355 = load ptr, ptr %1354, align 8, !tbaa !297
  %1356 = icmp eq ptr %1355, null
  %1357 = select i1 %1356, ptr @bitmap_zero_bits, ptr %1355
  %1358 = getelementptr inbounds %struct.bitmap_element_def, ptr %1357, i64 0, i32 3
  %1359 = load i64, ptr %1358, align 8, !tbaa !301
  br label %1360

1360:                                             ; preds = %1403, %1349
  %1361 = phi ptr [ %1357, %1349 ], [ %1399, %1403 ]
  %1362 = phi i32 [ 0, %1349 ], [ %1400, %1403 ]
  %1363 = phi i64 [ %1359, %1349 ], [ %1405, %1403 ]
  %1364 = phi i32 [ 0, %1349 ], [ %1404, %1403 ]
  %1365 = icmp eq i64 %1363, 0
  br i1 %1365, label %1377, label %1366

1366:                                             ; preds = %1384, %1360
  %1367 = phi ptr [ %1361, %1360 ], [ %1380, %1384 ]
  %1368 = phi i32 [ %1362, %1360 ], [ %1385, %1384 ]
  %1369 = phi i64 [ %1363, %1360 ], [ %1388, %1384 ]
  %1370 = and i64 %1369, 1
  %1371 = icmp eq i64 %1370, 0
  br i1 %1371, label %1372, label %1398

1372:                                             ; preds = %1366, %1372
  %1373 = phi i64 [ %1374, %1372 ], [ %1369, %1366 ]
  %1374 = lshr exact i64 %1373, 1
  %1375 = and i64 %1373, 2
  %1376 = icmp eq i64 %1375, 0
  br i1 %1376, label %1372, label %1398, !llvm.loop !302

1377:                                             ; preds = %1360
  %1378 = add i32 %1362, 1
  br label %1379

1379:                                             ; preds = %1393, %1377
  %1380 = phi ptr [ %1361, %1377 ], [ %1396, %1393 ]
  %1381 = phi i64 [ %1363, %1377 ], [ %1394, %1393 ]
  %1382 = phi i32 [ %1378, %1377 ], [ 0, %1393 ]
  %1383 = icmp eq i32 %1382, 2
  br i1 %1383, label %1393, label %1384

1384:                                             ; preds = %1379, %1390
  %1385 = phi i32 [ %1391, %1390 ], [ %1382, %1379 ]
  %1386 = zext i32 %1385 to i64
  %1387 = getelementptr inbounds %struct.bitmap_element_def, ptr %1380, i64 0, i32 3, i64 %1386
  %1388 = load i64, ptr %1387, align 8, !tbaa !301
  %1389 = icmp eq i64 %1388, 0
  br i1 %1389, label %1390, label %1366

1390:                                             ; preds = %1384
  %1391 = add i32 %1385, 1
  %1392 = icmp eq i32 %1391, 2
  br i1 %1392, label %1393, label %1384, !llvm.loop !303

1393:                                             ; preds = %1390, %1379
  %1394 = phi i64 [ %1381, %1379 ], [ %1388, %1390 ]
  %1395 = phi i32 [ %1382, %1379 ], [ 2, %1390 ]
  %1396 = load ptr, ptr %1380, align 8, !tbaa !304
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1398, label %1379, !llvm.loop !305

1398:                                             ; preds = %1393, %1372, %1366
  %1399 = phi ptr [ %1367, %1366 ], [ %1367, %1372 ], [ %1396, %1393 ]
  %1400 = phi i32 [ %1368, %1366 ], [ %1368, %1372 ], [ %1395, %1393 ]
  %1401 = phi i64 [ %1369, %1366 ], [ %1374, %1372 ], [ %1394, %1393 ]
  %1402 = phi i1 [ false, %1366 ], [ false, %1372 ], [ true, %1393 ]
  br i1 %1402, label %1406, label %1403

1403:                                             ; preds = %1398
  %1404 = add nuw nsw i32 %1364, 1
  %1405 = lshr i64 %1401, 1
  br label %1360, !llvm.loop !588

1406:                                             ; preds = %1398
  %1407 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %1408 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1409 = getelementptr inbounds %struct.function, ptr %1408, i64 0, i32 1
  %1410 = load ptr, ptr %1409, align 8, !tbaa !294
  %1411 = getelementptr inbounds %struct.control_flow_graph, ptr %1410, i64 0, i32 5
  %1412 = load i32, ptr %1411, align 8, !tbaa !295
  %1413 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1407, ptr noundef nonnull @.str.34, i32 noundef %1412)
  %1414 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %1415 = sitofp i32 %1364 to float
  %1416 = fpext float %1415 to double
  %1417 = fmul double %1416, 1.000000e+02
  %1418 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1419 = getelementptr inbounds %struct.function, ptr %1418, i64 0, i32 1
  %1420 = load ptr, ptr %1419, align 8, !tbaa !294
  %1421 = getelementptr inbounds %struct.control_flow_graph, ptr %1420, i64 0, i32 5
  %1422 = load i32, ptr %1421, align 8, !tbaa !295
  %1423 = sitofp i32 %1422 to float
  %1424 = fpext float %1423 to double
  %1425 = fdiv double %1417, %1424
  %1426 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1414, ptr noundef nonnull @.str.35, i32 noundef %1364, double noundef %1425)
  %1427 = load i32, ptr @dump_flags, align 4, !tbaa !258
  %1428 = and i32 %1427, 8
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1513, label %1430

1430:                                             ; preds = %1406
  %1431 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %1432 = call i64 @fwrite(ptr nonnull @.str.36, i64 17, i64 1, ptr %1431)
  %1433 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %1434 = load ptr, ptr %1433, align 8, !tbaa !297
  %1435 = icmp eq ptr %1434, null
  %1436 = select i1 %1435, ptr @bitmap_zero_bits, ptr %1434
  %1437 = getelementptr inbounds %struct.bitmap_element_def, ptr %1436, i64 0, i32 2
  %1438 = load i32, ptr %1437, align 8, !tbaa !299
  %1439 = shl i32 %1438, 7
  %1440 = getelementptr inbounds %struct.bitmap_element_def, ptr %1436, i64 0, i32 3
  %1441 = load i64, ptr %1440, align 8, !tbaa !301
  %1442 = icmp eq i64 %1441, 0
  %1443 = zext i1 %1442 to i32
  %1444 = or disjoint i32 %1439, %1443
  br label %1445

1445:                                             ; preds = %1507, %1430
  %1446 = phi ptr [ %1436, %1430 ], [ %1501, %1507 ]
  %1447 = phi i32 [ 0, %1430 ], [ %1502, %1507 ]
  %1448 = phi i64 [ %1441, %1430 ], [ %1509, %1507 ]
  %1449 = phi i32 [ %1444, %1430 ], [ %1510, %1507 ]
  %1450 = icmp eq i64 %1448, 0
  br i1 %1450, label %1465, label %1451

1451:                                             ; preds = %1479, %1445
  %1452 = phi ptr [ %1446, %1445 ], [ %1470, %1479 ]
  %1453 = phi i32 [ %1447, %1445 ], [ %1480, %1479 ]
  %1454 = phi i64 [ %1448, %1445 ], [ %1484, %1479 ]
  %1455 = phi i32 [ %1449, %1445 ], [ %1481, %1479 ]
  %1456 = and i64 %1454, 1
  %1457 = icmp eq i64 %1456, 0
  br i1 %1457, label %1458, label %1500

1458:                                             ; preds = %1451, %1458
  %1459 = phi i32 [ %1462, %1458 ], [ %1455, %1451 ]
  %1460 = phi i64 [ %1461, %1458 ], [ %1454, %1451 ]
  %1461 = lshr exact i64 %1460, 1
  %1462 = add i32 %1459, 1
  %1463 = and i64 %1460, 2
  %1464 = icmp eq i64 %1463, 0
  br i1 %1464, label %1458, label %1500, !llvm.loop !302

1465:                                             ; preds = %1445
  %1466 = add i32 %1449, 63
  %1467 = and i32 %1466, -64
  %1468 = add i32 %1447, 1
  br label %1469

1469:                                             ; preds = %1496, %1465
  %1470 = phi ptr [ %1446, %1465 ], [ %1494, %1496 ]
  %1471 = phi i64 [ %1448, %1465 ], [ %1491, %1496 ]
  %1472 = phi i32 [ %1467, %1465 ], [ %1499, %1496 ]
  %1473 = phi i32 [ %1468, %1465 ], [ 0, %1496 ]
  %1474 = icmp eq i32 %1473, 2
  br i1 %1474, label %1490, label %1475

1475:                                             ; preds = %1469
  %1476 = add i32 %1472, 128
  %1477 = shl i32 %1473, 6
  %1478 = sub i32 %1476, %1477
  br label %1479

1479:                                             ; preds = %1475, %1486
  %1480 = phi i32 [ %1488, %1486 ], [ %1473, %1475 ]
  %1481 = phi i32 [ %1487, %1486 ], [ %1472, %1475 ]
  %1482 = zext i32 %1480 to i64
  %1483 = getelementptr inbounds %struct.bitmap_element_def, ptr %1470, i64 0, i32 3, i64 %1482
  %1484 = load i64, ptr %1483, align 8, !tbaa !301
  %1485 = icmp eq i64 %1484, 0
  br i1 %1485, label %1486, label %1451

1486:                                             ; preds = %1479
  %1487 = add i32 %1481, 64
  %1488 = add i32 %1480, 1
  %1489 = icmp eq i32 %1488, 2
  br i1 %1489, label %1490, label %1479, !llvm.loop !303

1490:                                             ; preds = %1486, %1469
  %1491 = phi i64 [ %1471, %1469 ], [ %1484, %1486 ]
  %1492 = phi i32 [ %1472, %1469 ], [ %1478, %1486 ]
  %1493 = phi i32 [ %1473, %1469 ], [ 2, %1486 ]
  %1494 = load ptr, ptr %1470, align 8, !tbaa !304
  %1495 = icmp eq ptr %1494, null
  br i1 %1495, label %1500, label %1496

1496:                                             ; preds = %1490
  %1497 = getelementptr inbounds %struct.bitmap_element_def, ptr %1494, i64 0, i32 2
  %1498 = load i32, ptr %1497, align 8, !tbaa !299
  %1499 = shl i32 %1498, 7
  br label %1469, !llvm.loop !305

1500:                                             ; preds = %1490, %1458, %1451
  %1501 = phi ptr [ %1452, %1451 ], [ %1452, %1458 ], [ %1494, %1490 ]
  %1502 = phi i32 [ %1453, %1451 ], [ %1453, %1458 ], [ %1493, %1490 ]
  %1503 = phi i64 [ %1454, %1451 ], [ %1461, %1458 ], [ %1491, %1490 ]
  %1504 = phi i32 [ %1455, %1451 ], [ %1462, %1458 ], [ %1492, %1490 ]
  %1505 = phi i1 [ false, %1451 ], [ false, %1458 ], [ true, %1490 ]
  %1506 = load ptr, ptr @dump_file, align 8, !tbaa !243
  br i1 %1505, label %1511, label %1507

1507:                                             ; preds = %1500
  %1508 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1506, ptr noundef nonnull @.str.37, i32 noundef %1504)
  %1509 = lshr i64 %1503, 1
  %1510 = add i32 %1504, 1
  br label %1445, !llvm.loop !589

1511:                                             ; preds = %1500
  %1512 = call i32 @fputc(i32 10, ptr %1506)
  br label %1513

1513:                                             ; preds = %1511, %1406
  %1514 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %1515 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %1514)
  br label %1516

1516:                                             ; preds = %1343, %1513, %759
  call void @delete_update_ssa()
  %1517 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %1518 = icmp eq i8 %1517, 0
  br i1 %1518, label %1520, label %1519, !prof !472

1519:                                             ; preds = %1516
  call void @timevar_pop_1(i32 noundef 60) #19
  br label %1520

1520:                                             ; preds = %1516, %1519, %20
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @def_blocks_hash(ptr nocapture noundef readonly %0) #9 !prof !590 !PGOFuncName !591 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !243
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = tail call i32 %2(ptr noundef %3) #19, !prof !592
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @def_blocks_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !593 !PGOFuncName !594 {
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = load ptr, ptr %1, align 8, !tbaa !333
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @def_blocks_free(ptr nocapture noundef %0) #9 !prof !595 !PGOFuncName !596 {
  %2 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  tail call void @bitmap_obstack_free(ptr noundef %3) #19
  store ptr null, ptr %2, align 8, !tbaa !335
  %4 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  tail call void @bitmap_obstack_free(ptr noundef %5) #19
  store ptr null, ptr %4, align 8, !tbaa !337
  %6 = getelementptr inbounds %struct.def_blocks_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !336
  tail call void @bitmap_obstack_free(ptr noundef %7) #19
  store ptr null, ptr %6, align 8, !tbaa !336
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @prepare_block_for_update(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !597 !PGOFuncName !598 {
  %3 = alloca %struct.def_blocks_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.def_blocks_d, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !499

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !313
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %15) #19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %68, !prof !500

18:                                               ; preds = %12
  %19 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %20 = load i32, ptr %14, align 8, !tbaa !313
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %20) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #19
  %22 = load ptr, ptr %7, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24, !prof !502

24:                                               ; preds = %18, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %18 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !503
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -2561
  store i32 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !505
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !prof !506, !llvm.loop !507

32:                                               ; preds = %24, %18
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !508, !noalias !599
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43, !prof !512

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !254, !noalias !599
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !513

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !514, !noalias !599
  br label %43

43:                                               ; preds = %41, %37, %32
  %44 = phi ptr [ %42, %41 ], [ null, %37 ], [ null, %32 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !513

46:                                               ; preds = %43
  %47 = load ptr, ptr %44, align 8, !tbaa !516, !noalias !599
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi ptr [ %47, %46 ], [ null, %43 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51, !prof !518

51:                                               ; preds = %48, %62
  %52 = phi ptr [ %66, %62 ], [ %49, %48 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !503
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  %58 = and i32 %54, 8192
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %59, %57
  br i1 %60, label %62, label %61, !prof !519

61:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, ptr %53, align 8
  %64 = and i32 %63, -2561
  store i32 %64, ptr %53, align 8
  %65 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %52, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !505
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %51, !prof !520, !llvm.loop !521

68:                                               ; preds = %62, %12, %48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #19
  %69 = load ptr, ptr %8, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %131, label %71, !prof !602

71:                                               ; preds = %68, %127
  %72 = phi ptr [ %129, %127 ], [ %69, %68 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !503
  %74 = getelementptr inbounds %struct.gimple_statement_phi, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !254
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !258
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %84, label %81, !prof !603

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %75, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !254
  br label %84

84:                                               ; preds = %71, %81
  %85 = phi ptr [ %83, %81 ], [ %75, %71 ]
  %86 = load ptr, ptr @cfun, align 8, !tbaa !243
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !268
  %89 = getelementptr inbounds %struct.gimple_df, ptr %88, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !323
  %91 = getelementptr inbounds %struct.tree_decl_minimal, ptr %85, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !254
  %93 = call i32 @bitmap_bit_p(ptr noundef %90, i32 noundef %92) #19
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %127, label %96, !prof !604

96:                                               ; preds = %84
  %97 = icmp eq ptr %0, null
  call fastcc void @mark_def_interesting(ptr noundef %85, ptr noundef %73, ptr noundef %0, i8 noundef zeroext %1)
  br label %98

98:                                               ; preds = %125, %96
  %99 = phi i32 [ 0, %96 ], [ %126, %125 ]
  br i1 %97, label %100, label %101, !prof !605

100:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %101

101:                                              ; preds = %100, %98
  %102 = load ptr, ptr %0, align 8, !tbaa !243
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104, !prof !605

104:                                              ; preds = %101
  %105 = load i32, ptr %102, align 8, !tbaa !309
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %105, %104 ], [ 0, %101 ]
  %108 = icmp eq i32 %107, %99
  br i1 %108, label %113, label %109, !prof !606

109:                                              ; preds = %106
  %110 = zext i32 %99 to i64
  %111 = getelementptr inbounds %struct.VEC_edge_base, ptr %102, i64 0, i32 2, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !243
  br label %113

113:                                              ; preds = %106, %109
  %114 = phi ptr [ %112, %109 ], [ null, %106 ]
  br i1 %108, label %127, label %115, !prof !606

115:                                              ; preds = %113
  %116 = load ptr, ptr %114, align 8, !tbaa !311
  call fastcc void @mark_use_interesting(ptr noundef %85, ptr noundef %73, ptr noundef %116, i8 noundef zeroext %1)
  %117 = load ptr, ptr %0, align 8, !tbaa !243
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119, !prof !607

119:                                              ; preds = %115
  %120 = load i32, ptr %117, align 8, !tbaa !309
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %120, %119 ], [ 0, %115 ]
  %123 = icmp ult i32 %99, %122
  br i1 %123, label %125, label %124, !prof !608

124:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %125

125:                                              ; preds = %121, %124
  %126 = add i32 %99, 1
  br label %98, !llvm.loop !609

127:                                              ; preds = %113, %84
  %128 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %72, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !505
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %71, !prof !610, !llvm.loop !611

131:                                              ; preds = %127, %68
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %133 = load i32, ptr %132, align 8, !tbaa !508, !noalias !612
  %134 = and i32 %133, 512
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142, !prof !615

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %138 = load ptr, ptr %137, align 8, !tbaa !254, !noalias !612
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140, !prof !616

140:                                              ; preds = %136
  %141 = load ptr, ptr %138, align 8, !tbaa !514, !noalias !612
  br label %142

142:                                              ; preds = %140, %136, %131
  %143 = phi ptr [ %141, %140 ], [ null, %136 ], [ null, %131 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145, !prof !616

145:                                              ; preds = %142
  %146 = load ptr, ptr %143, align 8, !tbaa !516, !noalias !612
  br label %147

147:                                              ; preds = %142, %145
  %148 = phi ptr [ %146, %145 ], [ null, %142 ]
  %149 = icmp eq ptr %148, null
  br i1 %149, label %700, label %150, !prof !617

150:                                              ; preds = %147, %696
  %151 = phi ptr [ %698, %696 ], [ %148, %147 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !503
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 255
  %155 = add nsw i32 %154, -10
  %156 = icmp ult i32 %155, -9
  br i1 %156, label %160, label %157, !prof !618

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %152, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !254
  br label %160

160:                                              ; preds = %157, %150
  %161 = phi ptr [ %159, %157 ], [ null, %150 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163, !prof !619

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.use_optype_d, ptr %161, i64 0, i32 1
  %165 = load ptr, ptr %161, align 8, !tbaa !620
  br label %166

166:                                              ; preds = %160, %163
  %167 = phi ptr [ %165, %163 ], [ %161, %160 ]
  %168 = phi i8 [ 0, %163 ], [ 1, %160 ]
  %169 = phi ptr [ %164, %163 ], [ null, %160 ]
  br i1 %162, label %640, label %170, !prof !622

170:                                              ; preds = %166, %635
  %171 = phi ptr [ %638, %635 ], [ %169, %166 ]
  %172 = phi i8 [ %637, %635 ], [ %168, %166 ]
  %173 = phi ptr [ %636, %635 ], [ %167, %166 ]
  %174 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %171, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !623
  %176 = load ptr, ptr %175, align 8, !tbaa !243
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !258
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %185, label %182, !prof !624

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.tree_ssa_name, ptr %176, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !254
  br label %185

185:                                              ; preds = %170, %182
  %186 = phi ptr [ %184, %182 ], [ %176, %170 ]
  %187 = load ptr, ptr @cfun, align 8, !tbaa !243
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !268
  %190 = getelementptr inbounds %struct.gimple_df, ptr %189, i64 0, i32 9
  %191 = load ptr, ptr %190, align 8, !tbaa !323
  %192 = getelementptr inbounds %struct.tree_decl_minimal, ptr %186, i64 0, i32 2
  %193 = load i32, ptr %192, align 4, !tbaa !254
  %194 = call i32 @bitmap_bit_p(ptr noundef %191, i32 noundef %193) #19
  %195 = and i32 %194, 255
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %630, label %197, !prof !625

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.gimple_statement_base, ptr %152, i64 0, i32 4
  %199 = load ptr, ptr %198, align 8, !tbaa !254
  %200 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203, !prof !499

202:                                              ; preds = %197
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %203

203:                                              ; preds = %202, %197
  %204 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %199, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !313
  %207 = call i32 @bitmap_bit_p(ptr noundef %204, i32 noundef %206) #19
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %259, !prof !500

209:                                              ; preds = %203
  %210 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %211 = load i32, ptr %205, align 8, !tbaa !313
  %212 = call zeroext i8 @bitmap_set_bit(ptr noundef %210, i32 noundef %211) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %199) #19
  %213 = load ptr, ptr %5, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %214 = icmp eq ptr %213, null
  br i1 %214, label %223, label %215, !prof !502

215:                                              ; preds = %209, %215
  %216 = phi ptr [ %221, %215 ], [ %213, %209 ]
  %217 = load ptr, ptr %216, align 8, !tbaa !503
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, -2561
  store i32 %219, ptr %217, align 8
  %220 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %216, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !505
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %215, !prof !506, !llvm.loop !507

223:                                              ; preds = %215, %209
  %224 = getelementptr inbounds %struct.basic_block_def, ptr %199, i64 0, i32 13
  %225 = load i32, ptr %224, align 8, !tbaa !508, !noalias !626
  %226 = and i32 %225, 512
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234, !prof !512

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.basic_block_def, ptr %199, i64 0, i32 7
  %230 = load ptr, ptr %229, align 8, !tbaa !254, !noalias !626
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232, !prof !513

232:                                              ; preds = %228
  %233 = load ptr, ptr %230, align 8, !tbaa !514, !noalias !626
  br label %234

234:                                              ; preds = %232, %228, %223
  %235 = phi ptr [ %233, %232 ], [ null, %228 ], [ null, %223 ]
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237, !prof !513

237:                                              ; preds = %234
  %238 = load ptr, ptr %235, align 8, !tbaa !516, !noalias !626
  br label %239

239:                                              ; preds = %237, %234
  %240 = phi ptr [ %238, %237 ], [ null, %234 ]
  %241 = icmp eq ptr %240, null
  br i1 %241, label %259, label %242, !prof !518

242:                                              ; preds = %239, %253
  %243 = phi ptr [ %257, %253 ], [ %240, %239 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !503
  %245 = load i32, ptr %244, align 8
  %246 = and i32 %245, 255
  %247 = add nsw i32 %246, -10
  %248 = icmp ult i32 %247, -9
  %249 = and i32 %245, 8192
  %250 = icmp eq i32 %249, 0
  %251 = or i1 %250, %248
  br i1 %251, label %253, label %252, !prof !519

252:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %253

253:                                              ; preds = %252, %242
  %254 = load i32, ptr %244, align 8
  %255 = and i32 %254, -2561
  store i32 %255, ptr %244, align 8
  %256 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %243, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !505
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %242, !prof !520, !llvm.loop !521

259:                                              ; preds = %253, %239, %203
  %260 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %263, !prof !499

262:                                              ; preds = %259
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %263

263:                                              ; preds = %262, %259
  %264 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %265 = load i32, ptr %14, align 8, !tbaa !313
  %266 = call i32 @bitmap_bit_p(ptr noundef %264, i32 noundef %265) #19
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %317, !prof !500

268:                                              ; preds = %263
  %269 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %270 = load i32, ptr %14, align 8, !tbaa !313
  %271 = call zeroext i8 @bitmap_set_bit(ptr noundef %269, i32 noundef %270) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #19
  %272 = load ptr, ptr %4, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %273 = icmp eq ptr %272, null
  br i1 %273, label %282, label %274, !prof !502

274:                                              ; preds = %268, %274
  %275 = phi ptr [ %280, %274 ], [ %272, %268 ]
  %276 = load ptr, ptr %275, align 8, !tbaa !503
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, -2561
  store i32 %278, ptr %276, align 8
  %279 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %275, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !505
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %274, !prof !506, !llvm.loop !507

282:                                              ; preds = %274, %268
  %283 = load i32, ptr %132, align 8, !tbaa !508, !noalias !629
  %284 = and i32 %283, 512
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %292, !prof !512

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %288 = load ptr, ptr %287, align 8, !tbaa !254, !noalias !629
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290, !prof !513

290:                                              ; preds = %286
  %291 = load ptr, ptr %288, align 8, !tbaa !514, !noalias !629
  br label %292

292:                                              ; preds = %290, %286, %282
  %293 = phi ptr [ %291, %290 ], [ null, %286 ], [ null, %282 ]
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !513

295:                                              ; preds = %292
  %296 = load ptr, ptr %293, align 8, !tbaa !516, !noalias !629
  br label %297

297:                                              ; preds = %295, %292
  %298 = phi ptr [ %296, %295 ], [ null, %292 ]
  %299 = icmp eq ptr %298, null
  br i1 %299, label %317, label %300, !prof !518

300:                                              ; preds = %297, %311
  %301 = phi ptr [ %315, %311 ], [ %298, %297 ]
  %302 = load ptr, ptr %301, align 8, !tbaa !503
  %303 = load i32, ptr %302, align 8
  %304 = and i32 %303, 255
  %305 = add nsw i32 %304, -10
  %306 = icmp ult i32 %305, -9
  %307 = and i32 %303, 8192
  %308 = icmp eq i32 %307, 0
  %309 = or i1 %308, %306
  br i1 %309, label %311, label %310, !prof !519

310:                                              ; preds = %300
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %311

311:                                              ; preds = %310, %300
  %312 = load i32, ptr %302, align 8
  %313 = and i32 %312, -2561
  store i32 %313, ptr %302, align 8
  %314 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %301, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !505
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %300, !prof !520, !llvm.loop !521

317:                                              ; preds = %311, %297, %263
  %318 = load i32, ptr %152, align 8
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %319, 16
  br i1 %320, label %321, label %397, !prof !632

321:                                              ; preds = %317
  %322 = load i32, ptr %205, align 8, !tbaa !313
  %323 = and i32 %318, 512
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %395, !prof !633

325:                                              ; preds = %321
  %326 = or disjoint i32 %318, 512
  store i32 %326, ptr %152, align 8
  %327 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %328 = icmp eq ptr %327, null
  br i1 %328, label %395, label %329, !prof !634

329:                                              ; preds = %325
  %330 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %327, i32 noundef %322) #19
  %331 = load ptr, ptr @cfun, align 8, !tbaa !243
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !294
  %334 = getelementptr inbounds %struct.control_flow_graph, ptr %333, i64 0, i32 5
  %335 = load i32, ptr %334, align 8, !tbaa !295
  %336 = add nsw i32 %335, 1
  %337 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !243
  %338 = icmp eq ptr %337, null
  br i1 %338, label %345, label %339, !prof !635

339:                                              ; preds = %329
  %340 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %337, i64 0, i32 1
  %341 = load i32, ptr %340, align 4, !tbaa !636
  %342 = load i32, ptr %337, align 8, !tbaa !638
  %343 = sub i32 %341, %342
  %344 = icmp uge i32 %343, %336
  br label %347

345:                                              ; preds = %329
  %346 = icmp eq i32 %336, 0
  br label %347

347:                                              ; preds = %345, %339
  %348 = phi i1 [ %344, %339 ], [ %346, %345 ]
  br i1 %348, label %351, label %349, !prof !639

349:                                              ; preds = %347
  %350 = call ptr @vec_heap_p_reserve(ptr noundef %337, i32 noundef %336) #19
  store ptr %350, ptr @phis_to_rewrite, align 8, !tbaa !243
  br label %351

351:                                              ; preds = %349, %347
  %352 = load ptr, ptr @phis_to_rewrite, align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354, !prof !635

354:                                              ; preds = %351
  %355 = load i32, ptr %352, align 8, !tbaa !638
  br label %356

356:                                              ; preds = %354, %351
  %357 = phi i32 [ %355, %354 ], [ 0, %351 ]
  %358 = icmp ugt i32 %357, %322
  br i1 %358, label %370, label %359, !prof !640

359:                                              ; preds = %356
  %360 = load i32, ptr %352, align 8, !tbaa !638
  br label %361

361:                                              ; preds = %361, %359
  %362 = phi i32 [ %360, %359 ], [ %364, %361 ]
  %363 = phi i32 [ %357, %359 ], [ %367, %361 ]
  %364 = add i32 %362, 1
  %365 = zext i32 %362 to i64
  %366 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %352, i64 0, i32 2, i64 %365
  store ptr null, ptr %366, align 8, !tbaa !243
  %367 = add i32 %363, 1
  %368 = icmp ugt i32 %367, %322
  br i1 %368, label %369, label %361, !prof !641, !llvm.loop !642

369:                                              ; preds = %361
  store i32 %364, ptr %352, align 8, !tbaa !638
  br label %370

370:                                              ; preds = %369, %356
  %371 = zext i32 %322 to i64
  %372 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %352, i64 0, i32 2, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !243
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %377, !prof !643

375:                                              ; preds = %370
  %376 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  br label %377

377:                                              ; preds = %375, %370
  %378 = phi ptr [ %376, %375 ], [ %373, %370 ]
  %379 = icmp eq ptr %378, null
  br i1 %379, label %385, label %380, !prof !635

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.VEC_gimple_base, ptr %378, i64 0, i32 1
  %382 = load i32, ptr %381, align 4, !tbaa !644
  %383 = load i32, ptr %378, align 8, !tbaa !646
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %387, !prof !635

385:                                              ; preds = %380, %377
  %386 = call ptr @vec_heap_p_reserve(ptr noundef %378, i32 noundef 1) #19
  br label %387

387:                                              ; preds = %385, %380
  %388 = phi ptr [ %386, %385 ], [ %378, %380 ]
  %389 = load i32, ptr %388, align 8, !tbaa !646
  %390 = add i32 %389, 1
  store i32 %390, ptr %388, align 8, !tbaa !646
  %391 = zext i32 %389 to i64
  %392 = getelementptr inbounds %struct.VEC_gimple_base, ptr %388, i64 0, i32 2, i64 %391
  store ptr %152, ptr %392, align 8, !tbaa !243
  %393 = load ptr, ptr @phis_to_rewrite, align 8
  %394 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %393, i64 0, i32 2, i64 %371
  store ptr %388, ptr %394, align 8, !tbaa !243
  br label %395

395:                                              ; preds = %387, %325, %321
  %396 = icmp eq i8 %1, 0
  br i1 %396, label %630, label %402, !prof !647

397:                                              ; preds = %317
  %398 = icmp eq i8 %1, 0
  %399 = or i32 %318, 512
  store i32 %399, ptr %152, align 8
  %400 = icmp eq i32 %319, 2
  %401 = or i1 %398, %400
  br i1 %401, label %630, label %402, !prof !648

402:                                              ; preds = %397, %395
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  store ptr %186, ptr %6, align 8, !tbaa !333
  %403 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %404 = call ptr @htab_find_slot(ptr noundef %403, ptr noundef nonnull %6, i32 noundef 1) #19
  %405 = load ptr, ptr %404, align 8, !tbaa !243
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %415, !prof !649

407:                                              ; preds = %402
  %408 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %186, ptr %408, align 8, !tbaa !333
  %409 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %410 = getelementptr inbounds %struct.def_blocks_d, ptr %408, i64 0, i32 1
  store ptr %409, ptr %410, align 8, !tbaa !335
  %411 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %412 = getelementptr inbounds %struct.def_blocks_d, ptr %408, i64 0, i32 2
  store ptr %411, ptr %412, align 8, !tbaa !337
  %413 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %414 = getelementptr inbounds %struct.def_blocks_d, ptr %408, i64 0, i32 3
  store ptr %413, ptr %414, align 8, !tbaa !336
  store ptr %408, ptr %404, align 8, !tbaa !243
  br label %415

415:                                              ; preds = %407, %402
  %416 = phi ptr [ %408, %407 ], [ %405, %402 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  %417 = getelementptr inbounds %struct.def_blocks_d, ptr %416, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !335
  %419 = load i32, ptr %14, align 8, !tbaa !313
  %420 = call i32 @bitmap_bit_p(ptr noundef %418, i32 noundef %419) #19
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %630, !prof !650

422:                                              ; preds = %415
  %423 = load i64, ptr %186, align 8
  %424 = and i64 %423, 65535
  %425 = icmp eq i64 %424, 141
  br i1 %425, label %426, label %489, !prof !363

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.tree_ssa_name, ptr %186, i64 0, i32 3
  %428 = load i32, ptr %427, align 8, !tbaa !254
  %429 = load ptr, ptr @info_for_ssa_name, align 8
  %430 = icmp eq ptr %429, null
  br i1 %430, label %433, label %431, !prof !364

431:                                              ; preds = %426
  %432 = load i32, ptr %429, align 8, !tbaa !265
  br label %433

433:                                              ; preds = %431, %426
  %434 = phi i32 [ %432, %431 ], [ 0, %426 ]
  %435 = icmp ult i32 %428, %434
  br i1 %435, label %473, label %436, !prof !365

436:                                              ; preds = %433
  %437 = load ptr, ptr @cfun, align 8, !tbaa !243
  %438 = getelementptr inbounds %struct.function, ptr %437, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !268
  %440 = getelementptr inbounds %struct.gimple_df, ptr %439, i64 0, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !270
  %442 = icmp eq ptr %441, null
  br i1 %442, label %445, label %443, !prof !366

443:                                              ; preds = %436
  %444 = load i32, ptr %441, align 8, !tbaa !274
  br label %445

445:                                              ; preds = %443, %436
  %446 = phi i32 [ %444, %443 ], [ 0, %436 ]
  br i1 %430, label %453, label %447, !prof !366

447:                                              ; preds = %445
  %448 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %429, i64 0, i32 1
  %449 = load i32, ptr %448, align 4, !tbaa !276
  %450 = load i32, ptr %429, align 8, !tbaa !265
  %451 = sub i32 %449, %450
  %452 = icmp uge i32 %451, %446
  br label %455

453:                                              ; preds = %445
  %454 = icmp eq i32 %446, 0
  br label %455

455:                                              ; preds = %453, %447
  %456 = phi i1 [ %452, %447 ], [ %454, %453 ]
  br i1 %456, label %459, label %457, !prof !367

457:                                              ; preds = %455
  %458 = call ptr @vec_heap_p_reserve(ptr noundef %429, i32 noundef %446) #19
  store ptr %458, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %459

459:                                              ; preds = %457, %455
  %460 = icmp ult i32 %434, %446
  br i1 %460, label %461, label %473, !prof !368

461:                                              ; preds = %459, %461
  %462 = phi i32 [ %463, %461 ], [ %434, %459 ]
  %463 = add nuw i32 %462, 1
  %464 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %465 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %466 = getelementptr inbounds %struct.ssa_name_info, ptr %464, i64 0, i32 2
  store i32 %465, ptr %466, align 4, !tbaa !277
  %467 = load ptr, ptr @info_for_ssa_name, align 8
  %468 = load i32, ptr %467, align 8, !tbaa !265
  %469 = add i32 %468, 1
  store i32 %469, ptr %467, align 8, !tbaa !265
  %470 = zext i32 %468 to i64
  %471 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %467, i64 0, i32 2, i64 %470
  store ptr %464, ptr %471, align 8, !tbaa !243
  %472 = icmp eq i32 %463, %446
  br i1 %472, label %473, label %461, !prof !369, !llvm.loop !279

473:                                              ; preds = %461, %459, %433
  %474 = load ptr, ptr @info_for_ssa_name, align 8
  %475 = zext i32 %428 to i64
  %476 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %474, i64 0, i32 2, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !243
  %478 = getelementptr inbounds %struct.ssa_name_info, ptr %477, i64 0, i32 2
  %479 = load i32, ptr %478, align 4, !tbaa !277
  %480 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %481 = icmp ult i32 %479, %480
  br i1 %481, label %482, label %486, !prof !370

482:                                              ; preds = %473
  %483 = getelementptr inbounds %struct.ssa_name_info, ptr %477, i64 0, i32 1
  %484 = load i8, ptr %483, align 8
  %485 = and i8 %484, -4
  store i8 %485, ptr %483, align 8
  store ptr null, ptr %477, align 8, !tbaa !280
  store i32 %480, ptr %478, align 4, !tbaa !277
  br label %486

486:                                              ; preds = %482, %473
  %487 = getelementptr inbounds %struct.ssa_name_info, ptr %477, i64 0, i32 1
  %488 = load i8, ptr %487, align 8
  br label %505

489:                                              ; preds = %422
  %490 = trunc i64 %423 to i16
  switch i16 %490, label %495 [
    i16 32, label %491
    i16 34, label %493
  ], !prof !371

491:                                              ; preds = %489
  %492 = getelementptr inbounds %struct.tree_var_decl, ptr %186, i64 0, i32 1
  br label %499

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.tree_parm_decl, ptr %186, i64 0, i32 2
  br label %499

495:                                              ; preds = %489
  %496 = icmp eq i64 %424, 36
  %497 = getelementptr inbounds %struct.tree_result_decl, ptr %186, i64 0, i32 1
  %498 = select i1 %496, ptr %497, ptr null
  br label %499

499:                                              ; preds = %495, %493, %491
  %500 = phi ptr [ %492, %491 ], [ %494, %493 ], [ %498, %495 ]
  %501 = icmp ne ptr %500, null
  call void @llvm.assume(i1 %501)
  %502 = load ptr, ptr %500, align 8, !tbaa !243
  %503 = load i8, ptr %502, align 8
  %504 = lshr i8 %503, 2
  br label %505

505:                                              ; preds = %499, %486
  %506 = phi i8 [ %488, %486 ], [ %504, %499 ]
  %507 = and i8 %506, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  store ptr %186, ptr %3, align 8, !tbaa !333
  %508 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %509 = call ptr @htab_find_slot(ptr noundef %508, ptr noundef nonnull %3, i32 noundef 1) #19
  %510 = load ptr, ptr %509, align 8, !tbaa !243
  %511 = icmp eq ptr %510, null
  br i1 %511, label %512, label %520, !prof !651

512:                                              ; preds = %505
  %513 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %186, ptr %513, align 8, !tbaa !333
  %514 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %515 = getelementptr inbounds %struct.def_blocks_d, ptr %513, i64 0, i32 1
  store ptr %514, ptr %515, align 8, !tbaa !335
  %516 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %517 = getelementptr inbounds %struct.def_blocks_d, ptr %513, i64 0, i32 2
  store ptr %516, ptr %517, align 8, !tbaa !337
  %518 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %519 = getelementptr inbounds %struct.def_blocks_d, ptr %513, i64 0, i32 3
  store ptr %518, ptr %519, align 8, !tbaa !336
  store ptr %513, ptr %509, align 8, !tbaa !243
  br label %520

520:                                              ; preds = %512, %505
  %521 = phi ptr [ %513, %512 ], [ %510, %505 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %522 = getelementptr inbounds %struct.def_blocks_d, ptr %521, i64 0, i32 3
  %523 = load ptr, ptr %522, align 8, !tbaa !336
  %524 = load i32, ptr %14, align 8, !tbaa !313
  %525 = call zeroext i8 @bitmap_set_bit(ptr noundef %523, i32 noundef %524) #19
  %526 = icmp eq i8 %507, 1
  br i1 %526, label %527, label %544, !prof !652

527:                                              ; preds = %520
  %528 = getelementptr inbounds %struct.def_blocks_d, ptr %521, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !335
  %530 = call i32 @bitmap_first_set_bit(ptr noundef %529) #19
  %531 = icmp eq i32 %530, -1
  br i1 %531, label %543, label %532, !prof !653

532:                                              ; preds = %527
  %533 = load ptr, ptr @cfun, align 8, !tbaa !243
  %534 = getelementptr inbounds %struct.function, ptr %533, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !294
  %536 = getelementptr inbounds %struct.control_flow_graph, ptr %535, i64 0, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !306
  %538 = zext i32 %530 to i64
  %539 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %537, i64 0, i32 2, i64 %538
  %540 = load ptr, ptr %539, align 8, !tbaa !243
  %541 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %540) #19
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %543, label %630, !prof !653

543:                                              ; preds = %532, %527
  call fastcc void @set_phi_state(ptr noundef nonnull %186, i32 noundef 2)
  br label %630

544:                                              ; preds = %520
  %545 = load i64, ptr %186, align 8
  %546 = and i64 %545, 65535
  %547 = icmp eq i64 %546, 141
  br i1 %547, label %548, label %613, !prof !654

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.tree_ssa_name, ptr %186, i64 0, i32 3
  %550 = load i32, ptr %549, align 8, !tbaa !254
  %551 = load ptr, ptr @info_for_ssa_name, align 8
  %552 = icmp eq ptr %551, null
  br i1 %552, label %555, label %553, !prof !655

553:                                              ; preds = %548
  %554 = load i32, ptr %551, align 8, !tbaa !265
  br label %555

555:                                              ; preds = %553, %548
  %556 = phi i32 [ %554, %553 ], [ 0, %548 ]
  %557 = icmp ult i32 %550, %556
  br i1 %557, label %595, label %558, !prof !656

558:                                              ; preds = %555
  %559 = load ptr, ptr @cfun, align 8, !tbaa !243
  %560 = getelementptr inbounds %struct.function, ptr %559, i64 0, i32 3
  %561 = load ptr, ptr %560, align 8, !tbaa !268
  %562 = getelementptr inbounds %struct.gimple_df, ptr %561, i64 0, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !270
  %564 = icmp eq ptr %563, null
  br i1 %564, label %567, label %565

565:                                              ; preds = %558
  %566 = load i32, ptr %563, align 8, !tbaa !274
  br label %567

567:                                              ; preds = %565, %558
  %568 = phi i32 [ %566, %565 ], [ 0, %558 ]
  br i1 %552, label %575, label %569

569:                                              ; preds = %567
  %570 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %551, i64 0, i32 1
  %571 = load i32, ptr %570, align 4, !tbaa !276
  %572 = load i32, ptr %551, align 8, !tbaa !265
  %573 = sub i32 %571, %572
  %574 = icmp uge i32 %573, %568
  br label %577

575:                                              ; preds = %567
  %576 = icmp eq i32 %568, 0
  br label %577

577:                                              ; preds = %575, %569
  %578 = phi i1 [ %574, %569 ], [ %576, %575 ]
  br i1 %578, label %581, label %579

579:                                              ; preds = %577
  %580 = call ptr @vec_heap_p_reserve(ptr noundef %551, i32 noundef %568) #19
  store ptr %580, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %581

581:                                              ; preds = %579, %577
  %582 = icmp ult i32 %556, %568
  br i1 %582, label %583, label %595

583:                                              ; preds = %581, %583
  %584 = phi i32 [ %585, %583 ], [ %556, %581 ]
  %585 = add nuw i32 %584, 1
  %586 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %587 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %588 = getelementptr inbounds %struct.ssa_name_info, ptr %586, i64 0, i32 2
  store i32 %587, ptr %588, align 4, !tbaa !277
  %589 = load ptr, ptr @info_for_ssa_name, align 8
  %590 = load i32, ptr %589, align 8, !tbaa !265
  %591 = add i32 %590, 1
  store i32 %591, ptr %589, align 8, !tbaa !265
  %592 = zext i32 %590 to i64
  %593 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %589, i64 0, i32 2, i64 %592
  store ptr %586, ptr %593, align 8, !tbaa !243
  %594 = icmp eq i32 %585, %568
  br i1 %594, label %595, label %583, !llvm.loop !279

595:                                              ; preds = %583, %581, %555
  %596 = load ptr, ptr @info_for_ssa_name, align 8
  %597 = zext i32 %550 to i64
  %598 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %596, i64 0, i32 2, i64 %597
  %599 = load ptr, ptr %598, align 8, !tbaa !243
  %600 = getelementptr inbounds %struct.ssa_name_info, ptr %599, i64 0, i32 2
  %601 = load i32, ptr %600, align 4, !tbaa !277
  %602 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %603 = icmp ult i32 %601, %602
  br i1 %603, label %604, label %608, !prof !655

604:                                              ; preds = %595
  %605 = getelementptr inbounds %struct.ssa_name_info, ptr %599, i64 0, i32 1
  %606 = load i8, ptr %605, align 8
  %607 = and i8 %606, -4
  store i8 %607, ptr %605, align 8
  store ptr null, ptr %599, align 8, !tbaa !280
  store i32 %602, ptr %600, align 4, !tbaa !277
  br label %608

608:                                              ; preds = %604, %595
  %609 = getelementptr inbounds %struct.ssa_name_info, ptr %599, i64 0, i32 1
  %610 = load i8, ptr %609, align 8
  %611 = and i8 %610, -4
  %612 = or disjoint i8 %611, 2
  store i8 %612, ptr %609, align 8
  br label %630

613:                                              ; preds = %544
  %614 = trunc i64 %545 to i16
  switch i16 %614, label %619 [
    i16 32, label %615
    i16 34, label %617
  ], !prof !657

615:                                              ; preds = %613
  %616 = getelementptr inbounds %struct.tree_var_decl, ptr %186, i64 0, i32 1
  br label %623

617:                                              ; preds = %613
  %618 = getelementptr inbounds %struct.tree_parm_decl, ptr %186, i64 0, i32 2
  br label %623

619:                                              ; preds = %613
  %620 = icmp eq i64 %546, 36
  %621 = getelementptr inbounds %struct.tree_result_decl, ptr %186, i64 0, i32 1
  %622 = select i1 %620, ptr %621, ptr null
  br label %623

623:                                              ; preds = %619, %617, %615
  %624 = phi ptr [ %616, %615 ], [ %618, %617 ], [ %622, %619 ]
  %625 = icmp ne ptr %624, null
  call void @llvm.assume(i1 %625)
  %626 = load ptr, ptr %624, align 8, !tbaa !243
  %627 = load i8, ptr %626, align 8
  %628 = and i8 %627, -13
  %629 = or disjoint i8 %628, 8
  store i8 %629, ptr %626, align 8
  br label %630

630:                                              ; preds = %623, %608, %543, %532, %415, %397, %395, %185
  %631 = icmp eq ptr %173, null
  br i1 %631, label %635, label %632, !prof !658

632:                                              ; preds = %630
  %633 = getelementptr inbounds %struct.use_optype_d, ptr %173, i64 0, i32 1
  %634 = load ptr, ptr %173, align 8, !tbaa !620
  br label %635

635:                                              ; preds = %630, %632
  %636 = phi ptr [ %634, %632 ], [ %173, %630 ]
  %637 = phi i8 [ %172, %632 ], [ 1, %630 ]
  %638 = phi ptr [ %633, %632 ], [ null, %630 ]
  %639 = icmp eq i8 %637, 0
  br i1 %639, label %170, label %640, !prof !659, !llvm.loop !660

640:                                              ; preds = %635, %166
  %641 = load i32, ptr %152, align 8
  %642 = and i32 %641, 255
  %643 = add nsw i32 %642, -10
  %644 = icmp ult i32 %643, -9
  br i1 %644, label %648, label %645, !prof !618

645:                                              ; preds = %640
  %646 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %152, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !254
  br label %648

648:                                              ; preds = %645, %640
  %649 = phi ptr [ %647, %645 ], [ null, %640 ]
  %650 = icmp eq ptr %649, null
  br i1 %650, label %655, label %651, !prof !661

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.def_optype_d, ptr %649, i64 0, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !662
  %654 = load ptr, ptr %649, align 8, !tbaa !664
  br label %655

655:                                              ; preds = %648, %651
  %656 = phi ptr [ %654, %651 ], [ %649, %648 ]
  %657 = phi i8 [ 0, %651 ], [ 1, %648 ]
  %658 = phi ptr [ %653, %651 ], [ null, %648 ]
  br i1 %650, label %696, label %659, !prof !665

659:                                              ; preds = %655, %691
  %660 = phi ptr [ %694, %691 ], [ %658, %655 ]
  %661 = phi i8 [ %693, %691 ], [ %657, %655 ]
  %662 = phi ptr [ %692, %691 ], [ %656, %655 ]
  %663 = load ptr, ptr %660, align 8, !tbaa !243
  %664 = load i64, ptr %663, align 8
  %665 = and i64 %664, 65535
  %666 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !258
  %668 = icmp eq i32 %667, 3
  br i1 %668, label %672, label %669, !prof !666

669:                                              ; preds = %659
  %670 = getelementptr inbounds %struct.tree_ssa_name, ptr %663, i64 0, i32 1
  %671 = load ptr, ptr %670, align 8, !tbaa !254
  br label %672

672:                                              ; preds = %659, %669
  %673 = phi ptr [ %671, %669 ], [ %663, %659 ]
  %674 = load ptr, ptr @cfun, align 8, !tbaa !243
  %675 = getelementptr inbounds %struct.function, ptr %674, i64 0, i32 3
  %676 = load ptr, ptr %675, align 8, !tbaa !268
  %677 = getelementptr inbounds %struct.gimple_df, ptr %676, i64 0, i32 9
  %678 = load ptr, ptr %677, align 8, !tbaa !323
  %679 = getelementptr inbounds %struct.tree_decl_minimal, ptr %673, i64 0, i32 2
  %680 = load i32, ptr %679, align 4, !tbaa !254
  %681 = call i32 @bitmap_bit_p(ptr noundef %678, i32 noundef %680) #19
  %682 = and i32 %681, 255
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %685, label %684, !prof !667

684:                                              ; preds = %672
  call fastcc void @mark_def_interesting(ptr noundef %673, ptr noundef nonnull %152, ptr noundef %0, i8 noundef zeroext %1)
  br label %685

685:                                              ; preds = %684, %672
  %686 = icmp eq ptr %662, null
  br i1 %686, label %691, label %687, !prof !668

687:                                              ; preds = %685
  %688 = getelementptr inbounds %struct.def_optype_d, ptr %662, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !662
  %690 = load ptr, ptr %662, align 8, !tbaa !664
  br label %691

691:                                              ; preds = %685, %687
  %692 = phi ptr [ %690, %687 ], [ %662, %685 ]
  %693 = phi i8 [ %661, %687 ], [ 1, %685 ]
  %694 = phi ptr [ %689, %687 ], [ null, %685 ]
  %695 = icmp eq i8 %693, 0
  br i1 %695, label %659, label %696, !prof !669, !llvm.loop !670

696:                                              ; preds = %691, %655
  %697 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %151, i64 0, i32 2
  %698 = load ptr, ptr %697, align 8, !tbaa !505
  %699 = icmp eq ptr %698, null
  br i1 %699, label %700, label %150, !prof !671, !llvm.loop !672

700:                                              ; preds = %696, %147
  %701 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #19
  %702 = icmp eq ptr %701, null
  br i1 %702, label %707, label %703, !prof !616

703:                                              ; preds = %700, %703
  %704 = phi ptr [ %705, %703 ], [ %701, %700 ]
  call fastcc void @prepare_block_for_update(ptr noundef nonnull %704, i8 noundef zeroext %1)
  %705 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %704) #19
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %703, !prof !673, !llvm.loop !674

707:                                              ; preds = %703, %700
  ret void
}

declare ptr @nearest_common_dominator_for_set(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @compute_dominance_frontiers(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @insert_updated_phi_nodes_for(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !675 !PGOFuncName !676 {
  %5 = alloca %struct.def_blocks_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %0, ptr %5, align 8, !tbaa !333
  %6 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %7 = call ptr @htab_find(ptr noundef %6, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %249, label %9, !prof !677

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.def_blocks_d, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !335
  %12 = load ptr, ptr %11, align 8, !tbaa !297
  %13 = icmp eq ptr %12, null
  br i1 %13, label %249, label %14, !prof !677

14:                                               ; preds = %9
  %15 = call ptr @compute_idf(ptr noundef nonnull %11, ptr noundef %1) #19
  %16 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  br i1 %19, label %20, label %121, !prof !678

20:                                               ; preds = %14
  switch i32 %3, label %120 [
    i32 2048, label %21
    i32 8192, label %121
  ], !prof !679

21:                                               ; preds = %20
  %22 = load ptr, ptr %10, align 8, !tbaa !335
  %23 = call ptr @nearest_common_dominator_for_set(i32 noundef 1, ptr noundef %22) #19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !243
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !294
  %27 = load ptr, ptr %26, align 8, !tbaa !315
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %122, label %29, !prof !680

29:                                               ; preds = %21
  %30 = load ptr, ptr %15, align 8, !tbaa !297
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @bitmap_zero_bits, ptr %30, !prof !680
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !299
  %35 = shl i32 %34, 7
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %32, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !301
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = or disjoint i32 %35, %39
  br label %41

41:                                               ; preds = %117, %29
  %42 = phi ptr [ %32, %29 ], [ %97, %117 ]
  %43 = phi i32 [ %40, %29 ], [ %119, %117 ]
  %44 = phi i32 [ 0, %29 ], [ %99, %117 ]
  %45 = phi i64 [ %37, %29 ], [ %118, %117 ]
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %61, label %47, !prof !681

47:                                               ; preds = %75, %41
  %48 = phi ptr [ %42, %41 ], [ %66, %75 ]
  %49 = phi i32 [ %43, %41 ], [ %77, %75 ]
  %50 = phi i32 [ %44, %41 ], [ %76, %75 ]
  %51 = phi i64 [ %45, %41 ], [ %80, %75 ]
  %52 = and i64 %51, 1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %96, !prof !682

54:                                               ; preds = %47, %54
  %55 = phi i64 [ %57, %54 ], [ %51, %47 ]
  %56 = phi i32 [ %58, %54 ], [ %49, %47 ]
  %57 = lshr exact i64 %55, 1
  %58 = add i32 %56, 1
  %59 = and i64 %55, 2
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %54, label %96, !prof !683, !llvm.loop !302

61:                                               ; preds = %41
  %62 = add i32 %43, 63
  %63 = and i32 %62, -64
  %64 = add i32 %44, 1
  br label %65

65:                                               ; preds = %92, %61
  %66 = phi ptr [ %42, %61 ], [ %90, %92 ]
  %67 = phi i32 [ %63, %61 ], [ %95, %92 ]
  %68 = phi i64 [ %45, %61 ], [ %88, %92 ]
  %69 = phi i32 [ %64, %61 ], [ 0, %92 ]
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %86, label %71, !prof !684

71:                                               ; preds = %65
  %72 = add i32 %67, 128
  %73 = shl i32 %69, 6
  %74 = sub i32 %72, %73
  br label %75

75:                                               ; preds = %71, %82
  %76 = phi i32 [ %84, %82 ], [ %69, %71 ]
  %77 = phi i32 [ %83, %82 ], [ %67, %71 ]
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 3, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !301
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %47, !prof !685

82:                                               ; preds = %75
  %83 = add i32 %77, 64
  %84 = add i32 %76, 1
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %75, !prof !686, !llvm.loop !303

86:                                               ; preds = %82, %65
  %87 = phi i32 [ %67, %65 ], [ %74, %82 ]
  %88 = phi i64 [ %68, %65 ], [ %80, %82 ]
  %89 = phi i32 [ %69, %65 ], [ 2, %82 ]
  %90 = load ptr, ptr %66, align 8, !tbaa !304
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92, !prof !687

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %90, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !299
  %95 = shl i32 %94, 7
  br label %65, !llvm.loop !305

96:                                               ; preds = %86, %54, %47
  %97 = phi ptr [ %48, %47 ], [ %48, %54 ], [ %90, %86 ]
  %98 = phi i32 [ %49, %47 ], [ %58, %54 ], [ %87, %86 ]
  %99 = phi i32 [ %50, %47 ], [ %50, %54 ], [ %89, %86 ]
  %100 = phi i64 [ %51, %47 ], [ %57, %54 ], [ %88, %86 ]
  %101 = phi i1 [ false, %47 ], [ false, %54 ], [ true, %86 ]
  br i1 %101, label %122, label %102, !prof !688

102:                                              ; preds = %96
  %103 = load ptr, ptr @cfun, align 8, !tbaa !243
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !294
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !306
  %108 = zext i32 %98 to i64
  %109 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %107, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !243
  %111 = icmp eq ptr %110, %23
  br i1 %111, label %117, label %112, !prof !689

112:                                              ; preds = %102
  %113 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %110, ptr noundef %23) #19
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %117, label %115, !prof !690

115:                                              ; preds = %112
  %116 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %98) #19
  br label %117

117:                                              ; preds = %102, %112, %115
  %118 = lshr i64 %100, 1
  %119 = add i32 %98, 1
  br label %41, !llvm.loop !691

120:                                              ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3054, ptr noundef nonnull @.str.32) #19
  br label %121

121:                                              ; preds = %14, %120, %20
  call void @bitmap_copy(ptr noundef %16, ptr noundef %15) #19
  br label %122

122:                                              ; preds = %96, %121, %21
  %123 = load ptr, ptr %16, align 8, !tbaa !297
  %124 = icmp eq ptr %123, null
  br i1 %124, label %248, label %125, !prof !692

125:                                              ; preds = %122
  %126 = call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef nonnull %16) #19
  %127 = load ptr, ptr %16, align 8, !tbaa !297
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, ptr @bitmap_zero_bits, ptr %127, !prof !693
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !299
  %132 = shl i32 %131, 7
  %133 = getelementptr inbounds %struct.bitmap_element_def, ptr %129, i64 0, i32 3
  %134 = load i64, ptr %133, align 8, !tbaa !301
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = or disjoint i32 %132, %136
  br label %138

138:                                              ; preds = %244, %125
  %139 = phi ptr [ %129, %125 ], [ %194, %244 ]
  %140 = phi i32 [ %137, %125 ], [ %246, %244 ]
  %141 = phi i32 [ 0, %125 ], [ %196, %244 ]
  %142 = phi i64 [ %134, %125 ], [ %245, %244 ]
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %158, label %144, !prof !694

144:                                              ; preds = %172, %138
  %145 = phi ptr [ %139, %138 ], [ %163, %172 ]
  %146 = phi i32 [ %140, %138 ], [ %174, %172 ]
  %147 = phi i32 [ %141, %138 ], [ %173, %172 ]
  %148 = phi i64 [ %142, %138 ], [ %177, %172 ]
  %149 = and i64 %148, 1
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %193, !prof !695

151:                                              ; preds = %144, %151
  %152 = phi i64 [ %154, %151 ], [ %148, %144 ]
  %153 = phi i32 [ %155, %151 ], [ %146, %144 ]
  %154 = lshr exact i64 %152, 1
  %155 = add i32 %153, 1
  %156 = and i64 %152, 2
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %151, label %193, !prof !696, !llvm.loop !302

158:                                              ; preds = %138
  %159 = add i32 %140, 63
  %160 = and i32 %159, -64
  %161 = add i32 %141, 1
  br label %162

162:                                              ; preds = %189, %158
  %163 = phi ptr [ %139, %158 ], [ %187, %189 ]
  %164 = phi i32 [ %160, %158 ], [ %192, %189 ]
  %165 = phi i64 [ %142, %158 ], [ %185, %189 ]
  %166 = phi i32 [ %161, %158 ], [ 0, %189 ]
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %183, label %168, !prof !697

168:                                              ; preds = %162
  %169 = add i32 %164, 128
  %170 = shl i32 %166, 6
  %171 = sub i32 %169, %170
  br label %172

172:                                              ; preds = %168, %179
  %173 = phi i32 [ %181, %179 ], [ %166, %168 ]
  %174 = phi i32 [ %180, %179 ], [ %164, %168 ]
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds %struct.bitmap_element_def, ptr %163, i64 0, i32 3, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !301
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %144, !prof !698

179:                                              ; preds = %172
  %180 = add i32 %174, 64
  %181 = add i32 %173, 1
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %172, !prof !699, !llvm.loop !303

183:                                              ; preds = %179, %162
  %184 = phi i32 [ %164, %162 ], [ %171, %179 ]
  %185 = phi i64 [ %165, %162 ], [ %177, %179 ]
  %186 = phi i32 [ %166, %162 ], [ 2, %179 ]
  %187 = load ptr, ptr %163, align 8, !tbaa !304
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189, !prof !700

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.bitmap_element_def, ptr %187, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !299
  %192 = shl i32 %191, 7
  br label %162, !llvm.loop !305

193:                                              ; preds = %183, %151, %144
  %194 = phi ptr [ %145, %144 ], [ %145, %151 ], [ %187, %183 ]
  %195 = phi i32 [ %146, %144 ], [ %155, %151 ], [ %184, %183 ]
  %196 = phi i32 [ %147, %144 ], [ %147, %151 ], [ %186, %183 ]
  %197 = phi i64 [ %148, %144 ], [ %154, %151 ], [ %185, %183 ]
  %198 = phi i1 [ false, %144 ], [ false, %151 ], [ true, %183 ]
  br i1 %198, label %247, label %199, !prof !701

199:                                              ; preds = %193
  %200 = load ptr, ptr @cfun, align 8, !tbaa !243
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !294
  %203 = getelementptr inbounds %struct.control_flow_graph, ptr %202, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !306
  %205 = zext i32 %195 to i64
  %206 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %204, i64 0, i32 2, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !243
  %208 = icmp eq ptr %207, null
  br label %209

209:                                              ; preds = %242, %199
  %210 = phi i32 [ 0, %199 ], [ %243, %242 ]
  br i1 %208, label %211, label %212, !prof !702

211:                                              ; preds = %209
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %212

212:                                              ; preds = %211, %209
  %213 = load ptr, ptr %207, align 8, !tbaa !243
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215, !prof !702

215:                                              ; preds = %212
  %216 = load i32, ptr %213, align 8, !tbaa !309
  br label %217

217:                                              ; preds = %215, %212
  %218 = phi i32 [ %216, %215 ], [ 0, %212 ]
  %219 = icmp eq i32 %218, %210
  br i1 %219, label %224, label %220, !prof !703

220:                                              ; preds = %217
  %221 = zext i32 %210 to i64
  %222 = getelementptr inbounds %struct.VEC_edge_base, ptr %213, i64 0, i32 2, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !243
  br label %224

224:                                              ; preds = %217, %220
  %225 = phi ptr [ %223, %220 ], [ null, %217 ]
  br i1 %219, label %244, label %226, !prof !703

226:                                              ; preds = %224
  %227 = load ptr, ptr %225, align 8, !tbaa !311
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %227, i64 0, i32 9
  %229 = load i32, ptr %228, align 8, !tbaa !313
  %230 = icmp sgt i32 %229, -1
  br i1 %230, label %231, label %233, !prof !704

231:                                              ; preds = %226
  %232 = call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %229) #19
  br label %233

233:                                              ; preds = %231, %226
  %234 = load ptr, ptr %207, align 8, !tbaa !243
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236, !prof !705

236:                                              ; preds = %233
  %237 = load i32, ptr %234, align 8, !tbaa !309
  br label %238

238:                                              ; preds = %236, %233
  %239 = phi i32 [ %237, %236 ], [ 0, %233 ]
  %240 = icmp ult i32 %210, %239
  br i1 %240, label %242, label %241, !prof !704

241:                                              ; preds = %238
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %242

242:                                              ; preds = %238, %241
  %243 = add i32 %210, 1
  br label %209, !llvm.loop !706

244:                                              ; preds = %224
  %245 = lshr i64 %197, 1
  %246 = add i32 %195, 1
  br label %138, !llvm.loop !707

247:                                              ; preds = %193
  call fastcc void @insert_phi_nodes_for(ptr noundef nonnull %0, ptr noundef nonnull %16, i8 noundef zeroext 1)
  br label %248

248:                                              ; preds = %247, %122
  call void @bitmap_obstack_free(ptr noundef nonnull %16) #19
  call void @bitmap_obstack_free(ptr noundef %15) #19
  br label %249

249:                                              ; preds = %4, %9, %248
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrite_blocks(ptr noundef %0, i32 noundef %1) unnamed_addr #12 !prof !708 !PGOFuncName !709 {
  %3 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !710

6:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 58) #19
  br label %7

7:                                                ; preds = %6, %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i8 1, ptr %3, align 8
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %3, i64 0, i32 3
  %11 = select i1 %8, ptr @rewrite_enter_block, ptr @rewrite_update_enter_block, !prof !711
  %12 = select i1 %8, ptr @rewrite_leave_block, ptr @rewrite_update_leave_block, !prof !711
  store ptr %11, ptr %9, align 8, !tbaa !356
  store ptr %12, ptr %10, align 8, !tbaa !357
  %13 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  store ptr %13, ptr @block_defs_stack, align 8, !tbaa !243
  call void @init_walk_dominator_tree(ptr noundef nonnull %3) #19
  call void @walk_dominator_tree(ptr noundef nonnull %3, ptr noundef %0) #19
  call void @fini_walk_dominator_tree(ptr noundef nonnull %3) #19
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !710

16:                                               ; preds = %7
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !258
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  call void @dump_dfa_stats(ptr noundef nonnull %14) #19
  %21 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !243
  call void @dump_tree_ssa_stats(ptr noundef %24)
  br label %25

25:                                               ; preds = %20, %23, %16, %7
  %26 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !712

28:                                               ; preds = %25
  call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %25, %28
  store ptr null, ptr @block_defs_stack, align 8, !tbaa !243
  %30 = load i8, ptr @timevar_enable, align 1, !tbaa !254
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32, !prof !710

32:                                               ; preds = %29
  call void @timevar_pop_1(i32 noundef 58) #19
  br label %33

33:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare double @htab_collisions(ptr noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_ssa_operands() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_def_sites_block(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !713 !PGOFuncName !714 {
  %3 = alloca %struct.def_blocks_d, align 8
  %4 = alloca %struct.def_blocks_d, align 8
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !360
  %7 = load ptr, ptr %6, align 8, !tbaa !358
  tail call void @bitmap_clear(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !508, !noalias !715
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !718

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !254, !noalias !715
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !719

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !514, !noalias !715
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = phi ptr [ %17, %16 ], [ null, %12 ], [ null, %2 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !719

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !516, !noalias !715
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi ptr [ %22, %21 ], [ null, %18 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %678, label %26, !prof !720

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  br label %29

29:                                               ; preds = %26, %674
  %30 = phi ptr [ %24, %26 ], [ %676, %674 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !503
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -9
  br i1 %35, label %37, label %36, !prof !721

36:                                               ; preds = %29
  call void @gimple_set_modified(ptr noundef nonnull %31, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %31) #19
  br label %37

37:                                               ; preds = %36, %29
  %38 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !722

40:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 748, ptr noundef nonnull @.str.32) #19
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, ptr %31, align 8
  %43 = and i32 %42, -2561
  store i32 %43, ptr %31, align 8
  %44 = and i32 %42, 255
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %674, label %46, !prof !721

46:                                               ; preds = %41
  %47 = add nsw i32 %44, -10
  %48 = icmp ult i32 %47, -9
  br i1 %48, label %52, label %49, !prof !721

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %31, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !254
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %51, %49 ], [ null, %46 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55, !prof !723

55:                                               ; preds = %52
  %56 = and i32 %42, 254
  %57 = add nsw i32 %56, -10
  %58 = icmp ult i32 %57, -4
  br i1 %58, label %65, label %59, !prof !724

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %31, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !254
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !725

63:                                               ; preds = %59
  %64 = load ptr, ptr %53, align 8, !tbaa !620
  br label %65

65:                                               ; preds = %63, %59, %55, %52
  %66 = phi ptr [ %53, %52 ], [ %53, %55 ], [ %53, %59 ], [ %64, %63 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68, !prof !726

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.use_optype_d, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %66, align 8, !tbaa !620
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi ptr [ %70, %68 ], [ %66, %65 ]
  %73 = phi i8 [ 0, %68 ], [ 1, %65 ]
  %74 = phi ptr [ %69, %68 ], [ null, %65 ]
  br i1 %67, label %314, label %75, !prof !727

75:                                               ; preds = %71, %309
  %76 = phi ptr [ %312, %309 ], [ %74, %71 ]
  %77 = phi i8 [ %311, %309 ], [ %73, %71 ]
  %78 = phi ptr [ %310, %309 ], [ %72, %71 ]
  %79 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %76, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !623
  %81 = load ptr, ptr %80, align 8, !tbaa !243
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !258
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %88, label %87, !prof !728

87:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 760, ptr noundef nonnull @.str.32) #19
  br label %88

88:                                               ; preds = %87, %75
  %89 = getelementptr inbounds %struct.tree_decl_minimal, ptr %81, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !254
  %91 = call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %90) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %302, !prof !729

93:                                               ; preds = %88
  %94 = load i64, ptr %81, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 141
  br i1 %96, label %97, label %160, !prof !363

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_ssa_name, ptr %81, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !254
  %100 = load ptr, ptr @info_for_ssa_name, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !364

102:                                              ; preds = %97
  %103 = load i32, ptr %100, align 8, !tbaa !265
  br label %104

104:                                              ; preds = %102, %97
  %105 = phi i32 [ %103, %102 ], [ 0, %97 ]
  %106 = icmp ult i32 %99, %105
  br i1 %106, label %144, label %107, !prof !365

107:                                              ; preds = %104
  %108 = load ptr, ptr @cfun, align 8, !tbaa !243
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !268
  %111 = getelementptr inbounds %struct.gimple_df, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !270
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !366

114:                                              ; preds = %107
  %115 = load i32, ptr %112, align 8, !tbaa !274
  br label %116

116:                                              ; preds = %114, %107
  %117 = phi i32 [ %115, %114 ], [ 0, %107 ]
  br i1 %101, label %124, label %118, !prof !366

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %100, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !276
  %121 = load i32, ptr %100, align 8, !tbaa !265
  %122 = sub i32 %120, %121
  %123 = icmp uge i32 %122, %117
  br label %126

124:                                              ; preds = %116
  %125 = icmp eq i32 %117, 0
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi i1 [ %123, %118 ], [ %125, %124 ]
  br i1 %127, label %130, label %128, !prof !367

128:                                              ; preds = %126
  %129 = call ptr @vec_heap_p_reserve(ptr noundef %100, i32 noundef %117) #19
  store ptr %129, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %130

130:                                              ; preds = %128, %126
  %131 = icmp ult i32 %105, %117
  br i1 %131, label %132, label %144, !prof !368

132:                                              ; preds = %130, %132
  %133 = phi i32 [ %134, %132 ], [ %105, %130 ]
  %134 = add nuw i32 %133, 1
  %135 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %136 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %137 = getelementptr inbounds %struct.ssa_name_info, ptr %135, i64 0, i32 2
  store i32 %136, ptr %137, align 4, !tbaa !277
  %138 = load ptr, ptr @info_for_ssa_name, align 8
  %139 = load i32, ptr %138, align 8, !tbaa !265
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 8, !tbaa !265
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %138, i64 0, i32 2, i64 %141
  store ptr %135, ptr %142, align 8, !tbaa !243
  %143 = icmp eq i32 %134, %117
  br i1 %143, label %144, label %132, !prof !369, !llvm.loop !279

144:                                              ; preds = %132, %130, %104
  %145 = load ptr, ptr @info_for_ssa_name, align 8
  %146 = zext i32 %99 to i64
  %147 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %145, i64 0, i32 2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !243
  %149 = getelementptr inbounds %struct.ssa_name_info, ptr %148, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !277
  %151 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %157, !prof !370

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.ssa_name_info, ptr %148, i64 0, i32 1
  %155 = load i8, ptr %154, align 8
  %156 = and i8 %155, -4
  store i8 %156, ptr %154, align 8
  store ptr null, ptr %148, align 8, !tbaa !280
  store i32 %151, ptr %149, align 4, !tbaa !277
  br label %157

157:                                              ; preds = %153, %144
  %158 = getelementptr inbounds %struct.ssa_name_info, ptr %148, i64 0, i32 1
  %159 = load i8, ptr %158, align 8
  br label %176

160:                                              ; preds = %93
  %161 = trunc i64 %94 to i16
  switch i16 %161, label %166 [
    i16 32, label %162
    i16 34, label %164
  ], !prof !371

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.tree_var_decl, ptr %81, i64 0, i32 1
  br label %170

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.tree_parm_decl, ptr %81, i64 0, i32 2
  br label %170

166:                                              ; preds = %160
  %167 = icmp eq i64 %95, 36
  %168 = getelementptr inbounds %struct.tree_result_decl, ptr %81, i64 0, i32 1
  %169 = select i1 %167, ptr %168, ptr null
  br label %170

170:                                              ; preds = %166, %164, %162
  %171 = phi ptr [ %163, %162 ], [ %165, %164 ], [ %169, %166 ]
  %172 = icmp ne ptr %171, null
  call void @llvm.assume(i1 %172)
  %173 = load ptr, ptr %171, align 8, !tbaa !243
  %174 = load i8, ptr %173, align 8
  %175 = lshr i8 %174, 2
  br label %176

176:                                              ; preds = %170, %157
  %177 = phi i8 [ %159, %157 ], [ %175, %170 ]
  %178 = and i8 %177, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  store ptr %81, ptr %4, align 8, !tbaa !333
  %179 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %180 = call ptr @htab_find_slot(ptr noundef %179, ptr noundef nonnull %4, i32 noundef 1) #19
  %181 = load ptr, ptr %180, align 8, !tbaa !243
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %191, !prof !651

183:                                              ; preds = %176
  %184 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %81, ptr %184, align 8, !tbaa !333
  %185 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %186 = getelementptr inbounds %struct.def_blocks_d, ptr %184, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !335
  %187 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %188 = getelementptr inbounds %struct.def_blocks_d, ptr %184, i64 0, i32 2
  store ptr %187, ptr %188, align 8, !tbaa !337
  %189 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %190 = getelementptr inbounds %struct.def_blocks_d, ptr %184, i64 0, i32 3
  store ptr %189, ptr %190, align 8, !tbaa !336
  store ptr %184, ptr %180, align 8, !tbaa !243
  br label %191

191:                                              ; preds = %183, %176
  %192 = phi ptr [ %184, %183 ], [ %181, %176 ]
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  %194 = getelementptr inbounds %struct.def_blocks_d, ptr %192, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !336
  %196 = load i32, ptr %193, align 8, !tbaa !313
  %197 = call zeroext i8 @bitmap_set_bit(ptr noundef %195, i32 noundef %196) #19
  %198 = icmp eq i8 %178, 1
  br i1 %198, label %199, label %216, !prof !652

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.def_blocks_d, ptr %192, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !335
  %202 = call i32 @bitmap_first_set_bit(ptr noundef %201) #19
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %215, label %204, !prof !653

204:                                              ; preds = %199
  %205 = load ptr, ptr @cfun, align 8, !tbaa !243
  %206 = getelementptr inbounds %struct.function, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !294
  %208 = getelementptr inbounds %struct.control_flow_graph, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !306
  %210 = zext i32 %202 to i64
  %211 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %209, i64 0, i32 2, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !243
  %213 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef %212) #19
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %302, !prof !653

215:                                              ; preds = %204, %199
  call fastcc void @set_phi_state(ptr noundef nonnull %81, i32 noundef 2)
  br label %302

216:                                              ; preds = %191
  %217 = load i64, ptr %81, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 141
  br i1 %219, label %220, label %285, !prof !654

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_ssa_name, ptr %81, i64 0, i32 3
  %222 = load i32, ptr %221, align 8, !tbaa !254
  %223 = load ptr, ptr @info_for_ssa_name, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225, !prof !655

225:                                              ; preds = %220
  %226 = load i32, ptr %223, align 8, !tbaa !265
  br label %227

227:                                              ; preds = %225, %220
  %228 = phi i32 [ %226, %225 ], [ 0, %220 ]
  %229 = icmp ult i32 %222, %228
  br i1 %229, label %267, label %230, !prof !656

230:                                              ; preds = %227
  %231 = load ptr, ptr @cfun, align 8, !tbaa !243
  %232 = getelementptr inbounds %struct.function, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !268
  %234 = getelementptr inbounds %struct.gimple_df, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !270
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  %238 = load i32, ptr %235, align 8, !tbaa !274
  br label %239

239:                                              ; preds = %237, %230
  %240 = phi i32 [ %238, %237 ], [ 0, %230 ]
  br i1 %224, label %247, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %223, i64 0, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !276
  %244 = load i32, ptr %223, align 8, !tbaa !265
  %245 = sub i32 %243, %244
  %246 = icmp uge i32 %245, %240
  br label %249

247:                                              ; preds = %239
  %248 = icmp eq i32 %240, 0
  br label %249

249:                                              ; preds = %247, %241
  %250 = phi i1 [ %246, %241 ], [ %248, %247 ]
  br i1 %250, label %253, label %251

251:                                              ; preds = %249
  %252 = call ptr @vec_heap_p_reserve(ptr noundef %223, i32 noundef %240) #19
  store ptr %252, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %253

253:                                              ; preds = %251, %249
  %254 = icmp ult i32 %228, %240
  br i1 %254, label %255, label %267

255:                                              ; preds = %253, %255
  %256 = phi i32 [ %257, %255 ], [ %228, %253 ]
  %257 = add nuw i32 %256, 1
  %258 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %259 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %260 = getelementptr inbounds %struct.ssa_name_info, ptr %258, i64 0, i32 2
  store i32 %259, ptr %260, align 4, !tbaa !277
  %261 = load ptr, ptr @info_for_ssa_name, align 8
  %262 = load i32, ptr %261, align 8, !tbaa !265
  %263 = add i32 %262, 1
  store i32 %263, ptr %261, align 8, !tbaa !265
  %264 = zext i32 %262 to i64
  %265 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %261, i64 0, i32 2, i64 %264
  store ptr %258, ptr %265, align 8, !tbaa !243
  %266 = icmp eq i32 %257, %240
  br i1 %266, label %267, label %255, !llvm.loop !279

267:                                              ; preds = %255, %253, %227
  %268 = load ptr, ptr @info_for_ssa_name, align 8
  %269 = zext i32 %222 to i64
  %270 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %268, i64 0, i32 2, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !243
  %272 = getelementptr inbounds %struct.ssa_name_info, ptr %271, i64 0, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !277
  %274 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %275 = icmp ult i32 %273, %274
  br i1 %275, label %276, label %280, !prof !655

276:                                              ; preds = %267
  %277 = getelementptr inbounds %struct.ssa_name_info, ptr %271, i64 0, i32 1
  %278 = load i8, ptr %277, align 8
  %279 = and i8 %278, -4
  store i8 %279, ptr %277, align 8
  store ptr null, ptr %271, align 8, !tbaa !280
  store i32 %274, ptr %272, align 4, !tbaa !277
  br label %280

280:                                              ; preds = %276, %267
  %281 = getelementptr inbounds %struct.ssa_name_info, ptr %271, i64 0, i32 1
  %282 = load i8, ptr %281, align 8
  %283 = and i8 %282, -4
  %284 = or disjoint i8 %283, 2
  store i8 %284, ptr %281, align 8
  br label %302

285:                                              ; preds = %216
  %286 = trunc i64 %217 to i16
  switch i16 %286, label %291 [
    i16 32, label %287
    i16 34, label %289
  ], !prof !657

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.tree_var_decl, ptr %81, i64 0, i32 1
  br label %295

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.tree_parm_decl, ptr %81, i64 0, i32 2
  br label %295

291:                                              ; preds = %285
  %292 = icmp eq i64 %218, 36
  %293 = getelementptr inbounds %struct.tree_result_decl, ptr %81, i64 0, i32 1
  %294 = select i1 %292, ptr %293, ptr null
  br label %295

295:                                              ; preds = %291, %289, %287
  %296 = phi ptr [ %288, %287 ], [ %290, %289 ], [ %294, %291 ]
  %297 = icmp ne ptr %296, null
  call void @llvm.assume(i1 %297)
  %298 = load ptr, ptr %296, align 8, !tbaa !243
  %299 = load i8, ptr %298, align 8
  %300 = and i8 %299, -13
  %301 = or disjoint i8 %300, 8
  store i8 %301, ptr %298, align 8
  br label %302

302:                                              ; preds = %295, %280, %215, %204, %88
  %303 = load i32, ptr %31, align 8
  %304 = or i32 %303, 512
  store i32 %304, ptr %31, align 8
  %305 = icmp eq ptr %78, null
  br i1 %305, label %309, label %306, !prof !730

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.use_optype_d, ptr %78, i64 0, i32 1
  %308 = load ptr, ptr %78, align 8, !tbaa !620
  br label %309

309:                                              ; preds = %302, %306
  %310 = phi ptr [ %308, %306 ], [ %78, %302 ]
  %311 = phi i8 [ %77, %306 ], [ 1, %302 ]
  %312 = phi ptr [ %307, %306 ], [ null, %302 ]
  %313 = icmp eq i8 %311, 0
  br i1 %313, label %75, label %314, !prof !731, !llvm.loop !732

314:                                              ; preds = %309, %71
  %315 = load i32, ptr %31, align 8
  %316 = and i32 %315, 255
  %317 = add nsw i32 %316, -10
  %318 = icmp ult i32 %317, -9
  br i1 %318, label %322, label %319, !prof !721

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %31, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !254
  br label %322

322:                                              ; preds = %319, %314
  %323 = phi ptr [ %321, %319 ], [ null, %314 ]
  %324 = icmp eq ptr %323, null
  br i1 %324, label %335, label %325, !prof !733

325:                                              ; preds = %322
  %326 = and i32 %315, 254
  %327 = add nsw i32 %326, -10
  %328 = icmp ult i32 %327, -4
  br i1 %328, label %335, label %329, !prof !734

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %31, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !254
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333, !prof !735

333:                                              ; preds = %329
  %334 = load ptr, ptr %323, align 8, !tbaa !664
  br label %335

335:                                              ; preds = %333, %329, %325, %322
  %336 = phi ptr [ %323, %322 ], [ %323, %325 ], [ %323, %329 ], [ %334, %333 ]
  %337 = icmp eq ptr %336, null
  br i1 %337, label %343, label %338, !prof !736

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.def_optype_d, ptr %336, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !662
  %341 = load ptr, ptr %340, align 8, !tbaa !243
  %342 = load ptr, ptr %336, align 8, !tbaa !664
  br label %343

343:                                              ; preds = %338, %335
  %344 = phi ptr [ %342, %338 ], [ %336, %335 ]
  %345 = phi i8 [ 0, %338 ], [ 1, %335 ]
  %346 = phi ptr [ %341, %338 ], [ null, %335 ]
  br i1 %337, label %642, label %347, !prof !736

347:                                              ; preds = %343, %637
  %348 = phi ptr [ %640, %637 ], [ %346, %343 ]
  %349 = phi i8 [ %639, %637 ], [ %345, %343 ]
  %350 = phi ptr [ %638, %637 ], [ %344, %343 ]
  %351 = load i64, ptr %348, align 8
  %352 = and i64 %351, 65535
  %353 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !258
  %355 = icmp eq i32 %354, 3
  br i1 %355, label %357, label %356, !prof !737

356:                                              ; preds = %347
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 770, ptr noundef nonnull @.str.32) #19
  br label %357

357:                                              ; preds = %356, %347
  %358 = load i64, ptr %348, align 8
  %359 = and i64 %358, 65535
  %360 = icmp eq i64 %359, 141
  br i1 %360, label %361, label %424, !prof !363

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.tree_ssa_name, ptr %348, i64 0, i32 3
  %363 = load i32, ptr %362, align 8, !tbaa !254
  %364 = load ptr, ptr @info_for_ssa_name, align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %368, label %366, !prof !364

366:                                              ; preds = %361
  %367 = load i32, ptr %364, align 8, !tbaa !265
  br label %368

368:                                              ; preds = %366, %361
  %369 = phi i32 [ %367, %366 ], [ 0, %361 ]
  %370 = icmp ult i32 %363, %369
  br i1 %370, label %408, label %371, !prof !365

371:                                              ; preds = %368
  %372 = load ptr, ptr @cfun, align 8, !tbaa !243
  %373 = getelementptr inbounds %struct.function, ptr %372, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !268
  %375 = getelementptr inbounds %struct.gimple_df, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !270
  %377 = icmp eq ptr %376, null
  br i1 %377, label %380, label %378, !prof !366

378:                                              ; preds = %371
  %379 = load i32, ptr %376, align 8, !tbaa !274
  br label %380

380:                                              ; preds = %378, %371
  %381 = phi i32 [ %379, %378 ], [ 0, %371 ]
  br i1 %365, label %388, label %382, !prof !366

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %364, i64 0, i32 1
  %384 = load i32, ptr %383, align 4, !tbaa !276
  %385 = load i32, ptr %364, align 8, !tbaa !265
  %386 = sub i32 %384, %385
  %387 = icmp uge i32 %386, %381
  br label %390

388:                                              ; preds = %380
  %389 = icmp eq i32 %381, 0
  br label %390

390:                                              ; preds = %388, %382
  %391 = phi i1 [ %387, %382 ], [ %389, %388 ]
  br i1 %391, label %394, label %392, !prof !367

392:                                              ; preds = %390
  %393 = call ptr @vec_heap_p_reserve(ptr noundef %364, i32 noundef %381) #19
  store ptr %393, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %394

394:                                              ; preds = %392, %390
  %395 = icmp ult i32 %369, %381
  br i1 %395, label %396, label %408, !prof !368

396:                                              ; preds = %394, %396
  %397 = phi i32 [ %398, %396 ], [ %369, %394 ]
  %398 = add nuw i32 %397, 1
  %399 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %400 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %401 = getelementptr inbounds %struct.ssa_name_info, ptr %399, i64 0, i32 2
  store i32 %400, ptr %401, align 4, !tbaa !277
  %402 = load ptr, ptr @info_for_ssa_name, align 8
  %403 = load i32, ptr %402, align 8, !tbaa !265
  %404 = add i32 %403, 1
  store i32 %404, ptr %402, align 8, !tbaa !265
  %405 = zext i32 %403 to i64
  %406 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %402, i64 0, i32 2, i64 %405
  store ptr %399, ptr %406, align 8, !tbaa !243
  %407 = icmp eq i32 %398, %381
  br i1 %407, label %408, label %396, !prof !369, !llvm.loop !279

408:                                              ; preds = %396, %394, %368
  %409 = load ptr, ptr @info_for_ssa_name, align 8
  %410 = zext i32 %363 to i64
  %411 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %409, i64 0, i32 2, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !243
  %413 = getelementptr inbounds %struct.ssa_name_info, ptr %412, i64 0, i32 2
  %414 = load i32, ptr %413, align 4, !tbaa !277
  %415 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %417, label %421, !prof !370

417:                                              ; preds = %408
  %418 = getelementptr inbounds %struct.ssa_name_info, ptr %412, i64 0, i32 1
  %419 = load i8, ptr %418, align 8
  %420 = and i8 %419, -4
  store i8 %420, ptr %418, align 8
  store ptr null, ptr %412, align 8, !tbaa !280
  store i32 %415, ptr %413, align 4, !tbaa !277
  br label %421

421:                                              ; preds = %417, %408
  %422 = getelementptr inbounds %struct.ssa_name_info, ptr %412, i64 0, i32 1
  %423 = load i8, ptr %422, align 8
  br label %440

424:                                              ; preds = %357
  %425 = trunc i64 %358 to i16
  switch i16 %425, label %430 [
    i16 32, label %426
    i16 34, label %428
  ], !prof !371

426:                                              ; preds = %424
  %427 = getelementptr inbounds %struct.tree_var_decl, ptr %348, i64 0, i32 1
  br label %434

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.tree_parm_decl, ptr %348, i64 0, i32 2
  br label %434

430:                                              ; preds = %424
  %431 = icmp eq i64 %359, 36
  %432 = getelementptr inbounds %struct.tree_result_decl, ptr %348, i64 0, i32 1
  %433 = select i1 %431, ptr %432, ptr null
  br label %434

434:                                              ; preds = %430, %428, %426
  %435 = phi ptr [ %427, %426 ], [ %429, %428 ], [ %433, %430 ]
  %436 = icmp ne ptr %435, null
  call void @llvm.assume(i1 %436)
  %437 = load ptr, ptr %435, align 8, !tbaa !243
  %438 = load i8, ptr %437, align 8
  %439 = lshr i8 %438, 2
  br label %440

440:                                              ; preds = %434, %421
  %441 = phi i8 [ %423, %421 ], [ %439, %434 ]
  %442 = and i8 %441, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  store ptr %348, ptr %3, align 8, !tbaa !333
  %443 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %444 = call ptr @htab_find_slot(ptr noundef %443, ptr noundef nonnull %3, i32 noundef 1) #19
  %445 = load ptr, ptr %444, align 8, !tbaa !243
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %455, !prof !738

447:                                              ; preds = %440
  %448 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %348, ptr %448, align 8, !tbaa !333
  %449 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %450 = getelementptr inbounds %struct.def_blocks_d, ptr %448, i64 0, i32 1
  store ptr %449, ptr %450, align 8, !tbaa !335
  %451 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %452 = getelementptr inbounds %struct.def_blocks_d, ptr %448, i64 0, i32 2
  store ptr %451, ptr %452, align 8, !tbaa !337
  %453 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %454 = getelementptr inbounds %struct.def_blocks_d, ptr %448, i64 0, i32 3
  store ptr %453, ptr %454, align 8, !tbaa !336
  store ptr %448, ptr %444, align 8, !tbaa !243
  br label %455

455:                                              ; preds = %447, %440
  %456 = phi ptr [ %448, %447 ], [ %445, %440 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %457 = getelementptr inbounds %struct.def_blocks_d, ptr %456, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !335
  %459 = load i32, ptr %27, align 8, !tbaa !313
  %460 = call zeroext i8 @bitmap_set_bit(ptr noundef %458, i32 noundef %459) #19
  %461 = icmp eq i8 %442, 0
  %462 = load i64, ptr %348, align 8
  %463 = and i64 %462, 65535
  %464 = icmp eq i64 %463, 141
  br i1 %461, label %465, label %542, !prof !738

465:                                              ; preds = %455
  br i1 %464, label %466, label %528, !prof !654

466:                                              ; preds = %465
  %467 = getelementptr inbounds %struct.tree_ssa_name, ptr %348, i64 0, i32 3
  %468 = load i32, ptr %467, align 8, !tbaa !254
  %469 = load ptr, ptr @info_for_ssa_name, align 8
  %470 = icmp eq ptr %469, null
  br i1 %470, label %473, label %471, !prof !655

471:                                              ; preds = %466
  %472 = load i32, ptr %469, align 8, !tbaa !265
  br label %473

473:                                              ; preds = %471, %466
  %474 = phi i32 [ %472, %471 ], [ 0, %466 ]
  %475 = icmp ult i32 %468, %474
  br i1 %475, label %513, label %476, !prof !656

476:                                              ; preds = %473
  %477 = load ptr, ptr @cfun, align 8, !tbaa !243
  %478 = getelementptr inbounds %struct.function, ptr %477, i64 0, i32 3
  %479 = load ptr, ptr %478, align 8, !tbaa !268
  %480 = getelementptr inbounds %struct.gimple_df, ptr %479, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !270
  %482 = icmp eq ptr %481, null
  br i1 %482, label %485, label %483

483:                                              ; preds = %476
  %484 = load i32, ptr %481, align 8, !tbaa !274
  br label %485

485:                                              ; preds = %483, %476
  %486 = phi i32 [ %484, %483 ], [ 0, %476 ]
  br i1 %470, label %493, label %487

487:                                              ; preds = %485
  %488 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %469, i64 0, i32 1
  %489 = load i32, ptr %488, align 4, !tbaa !276
  %490 = load i32, ptr %469, align 8, !tbaa !265
  %491 = sub i32 %489, %490
  %492 = icmp uge i32 %491, %486
  br label %495

493:                                              ; preds = %485
  %494 = icmp eq i32 %486, 0
  br label %495

495:                                              ; preds = %493, %487
  %496 = phi i1 [ %492, %487 ], [ %494, %493 ]
  br i1 %496, label %499, label %497

497:                                              ; preds = %495
  %498 = call ptr @vec_heap_p_reserve(ptr noundef %469, i32 noundef %486) #19
  store ptr %498, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %499

499:                                              ; preds = %497, %495
  %500 = icmp ult i32 %474, %486
  br i1 %500, label %501, label %513

501:                                              ; preds = %499, %501
  %502 = phi i32 [ %503, %501 ], [ %474, %499 ]
  %503 = add nuw i32 %502, 1
  %504 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %505 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %506 = getelementptr inbounds %struct.ssa_name_info, ptr %504, i64 0, i32 2
  store i32 %505, ptr %506, align 4, !tbaa !277
  %507 = load ptr, ptr @info_for_ssa_name, align 8
  %508 = load i32, ptr %507, align 8, !tbaa !265
  %509 = add i32 %508, 1
  store i32 %509, ptr %507, align 8, !tbaa !265
  %510 = zext i32 %508 to i64
  %511 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %507, i64 0, i32 2, i64 %510
  store ptr %504, ptr %511, align 8, !tbaa !243
  %512 = icmp eq i32 %503, %486
  br i1 %512, label %513, label %501, !llvm.loop !279

513:                                              ; preds = %501, %499, %473
  %514 = load ptr, ptr @info_for_ssa_name, align 8
  %515 = zext i32 %468 to i64
  %516 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %514, i64 0, i32 2, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !243
  %518 = getelementptr inbounds %struct.ssa_name_info, ptr %517, i64 0, i32 2
  %519 = load i32, ptr %518, align 4, !tbaa !277
  %520 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %521 = icmp ult i32 %519, %520
  br i1 %521, label %522, label %526, !prof !655

522:                                              ; preds = %513
  %523 = getelementptr inbounds %struct.ssa_name_info, ptr %517, i64 0, i32 1
  %524 = load i8, ptr %523, align 8
  %525 = and i8 %524, -4
  store i8 %525, ptr %523, align 8
  store ptr null, ptr %517, align 8, !tbaa !280
  store i32 %520, ptr %518, align 4, !tbaa !277
  br label %526

526:                                              ; preds = %522, %513
  %527 = getelementptr inbounds %struct.ssa_name_info, ptr %517, i64 0, i32 1
  br label %619

528:                                              ; preds = %465
  %529 = trunc i64 %462 to i16
  switch i16 %529, label %534 [
    i16 32, label %530
    i16 34, label %532
  ], !prof !657

530:                                              ; preds = %528
  %531 = getelementptr inbounds %struct.tree_var_decl, ptr %348, i64 0, i32 1
  br label %538

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.tree_parm_decl, ptr %348, i64 0, i32 2
  br label %538

534:                                              ; preds = %528
  %535 = icmp eq i64 %463, 36
  %536 = getelementptr inbounds %struct.tree_result_decl, ptr %348, i64 0, i32 1
  %537 = select i1 %535, ptr %536, ptr null
  br label %538

538:                                              ; preds = %534, %532, %530
  %539 = phi ptr [ %531, %530 ], [ %533, %532 ], [ %537, %534 ]
  %540 = icmp ne ptr %539, null
  call void @llvm.assume(i1 %540)
  %541 = load ptr, ptr %539, align 8, !tbaa !243
  br label %619

542:                                              ; preds = %455
  br i1 %464, label %543, label %605, !prof !654

543:                                              ; preds = %542
  %544 = getelementptr inbounds %struct.tree_ssa_name, ptr %348, i64 0, i32 3
  %545 = load i32, ptr %544, align 8, !tbaa !254
  %546 = load ptr, ptr @info_for_ssa_name, align 8
  %547 = icmp eq ptr %546, null
  br i1 %547, label %550, label %548, !prof !655

548:                                              ; preds = %543
  %549 = load i32, ptr %546, align 8, !tbaa !265
  br label %550

550:                                              ; preds = %548, %543
  %551 = phi i32 [ %549, %548 ], [ 0, %543 ]
  %552 = icmp ult i32 %545, %551
  br i1 %552, label %590, label %553, !prof !656

553:                                              ; preds = %550
  %554 = load ptr, ptr @cfun, align 8, !tbaa !243
  %555 = getelementptr inbounds %struct.function, ptr %554, i64 0, i32 3
  %556 = load ptr, ptr %555, align 8, !tbaa !268
  %557 = getelementptr inbounds %struct.gimple_df, ptr %556, i64 0, i32 2
  %558 = load ptr, ptr %557, align 8, !tbaa !270
  %559 = icmp eq ptr %558, null
  br i1 %559, label %562, label %560

560:                                              ; preds = %553
  %561 = load i32, ptr %558, align 8, !tbaa !274
  br label %562

562:                                              ; preds = %560, %553
  %563 = phi i32 [ %561, %560 ], [ 0, %553 ]
  br i1 %547, label %570, label %564

564:                                              ; preds = %562
  %565 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %546, i64 0, i32 1
  %566 = load i32, ptr %565, align 4, !tbaa !276
  %567 = load i32, ptr %546, align 8, !tbaa !265
  %568 = sub i32 %566, %567
  %569 = icmp uge i32 %568, %563
  br label %572

570:                                              ; preds = %562
  %571 = icmp eq i32 %563, 0
  br label %572

572:                                              ; preds = %570, %564
  %573 = phi i1 [ %569, %564 ], [ %571, %570 ]
  br i1 %573, label %576, label %574

574:                                              ; preds = %572
  %575 = call ptr @vec_heap_p_reserve(ptr noundef %546, i32 noundef %563) #19
  store ptr %575, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %576

576:                                              ; preds = %574, %572
  %577 = icmp ult i32 %551, %563
  br i1 %577, label %578, label %590

578:                                              ; preds = %576, %578
  %579 = phi i32 [ %580, %578 ], [ %551, %576 ]
  %580 = add nuw i32 %579, 1
  %581 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %582 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %583 = getelementptr inbounds %struct.ssa_name_info, ptr %581, i64 0, i32 2
  store i32 %582, ptr %583, align 4, !tbaa !277
  %584 = load ptr, ptr @info_for_ssa_name, align 8
  %585 = load i32, ptr %584, align 8, !tbaa !265
  %586 = add i32 %585, 1
  store i32 %586, ptr %584, align 8, !tbaa !265
  %587 = zext i32 %585 to i64
  %588 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %584, i64 0, i32 2, i64 %587
  store ptr %581, ptr %588, align 8, !tbaa !243
  %589 = icmp eq i32 %580, %563
  br i1 %589, label %590, label %578, !llvm.loop !279

590:                                              ; preds = %578, %576, %550
  %591 = load ptr, ptr @info_for_ssa_name, align 8
  %592 = zext i32 %545 to i64
  %593 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %591, i64 0, i32 2, i64 %592
  %594 = load ptr, ptr %593, align 8, !tbaa !243
  %595 = getelementptr inbounds %struct.ssa_name_info, ptr %594, i64 0, i32 2
  %596 = load i32, ptr %595, align 4, !tbaa !277
  %597 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %598 = icmp ult i32 %596, %597
  br i1 %598, label %599, label %603, !prof !655

599:                                              ; preds = %590
  %600 = getelementptr inbounds %struct.ssa_name_info, ptr %594, i64 0, i32 1
  %601 = load i8, ptr %600, align 8
  %602 = and i8 %601, -4
  store i8 %602, ptr %600, align 8
  store ptr null, ptr %594, align 8, !tbaa !280
  store i32 %597, ptr %595, align 4, !tbaa !277
  br label %603

603:                                              ; preds = %599, %590
  %604 = getelementptr inbounds %struct.ssa_name_info, ptr %594, i64 0, i32 1
  br label %619

605:                                              ; preds = %542
  %606 = trunc i64 %462 to i16
  switch i16 %606, label %611 [
    i16 32, label %607
    i16 34, label %609
  ], !prof !657

607:                                              ; preds = %605
  %608 = getelementptr inbounds %struct.tree_var_decl, ptr %348, i64 0, i32 1
  br label %615

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.tree_parm_decl, ptr %348, i64 0, i32 2
  br label %615

611:                                              ; preds = %605
  %612 = icmp eq i64 %463, 36
  %613 = getelementptr inbounds %struct.tree_result_decl, ptr %348, i64 0, i32 1
  %614 = select i1 %612, ptr %613, ptr null
  br label %615

615:                                              ; preds = %611, %609, %607
  %616 = phi ptr [ %608, %607 ], [ %610, %609 ], [ %614, %611 ]
  %617 = icmp ne ptr %616, null
  call void @llvm.assume(i1 %617)
  %618 = load ptr, ptr %616, align 8, !tbaa !243
  br label %619

619:                                              ; preds = %526, %538, %603, %615
  %620 = phi ptr [ %527, %526 ], [ %541, %538 ], [ %604, %603 ], [ %618, %615 ]
  %621 = phi i8 [ -4, %526 ], [ -13, %538 ], [ -4, %603 ], [ -13, %615 ]
  %622 = phi i8 [ 1, %526 ], [ 4, %538 ], [ 2, %603 ], [ 8, %615 ]
  %623 = load i8, ptr %620, align 8
  %624 = and i8 %623, %621
  %625 = or disjoint i8 %624, %622
  store i8 %625, ptr %620, align 8
  %626 = getelementptr inbounds %struct.tree_decl_minimal, ptr %348, i64 0, i32 2
  %627 = load i32, ptr %626, align 4, !tbaa !254
  %628 = call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %627) #19
  %629 = load i32, ptr %31, align 8
  %630 = or i32 %629, 2048
  store i32 %630, ptr %31, align 8
  %631 = icmp eq ptr %350, null
  br i1 %631, label %637, label %632, !prof !737

632:                                              ; preds = %619
  %633 = getelementptr inbounds %struct.def_optype_d, ptr %350, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !662
  %635 = load ptr, ptr %634, align 8, !tbaa !243
  %636 = load ptr, ptr %350, align 8, !tbaa !664
  br label %637

637:                                              ; preds = %632, %619
  %638 = phi ptr [ %636, %632 ], [ %350, %619 ]
  %639 = phi i8 [ %349, %632 ], [ 1, %619 ]
  %640 = phi ptr [ %635, %632 ], [ null, %619 ]
  %641 = icmp eq i8 %639, 0
  br i1 %641, label %347, label %642, !prof !739, !llvm.loop !740

642:                                              ; preds = %637, %343
  %643 = load i32, ptr %31, align 8
  %644 = and i32 %643, 2560
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %674, label %646, !prof !741

646:                                              ; preds = %642
  %647 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  %648 = load i32, ptr %28, align 8, !tbaa !313
  %649 = load ptr, ptr %647, align 8, !tbaa !384
  %650 = icmp eq ptr %649, null
  br i1 %650, label %665, label %651, !prof !742

651:                                              ; preds = %646
  %652 = lshr i32 %648, 6
  %653 = zext nneg i32 %652 to i64
  %654 = getelementptr inbounds %struct.simple_bitmap_def, ptr %647, i64 0, i32 3, i64 %653
  %655 = load i64, ptr %654, align 8, !tbaa !301
  %656 = and i32 %648, 63
  %657 = zext nneg i32 %656 to i64
  %658 = shl nuw i64 1, %657
  %659 = and i64 %655, %658
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %661, label %665

661:                                              ; preds = %651
  %662 = getelementptr inbounds i8, ptr %649, i64 %653
  %663 = load i8, ptr %662, align 1, !tbaa !254
  %664 = add i8 %663, 1
  store i8 %664, ptr %662, align 1, !tbaa !254
  br label %665

665:                                              ; preds = %661, %651, %646
  %666 = and i32 %648, 63
  %667 = zext nneg i32 %666 to i64
  %668 = shl nuw i64 1, %667
  %669 = lshr i32 %648, 6
  %670 = zext nneg i32 %669 to i64
  %671 = getelementptr inbounds %struct.simple_bitmap_def, ptr %647, i64 0, i32 3, i64 %670
  %672 = load i64, ptr %671, align 8, !tbaa !301
  %673 = or i64 %672, %668
  store i64 %673, ptr %671, align 8, !tbaa !301
  br label %674

674:                                              ; preds = %642, %41, %665
  %675 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %30, i64 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !505
  %677 = icmp eq ptr %676, null
  br i1 %677, label %678, label %29, !prof !743, !llvm.loop !744

678:                                              ; preds = %674, %23
  ret void
}

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_def_block(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !745 !PGOFuncName !746 {
  %4 = alloca %struct.def_blocks_d, align 8
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %71, !prof !363

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !254
  %11 = load ptr, ptr @info_for_ssa_name, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !364

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !265
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = icmp ult i32 %10, %16
  br i1 %17, label %55, label %18, !prof !365

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfun, align 8, !tbaa !243
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !268
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !270
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !366

25:                                               ; preds = %18
  %26 = load i32, ptr %23, align 8, !tbaa !274
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %26, %25 ], [ 0, %18 ]
  br i1 %12, label %35, label %29, !prof !366

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %11, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !276
  %32 = load i32, ptr %11, align 8, !tbaa !265
  %33 = sub i32 %31, %32
  %34 = icmp uge i32 %33, %28
  br label %37

35:                                               ; preds = %27
  %36 = icmp eq i32 %28, 0
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i1 [ %34, %29 ], [ %36, %35 ]
  br i1 %38, label %41, label %39, !prof !367

39:                                               ; preds = %37
  %40 = tail call ptr @vec_heap_p_reserve(ptr noundef %11, i32 noundef %28) #19
  store ptr %40, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %41

41:                                               ; preds = %39, %37
  %42 = icmp ult i32 %16, %28
  br i1 %42, label %43, label %55, !prof !368

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %45, %43 ], [ %16, %41 ]
  %45 = add nuw i32 %44, 1
  %46 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %47 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %48 = getelementptr inbounds %struct.ssa_name_info, ptr %46, i64 0, i32 2
  store i32 %47, ptr %48, align 4, !tbaa !277
  %49 = load ptr, ptr @info_for_ssa_name, align 8
  %50 = load i32, ptr %49, align 8, !tbaa !265
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !265
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %49, i64 0, i32 2, i64 %52
  store ptr %46, ptr %53, align 8, !tbaa !243
  %54 = icmp eq i32 %45, %28
  br i1 %54, label %55, label %43, !prof !369, !llvm.loop !279

55:                                               ; preds = %43, %41, %15
  %56 = load ptr, ptr @info_for_ssa_name, align 8
  %57 = zext i32 %10 to i64
  %58 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %56, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !243
  %60 = getelementptr inbounds %struct.ssa_name_info, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !277
  %62 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %68, !prof !370

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.ssa_name_info, ptr %59, i64 0, i32 1
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, -4
  store i8 %67, ptr %65, align 8
  store ptr null, ptr %59, align 8, !tbaa !280
  store i32 %62, ptr %60, align 4, !tbaa !277
  br label %68

68:                                               ; preds = %64, %55
  %69 = getelementptr inbounds %struct.ssa_name_info, ptr %59, i64 0, i32 1
  %70 = load i8, ptr %69, align 8
  br label %87

71:                                               ; preds = %3
  %72 = trunc i64 %5 to i16
  switch i16 %72, label %77 [
    i16 32, label %73
    i16 34, label %75
  ], !prof !371

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %81

77:                                               ; preds = %71
  %78 = icmp eq i64 %6, 36
  %79 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %80 = select i1 %78, ptr %79, ptr null
  br label %81

81:                                               ; preds = %77, %75, %73
  %82 = phi ptr [ %74, %73 ], [ %76, %75 ], [ %80, %77 ]
  %83 = icmp ne ptr %82, null
  tail call void @llvm.assume(i1 %83)
  %84 = load ptr, ptr %82, align 8, !tbaa !243
  %85 = load i8, ptr %84, align 8
  %86 = lshr i8 %85, 2
  br label %87

87:                                               ; preds = %68, %81
  %88 = phi i8 [ %70, %68 ], [ %86, %81 ]
  %89 = and i8 %88, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  store ptr %0, ptr %4, align 8, !tbaa !333
  %90 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %91 = call ptr @htab_find_slot(ptr noundef %90, ptr noundef nonnull %4, i32 noundef 1) #19
  %92 = load ptr, ptr %91, align 8, !tbaa !243
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102, !prof !738

94:                                               ; preds = %87
  %95 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %0, ptr %95, align 8, !tbaa !333
  %96 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %97 = getelementptr inbounds %struct.def_blocks_d, ptr %95, i64 0, i32 1
  store ptr %96, ptr %97, align 8, !tbaa !335
  %98 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %99 = getelementptr inbounds %struct.def_blocks_d, ptr %95, i64 0, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !337
  %100 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %101 = getelementptr inbounds %struct.def_blocks_d, ptr %95, i64 0, i32 3
  store ptr %100, ptr %101, align 8, !tbaa !336
  store ptr %95, ptr %91, align 8, !tbaa !243
  br label %102

102:                                              ; preds = %87, %94
  %103 = phi ptr [ %95, %94 ], [ %92, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  %104 = getelementptr inbounds %struct.def_blocks_d, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !335
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !313
  %108 = call zeroext i8 @bitmap_set_bit(ptr noundef %105, i32 noundef %107) #19
  %109 = icmp eq i8 %2, 0
  br i1 %109, label %115, label %110, !prof !747

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.def_blocks_d, ptr %103, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !337
  %113 = load i32, ptr %106, align 8, !tbaa !313
  %114 = call zeroext i8 @bitmap_set_bit(ptr noundef %112, i32 noundef %113) #19
  br label %115

115:                                              ; preds = %110, %102
  %116 = icmp eq i8 %89, 0
  %117 = load i64, ptr %0, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 141
  br i1 %116, label %120, label %197, !prof !738

120:                                              ; preds = %115
  br i1 %119, label %121, label %183, !prof !654

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !254
  %124 = load ptr, ptr @info_for_ssa_name, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !655

126:                                              ; preds = %121
  %127 = load i32, ptr %124, align 8, !tbaa !265
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i32 [ %127, %126 ], [ 0, %121 ]
  %130 = icmp ult i32 %123, %129
  br i1 %130, label %168, label %131, !prof !656

131:                                              ; preds = %128
  %132 = load ptr, ptr @cfun, align 8, !tbaa !243
  %133 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !268
  %135 = getelementptr inbounds %struct.gimple_df, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !270
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = load i32, ptr %136, align 8, !tbaa !274
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi i32 [ %139, %138 ], [ 0, %131 ]
  br i1 %125, label %148, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %124, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !276
  %145 = load i32, ptr %124, align 8, !tbaa !265
  %146 = sub i32 %144, %145
  %147 = icmp uge i32 %146, %141
  br label %150

148:                                              ; preds = %140
  %149 = icmp eq i32 %141, 0
  br label %150

150:                                              ; preds = %148, %142
  %151 = phi i1 [ %147, %142 ], [ %149, %148 ]
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  %153 = call ptr @vec_heap_p_reserve(ptr noundef %124, i32 noundef %141) #19
  store ptr %153, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %154

154:                                              ; preds = %152, %150
  %155 = icmp ult i32 %129, %141
  br i1 %155, label %156, label %168

156:                                              ; preds = %154, %156
  %157 = phi i32 [ %158, %156 ], [ %129, %154 ]
  %158 = add nuw i32 %157, 1
  %159 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %160 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %161 = getelementptr inbounds %struct.ssa_name_info, ptr %159, i64 0, i32 2
  store i32 %160, ptr %161, align 4, !tbaa !277
  %162 = load ptr, ptr @info_for_ssa_name, align 8
  %163 = load i32, ptr %162, align 8, !tbaa !265
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 8, !tbaa !265
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %162, i64 0, i32 2, i64 %165
  store ptr %159, ptr %166, align 8, !tbaa !243
  %167 = icmp eq i32 %158, %141
  br i1 %167, label %168, label %156, !llvm.loop !279

168:                                              ; preds = %156, %154, %128
  %169 = load ptr, ptr @info_for_ssa_name, align 8
  %170 = zext i32 %123 to i64
  %171 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %169, i64 0, i32 2, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !243
  %173 = getelementptr inbounds %struct.ssa_name_info, ptr %172, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !277
  %175 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %181, !prof !655

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.ssa_name_info, ptr %172, i64 0, i32 1
  %179 = load i8, ptr %178, align 8
  %180 = and i8 %179, -4
  store i8 %180, ptr %178, align 8
  store ptr null, ptr %172, align 8, !tbaa !280
  store i32 %175, ptr %173, align 4, !tbaa !277
  br label %181

181:                                              ; preds = %177, %168
  %182 = getelementptr inbounds %struct.ssa_name_info, ptr %172, i64 0, i32 1
  br label %274

183:                                              ; preds = %120
  %184 = trunc i64 %117 to i16
  switch i16 %184, label %189 [
    i16 32, label %185
    i16 34, label %187
  ], !prof !657

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %193

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %193

189:                                              ; preds = %183
  %190 = icmp eq i64 %118, 36
  %191 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %192 = select i1 %190, ptr %191, ptr null
  br label %193

193:                                              ; preds = %189, %187, %185
  %194 = phi ptr [ %186, %185 ], [ %188, %187 ], [ %192, %189 ]
  %195 = icmp ne ptr %194, null
  call void @llvm.assume(i1 %195)
  %196 = load ptr, ptr %194, align 8, !tbaa !243
  br label %274

197:                                              ; preds = %115
  br i1 %119, label %198, label %260, !prof !654

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %200 = load i32, ptr %199, align 8, !tbaa !254
  %201 = load ptr, ptr @info_for_ssa_name, align 8
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203, !prof !655

203:                                              ; preds = %198
  %204 = load i32, ptr %201, align 8, !tbaa !265
  br label %205

205:                                              ; preds = %203, %198
  %206 = phi i32 [ %204, %203 ], [ 0, %198 ]
  %207 = icmp ult i32 %200, %206
  br i1 %207, label %245, label %208, !prof !656

208:                                              ; preds = %205
  %209 = load ptr, ptr @cfun, align 8, !tbaa !243
  %210 = getelementptr inbounds %struct.function, ptr %209, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !268
  %212 = getelementptr inbounds %struct.gimple_df, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !270
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %208
  %216 = load i32, ptr %213, align 8, !tbaa !274
  br label %217

217:                                              ; preds = %215, %208
  %218 = phi i32 [ %216, %215 ], [ 0, %208 ]
  br i1 %202, label %225, label %219

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %201, i64 0, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !276
  %222 = load i32, ptr %201, align 8, !tbaa !265
  %223 = sub i32 %221, %222
  %224 = icmp uge i32 %223, %218
  br label %227

225:                                              ; preds = %217
  %226 = icmp eq i32 %218, 0
  br label %227

227:                                              ; preds = %225, %219
  %228 = phi i1 [ %224, %219 ], [ %226, %225 ]
  br i1 %228, label %231, label %229

229:                                              ; preds = %227
  %230 = call ptr @vec_heap_p_reserve(ptr noundef %201, i32 noundef %218) #19
  store ptr %230, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %231

231:                                              ; preds = %229, %227
  %232 = icmp ult i32 %206, %218
  br i1 %232, label %233, label %245

233:                                              ; preds = %231, %233
  %234 = phi i32 [ %235, %233 ], [ %206, %231 ]
  %235 = add nuw i32 %234, 1
  %236 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %237 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %238 = getelementptr inbounds %struct.ssa_name_info, ptr %236, i64 0, i32 2
  store i32 %237, ptr %238, align 4, !tbaa !277
  %239 = load ptr, ptr @info_for_ssa_name, align 8
  %240 = load i32, ptr %239, align 8, !tbaa !265
  %241 = add i32 %240, 1
  store i32 %241, ptr %239, align 8, !tbaa !265
  %242 = zext i32 %240 to i64
  %243 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %239, i64 0, i32 2, i64 %242
  store ptr %236, ptr %243, align 8, !tbaa !243
  %244 = icmp eq i32 %235, %218
  br i1 %244, label %245, label %233, !llvm.loop !279

245:                                              ; preds = %233, %231, %205
  %246 = load ptr, ptr @info_for_ssa_name, align 8
  %247 = zext i32 %200 to i64
  %248 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %246, i64 0, i32 2, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !243
  %250 = getelementptr inbounds %struct.ssa_name_info, ptr %249, i64 0, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !277
  %252 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %253 = icmp ult i32 %251, %252
  br i1 %253, label %254, label %258, !prof !655

254:                                              ; preds = %245
  %255 = getelementptr inbounds %struct.ssa_name_info, ptr %249, i64 0, i32 1
  %256 = load i8, ptr %255, align 8
  %257 = and i8 %256, -4
  store i8 %257, ptr %255, align 8
  store ptr null, ptr %249, align 8, !tbaa !280
  store i32 %252, ptr %250, align 4, !tbaa !277
  br label %258

258:                                              ; preds = %254, %245
  %259 = getelementptr inbounds %struct.ssa_name_info, ptr %249, i64 0, i32 1
  br label %274

260:                                              ; preds = %197
  %261 = trunc i64 %117 to i16
  switch i16 %261, label %266 [
    i16 32, label %262
    i16 34, label %264
  ], !prof !657

262:                                              ; preds = %260
  %263 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %270

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %270

266:                                              ; preds = %260
  %267 = icmp eq i64 %118, 36
  %268 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %269 = select i1 %267, ptr %268, ptr null
  br label %270

270:                                              ; preds = %266, %264, %262
  %271 = phi ptr [ %263, %262 ], [ %265, %264 ], [ %269, %266 ]
  %272 = icmp ne ptr %271, null
  call void @llvm.assume(i1 %272)
  %273 = load ptr, ptr %271, align 8, !tbaa !243
  br label %274

274:                                              ; preds = %270, %258, %193, %181
  %275 = phi ptr [ %273, %270 ], [ %259, %258 ], [ %196, %193 ], [ %182, %181 ]
  %276 = phi i8 [ -13, %270 ], [ -4, %258 ], [ -13, %193 ], [ -4, %181 ]
  %277 = phi i8 [ 8, %270 ], [ 2, %258 ], [ 4, %193 ], [ 1, %181 ]
  %278 = load i8, ptr %275, align 8
  %279 = and i8 %278, %276
  %280 = or disjoint i8 %279, %277
  store i8 %280, ptr %275, align 8
  ret void
}

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_phi_state(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !242 !PGOFuncName !748 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %73, !prof !654

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !254
  %9 = load ptr, ptr @info_for_ssa_name, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !655

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 8, !tbaa !265
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %53, label %16, !prof !656

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfun, align 8, !tbaa !243
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !268
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !270
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr %21, align 8, !tbaa !274
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ]
  br i1 %10, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !276
  %30 = load i32, ptr %9, align 8, !tbaa !265
  %31 = sub i32 %29, %30
  %32 = icmp uge i32 %31, %26
  br label %35

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, 0
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i1 [ %32, %27 ], [ %34, %33 ]
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = tail call ptr @vec_heap_p_reserve(ptr noundef %9, i32 noundef %26) #19
  store ptr %38, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %39

39:                                               ; preds = %37, %35
  %40 = icmp ult i32 %14, %26
  br i1 %40, label %41, label %53

41:                                               ; preds = %39, %41
  %42 = phi i32 [ %43, %41 ], [ %14, %39 ]
  %43 = add nuw i32 %42, 1
  %44 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %45 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %46 = getelementptr inbounds %struct.ssa_name_info, ptr %44, i64 0, i32 2
  store i32 %45, ptr %46, align 4, !tbaa !277
  %47 = load ptr, ptr @info_for_ssa_name, align 8
  %48 = load i32, ptr %47, align 8, !tbaa !265
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !265
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %44, ptr %51, align 8, !tbaa !243
  %52 = icmp eq i32 %43, %26
  br i1 %52, label %53, label %41, !llvm.loop !279

53:                                               ; preds = %41, %39, %13
  %54 = load ptr, ptr @info_for_ssa_name, align 8
  %55 = zext i32 %8 to i64
  %56 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %54, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !243
  %58 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !277
  %60 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %66, !prof !655

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 1
  %64 = load i8, ptr %63, align 8
  %65 = and i8 %64, -4
  store i8 %65, ptr %63, align 8
  store ptr null, ptr %57, align 8, !tbaa !280
  store i32 %60, ptr %58, align 4, !tbaa !277
  br label %66

66:                                               ; preds = %53, %62
  %67 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 1
  %68 = trunc i32 %1 to i8
  %69 = load i8, ptr %67, align 8
  %70 = and i8 %68, 3
  %71 = and i8 %69, -4
  %72 = or disjoint i8 %71, %70
  store i8 %72, ptr %67, align 8
  br label %93

73:                                               ; preds = %2
  %74 = trunc i64 %3 to i16
  switch i16 %74, label %79 [
    i16 32, label %75
    i16 34, label %77
  ], !prof !657

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %83

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %83

79:                                               ; preds = %73
  %80 = icmp eq i64 %4, 36
  %81 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %82 = select i1 %80, ptr %81, ptr null
  br label %83

83:                                               ; preds = %79, %77, %75
  %84 = phi ptr [ %76, %75 ], [ %78, %77 ], [ %82, %79 ]
  %85 = icmp ne ptr %84, null
  tail call void @llvm.assume(i1 %85)
  %86 = load ptr, ptr %84, align 8, !tbaa !243
  %87 = trunc i32 %1 to i8
  %88 = load i8, ptr %86, align 8
  %89 = shl i8 %87, 2
  %90 = and i8 %89, 12
  %91 = and i8 %88, -13
  %92 = or disjoint i8 %91, %90
  store i8 %92, ptr %86, align 8
  br label %93

93:                                               ; preds = %83, %66
  ret void
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @compute_idf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @insert_phi_nodes_for(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !749 !PGOFuncName !750 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.def_blocks_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %0, ptr %5, align 8, !tbaa !333
  %7 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %8 = call ptr @htab_find(ptr noundef %7, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !751

10:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1082, ptr noundef nonnull @.str.32) #19
  br label %11

11:                                               ; preds = %3, %10
  %12 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !337
  %14 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %13) #19
  %15 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !335
  %17 = getelementptr inbounds %struct.def_blocks_d, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !336
  %19 = load ptr, ptr %18, align 8, !tbaa !297
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !752

21:                                               ; preds = %11
  call void @bitmap_clear(ptr noundef %1) #19
  br label %423

22:                                               ; preds = %11
  %23 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %24 = call zeroext i8 @bitmap_and_compl(ptr noundef %23, ptr noundef %16, ptr noundef nonnull %18) #19
  %25 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %23) #19
  %26 = load ptr, ptr %1, align 8, !tbaa !297
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !753

28:                                               ; preds = %22
  call void @bitmap_obstack_free(ptr noundef %23) #19
  br label %423

29:                                               ; preds = %22
  %30 = call zeroext i8 @bitmap_ior(ptr noundef %23, ptr noundef %16, ptr noundef nonnull %1) #19
  %31 = call i64 @bitmap_count_bits(ptr noundef %23) #19
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 1
  %34 = or disjoint i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = call ptr @xmalloc(i64 noundef %36) #19
  store i32 1, ptr %37, align 4, !tbaa !754
  %38 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 0, i32 1
  store i32 0, ptr %38, align 4, !tbaa !756
  %39 = load ptr, ptr %23, align 8, !tbaa !297
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @bitmap_zero_bits, ptr %39, !prof !757
  %42 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !299
  %44 = shl i32 %43, 7
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !301
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = or disjoint i32 %44, %48
  br label %50

50:                                               ; preds = %112, %29
  %51 = phi ptr [ %41, %29 ], [ %107, %112 ]
  %52 = phi i32 [ %49, %29 ], [ %132, %112 ]
  %53 = phi i32 [ 0, %29 ], [ %109, %112 ]
  %54 = phi i64 [ %46, %29 ], [ %131, %112 ]
  %55 = phi i32 [ 1, %29 ], [ %130, %112 ]
  %56 = icmp eq i64 %54, 0
  br i1 %56, label %71, label %57, !prof !758

57:                                               ; preds = %85, %50
  %58 = phi ptr [ %51, %50 ], [ %76, %85 ]
  %59 = phi i32 [ %52, %50 ], [ %87, %85 ]
  %60 = phi i32 [ %53, %50 ], [ %86, %85 ]
  %61 = phi i64 [ %54, %50 ], [ %90, %85 ]
  %62 = and i64 %61, 1
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %106, !prof !759

64:                                               ; preds = %57, %64
  %65 = phi i64 [ %67, %64 ], [ %61, %57 ]
  %66 = phi i32 [ %68, %64 ], [ %59, %57 ]
  %67 = lshr exact i64 %65, 1
  %68 = add i32 %66, 1
  %69 = and i64 %65, 2
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %64, label %106, !prof !760, !llvm.loop !302

71:                                               ; preds = %50
  %72 = add i32 %52, 63
  %73 = and i32 %72, -64
  %74 = add i32 %53, 1
  br label %75

75:                                               ; preds = %102, %71
  %76 = phi ptr [ %51, %71 ], [ %100, %102 ]
  %77 = phi i32 [ %73, %71 ], [ %105, %102 ]
  %78 = phi i64 [ %54, %71 ], [ %98, %102 ]
  %79 = phi i32 [ %74, %71 ], [ 0, %102 ]
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %96, label %81, !prof !761

81:                                               ; preds = %75
  %82 = add i32 %77, 128
  %83 = shl i32 %79, 6
  %84 = sub i32 %82, %83
  br label %85

85:                                               ; preds = %81, %92
  %86 = phi i32 [ %94, %92 ], [ %79, %81 ]
  %87 = phi i32 [ %93, %92 ], [ %77, %81 ]
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 3, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !301
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %57, !prof !762

92:                                               ; preds = %85
  %93 = add i32 %87, 64
  %94 = add i32 %86, 1
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %85, !prof !763, !llvm.loop !303

96:                                               ; preds = %92, %75
  %97 = phi i32 [ %77, %75 ], [ %84, %92 ]
  %98 = phi i64 [ %78, %75 ], [ %90, %92 ]
  %99 = phi i32 [ %79, %75 ], [ 2, %92 ]
  %100 = load ptr, ptr %76, align 8, !tbaa !304
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102, !prof !764

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %100, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !299
  %105 = shl i32 %104, 7
  br label %75, !llvm.loop !305

106:                                              ; preds = %96, %64, %57
  %107 = phi ptr [ %58, %57 ], [ %58, %64 ], [ %100, %96 ]
  %108 = phi i32 [ %59, %57 ], [ %68, %64 ], [ %97, %96 ]
  %109 = phi i32 [ %60, %57 ], [ %60, %64 ], [ %99, %96 ]
  %110 = phi i64 [ %61, %57 ], [ %67, %64 ], [ %98, %96 ]
  %111 = phi i1 [ false, %57 ], [ false, %64 ], [ true, %96 ]
  br i1 %111, label %133, label %112, !prof !765

112:                                              ; preds = %106
  %113 = load ptr, ptr @cfun, align 8, !tbaa !243
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !294
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !306
  %118 = zext i32 %108 to i64
  %119 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %117, i64 0, i32 2, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !243
  %121 = zext i32 %55 to i64
  %122 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %121
  store i32 %108, ptr %122, align 4, !tbaa !754
  %123 = call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %120) #19
  %124 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %121, i32 1
  store i32 %123, ptr %124, align 4, !tbaa !756
  %125 = add i32 %55, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %126
  store i32 %108, ptr %127, align 4, !tbaa !754
  %128 = call i32 @bb_dom_dfs_out(i32 noundef 1, ptr noundef %120) #19
  %129 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %126, i32 1
  store i32 %128, ptr %129, align 4, !tbaa !756
  %130 = add i32 %55, 2
  %131 = lshr i64 %110, 1
  %132 = add i32 %108, 1
  br label %50, !llvm.loop !766

133:                                              ; preds = %106
  call void @bitmap_obstack_free(ptr noundef nonnull %23) #19
  %134 = icmp eq i32 %55, %34
  br i1 %134, label %136, label %135, !prof !767

135:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 894, ptr noundef nonnull @.str.32) #19
  br label %136

136:                                              ; preds = %135, %133
  %137 = zext i32 %55 to i64
  call void @spec_qsort(ptr noundef nonnull %37, i64 noundef %137, i64 noundef 8, ptr noundef nonnull @cmp_dfsnum) #19
  %138 = load i32, ptr %37, align 4, !tbaa !754
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %141, label %140, !prof !767

140:                                              ; preds = %136
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 900, ptr noundef nonnull @.str.32) #19
  br label %141

141:                                              ; preds = %140, %136
  %142 = add i32 %32, 1
  %143 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %142, i64 noundef 8, i64 noundef 4) #19
  %144 = load i32, ptr %143, align 4, !tbaa !768
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4, !tbaa !768
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds %struct.VEC_int_base, ptr %143, i64 0, i32 2, i64 %146
  store i32 1, ptr %147, align 4, !tbaa !258
  %148 = icmp ugt i32 %55, 1
  br i1 %148, label %149, label %201, !prof !770

149:                                              ; preds = %141
  %150 = zext i32 %55 to i64
  br label %151

151:                                              ; preds = %149, %197
  %152 = phi i64 [ 1, %149 ], [ %199, %197 ]
  %153 = phi i32 [ 1, %149 ], [ %182, %197 ]
  %154 = phi i32 [ 1, %149 ], [ %198, %197 ]
  %155 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %152
  %156 = load i32, ptr %155, align 4, !tbaa !754
  %157 = icmp eq i32 %156, %153
  br i1 %157, label %158, label %171, !prof !771

158:                                              ; preds = %151
  %159 = load i32, ptr %143, align 4, !tbaa !768
  %160 = add i32 %159, -1
  store i32 %160, ptr %143, align 4, !tbaa !768
  %161 = add i32 %159, -2
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.VEC_int_base, ptr %143, i64 0, i32 2, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !258
  %165 = zext i32 %154 to i64
  %166 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %165
  store i32 %164, ptr %166, align 4, !tbaa !754
  %167 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %152, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !756
  %169 = add i32 %168, 1
  %170 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %165, i32 1
  store i32 %169, ptr %170, align 4, !tbaa !756
  br label %181

171:                                              ; preds = %151
  %172 = zext i32 %154 to i64
  %173 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %172
  store i32 %156, ptr %173, align 4, !tbaa !754
  %174 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %152, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !756
  %176 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %172, i32 1
  store i32 %175, ptr %176, align 4, !tbaa !756
  %177 = load i32, ptr %143, align 4, !tbaa !768
  %178 = add i32 %177, 1
  store i32 %178, ptr %143, align 4, !tbaa !768
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds %struct.VEC_int_base, ptr %143, i64 0, i32 2, i64 %179
  store i32 %156, ptr %180, align 4, !tbaa !258
  br label %181

181:                                              ; preds = %171, %158
  %182 = phi i32 [ %164, %158 ], [ %156, %171 ]
  %183 = zext i32 %154 to i64
  %184 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %183, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !756
  %186 = add i32 %154, -1
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %187, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !756
  %190 = icmp eq i32 %185, %189
  br i1 %190, label %191, label %195, !prof !772

191:                                              ; preds = %181
  %192 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %187
  %193 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %183
  %194 = load i32, ptr %193, align 4, !tbaa !754
  store i32 %194, ptr %192, align 4, !tbaa !754
  br label %197

195:                                              ; preds = %181
  %196 = add i32 %154, 1
  br label %197

197:                                              ; preds = %195, %191
  %198 = phi i32 [ %154, %191 ], [ %196, %195 ]
  %199 = add nuw nsw i64 %152, 1
  %200 = icmp eq i64 %199, %150
  br i1 %200, label %201, label %151, !prof !773, !llvm.loop !774

201:                                              ; preds = %197, %141
  %202 = phi i32 [ 1, %141 ], [ %198, %197 ]
  %203 = load i32, ptr %143, align 4, !tbaa !768
  %204 = add i32 %203, -1
  store i32 %204, ptr %143, align 4, !tbaa !768
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %207, label %206, !prof !767

206:                                              ; preds = %201
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 942, ptr noundef nonnull @.str.32) #19
  br label %207

207:                                              ; preds = %206, %201
  %208 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %209 = load ptr, ptr %18, align 8, !tbaa !297
  %210 = icmp eq ptr %209, null
  %211 = select i1 %210, ptr @bitmap_zero_bits, ptr %209, !prof !757
  %212 = getelementptr inbounds %struct.bitmap_element_def, ptr %211, i64 0, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !299
  %214 = shl i32 %213, 7
  %215 = getelementptr inbounds %struct.bitmap_element_def, ptr %211, i64 0, i32 3
  %216 = load i64, ptr %215, align 8, !tbaa !301
  %217 = icmp eq i64 %216, 0
  %218 = zext i1 %217 to i32
  %219 = or disjoint i32 %214, %218
  br label %220

220:                                              ; preds = %291, %207
  %221 = phi ptr [ %211, %207 ], [ %277, %291 ]
  %222 = phi i32 [ %219, %207 ], [ %298, %291 ]
  %223 = phi i32 [ 0, %207 ], [ %279, %291 ]
  %224 = phi i64 [ %216, %207 ], [ %297, %291 ]
  %225 = phi ptr [ %143, %207 ], [ %292, %291 ]
  %226 = icmp eq i64 %224, 0
  br i1 %226, label %241, label %227, !prof !775

227:                                              ; preds = %255, %220
  %228 = phi ptr [ %221, %220 ], [ %246, %255 ]
  %229 = phi i32 [ %222, %220 ], [ %257, %255 ]
  %230 = phi i32 [ %223, %220 ], [ %256, %255 ]
  %231 = phi i64 [ %224, %220 ], [ %260, %255 ]
  %232 = and i64 %231, 1
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %276, !prof !776

234:                                              ; preds = %227, %234
  %235 = phi i64 [ %237, %234 ], [ %231, %227 ]
  %236 = phi i32 [ %238, %234 ], [ %229, %227 ]
  %237 = lshr exact i64 %235, 1
  %238 = add i32 %236, 1
  %239 = and i64 %235, 2
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %234, label %276, !prof !777, !llvm.loop !302

241:                                              ; preds = %220
  %242 = add i32 %222, 63
  %243 = and i32 %242, -64
  %244 = add i32 %223, 1
  br label %245

245:                                              ; preds = %272, %241
  %246 = phi ptr [ %221, %241 ], [ %270, %272 ]
  %247 = phi i32 [ %243, %241 ], [ %275, %272 ]
  %248 = phi i64 [ %224, %241 ], [ %268, %272 ]
  %249 = phi i32 [ %244, %241 ], [ 0, %272 ]
  %250 = icmp eq i32 %249, 2
  br i1 %250, label %266, label %251, !prof !778

251:                                              ; preds = %245
  %252 = add i32 %247, 128
  %253 = shl i32 %249, 6
  %254 = sub i32 %252, %253
  br label %255

255:                                              ; preds = %251, %262
  %256 = phi i32 [ %264, %262 ], [ %249, %251 ]
  %257 = phi i32 [ %263, %262 ], [ %247, %251 ]
  %258 = zext i32 %256 to i64
  %259 = getelementptr inbounds %struct.bitmap_element_def, ptr %246, i64 0, i32 3, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !301
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %227, !prof !779

262:                                              ; preds = %255
  %263 = add i32 %257, 64
  %264 = add i32 %256, 1
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %255, !prof !780, !llvm.loop !303

266:                                              ; preds = %262, %245
  %267 = phi i32 [ %247, %245 ], [ %254, %262 ]
  %268 = phi i64 [ %248, %245 ], [ %260, %262 ]
  %269 = phi i32 [ %249, %245 ], [ 2, %262 ]
  %270 = load ptr, ptr %246, align 8, !tbaa !304
  %271 = icmp eq ptr %270, null
  br i1 %271, label %276, label %272, !prof !781

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.bitmap_element_def, ptr %270, i64 0, i32 2
  %274 = load i32, ptr %273, align 8, !tbaa !299
  %275 = shl i32 %274, 7
  br label %245, !llvm.loop !305

276:                                              ; preds = %266, %234, %227
  %277 = phi ptr [ %228, %227 ], [ %228, %234 ], [ %270, %266 ]
  %278 = phi i32 [ %229, %227 ], [ %238, %234 ], [ %267, %266 ]
  %279 = phi i32 [ %230, %227 ], [ %230, %234 ], [ %269, %266 ]
  %280 = phi i64 [ %231, %227 ], [ %237, %234 ], [ %268, %266 ]
  %281 = phi i1 [ false, %227 ], [ false, %234 ], [ true, %266 ]
  br i1 %281, label %282, label %284, !prof !782

282:                                              ; preds = %276
  %283 = icmp ugt i32 %202, 1
  br label %299

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.VEC_int_base, ptr %225, i64 0, i32 1
  %286 = load i32, ptr %285, align 4, !tbaa !783
  %287 = load i32, ptr %225, align 4, !tbaa !768
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %291, !prof !784

289:                                              ; preds = %284
  %290 = call ptr @vec_heap_o_reserve(ptr noundef nonnull %225, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  br label %291

291:                                              ; preds = %289, %284
  %292 = phi ptr [ %290, %289 ], [ %225, %284 ]
  %293 = load i32, ptr %292, align 4, !tbaa !768
  %294 = add i32 %293, 1
  store i32 %294, ptr %292, align 4, !tbaa !768
  %295 = zext i32 %293 to i64
  %296 = getelementptr inbounds %struct.VEC_int_base, ptr %292, i64 0, i32 2, i64 %295
  store i32 %278, ptr %296, align 4, !tbaa !258
  %297 = lshr i64 %280, 1
  %298 = add i32 %278, 1
  br label %220, !llvm.loop !785

299:                                              ; preds = %381, %282
  %300 = phi ptr [ %225, %282 ], [ %366, %381 ]
  %301 = icmp eq ptr %300, null
  br label %302

302:                                              ; preds = %315, %299
  br i1 %301, label %305, label %303, !prof !786

303:                                              ; preds = %302
  %304 = load i32, ptr %300, align 4, !tbaa !768
  br label %305

305:                                              ; preds = %303, %302
  %306 = phi i32 [ %304, %303 ], [ 0, %302 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %420, label %308, !prof !787

308:                                              ; preds = %305
  %309 = load i32, ptr %300, align 4, !tbaa !768
  %310 = add i32 %309, -1
  store i32 %310, ptr %300, align 4, !tbaa !768
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.VEC_int_base, ptr %300, i64 0, i32 2, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !258
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316, !prof !788

315:                                              ; preds = %308, %350, %343
  br label %302, !llvm.loop !789

316:                                              ; preds = %308
  %317 = call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %313) #19
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %350, !prof !790

319:                                              ; preds = %316
  %320 = load ptr, ptr @cfun, align 8, !tbaa !243
  %321 = getelementptr inbounds %struct.function, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !294
  %323 = getelementptr inbounds %struct.control_flow_graph, ptr %322, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !306
  %325 = zext i32 %313 to i64
  %326 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %324, i64 0, i32 2, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !243
  %328 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %327) #19
  %329 = call i32 @bb_dom_dfs_in(i32 noundef 1, ptr noundef %328) #19
  br i1 %283, label %330, label %343, !prof !791

330:                                              ; preds = %319, %330
  %331 = phi i32 [ %340, %330 ], [ 0, %319 ]
  %332 = phi i32 [ %339, %330 ], [ %202, %319 ]
  %333 = add i32 %331, %332
  %334 = lshr i32 %333, 1
  %335 = zext nneg i32 %334 to i64
  %336 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %335, i32 1
  %337 = load i32, ptr %336, align 4, !tbaa !756
  %338 = icmp ugt i32 %337, %329
  %339 = select i1 %338, i32 %334, i32 %332, !prof !792
  %340 = select i1 %338, i32 %331, i32 %334, !prof !792
  %341 = add nuw i32 %340, 1
  %342 = icmp ugt i32 %339, %341
  br i1 %342, label %330, label %343, !prof !793, !llvm.loop !794

343:                                              ; preds = %330, %319
  %344 = phi i32 [ 0, %319 ], [ %340, %330 ]
  %345 = zext nneg i32 %344 to i64
  %346 = getelementptr inbounds %struct.dom_dfsnum, ptr %37, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !754
  %348 = call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %347) #19
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %315, label %350, !prof !795

350:                                              ; preds = %343, %316
  %351 = phi i32 [ %347, %343 ], [ %313, %316 ]
  %352 = call i32 @bitmap_bit_p(ptr noundef %208, i32 noundef %351) #19
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %315, !prof !796

354:                                              ; preds = %350
  %355 = call zeroext i8 @bitmap_set_bit(ptr noundef %208, i32 noundef %351) #19
  %356 = load ptr, ptr @cfun, align 8, !tbaa !243
  %357 = getelementptr inbounds %struct.function, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !294
  %359 = getelementptr inbounds %struct.control_flow_graph, ptr %358, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !306
  %361 = zext i32 %351 to i64
  %362 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %360, i64 0, i32 2, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !243
  %364 = icmp eq ptr %363, null
  br label %365

365:                                              ; preds = %418, %354
  %366 = phi ptr [ %300, %354 ], [ %409, %418 ]
  %367 = phi i32 [ 0, %354 ], [ %419, %418 ]
  br i1 %364, label %368, label %369, !prof !797

368:                                              ; preds = %365
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %369

369:                                              ; preds = %368, %365
  %370 = load ptr, ptr %363, align 8, !tbaa !243
  %371 = icmp eq ptr %370, null
  br i1 %371, label %374, label %372, !prof !797

372:                                              ; preds = %369
  %373 = load i32, ptr %370, align 8, !tbaa !309
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi i32 [ %373, %372 ], [ 0, %369 ]
  %376 = icmp eq i32 %375, %367
  br i1 %376, label %381, label %377, !prof !798

377:                                              ; preds = %374
  %378 = zext i32 %367 to i64
  %379 = getelementptr inbounds %struct.VEC_edge_base, ptr %370, i64 0, i32 2, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !243
  br label %381

381:                                              ; preds = %377, %374
  %382 = phi ptr [ %380, %377 ], [ null, %374 ]
  br i1 %376, label %299, label %383, !prof !798, !llvm.loop !789

383:                                              ; preds = %381
  %384 = load ptr, ptr %382, align 8, !tbaa !311
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %384, i64 0, i32 9
  %386 = load i32, ptr %385, align 8, !tbaa !313
  %387 = call i32 @bitmap_bit_p(ptr noundef nonnull %18, i32 noundef %386) #19
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %408, !prof !799

389:                                              ; preds = %383
  %390 = call i32 @bitmap_bit_p(ptr noundef %16, i32 noundef %386) #19
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %408, !prof !800

392:                                              ; preds = %389
  %393 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %18, i32 noundef %386) #19
  %394 = icmp eq ptr %366, null
  br i1 %394, label %400, label %395, !prof !801

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.VEC_int_base, ptr %366, i64 0, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !783
  %398 = load i32, ptr %366, align 4, !tbaa !768
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %402, !prof !802

400:                                              ; preds = %395, %392
  %401 = call ptr @vec_heap_o_reserve(ptr noundef %366, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  br label %402

402:                                              ; preds = %400, %395
  %403 = phi ptr [ %401, %400 ], [ %366, %395 ]
  %404 = load i32, ptr %403, align 4, !tbaa !768
  %405 = add i32 %404, 1
  store i32 %405, ptr %403, align 4, !tbaa !768
  %406 = zext i32 %404 to i64
  %407 = getelementptr inbounds %struct.VEC_int_base, ptr %403, i64 0, i32 2, i64 %406
  store i32 %386, ptr %407, align 4, !tbaa !258
  br label %408

408:                                              ; preds = %402, %389, %383
  %409 = phi ptr [ %403, %402 ], [ %366, %389 ], [ %366, %383 ]
  %410 = load ptr, ptr %363, align 8, !tbaa !243
  %411 = icmp eq ptr %410, null
  br i1 %411, label %414, label %412, !prof !803

412:                                              ; preds = %408
  %413 = load i32, ptr %410, align 8, !tbaa !309
  br label %414

414:                                              ; preds = %412, %408
  %415 = phi i32 [ %413, %412 ], [ 0, %408 ]
  %416 = icmp ult i32 %367, %415
  br i1 %416, label %418, label %417, !prof !804

417:                                              ; preds = %414
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %418

418:                                              ; preds = %417, %414
  %419 = add i32 %367, 1
  br label %365, !llvm.loop !805

420:                                              ; preds = %305
  br i1 %301, label %422, label %421, !prof !757

421:                                              ; preds = %420
  call void @free(ptr noundef %300)
  br label %422

422:                                              ; preds = %421, %420
  call void @bitmap_copy(ptr noundef nonnull %1, ptr noundef %208) #19
  call void @bitmap_obstack_free(ptr noundef %208) #19
  call void @free(ptr noundef %37)
  br label %423

423:                                              ; preds = %21, %28, %422
  %424 = load ptr, ptr %1, align 8, !tbaa !297
  %425 = icmp eq ptr %424, null
  %426 = select i1 %425, ptr @bitmap_zero_bits, ptr %424, !prof !806
  %427 = getelementptr inbounds %struct.bitmap_element_def, ptr %426, i64 0, i32 2
  %428 = load i32, ptr %427, align 8, !tbaa !299
  %429 = shl i32 %428, 7
  %430 = getelementptr inbounds %struct.bitmap_element_def, ptr %426, i64 0, i32 3
  %431 = load i64, ptr %430, align 8, !tbaa !301
  %432 = icmp eq i64 %431, 0
  %433 = zext i1 %432 to i32
  %434 = or disjoint i32 %429, %433
  br label %435

435:                                              ; preds = %727, %423
  %436 = phi i32 [ 0, %423 ], [ %491, %727 ]
  %437 = phi ptr [ %426, %423 ], [ %492, %727 ]
  %438 = phi i64 [ %431, %423 ], [ %728, %727 ]
  %439 = phi i32 [ %434, %423 ], [ %729, %727 ]
  %440 = icmp eq i64 %438, 0
  br i1 %440, label %455, label %441, !prof !807

441:                                              ; preds = %469, %435
  %442 = phi i32 [ %436, %435 ], [ %470, %469 ]
  %443 = phi ptr [ %437, %435 ], [ %460, %469 ]
  %444 = phi i64 [ %438, %435 ], [ %474, %469 ]
  %445 = phi i32 [ %439, %435 ], [ %471, %469 ]
  %446 = and i64 %444, 1
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %490, !prof !808

448:                                              ; preds = %441, %448
  %449 = phi i32 [ %452, %448 ], [ %445, %441 ]
  %450 = phi i64 [ %451, %448 ], [ %444, %441 ]
  %451 = lshr exact i64 %450, 1
  %452 = add i32 %449, 1
  %453 = and i64 %450, 2
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %448, label %490, !prof !809, !llvm.loop !302

455:                                              ; preds = %435
  %456 = add i32 %439, 63
  %457 = and i32 %456, -64
  %458 = add i32 %436, 1
  br label %459

459:                                              ; preds = %486, %455
  %460 = phi ptr [ %437, %455 ], [ %484, %486 ]
  %461 = phi i64 [ %438, %455 ], [ %481, %486 ]
  %462 = phi i32 [ %457, %455 ], [ %489, %486 ]
  %463 = phi i32 [ %458, %455 ], [ 0, %486 ]
  %464 = icmp eq i32 %463, 2
  br i1 %464, label %480, label %465, !prof !810

465:                                              ; preds = %459
  %466 = add i32 %462, 128
  %467 = shl i32 %463, 6
  %468 = sub i32 %466, %467
  br label %469

469:                                              ; preds = %465, %476
  %470 = phi i32 [ %478, %476 ], [ %463, %465 ]
  %471 = phi i32 [ %477, %476 ], [ %462, %465 ]
  %472 = zext i32 %470 to i64
  %473 = getelementptr inbounds %struct.bitmap_element_def, ptr %460, i64 0, i32 3, i64 %472
  %474 = load i64, ptr %473, align 8, !tbaa !301
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %441, !prof !811

476:                                              ; preds = %469
  %477 = add i32 %471, 64
  %478 = add i32 %470, 1
  %479 = icmp eq i32 %478, 2
  br i1 %479, label %480, label %469, !prof !812, !llvm.loop !303

480:                                              ; preds = %476, %459
  %481 = phi i64 [ %461, %459 ], [ %474, %476 ]
  %482 = phi i32 [ %462, %459 ], [ %468, %476 ]
  %483 = phi i32 [ %463, %459 ], [ 2, %476 ]
  %484 = load ptr, ptr %460, align 8, !tbaa !304
  %485 = icmp eq ptr %484, null
  br i1 %485, label %490, label %486, !prof !813

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.bitmap_element_def, ptr %484, i64 0, i32 2
  %488 = load i32, ptr %487, align 8, !tbaa !299
  %489 = shl i32 %488, 7
  br label %459, !llvm.loop !305

490:                                              ; preds = %480, %448, %441
  %491 = phi i32 [ %442, %441 ], [ %442, %448 ], [ %483, %480 ]
  %492 = phi ptr [ %443, %441 ], [ %443, %448 ], [ %484, %480 ]
  %493 = phi i64 [ %444, %441 ], [ %451, %448 ], [ %481, %480 ]
  %494 = phi i32 [ %445, %441 ], [ %452, %448 ], [ %482, %480 ]
  %495 = phi i1 [ false, %441 ], [ false, %448 ], [ true, %480 ]
  br i1 %495, label %730, label %496, !prof !814

496:                                              ; preds = %490
  %497 = icmp eq i8 %2, 0
  %498 = load ptr, ptr @cfun, align 8, !tbaa !243
  %499 = getelementptr inbounds %struct.function, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !294
  %501 = getelementptr inbounds %struct.control_flow_graph, ptr %500, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !306
  %503 = zext i32 %494 to i64
  %504 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %502, i64 0, i32 2, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !243
  br i1 %497, label %566, label %506, !prof !815

506:                                              ; preds = %496
  %507 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %510, !prof !499

509:                                              ; preds = %506
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %510

510:                                              ; preds = %509, %506
  %511 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %512 = getelementptr inbounds %struct.basic_block_def, ptr %505, i64 0, i32 9
  %513 = load i32, ptr %512, align 8, !tbaa !313
  %514 = call i32 @bitmap_bit_p(ptr noundef %511, i32 noundef %513) #19
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %566, !prof !500

516:                                              ; preds = %510
  %517 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %518 = load i32, ptr %512, align 8, !tbaa !313
  %519 = call zeroext i8 @bitmap_set_bit(ptr noundef %517, i32 noundef %518) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %505) #19
  %520 = load ptr, ptr %4, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %521 = icmp eq ptr %520, null
  br i1 %521, label %530, label %522, !prof !502

522:                                              ; preds = %516, %522
  %523 = phi ptr [ %528, %522 ], [ %520, %516 ]
  %524 = load ptr, ptr %523, align 8, !tbaa !503
  %525 = load i32, ptr %524, align 8
  %526 = and i32 %525, -2561
  store i32 %526, ptr %524, align 8
  %527 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %523, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !505
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %522, !prof !506, !llvm.loop !507

530:                                              ; preds = %522, %516
  %531 = getelementptr inbounds %struct.basic_block_def, ptr %505, i64 0, i32 13
  %532 = load i32, ptr %531, align 8, !tbaa !508, !noalias !816
  %533 = and i32 %532, 512
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %541, !prof !512

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.basic_block_def, ptr %505, i64 0, i32 7
  %537 = load ptr, ptr %536, align 8, !tbaa !254, !noalias !816
  %538 = icmp eq ptr %537, null
  br i1 %538, label %541, label %539, !prof !513

539:                                              ; preds = %535
  %540 = load ptr, ptr %537, align 8, !tbaa !514, !noalias !816
  br label %541

541:                                              ; preds = %539, %535, %530
  %542 = phi ptr [ %540, %539 ], [ null, %535 ], [ null, %530 ]
  %543 = icmp eq ptr %542, null
  br i1 %543, label %546, label %544, !prof !513

544:                                              ; preds = %541
  %545 = load ptr, ptr %542, align 8, !tbaa !516, !noalias !816
  br label %546

546:                                              ; preds = %544, %541
  %547 = phi ptr [ %545, %544 ], [ null, %541 ]
  %548 = icmp eq ptr %547, null
  br i1 %548, label %566, label %549, !prof !518

549:                                              ; preds = %546, %560
  %550 = phi ptr [ %564, %560 ], [ %547, %546 ]
  %551 = load ptr, ptr %550, align 8, !tbaa !503
  %552 = load i32, ptr %551, align 8
  %553 = and i32 %552, 255
  %554 = add nsw i32 %553, -10
  %555 = icmp ult i32 %554, -9
  %556 = and i32 %552, 8192
  %557 = icmp eq i32 %556, 0
  %558 = or i1 %557, %555
  br i1 %558, label %560, label %559, !prof !519

559:                                              ; preds = %549
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %560

560:                                              ; preds = %559, %549
  %561 = load i32, ptr %551, align 8
  %562 = and i32 %561, -2561
  store i32 %562, ptr %551, align 8
  %563 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %550, i64 0, i32 2
  %564 = load ptr, ptr %563, align 8, !tbaa !505
  %565 = icmp eq ptr %564, null
  br i1 %565, label %566, label %549, !prof !520, !llvm.loop !521

566:                                              ; preds = %560, %546, %510, %496
  %567 = load i64, ptr %0, align 8
  %568 = and i64 %567, 65535
  %569 = icmp eq i64 %568, 141
  br i1 %569, label %570, label %605, !prof !819

570:                                              ; preds = %566
  br i1 %497, label %571, label %572, !prof !820

571:                                              ; preds = %570
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1109, ptr noundef nonnull @.str.32) #19
  br label %572

572:                                              ; preds = %570, %571
  %573 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %505) #19
  %574 = call ptr @duplicate_ssa_name(ptr noundef nonnull %0, ptr noundef %573) #19
  %575 = getelementptr inbounds %struct.gimple_statement_phi, ptr %573, i64 0, i32 3
  store ptr %574, ptr %575, align 8, !tbaa !254
  call fastcc void @add_new_name_mapping(ptr noundef %574, ptr noundef nonnull %0)
  %576 = icmp eq ptr %505, null
  br label %577

577:                                              ; preds = %603, %572
  %578 = phi i32 [ 0, %572 ], [ %604, %603 ]
  br i1 %576, label %579, label %580, !prof !821

579:                                              ; preds = %577
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %580

580:                                              ; preds = %579, %577
  %581 = load ptr, ptr %505, align 8, !tbaa !243
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583, !prof !821

583:                                              ; preds = %580
  %584 = load i32, ptr %581, align 8, !tbaa !309
  br label %585

585:                                              ; preds = %583, %580
  %586 = phi i32 [ %584, %583 ], [ 0, %580 ]
  %587 = icmp eq i32 %586, %578
  br i1 %587, label %592, label %588, !prof !822

588:                                              ; preds = %585
  %589 = zext i32 %578 to i64
  %590 = getelementptr inbounds %struct.VEC_edge_base, ptr %581, i64 0, i32 2, i64 %589
  %591 = load ptr, ptr %590, align 8, !tbaa !243
  br label %592

592:                                              ; preds = %585, %588
  %593 = phi ptr [ %591, %588 ], [ null, %585 ]
  br i1 %587, label %649, label %594, !prof !822

594:                                              ; preds = %592
  call void @add_phi_arg(ptr noundef %573, ptr noundef nonnull %0, ptr noundef %593, i32 noundef 0) #19
  %595 = load ptr, ptr %505, align 8, !tbaa !243
  %596 = icmp eq ptr %595, null
  br i1 %596, label %599, label %597, !prof !823

597:                                              ; preds = %594
  %598 = load i32, ptr %595, align 8, !tbaa !309
  br label %599

599:                                              ; preds = %597, %594
  %600 = phi i32 [ %598, %597 ], [ 0, %594 ]
  %601 = icmp ult i32 %578, %600
  br i1 %601, label %603, label %602, !prof !824

602:                                              ; preds = %599
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %603

603:                                              ; preds = %599, %602
  %604 = add i32 %578, 1
  br label %577, !llvm.loop !825

605:                                              ; preds = %566
  %606 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %568
  %607 = load i32, ptr %606, align 4, !tbaa !258
  %608 = icmp eq i32 %607, 3
  br i1 %608, label %610, label %609, !prof !826

609:                                              ; preds = %605
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1129, ptr noundef nonnull @.str.32) #19
  br label %610

610:                                              ; preds = %605, %609
  %611 = call ptr @create_phi_node(ptr noundef nonnull %0, ptr noundef %505) #19
  %612 = call ptr @target_for_debug_bind(ptr noundef nonnull %0) #19
  %613 = icmp eq ptr %612, null
  br i1 %613, label %649, label %614, !prof !826

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.gimple_statement_phi, ptr %611, i64 0, i32 3
  %616 = load ptr, ptr %615, align 8, !tbaa !243
  %617 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %612, ptr noundef %616, ptr noundef %611) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %618 = getelementptr inbounds %struct.basic_block_def, ptr %505, i64 0, i32 13
  %619 = load i32, ptr %618, align 8, !tbaa !508, !noalias !833
  %620 = and i32 %619, 512
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %628

622:                                              ; preds = %614
  %623 = getelementptr inbounds %struct.basic_block_def, ptr %505, i64 0, i32 7
  %624 = load ptr, ptr %623, align 8, !tbaa !254, !noalias !833
  %625 = icmp eq ptr %624, null
  br i1 %625, label %628, label %626

626:                                              ; preds = %622
  %627 = load ptr, ptr %624, align 8, !tbaa !514, !noalias !833
  br label %628

628:                                              ; preds = %626, %622, %614
  %629 = phi ptr [ %627, %626 ], [ null, %622 ], [ null, %614 ]
  %630 = icmp eq ptr %629, null
  br i1 %630, label %633, label %631

631:                                              ; preds = %628
  %632 = load ptr, ptr %629, align 8, !tbaa !516, !noalias !833
  br label %633

633:                                              ; preds = %631, %628
  %634 = phi ptr [ %632, %631 ], [ null, %628 ]
  %635 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %6, i64 0, i32 1
  %636 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %6, i64 0, i32 2
  store ptr %634, ptr %6, align 8, !tbaa !834, !alias.scope !833
  store ptr %629, ptr %635, align 8, !tbaa !836, !alias.scope !833
  store ptr %505, ptr %636, align 8, !tbaa !837, !alias.scope !833
  %637 = icmp eq ptr %634, null
  br i1 %637, label %648, label %638

638:                                              ; preds = %633, %644
  %639 = phi ptr [ %646, %644 ], [ %634, %633 ]
  %640 = load ptr, ptr %639, align 8, !tbaa !503, !noalias !827
  %641 = load i32, ptr %640, align 8, !noalias !827
  %642 = and i32 %641, 255
  %643 = icmp eq i32 %642, 4
  br i1 %643, label %644, label %648

644:                                              ; preds = %638
  %645 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %639, i64 0, i32 2
  %646 = load ptr, ptr %645, align 8, !tbaa !505, !noalias !827
  store ptr %646, ptr %6, align 8, !tbaa !834, !alias.scope !827
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %638, !llvm.loop !838

648:                                              ; preds = %638, %644, %633
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %617, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  br label %649

649:                                              ; preds = %592, %610, %648
  %650 = phi ptr [ %611, %648 ], [ %611, %610 ], [ %573, %592 ]
  %651 = load i32, ptr %650, align 8
  %652 = or i32 %651, 2048
  store i32 %652, ptr %650, align 8
  %653 = getelementptr inbounds %struct.basic_block_def, ptr %505, i64 0, i32 9
  %654 = load i32, ptr %653, align 8, !tbaa !313
  %655 = and i32 %651, 512
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %727, !prof !633

657:                                              ; preds = %649
  %658 = or i32 %651, 2560
  store i32 %658, ptr %650, align 8
  %659 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %660 = icmp eq ptr %659, null
  br i1 %660, label %727, label %661, !prof !634

661:                                              ; preds = %657
  %662 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %659, i32 noundef %654) #19
  %663 = load ptr, ptr @cfun, align 8, !tbaa !243
  %664 = getelementptr inbounds %struct.function, ptr %663, i64 0, i32 1
  %665 = load ptr, ptr %664, align 8, !tbaa !294
  %666 = getelementptr inbounds %struct.control_flow_graph, ptr %665, i64 0, i32 5
  %667 = load i32, ptr %666, align 8, !tbaa !295
  %668 = add nsw i32 %667, 1
  %669 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !243
  %670 = icmp eq ptr %669, null
  br i1 %670, label %677, label %671, !prof !635

671:                                              ; preds = %661
  %672 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %669, i64 0, i32 1
  %673 = load i32, ptr %672, align 4, !tbaa !636
  %674 = load i32, ptr %669, align 8, !tbaa !638
  %675 = sub i32 %673, %674
  %676 = icmp uge i32 %675, %668
  br label %679

677:                                              ; preds = %661
  %678 = icmp eq i32 %668, 0
  br label %679

679:                                              ; preds = %677, %671
  %680 = phi i1 [ %676, %671 ], [ %678, %677 ]
  br i1 %680, label %683, label %681, !prof !639

681:                                              ; preds = %679
  %682 = call ptr @vec_heap_p_reserve(ptr noundef %669, i32 noundef %668) #19
  store ptr %682, ptr @phis_to_rewrite, align 8, !tbaa !243
  br label %683

683:                                              ; preds = %681, %679
  %684 = load ptr, ptr @phis_to_rewrite, align 8
  %685 = icmp eq ptr %684, null
  br i1 %685, label %688, label %686, !prof !635

686:                                              ; preds = %683
  %687 = load i32, ptr %684, align 8, !tbaa !638
  br label %688

688:                                              ; preds = %686, %683
  %689 = phi i32 [ %687, %686 ], [ 0, %683 ]
  %690 = icmp ugt i32 %689, %654
  br i1 %690, label %702, label %691, !prof !640

691:                                              ; preds = %688
  %692 = load i32, ptr %684, align 8, !tbaa !638
  br label %693

693:                                              ; preds = %693, %691
  %694 = phi i32 [ %692, %691 ], [ %696, %693 ]
  %695 = phi i32 [ %689, %691 ], [ %699, %693 ]
  %696 = add i32 %694, 1
  %697 = zext i32 %694 to i64
  %698 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %684, i64 0, i32 2, i64 %697
  store ptr null, ptr %698, align 8, !tbaa !243
  %699 = add i32 %695, 1
  %700 = icmp ugt i32 %699, %654
  br i1 %700, label %701, label %693, !prof !641, !llvm.loop !642

701:                                              ; preds = %693
  store i32 %696, ptr %684, align 8, !tbaa !638
  br label %702

702:                                              ; preds = %701, %688
  %703 = zext i32 %654 to i64
  %704 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %684, i64 0, i32 2, i64 %703
  %705 = load ptr, ptr %704, align 8, !tbaa !243
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %709, !prof !643

707:                                              ; preds = %702
  %708 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  br label %709

709:                                              ; preds = %707, %702
  %710 = phi ptr [ %708, %707 ], [ %705, %702 ]
  %711 = icmp eq ptr %710, null
  br i1 %711, label %717, label %712, !prof !635

712:                                              ; preds = %709
  %713 = getelementptr inbounds %struct.VEC_gimple_base, ptr %710, i64 0, i32 1
  %714 = load i32, ptr %713, align 4, !tbaa !644
  %715 = load i32, ptr %710, align 8, !tbaa !646
  %716 = icmp eq i32 %714, %715
  br i1 %716, label %717, label %719, !prof !635

717:                                              ; preds = %712, %709
  %718 = call ptr @vec_heap_p_reserve(ptr noundef %710, i32 noundef 1) #19
  br label %719

719:                                              ; preds = %717, %712
  %720 = phi ptr [ %718, %717 ], [ %710, %712 ]
  %721 = load i32, ptr %720, align 8, !tbaa !646
  %722 = add i32 %721, 1
  store i32 %722, ptr %720, align 8, !tbaa !646
  %723 = zext i32 %721 to i64
  %724 = getelementptr inbounds %struct.VEC_gimple_base, ptr %720, i64 0, i32 2, i64 %723
  store ptr %650, ptr %724, align 8, !tbaa !243
  %725 = load ptr, ptr @phis_to_rewrite, align 8
  %726 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %725, i64 0, i32 2, i64 %703
  store ptr %720, ptr %726, align 8, !tbaa !243
  br label %727

727:                                              ; preds = %649, %657, %719
  %728 = lshr i64 %493, 1
  %729 = add i32 %494, 1
  br label %435, !llvm.loop !839

730:                                              ; preds = %490
  ret void
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

declare i32 @bb_dom_dfs_in(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bb_dom_dfs_out(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cmp_dfsnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !840 !PGOFuncName !841 {
  %3 = getelementptr inbounds %struct.dom_dfsnum, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !756
  %5 = getelementptr inbounds %struct.dom_dfsnum, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !756
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @repl_map_hash(ptr nocapture noundef readonly %0) #9 !prof !842 !PGOFuncName !843 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !243
  %3 = load ptr, ptr %0, align 8, !tbaa !386
  %4 = tail call i32 %2(ptr noundef %3) #19, !prof !844
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @repl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !845 !PGOFuncName !846 {
  %3 = load ptr, ptr %0, align 8, !tbaa !386
  %4 = load ptr, ptr %1, align 8, !tbaa !386
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @repl_map_free(ptr nocapture noundef %0) #9 !prof !441 !PGOFuncName !847 {
  %2 = getelementptr inbounds %struct.repl_map_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !389
  tail call void @bitmap_obstack_free(ptr noundef %3) #19
  store ptr null, ptr %2, align 8, !tbaa !389
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_def_interesting(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !848 !PGOFuncName !849 {
  %5 = alloca %struct.def_blocks_d, align 8
  %6 = alloca %struct.repl_map_d, align 8
  %7 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !313
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %9) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !850

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2431, ptr noundef nonnull @.str.32) #19
  br label %13

13:                                               ; preds = %4, %12
  %14 = load i32, ptr %1, align 8
  %15 = or i32 %14, 2048
  store i32 %15, ptr %1, align 8
  %16 = icmp eq i8 %3, 0
  br i1 %16, label %414, label %17, !prof !851

17:                                               ; preds = %13
  %18 = and i32 %14, 255
  %19 = icmp eq i32 %18, 16
  %20 = zext i1 %19 to i8
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %23, label %24, label %87, !prof !363

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !254
  %27 = load ptr, ptr @info_for_ssa_name, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !364

29:                                               ; preds = %24
  %30 = load i32, ptr %27, align 8, !tbaa !265
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i32 [ %30, %29 ], [ 0, %24 ]
  %33 = icmp ult i32 %26, %32
  br i1 %33, label %71, label %34, !prof !365

34:                                               ; preds = %31
  %35 = load ptr, ptr @cfun, align 8, !tbaa !243
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !268
  %38 = getelementptr inbounds %struct.gimple_df, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !270
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !366

41:                                               ; preds = %34
  %42 = load i32, ptr %39, align 8, !tbaa !274
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi i32 [ %42, %41 ], [ 0, %34 ]
  br i1 %28, label %51, label %45, !prof !366

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %27, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !276
  %48 = load i32, ptr %27, align 8, !tbaa !265
  %49 = sub i32 %47, %48
  %50 = icmp uge i32 %49, %44
  br label %53

51:                                               ; preds = %43
  %52 = icmp eq i32 %44, 0
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i1 [ %50, %45 ], [ %52, %51 ]
  br i1 %54, label %57, label %55, !prof !367

55:                                               ; preds = %53
  %56 = tail call ptr @vec_heap_p_reserve(ptr noundef %27, i32 noundef %44) #19
  store ptr %56, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %57

57:                                               ; preds = %55, %53
  %58 = icmp ult i32 %32, %44
  br i1 %58, label %59, label %71, !prof !368

59:                                               ; preds = %57, %59
  %60 = phi i32 [ %61, %59 ], [ %32, %57 ]
  %61 = add nuw i32 %60, 1
  %62 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %63 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %64 = getelementptr inbounds %struct.ssa_name_info, ptr %62, i64 0, i32 2
  store i32 %63, ptr %64, align 4, !tbaa !277
  %65 = load ptr, ptr @info_for_ssa_name, align 8
  %66 = load i32, ptr %65, align 8, !tbaa !265
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8, !tbaa !265
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %65, i64 0, i32 2, i64 %68
  store ptr %62, ptr %69, align 8, !tbaa !243
  %70 = icmp eq i32 %61, %44
  br i1 %70, label %71, label %59, !prof !369, !llvm.loop !279

71:                                               ; preds = %59, %57, %31
  %72 = load ptr, ptr @info_for_ssa_name, align 8
  %73 = zext i32 %26 to i64
  %74 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %72, i64 0, i32 2, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !243
  %76 = getelementptr inbounds %struct.ssa_name_info, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !277
  %78 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %84, !prof !370

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.ssa_name_info, ptr %75, i64 0, i32 1
  %82 = load i8, ptr %81, align 8
  %83 = and i8 %82, -4
  store i8 %83, ptr %81, align 8
  store ptr null, ptr %75, align 8, !tbaa !280
  store i32 %78, ptr %76, align 4, !tbaa !277
  br label %84

84:                                               ; preds = %80, %71
  %85 = getelementptr inbounds %struct.ssa_name_info, ptr %75, i64 0, i32 1
  %86 = load i8, ptr %85, align 8
  br label %103

87:                                               ; preds = %17
  %88 = trunc i64 %21 to i16
  switch i16 %88, label %93 [
    i16 32, label %89
    i16 34, label %91
  ], !prof !371

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %97

93:                                               ; preds = %87
  %94 = icmp eq i64 %22, 36
  %95 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %96 = select i1 %94, ptr %95, ptr null
  br label %97

97:                                               ; preds = %93, %91, %89
  %98 = phi ptr [ %90, %89 ], [ %92, %91 ], [ %96, %93 ]
  %99 = icmp ne ptr %98, null
  tail call void @llvm.assume(i1 %99)
  %100 = load ptr, ptr %98, align 8, !tbaa !243
  %101 = load i8, ptr %100, align 8
  %102 = lshr i8 %101, 2
  br label %103

103:                                              ; preds = %97, %84
  %104 = phi i8 [ %86, %84 ], [ %102, %97 ]
  %105 = and i8 %104, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %0, ptr %5, align 8, !tbaa !333
  %106 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %107 = call ptr @htab_find_slot(ptr noundef %106, ptr noundef nonnull %5, i32 noundef 1) #19
  %108 = load ptr, ptr %107, align 8, !tbaa !243
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %118, !prof !738

110:                                              ; preds = %103
  %111 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %0, ptr %111, align 8, !tbaa !333
  %112 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %113 = getelementptr inbounds %struct.def_blocks_d, ptr %111, i64 0, i32 1
  store ptr %112, ptr %113, align 8, !tbaa !335
  %114 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %115 = getelementptr inbounds %struct.def_blocks_d, ptr %111, i64 0, i32 2
  store ptr %114, ptr %115, align 8, !tbaa !337
  %116 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %117 = getelementptr inbounds %struct.def_blocks_d, ptr %111, i64 0, i32 3
  store ptr %116, ptr %117, align 8, !tbaa !336
  store ptr %111, ptr %107, align 8, !tbaa !243
  br label %118

118:                                              ; preds = %110, %103
  %119 = phi ptr [ %111, %110 ], [ %108, %103 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  %120 = getelementptr inbounds %struct.def_blocks_d, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !335
  %122 = load i32, ptr %8, align 8, !tbaa !313
  %123 = call zeroext i8 @bitmap_set_bit(ptr noundef %121, i32 noundef %122) #19
  br i1 %19, label %124, label %129, !prof !852

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.def_blocks_d, ptr %119, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !337
  %127 = load i32, ptr %8, align 8, !tbaa !313
  %128 = call zeroext i8 @bitmap_set_bit(ptr noundef %126, i32 noundef %127) #19
  br label %129

129:                                              ; preds = %124, %118
  %130 = icmp eq i8 %105, 0
  %131 = load i64, ptr %0, align 8
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 141
  br i1 %130, label %134, label %211, !prof !738

134:                                              ; preds = %129
  br i1 %133, label %135, label %197, !prof !654

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !254
  %138 = load ptr, ptr @info_for_ssa_name, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140, !prof !655

140:                                              ; preds = %135
  %141 = load i32, ptr %138, align 8, !tbaa !265
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi i32 [ %141, %140 ], [ 0, %135 ]
  %144 = icmp ult i32 %137, %143
  br i1 %144, label %182, label %145, !prof !656

145:                                              ; preds = %142
  %146 = load ptr, ptr @cfun, align 8, !tbaa !243
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !268
  %149 = getelementptr inbounds %struct.gimple_df, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !270
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %145
  %153 = load i32, ptr %150, align 8, !tbaa !274
  br label %154

154:                                              ; preds = %152, %145
  %155 = phi i32 [ %153, %152 ], [ 0, %145 ]
  br i1 %139, label %162, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %138, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !276
  %159 = load i32, ptr %138, align 8, !tbaa !265
  %160 = sub i32 %158, %159
  %161 = icmp uge i32 %160, %155
  br label %164

162:                                              ; preds = %154
  %163 = icmp eq i32 %155, 0
  br label %164

164:                                              ; preds = %162, %156
  %165 = phi i1 [ %161, %156 ], [ %163, %162 ]
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = call ptr @vec_heap_p_reserve(ptr noundef %138, i32 noundef %155) #19
  store ptr %167, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %168

168:                                              ; preds = %166, %164
  %169 = icmp ult i32 %143, %155
  br i1 %169, label %170, label %182

170:                                              ; preds = %168, %170
  %171 = phi i32 [ %172, %170 ], [ %143, %168 ]
  %172 = add nuw i32 %171, 1
  %173 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %174 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %175 = getelementptr inbounds %struct.ssa_name_info, ptr %173, i64 0, i32 2
  store i32 %174, ptr %175, align 4, !tbaa !277
  %176 = load ptr, ptr @info_for_ssa_name, align 8
  %177 = load i32, ptr %176, align 8, !tbaa !265
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 8, !tbaa !265
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %176, i64 0, i32 2, i64 %179
  store ptr %173, ptr %180, align 8, !tbaa !243
  %181 = icmp eq i32 %172, %155
  br i1 %181, label %182, label %170, !llvm.loop !279

182:                                              ; preds = %170, %168, %142
  %183 = load ptr, ptr @info_for_ssa_name, align 8
  %184 = zext i32 %137 to i64
  %185 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %183, i64 0, i32 2, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !243
  %187 = getelementptr inbounds %struct.ssa_name_info, ptr %186, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !277
  %189 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %195, !prof !655

191:                                              ; preds = %182
  %192 = getelementptr inbounds %struct.ssa_name_info, ptr %186, i64 0, i32 1
  %193 = load i8, ptr %192, align 8
  %194 = and i8 %193, -4
  store i8 %194, ptr %192, align 8
  store ptr null, ptr %186, align 8, !tbaa !280
  store i32 %189, ptr %187, align 4, !tbaa !277
  br label %195

195:                                              ; preds = %191, %182
  %196 = getelementptr inbounds %struct.ssa_name_info, ptr %186, i64 0, i32 1
  br label %288

197:                                              ; preds = %134
  %198 = trunc i64 %131 to i16
  switch i16 %198, label %203 [
    i16 32, label %199
    i16 34, label %201
  ], !prof !657

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %207

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %207

203:                                              ; preds = %197
  %204 = icmp eq i64 %132, 36
  %205 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %206 = select i1 %204, ptr %205, ptr null
  br label %207

207:                                              ; preds = %203, %201, %199
  %208 = phi ptr [ %200, %199 ], [ %202, %201 ], [ %206, %203 ]
  %209 = icmp ne ptr %208, null
  call void @llvm.assume(i1 %209)
  %210 = load ptr, ptr %208, align 8, !tbaa !243
  br label %288

211:                                              ; preds = %129
  br i1 %133, label %212, label %274, !prof !654

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %214 = load i32, ptr %213, align 8, !tbaa !254
  %215 = load ptr, ptr @info_for_ssa_name, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217, !prof !655

217:                                              ; preds = %212
  %218 = load i32, ptr %215, align 8, !tbaa !265
  br label %219

219:                                              ; preds = %217, %212
  %220 = phi i32 [ %218, %217 ], [ 0, %212 ]
  %221 = icmp ult i32 %214, %220
  br i1 %221, label %259, label %222, !prof !656

222:                                              ; preds = %219
  %223 = load ptr, ptr @cfun, align 8, !tbaa !243
  %224 = getelementptr inbounds %struct.function, ptr %223, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !268
  %226 = getelementptr inbounds %struct.gimple_df, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !270
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %222
  %230 = load i32, ptr %227, align 8, !tbaa !274
  br label %231

231:                                              ; preds = %229, %222
  %232 = phi i32 [ %230, %229 ], [ 0, %222 ]
  br i1 %216, label %239, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %215, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !276
  %236 = load i32, ptr %215, align 8, !tbaa !265
  %237 = sub i32 %235, %236
  %238 = icmp uge i32 %237, %232
  br label %241

239:                                              ; preds = %231
  %240 = icmp eq i32 %232, 0
  br label %241

241:                                              ; preds = %239, %233
  %242 = phi i1 [ %238, %233 ], [ %240, %239 ]
  br i1 %242, label %245, label %243

243:                                              ; preds = %241
  %244 = call ptr @vec_heap_p_reserve(ptr noundef %215, i32 noundef %232) #19
  store ptr %244, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %245

245:                                              ; preds = %243, %241
  %246 = icmp ult i32 %220, %232
  br i1 %246, label %247, label %259

247:                                              ; preds = %245, %247
  %248 = phi i32 [ %249, %247 ], [ %220, %245 ]
  %249 = add nuw i32 %248, 1
  %250 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %251 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %252 = getelementptr inbounds %struct.ssa_name_info, ptr %250, i64 0, i32 2
  store i32 %251, ptr %252, align 4, !tbaa !277
  %253 = load ptr, ptr @info_for_ssa_name, align 8
  %254 = load i32, ptr %253, align 8, !tbaa !265
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 8, !tbaa !265
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %253, i64 0, i32 2, i64 %256
  store ptr %250, ptr %257, align 8, !tbaa !243
  %258 = icmp eq i32 %249, %232
  br i1 %258, label %259, label %247, !llvm.loop !279

259:                                              ; preds = %247, %245, %219
  %260 = load ptr, ptr @info_for_ssa_name, align 8
  %261 = zext i32 %214 to i64
  %262 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %260, i64 0, i32 2, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !243
  %264 = getelementptr inbounds %struct.ssa_name_info, ptr %263, i64 0, i32 2
  %265 = load i32, ptr %264, align 4, !tbaa !277
  %266 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %268, label %272, !prof !655

268:                                              ; preds = %259
  %269 = getelementptr inbounds %struct.ssa_name_info, ptr %263, i64 0, i32 1
  %270 = load i8, ptr %269, align 8
  %271 = and i8 %270, -4
  store i8 %271, ptr %269, align 8
  store ptr null, ptr %263, align 8, !tbaa !280
  store i32 %266, ptr %264, align 4, !tbaa !277
  br label %272

272:                                              ; preds = %268, %259
  %273 = getelementptr inbounds %struct.ssa_name_info, ptr %263, i64 0, i32 1
  br label %288

274:                                              ; preds = %211
  %275 = trunc i64 %131 to i16
  switch i16 %275, label %280 [
    i16 32, label %276
    i16 34, label %278
  ], !prof !657

276:                                              ; preds = %274
  %277 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %284

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %284

280:                                              ; preds = %274
  %281 = icmp eq i64 %132, 36
  %282 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %283 = select i1 %281, ptr %282, ptr null
  br label %284

284:                                              ; preds = %280, %278, %276
  %285 = phi ptr [ %277, %276 ], [ %279, %278 ], [ %283, %280 ]
  %286 = icmp ne ptr %285, null
  call void @llvm.assume(i1 %286)
  %287 = load ptr, ptr %285, align 8, !tbaa !243
  br label %288

288:                                              ; preds = %195, %207, %272, %284
  %289 = phi ptr [ %196, %195 ], [ %210, %207 ], [ %273, %272 ], [ %287, %284 ]
  %290 = phi i8 [ -4, %195 ], [ -13, %207 ], [ -4, %272 ], [ -13, %284 ]
  %291 = phi i8 [ 1, %195 ], [ 4, %207 ], [ 2, %272 ], [ 8, %284 ]
  %292 = load i8, ptr %289, align 8
  %293 = and i8 %292, %290
  %294 = or disjoint i8 %293, %291
  store i8 %294, ptr %289, align 8
  %295 = load i64, ptr %0, align 8
  %296 = and i64 %295, 65535
  %297 = icmp eq i64 %296, 141
  br i1 %297, label %298, label %414, !prof !853

298:                                              ; preds = %288
  %299 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %300 = load i32, ptr %299, align 8, !tbaa !254
  %301 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %302 = icmp eq ptr %301, null
  br i1 %302, label %414, label %303, !prof !854

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.simple_bitmap_def, ptr %301, i64 0, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !446
  %306 = icmp ult i32 %300, %305
  br i1 %306, label %307, label %414, !prof !855

307:                                              ; preds = %303
  %308 = lshr i32 %300, 6
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds %struct.simple_bitmap_def, ptr %301, i64 0, i32 3, i64 %309
  %311 = load i64, ptr %310, align 8, !tbaa !301
  %312 = and i32 %300, 63
  %313 = zext nneg i32 %312 to i64
  %314 = shl nuw i64 1, %313
  %315 = and i64 %311, %314
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %414, label %317, !prof !856

317:                                              ; preds = %307
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  store ptr %0, ptr %6, align 8, !tbaa !386
  %318 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %319 = call ptr @htab_find_slot(ptr noundef %318, ptr noundef nonnull %6, i32 noundef 0) #19
  %320 = icmp eq ptr %319, null
  br i1 %320, label %327, label %321, !prof !857

321:                                              ; preds = %317
  %322 = load ptr, ptr %319, align 8, !tbaa !243
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324, !prof !857

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.repl_map_d, ptr %322, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !389
  br label %327

327:                                              ; preds = %317, %321, %324
  %328 = phi ptr [ %326, %324 ], [ null, %321 ], [ null, %317 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %329 = icmp eq ptr %328, null
  br i1 %329, label %414, label %330, !prof !857

330:                                              ; preds = %327
  %331 = load ptr, ptr %328, align 8, !tbaa !297
  %332 = icmp eq ptr %331, null
  %333 = select i1 %332, ptr @bitmap_zero_bits, ptr %331, !prof !857
  %334 = getelementptr inbounds %struct.bitmap_element_def, ptr %333, i64 0, i32 2
  %335 = load i32, ptr %334, align 8, !tbaa !299
  %336 = shl i32 %335, 7
  %337 = getelementptr inbounds %struct.bitmap_element_def, ptr %333, i64 0, i32 3
  %338 = load i64, ptr %337, align 8, !tbaa !301
  %339 = icmp eq i64 %338, 0
  %340 = zext i1 %339 to i32
  %341 = or disjoint i32 %336, %340
  br label %342

342:                                              ; preds = %403, %330
  %343 = phi i32 [ 0, %330 ], [ %398, %403 ]
  %344 = phi i64 [ %338, %330 ], [ %412, %403 ]
  %345 = phi ptr [ %333, %330 ], [ %400, %403 ]
  %346 = phi i32 [ %341, %330 ], [ %413, %403 ]
  %347 = icmp eq i64 %344, 0
  br i1 %347, label %362, label %348, !prof !858

348:                                              ; preds = %376, %342
  %349 = phi i32 [ %343, %342 ], [ %377, %376 ]
  %350 = phi i64 [ %344, %342 ], [ %381, %376 ]
  %351 = phi ptr [ %345, %342 ], [ %368, %376 ]
  %352 = phi i32 [ %346, %342 ], [ %378, %376 ]
  %353 = and i64 %350, 1
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %397, !prof !859

355:                                              ; preds = %348, %355
  %356 = phi i32 [ %359, %355 ], [ %352, %348 ]
  %357 = phi i64 [ %358, %355 ], [ %350, %348 ]
  %358 = lshr exact i64 %357, 1
  %359 = add i32 %356, 1
  %360 = and i64 %357, 2
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %355, label %397, !prof !860, !llvm.loop !302

362:                                              ; preds = %342
  %363 = add i32 %346, 63
  %364 = and i32 %363, -64
  %365 = add i32 %343, 1
  br label %366

366:                                              ; preds = %393, %362
  %367 = phi i64 [ %344, %362 ], [ %388, %393 ]
  %368 = phi ptr [ %345, %362 ], [ %391, %393 ]
  %369 = phi i32 [ %364, %362 ], [ %396, %393 ]
  %370 = phi i32 [ %365, %362 ], [ 0, %393 ]
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %387, label %372, !prof !861

372:                                              ; preds = %366
  %373 = add i32 %369, 128
  %374 = shl i32 %370, 6
  %375 = sub i32 %373, %374
  br label %376

376:                                              ; preds = %372, %383
  %377 = phi i32 [ %385, %383 ], [ %370, %372 ]
  %378 = phi i32 [ %384, %383 ], [ %369, %372 ]
  %379 = zext i32 %377 to i64
  %380 = getelementptr inbounds %struct.bitmap_element_def, ptr %368, i64 0, i32 3, i64 %379
  %381 = load i64, ptr %380, align 8, !tbaa !301
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %348, !prof !862

383:                                              ; preds = %376
  %384 = add i32 %378, 64
  %385 = add i32 %377, 1
  %386 = icmp eq i32 %385, 2
  br i1 %386, label %387, label %376, !prof !863, !llvm.loop !303

387:                                              ; preds = %383, %366
  %388 = phi i64 [ %367, %366 ], [ %381, %383 ]
  %389 = phi i32 [ %369, %366 ], [ %375, %383 ]
  %390 = phi i32 [ %370, %366 ], [ 2, %383 ]
  %391 = load ptr, ptr %368, align 8, !tbaa !304
  %392 = icmp eq ptr %391, null
  br i1 %392, label %397, label %393, !prof !864

393:                                              ; preds = %387
  %394 = getelementptr inbounds %struct.bitmap_element_def, ptr %391, i64 0, i32 2
  %395 = load i32, ptr %394, align 8, !tbaa !299
  %396 = shl i32 %395, 7
  br label %366, !llvm.loop !305

397:                                              ; preds = %387, %355, %348
  %398 = phi i32 [ %349, %348 ], [ %349, %355 ], [ %390, %387 ]
  %399 = phi i64 [ %350, %348 ], [ %358, %355 ], [ %388, %387 ]
  %400 = phi ptr [ %351, %348 ], [ %351, %355 ], [ %391, %387 ]
  %401 = phi i32 [ %352, %348 ], [ %359, %355 ], [ %389, %387 ]
  %402 = phi i1 [ false, %348 ], [ false, %355 ], [ true, %387 ]
  br i1 %402, label %414, label %403, !prof !865

403:                                              ; preds = %397
  %404 = load ptr, ptr @cfun, align 8, !tbaa !243
  %405 = getelementptr inbounds %struct.function, ptr %404, i64 0, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !268
  %407 = getelementptr inbounds %struct.gimple_df, ptr %406, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !270
  %409 = zext i32 %401 to i64
  %410 = getelementptr inbounds %struct.VEC_tree_base, ptr %408, i64 0, i32 2, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !243
  call fastcc void @set_def_block(ptr noundef %411, ptr noundef %2, i8 noundef zeroext %20)
  %412 = lshr i64 %399, 1
  %413 = add i32 %401, 1
  br label %342, !llvm.loop !866

414:                                              ; preds = %397, %298, %303, %327, %288, %307, %13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_use_interesting(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !867 !PGOFuncName !868 {
  %5 = alloca %struct.def_blocks_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.def_blocks_d, align 8
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !254
  %11 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !499

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %14

14:                                               ; preds = %13, %4
  %15 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !313
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %17) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %70, !prof !500

20:                                               ; preds = %14
  %21 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %22 = load i32, ptr %16, align 8, !tbaa !313
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %22) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %10) #19
  %24 = load ptr, ptr %7, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !prof !502

26:                                               ; preds = %20, %26
  %27 = phi ptr [ %32, %26 ], [ %24, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !503
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, -2561
  store i32 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !505
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %26, !prof !506, !llvm.loop !507

34:                                               ; preds = %26, %20
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !508, !noalias !869
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45, !prof !512

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !254, !noalias !869
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !513

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !514, !noalias !869
  br label %45

45:                                               ; preds = %43, %39, %34
  %46 = phi ptr [ %44, %43 ], [ null, %39 ], [ null, %34 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !513

48:                                               ; preds = %45
  %49 = load ptr, ptr %46, align 8, !tbaa !516, !noalias !869
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53, !prof !518

53:                                               ; preds = %50, %64
  %54 = phi ptr [ %68, %64 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !503
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 255
  %58 = add nsw i32 %57, -10
  %59 = icmp ult i32 %58, -9
  %60 = and i32 %56, 8192
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %61, %59
  br i1 %62, label %64, label %63, !prof !519

63:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, ptr %55, align 8
  %66 = and i32 %65, -2561
  store i32 %66, ptr %55, align 8
  %67 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %54, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !505
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !prof !520, !llvm.loop !521

70:                                               ; preds = %64, %14, %50
  %71 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74, !prof !499

73:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 458, ptr noundef nonnull @.str.32) #19
  br label %74

74:                                               ; preds = %73, %70
  %75 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !313
  %78 = call i32 @bitmap_bit_p(ptr noundef %75, i32 noundef %77) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %130, !prof !500

80:                                               ; preds = %74
  %81 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %82 = load i32, ptr %76, align 8, !tbaa !313
  %83 = call zeroext i8 @bitmap_set_bit(ptr noundef %81, i32 noundef %82) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %2) #19
  %84 = load ptr, ptr %6, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86, !prof !502

86:                                               ; preds = %80, %86
  %87 = phi ptr [ %92, %86 ], [ %84, %80 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !503
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, -2561
  store i32 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %87, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !505
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86, !prof !506, !llvm.loop !507

94:                                               ; preds = %86, %80
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %96 = load i32, ptr %95, align 8, !tbaa !508, !noalias !872
  %97 = and i32 %96, 512
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105, !prof !512

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !254, !noalias !872
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103, !prof !513

103:                                              ; preds = %99
  %104 = load ptr, ptr %101, align 8, !tbaa !514, !noalias !872
  br label %105

105:                                              ; preds = %103, %99, %94
  %106 = phi ptr [ %104, %103 ], [ null, %99 ], [ null, %94 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108, !prof !513

108:                                              ; preds = %105
  %109 = load ptr, ptr %106, align 8, !tbaa !516, !noalias !872
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi ptr [ %109, %108 ], [ null, %105 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113, !prof !518

113:                                              ; preds = %110, %124
  %114 = phi ptr [ %128, %124 ], [ %111, %110 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !503
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -10
  %119 = icmp ult i32 %118, -9
  %120 = and i32 %116, 8192
  %121 = icmp eq i32 %120, 0
  %122 = or i1 %121, %119
  br i1 %122, label %124, label %123, !prof !519

123:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 447, ptr noundef nonnull @.str.32) #19
  br label %124

124:                                              ; preds = %123, %113
  %125 = load i32, ptr %115, align 8
  %126 = and i32 %125, -2561
  store i32 %126, ptr %115, align 8
  %127 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %114, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !505
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %113, !prof !520, !llvm.loop !521

130:                                              ; preds = %124, %74, %110
  %131 = load i32, ptr %1, align 8
  %132 = and i32 %131, 255
  %133 = icmp eq i32 %132, 16
  br i1 %133, label %134, label %210, !prof !632

134:                                              ; preds = %130
  %135 = load i32, ptr %16, align 8, !tbaa !313
  %136 = and i32 %131, 512
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %208, !prof !633

138:                                              ; preds = %134
  %139 = or disjoint i32 %131, 512
  store i32 %139, ptr %1, align 8
  %140 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %141 = icmp eq ptr %140, null
  br i1 %141, label %208, label %142, !prof !634

142:                                              ; preds = %138
  %143 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %140, i32 noundef %135) #19
  %144 = load ptr, ptr @cfun, align 8, !tbaa !243
  %145 = getelementptr inbounds %struct.function, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !294
  %147 = getelementptr inbounds %struct.control_flow_graph, ptr %146, i64 0, i32 5
  %148 = load i32, ptr %147, align 8, !tbaa !295
  %149 = add nsw i32 %148, 1
  %150 = load ptr, ptr @phis_to_rewrite, align 8, !tbaa !243
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152, !prof !635

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %150, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !636
  %155 = load i32, ptr %150, align 8, !tbaa !638
  %156 = sub i32 %154, %155
  %157 = icmp uge i32 %156, %149
  br label %160

158:                                              ; preds = %142
  %159 = icmp eq i32 %149, 0
  br label %160

160:                                              ; preds = %158, %152
  %161 = phi i1 [ %157, %152 ], [ %159, %158 ]
  br i1 %161, label %164, label %162, !prof !639

162:                                              ; preds = %160
  %163 = call ptr @vec_heap_p_reserve(ptr noundef %150, i32 noundef %149) #19
  store ptr %163, ptr @phis_to_rewrite, align 8, !tbaa !243
  br label %164

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr @phis_to_rewrite, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167, !prof !635

167:                                              ; preds = %164
  %168 = load i32, ptr %165, align 8, !tbaa !638
  br label %169

169:                                              ; preds = %167, %164
  %170 = phi i32 [ %168, %167 ], [ 0, %164 ]
  %171 = icmp ugt i32 %170, %135
  br i1 %171, label %183, label %172, !prof !640

172:                                              ; preds = %169
  %173 = load i32, ptr %165, align 8, !tbaa !638
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi i32 [ %173, %172 ], [ %177, %174 ]
  %176 = phi i32 [ %170, %172 ], [ %180, %174 ]
  %177 = add i32 %175, 1
  %178 = zext i32 %175 to i64
  %179 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %165, i64 0, i32 2, i64 %178
  store ptr null, ptr %179, align 8, !tbaa !243
  %180 = add i32 %176, 1
  %181 = icmp ugt i32 %180, %135
  br i1 %181, label %182, label %174, !prof !641, !llvm.loop !642

182:                                              ; preds = %174
  store i32 %177, ptr %165, align 8, !tbaa !638
  br label %183

183:                                              ; preds = %182, %169
  %184 = zext i32 %135 to i64
  %185 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %165, i64 0, i32 2, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !243
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %190, !prof !643

188:                                              ; preds = %183
  %189 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  br label %190

190:                                              ; preds = %188, %183
  %191 = phi ptr [ %189, %188 ], [ %186, %183 ]
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193, !prof !635

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.VEC_gimple_base, ptr %191, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !644
  %196 = load i32, ptr %191, align 8, !tbaa !646
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200, !prof !635

198:                                              ; preds = %193, %190
  %199 = call ptr @vec_heap_p_reserve(ptr noundef %191, i32 noundef 1) #19
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %191, %193 ]
  %202 = load i32, ptr %201, align 8, !tbaa !646
  %203 = add i32 %202, 1
  store i32 %203, ptr %201, align 8, !tbaa !646
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds %struct.VEC_gimple_base, ptr %201, i64 0, i32 2, i64 %204
  store ptr %1, ptr %205, align 8, !tbaa !243
  %206 = load ptr, ptr @phis_to_rewrite, align 8
  %207 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %206, i64 0, i32 2, i64 %184
  store ptr %201, ptr %207, align 8, !tbaa !243
  br label %208

208:                                              ; preds = %134, %138, %200
  %209 = icmp eq i8 %3, 0
  br i1 %209, label %443, label %215, !prof !647

210:                                              ; preds = %130
  %211 = or i32 %131, 512
  store i32 %211, ptr %1, align 8
  %212 = icmp eq i32 %132, 2
  %213 = icmp eq i8 %3, 0
  %214 = or i1 %213, %212
  br i1 %214, label %443, label %215, !prof !648

215:                                              ; preds = %210, %208
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  store ptr %0, ptr %8, align 8, !tbaa !333
  %216 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %217 = call ptr @htab_find_slot(ptr noundef %216, ptr noundef nonnull %8, i32 noundef 1) #19
  %218 = load ptr, ptr %217, align 8, !tbaa !243
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %228, !prof !649

220:                                              ; preds = %215
  %221 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %0, ptr %221, align 8, !tbaa !333
  %222 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %223 = getelementptr inbounds %struct.def_blocks_d, ptr %221, i64 0, i32 1
  store ptr %222, ptr %223, align 8, !tbaa !335
  %224 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %225 = getelementptr inbounds %struct.def_blocks_d, ptr %221, i64 0, i32 2
  store ptr %224, ptr %225, align 8, !tbaa !337
  %226 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %227 = getelementptr inbounds %struct.def_blocks_d, ptr %221, i64 0, i32 3
  store ptr %226, ptr %227, align 8, !tbaa !336
  store ptr %221, ptr %217, align 8, !tbaa !243
  br label %228

228:                                              ; preds = %215, %220
  %229 = phi ptr [ %221, %220 ], [ %218, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  %230 = getelementptr inbounds %struct.def_blocks_d, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !335
  %232 = load i32, ptr %76, align 8, !tbaa !313
  %233 = call i32 @bitmap_bit_p(ptr noundef %231, i32 noundef %232) #19
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %443, !prof !650

235:                                              ; preds = %228
  %236 = load i64, ptr %0, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 141
  br i1 %238, label %239, label %302, !prof !363

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %241 = load i32, ptr %240, align 8, !tbaa !254
  %242 = load ptr, ptr @info_for_ssa_name, align 8
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %244, !prof !364

244:                                              ; preds = %239
  %245 = load i32, ptr %242, align 8, !tbaa !265
  br label %246

246:                                              ; preds = %244, %239
  %247 = phi i32 [ %245, %244 ], [ 0, %239 ]
  %248 = icmp ult i32 %241, %247
  br i1 %248, label %286, label %249, !prof !365

249:                                              ; preds = %246
  %250 = load ptr, ptr @cfun, align 8, !tbaa !243
  %251 = getelementptr inbounds %struct.function, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !268
  %253 = getelementptr inbounds %struct.gimple_df, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !270
  %255 = icmp eq ptr %254, null
  br i1 %255, label %258, label %256, !prof !366

256:                                              ; preds = %249
  %257 = load i32, ptr %254, align 8, !tbaa !274
  br label %258

258:                                              ; preds = %256, %249
  %259 = phi i32 [ %257, %256 ], [ 0, %249 ]
  br i1 %243, label %266, label %260, !prof !366

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %242, i64 0, i32 1
  %262 = load i32, ptr %261, align 4, !tbaa !276
  %263 = load i32, ptr %242, align 8, !tbaa !265
  %264 = sub i32 %262, %263
  %265 = icmp uge i32 %264, %259
  br label %268

266:                                              ; preds = %258
  %267 = icmp eq i32 %259, 0
  br label %268

268:                                              ; preds = %266, %260
  %269 = phi i1 [ %265, %260 ], [ %267, %266 ]
  br i1 %269, label %272, label %270, !prof !367

270:                                              ; preds = %268
  %271 = call ptr @vec_heap_p_reserve(ptr noundef %242, i32 noundef %259) #19
  store ptr %271, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %272

272:                                              ; preds = %270, %268
  %273 = icmp ult i32 %247, %259
  br i1 %273, label %274, label %286, !prof !368

274:                                              ; preds = %272, %274
  %275 = phi i32 [ %276, %274 ], [ %247, %272 ]
  %276 = add nuw i32 %275, 1
  %277 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %278 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %279 = getelementptr inbounds %struct.ssa_name_info, ptr %277, i64 0, i32 2
  store i32 %278, ptr %279, align 4, !tbaa !277
  %280 = load ptr, ptr @info_for_ssa_name, align 8
  %281 = load i32, ptr %280, align 8, !tbaa !265
  %282 = add i32 %281, 1
  store i32 %282, ptr %280, align 8, !tbaa !265
  %283 = zext i32 %281 to i64
  %284 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %280, i64 0, i32 2, i64 %283
  store ptr %277, ptr %284, align 8, !tbaa !243
  %285 = icmp eq i32 %276, %259
  br i1 %285, label %286, label %274, !prof !369, !llvm.loop !279

286:                                              ; preds = %274, %272, %246
  %287 = load ptr, ptr @info_for_ssa_name, align 8
  %288 = zext i32 %241 to i64
  %289 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %287, i64 0, i32 2, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !243
  %291 = getelementptr inbounds %struct.ssa_name_info, ptr %290, i64 0, i32 2
  %292 = load i32, ptr %291, align 4, !tbaa !277
  %293 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %294 = icmp ult i32 %292, %293
  br i1 %294, label %295, label %299, !prof !370

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.ssa_name_info, ptr %290, i64 0, i32 1
  %297 = load i8, ptr %296, align 8
  %298 = and i8 %297, -4
  store i8 %298, ptr %296, align 8
  store ptr null, ptr %290, align 8, !tbaa !280
  store i32 %293, ptr %291, align 4, !tbaa !277
  br label %299

299:                                              ; preds = %295, %286
  %300 = getelementptr inbounds %struct.ssa_name_info, ptr %290, i64 0, i32 1
  %301 = load i8, ptr %300, align 8
  br label %318

302:                                              ; preds = %235
  %303 = trunc i64 %236 to i16
  switch i16 %303, label %308 [
    i16 32, label %304
    i16 34, label %306
  ], !prof !371

304:                                              ; preds = %302
  %305 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %312

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %312

308:                                              ; preds = %302
  %309 = icmp eq i64 %237, 36
  %310 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %311 = select i1 %309, ptr %310, ptr null
  br label %312

312:                                              ; preds = %308, %306, %304
  %313 = phi ptr [ %305, %304 ], [ %307, %306 ], [ %311, %308 ]
  %314 = icmp ne ptr %313, null
  call void @llvm.assume(i1 %314)
  %315 = load ptr, ptr %313, align 8, !tbaa !243
  %316 = load i8, ptr %315, align 8
  %317 = lshr i8 %316, 2
  br label %318

318:                                              ; preds = %312, %299
  %319 = phi i8 [ %301, %299 ], [ %317, %312 ]
  %320 = and i8 %319, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %0, ptr %5, align 8, !tbaa !333
  %321 = load ptr, ptr @def_blocks, align 8, !tbaa !243
  %322 = call ptr @htab_find_slot(ptr noundef %321, ptr noundef nonnull %5, i32 noundef 1) #19
  %323 = load ptr, ptr %322, align 8, !tbaa !243
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %333, !prof !651

325:                                              ; preds = %318
  %326 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %0, ptr %326, align 8, !tbaa !333
  %327 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %328 = getelementptr inbounds %struct.def_blocks_d, ptr %326, i64 0, i32 1
  store ptr %327, ptr %328, align 8, !tbaa !335
  %329 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %330 = getelementptr inbounds %struct.def_blocks_d, ptr %326, i64 0, i32 2
  store ptr %329, ptr %330, align 8, !tbaa !337
  %331 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %332 = getelementptr inbounds %struct.def_blocks_d, ptr %326, i64 0, i32 3
  store ptr %331, ptr %332, align 8, !tbaa !336
  store ptr %326, ptr %322, align 8, !tbaa !243
  br label %333

333:                                              ; preds = %325, %318
  %334 = phi ptr [ %326, %325 ], [ %323, %318 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  %335 = getelementptr inbounds %struct.def_blocks_d, ptr %334, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !336
  %337 = load i32, ptr %76, align 8, !tbaa !313
  %338 = call zeroext i8 @bitmap_set_bit(ptr noundef %336, i32 noundef %337) #19
  %339 = icmp eq i8 %320, 1
  br i1 %339, label %340, label %357, !prof !652

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.def_blocks_d, ptr %334, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !335
  %343 = call i32 @bitmap_first_set_bit(ptr noundef %342) #19
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %356, label %345, !prof !653

345:                                              ; preds = %340
  %346 = load ptr, ptr @cfun, align 8, !tbaa !243
  %347 = getelementptr inbounds %struct.function, ptr %346, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !294
  %349 = getelementptr inbounds %struct.control_flow_graph, ptr %348, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !306
  %351 = zext i32 %343 to i64
  %352 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %350, i64 0, i32 2, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !243
  %354 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %353) #19
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %443, !prof !653

356:                                              ; preds = %345, %340
  call fastcc void @set_phi_state(ptr noundef nonnull %0, i32 noundef 2)
  br label %443

357:                                              ; preds = %333
  %358 = load i64, ptr %0, align 8
  %359 = and i64 %358, 65535
  %360 = icmp eq i64 %359, 141
  br i1 %360, label %361, label %426, !prof !654

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %363 = load i32, ptr %362, align 8, !tbaa !254
  %364 = load ptr, ptr @info_for_ssa_name, align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %368, label %366, !prof !655

366:                                              ; preds = %361
  %367 = load i32, ptr %364, align 8, !tbaa !265
  br label %368

368:                                              ; preds = %366, %361
  %369 = phi i32 [ %367, %366 ], [ 0, %361 ]
  %370 = icmp ult i32 %363, %369
  br i1 %370, label %408, label %371, !prof !656

371:                                              ; preds = %368
  %372 = load ptr, ptr @cfun, align 8, !tbaa !243
  %373 = getelementptr inbounds %struct.function, ptr %372, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !268
  %375 = getelementptr inbounds %struct.gimple_df, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !270
  %377 = icmp eq ptr %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %371
  %379 = load i32, ptr %376, align 8, !tbaa !274
  br label %380

380:                                              ; preds = %378, %371
  %381 = phi i32 [ %379, %378 ], [ 0, %371 ]
  br i1 %365, label %388, label %382

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %364, i64 0, i32 1
  %384 = load i32, ptr %383, align 4, !tbaa !276
  %385 = load i32, ptr %364, align 8, !tbaa !265
  %386 = sub i32 %384, %385
  %387 = icmp uge i32 %386, %381
  br label %390

388:                                              ; preds = %380
  %389 = icmp eq i32 %381, 0
  br label %390

390:                                              ; preds = %388, %382
  %391 = phi i1 [ %387, %382 ], [ %389, %388 ]
  br i1 %391, label %394, label %392

392:                                              ; preds = %390
  %393 = call ptr @vec_heap_p_reserve(ptr noundef %364, i32 noundef %381) #19
  store ptr %393, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %394

394:                                              ; preds = %392, %390
  %395 = icmp ult i32 %369, %381
  br i1 %395, label %396, label %408

396:                                              ; preds = %394, %396
  %397 = phi i32 [ %398, %396 ], [ %369, %394 ]
  %398 = add nuw i32 %397, 1
  %399 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %400 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %401 = getelementptr inbounds %struct.ssa_name_info, ptr %399, i64 0, i32 2
  store i32 %400, ptr %401, align 4, !tbaa !277
  %402 = load ptr, ptr @info_for_ssa_name, align 8
  %403 = load i32, ptr %402, align 8, !tbaa !265
  %404 = add i32 %403, 1
  store i32 %404, ptr %402, align 8, !tbaa !265
  %405 = zext i32 %403 to i64
  %406 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %402, i64 0, i32 2, i64 %405
  store ptr %399, ptr %406, align 8, !tbaa !243
  %407 = icmp eq i32 %398, %381
  br i1 %407, label %408, label %396, !llvm.loop !279

408:                                              ; preds = %396, %394, %368
  %409 = load ptr, ptr @info_for_ssa_name, align 8
  %410 = zext i32 %363 to i64
  %411 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %409, i64 0, i32 2, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !243
  %413 = getelementptr inbounds %struct.ssa_name_info, ptr %412, i64 0, i32 2
  %414 = load i32, ptr %413, align 4, !tbaa !277
  %415 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %417, label %421, !prof !655

417:                                              ; preds = %408
  %418 = getelementptr inbounds %struct.ssa_name_info, ptr %412, i64 0, i32 1
  %419 = load i8, ptr %418, align 8
  %420 = and i8 %419, -4
  store i8 %420, ptr %418, align 8
  store ptr null, ptr %412, align 8, !tbaa !280
  store i32 %415, ptr %413, align 4, !tbaa !277
  br label %421

421:                                              ; preds = %417, %408
  %422 = getelementptr inbounds %struct.ssa_name_info, ptr %412, i64 0, i32 1
  %423 = load i8, ptr %422, align 8
  %424 = and i8 %423, -4
  %425 = or disjoint i8 %424, 2
  store i8 %425, ptr %422, align 8
  br label %443

426:                                              ; preds = %357
  %427 = trunc i64 %358 to i16
  switch i16 %427, label %432 [
    i16 32, label %428
    i16 34, label %430
  ], !prof !657

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %436

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %436

432:                                              ; preds = %426
  %433 = icmp eq i64 %359, 36
  %434 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %435 = select i1 %433, ptr %434, ptr null
  br label %436

436:                                              ; preds = %432, %430, %428
  %437 = phi ptr [ %429, %428 ], [ %431, %430 ], [ %435, %432 ]
  %438 = icmp ne ptr %437, null
  call void @llvm.assume(i1 %438)
  %439 = load ptr, ptr %437, align 8, !tbaa !243
  %440 = load i8, ptr %439, align 8
  %441 = and i8 %440, -13
  %442 = or disjoint i8 %441, 8
  store i8 %442, ptr %439, align 8
  br label %443

443:                                              ; preds = %436, %421, %356, %345, %208, %228, %210
  ret void
}

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @rewrite_enter_block(ptr nocapture readnone %0, ptr noundef %1) #9 !prof !713 !PGOFuncName !875 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !718

8:                                                ; preds = %2
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !258
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !313
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.50, i32 noundef %14)
  br label %16

16:                                               ; preds = %12, %8, %2
  %17 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !876

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.VEC_tree_base, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !877
  %22 = load i32, ptr %17, align 8, !tbaa !274
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26, !prof !878

24:                                               ; preds = %16, %19
  %25 = tail call ptr @vec_heap_p_reserve(ptr noundef %17, i32 noundef 1) #19
  store ptr %25, ptr @block_defs_stack, align 8, !tbaa !243
  br label %26

26:                                               ; preds = %19, %24
  %27 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %28 = load i32, ptr %27, align 8, !tbaa !274
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !274
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.VEC_tree_base, ptr %27, i64 0, i32 2, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #19
  %32 = load ptr, ptr %5, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34, !prof !879

34:                                               ; preds = %26, %42
  %35 = phi ptr [ %46, %42 ], [ %32, %26 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !503
  %37 = getelementptr inbounds %struct.gimple_statement_phi, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !254
  %39 = call zeroext i8 @is_gimple_reg(ptr noundef %38) #19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42, !prof !880

41:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1404, ptr noundef nonnull @.str.32) #19
  br label %42

42:                                               ; preds = %34, %41
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !254
  call fastcc void @register_new_def(ptr noundef %38, ptr noundef %44)
  %45 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %35, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !505
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %34, !prof !881, !llvm.loop !882

48:                                               ; preds = %42, %26
  %49 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !313
  %52 = lshr i32 %51, 6
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.simple_bitmap_def, ptr %49, i64 0, i32 3, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !301
  %56 = and i32 %51, 63
  %57 = zext nneg i32 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = and i64 %58, %55
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %359, label %61, !prof !883

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !508, !noalias !884
  %64 = and i32 %63, 512
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72, !prof !887

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !254, !noalias !884
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !888

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !514, !noalias !884
  br label %72

72:                                               ; preds = %70, %66, %61
  %73 = phi ptr [ %71, %70 ], [ null, %66 ], [ null, %61 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !888

75:                                               ; preds = %72
  %76 = load ptr, ptr %73, align 8, !tbaa !516, !noalias !884
  br label %77

77:                                               ; preds = %72, %75
  %78 = phi ptr [ %76, %75 ], [ null, %72 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %359, label %80, !prof !889

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %4, i64 8
  %82 = getelementptr inbounds i8, ptr %4, i64 16
  br label %83

83:                                               ; preds = %80, %355
  %84 = phi ptr [ %78, %80 ], [ %357, %355 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  store ptr %84, ptr %4, align 8
  store ptr %73, ptr %81, align 8
  store ptr %1, ptr %82, align 8
  %85 = load ptr, ptr %84, align 8, !tbaa !503
  %86 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88, !prof !890

88:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1306, ptr noundef nonnull @.str.32) #19
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, ptr %85, align 8
  %91 = and i32 %90, 2560
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %355, label %93, !prof !891

93:                                               ; preds = %89
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96, !prof !742

96:                                               ; preds = %93
  %97 = load i32, ptr @dump_flags, align 4, !tbaa !258
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = call i64 @fwrite(ptr nonnull @.str.51, i64 19, i64 1, ptr nonnull %94)
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !243
  call void @print_gimple_stmt(ptr noundef %102, ptr noundef nonnull %85, i32 noundef 0, i32 noundef 2) #19
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %104 = call i32 @fputc(i32 10, ptr %103)
  br label %105

105:                                              ; preds = %100, %96, %93
  %106 = load i32, ptr %85, align 8
  %107 = and i32 %106, 512
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %291, label %109, !prof !892

109:                                              ; preds = %105
  %110 = and i32 %106, 255
  %111 = add nsw i32 %110, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %116, label %113, !prof !893

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %85, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !254
  br label %116

116:                                              ; preds = %113, %109
  %117 = phi ptr [ %115, %113 ], [ null, %109 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %129, label %119, !prof !893

119:                                              ; preds = %116
  %120 = and i32 %106, 254
  %121 = add nsw i32 %120, -10
  %122 = icmp ult i32 %121, -4
  br i1 %122, label %129, label %123, !prof !894

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %85, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !254
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127, !prof !895

127:                                              ; preds = %123
  %128 = load ptr, ptr %117, align 8, !tbaa !620
  br label %129

129:                                              ; preds = %127, %123, %119, %116
  %130 = phi ptr [ %117, %116 ], [ %117, %119 ], [ %117, %123 ], [ %128, %127 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132, !prof !893

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.use_optype_d, ptr %130, i64 0, i32 1
  %134 = load ptr, ptr %130, align 8, !tbaa !620
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi ptr [ %134, %132 ], [ %130, %129 ]
  %137 = phi i8 [ 0, %132 ], [ 1, %129 ]
  %138 = phi ptr [ %133, %132 ], [ null, %129 ]
  br i1 %131, label %291, label %139, !prof !896

139:                                              ; preds = %135, %286
  %140 = phi ptr [ %289, %286 ], [ %138, %135 ]
  %141 = phi i8 [ %288, %286 ], [ %137, %135 ]
  %142 = phi ptr [ %287, %286 ], [ %136, %135 ]
  %143 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %140, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !623
  %145 = load ptr, ptr %144, align 8, !tbaa !243
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 65535
  %148 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !258
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %152, label %151, !prof !728

151:                                              ; preds = %139
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1322, ptr noundef nonnull @.str.32) #19
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i64, ptr %145, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 141
  br i1 %155, label %156, label %216, !prof !263

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.tree_ssa_name, ptr %145, i64 0, i32 3
  %158 = load i32, ptr %157, align 8, !tbaa !254
  %159 = load ptr, ptr @info_for_ssa_name, align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161, !prof !264

161:                                              ; preds = %156
  %162 = load i32, ptr %159, align 8, !tbaa !265
  br label %163

163:                                              ; preds = %161, %156
  %164 = phi i32 [ %162, %161 ], [ 0, %156 ]
  %165 = icmp ult i32 %158, %164
  br i1 %165, label %203, label %166, !prof !267

166:                                              ; preds = %163
  %167 = load ptr, ptr @cfun, align 8, !tbaa !243
  %168 = getelementptr inbounds %struct.function, ptr %167, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !268
  %170 = getelementptr inbounds %struct.gimple_df, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !270
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %166
  %174 = load i32, ptr %171, align 8, !tbaa !274
  br label %175

175:                                              ; preds = %173, %166
  %176 = phi i32 [ %174, %173 ], [ 0, %166 ]
  br i1 %160, label %183, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %159, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !276
  %180 = load i32, ptr %159, align 8, !tbaa !265
  %181 = sub i32 %179, %180
  %182 = icmp uge i32 %181, %176
  br label %185

183:                                              ; preds = %175
  %184 = icmp eq i32 %176, 0
  br label %185

185:                                              ; preds = %183, %177
  %186 = phi i1 [ %182, %177 ], [ %184, %183 ]
  br i1 %186, label %189, label %187

187:                                              ; preds = %185
  %188 = call ptr @vec_heap_p_reserve(ptr noundef %159, i32 noundef %176) #19
  store ptr %188, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %189

189:                                              ; preds = %187, %185
  %190 = icmp ult i32 %164, %176
  br i1 %190, label %191, label %203

191:                                              ; preds = %189, %191
  %192 = phi i32 [ %193, %191 ], [ %164, %189 ]
  %193 = add nuw i32 %192, 1
  %194 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %195 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %196 = getelementptr inbounds %struct.ssa_name_info, ptr %194, i64 0, i32 2
  store i32 %195, ptr %196, align 4, !tbaa !277
  %197 = load ptr, ptr @info_for_ssa_name, align 8
  %198 = load i32, ptr %197, align 8, !tbaa !265
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 8, !tbaa !265
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %197, i64 0, i32 2, i64 %200
  store ptr %194, ptr %201, align 8, !tbaa !243
  %202 = icmp eq i32 %193, %176
  br i1 %202, label %203, label %191, !llvm.loop !279

203:                                              ; preds = %191, %189, %163
  %204 = load ptr, ptr @info_for_ssa_name, align 8
  %205 = zext i32 %158 to i64
  %206 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %204, i64 0, i32 2, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !243
  %208 = getelementptr inbounds %struct.ssa_name_info, ptr %207, i64 0, i32 2
  %209 = load i32, ptr %208, align 4, !tbaa !277
  %210 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %212, label %234, !prof !264

212:                                              ; preds = %203
  %213 = getelementptr inbounds %struct.ssa_name_info, ptr %207, i64 0, i32 1
  %214 = load i8, ptr %213, align 8
  %215 = and i8 %214, -4
  store i8 %215, ptr %213, align 8
  store ptr null, ptr %207, align 8, !tbaa !280
  store i32 %210, ptr %208, align 4, !tbaa !277
  br label %234

216:                                              ; preds = %152
  %217 = trunc i64 %153 to i16
  switch i16 %217, label %222 [
    i16 32, label %218
    i16 34, label %220
  ], !prof !281

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.tree_var_decl, ptr %145, i64 0, i32 1
  br label %226

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_parm_decl, ptr %145, i64 0, i32 2
  br label %226

222:                                              ; preds = %216
  %223 = icmp eq i64 %154, 36
  %224 = getelementptr inbounds %struct.tree_result_decl, ptr %145, i64 0, i32 1
  %225 = select i1 %223, ptr %224, ptr null
  br label %226

226:                                              ; preds = %222, %220, %218
  %227 = phi ptr [ %219, %218 ], [ %221, %220 ], [ %225, %222 ]
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229, !prof !282

229:                                              ; preds = %226
  %230 = load ptr, ptr %227, align 8, !tbaa !243
  br label %231

231:                                              ; preds = %229, %226
  %232 = phi ptr [ %230, %229 ], [ null, %226 ]
  %233 = getelementptr inbounds %struct.var_ann_d, ptr %232, i64 0, i32 2
  br label %234

234:                                              ; preds = %231, %212, %203
  %235 = phi ptr [ %233, %231 ], [ %207, %203 ], [ %207, %212 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !243
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %258, !prof !897

238:                                              ; preds = %234
  %239 = load i64, ptr %145, align 8
  %240 = and i64 %239, 65535
  %241 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !258
  %243 = icmp eq i32 %242, 3
  br i1 %243, label %247, label %244, !prof !898

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.tree_ssa_name, ptr %145, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !254
  br label %247

247:                                              ; preds = %244, %238
  %248 = phi ptr [ %246, %244 ], [ %145, %238 ]
  %249 = load ptr, ptr @cfun, align 8, !tbaa !243
  %250 = call ptr @gimple_default_def(ptr noundef %249, ptr noundef %248) #19
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %256, !prof !899

252:                                              ; preds = %247
  %253 = call ptr @gimple_build_nop() #19
  %254 = load ptr, ptr @cfun, align 8, !tbaa !243
  %255 = call ptr @make_ssa_name_fn(ptr noundef %254, ptr noundef %248, ptr noundef %253) #19
  call void @set_default_def(ptr noundef %248, ptr noundef %255) #19
  br label %256

256:                                              ; preds = %252, %247
  %257 = phi ptr [ %255, %252 ], [ %250, %247 ]
  call void @set_current_def(ptr noundef nonnull %145, ptr noundef %257)
  br label %258

258:                                              ; preds = %234, %256
  %259 = phi ptr [ %257, %256 ], [ %236, %234 ]
  %260 = load ptr, ptr %140, align 8, !tbaa !900
  %261 = icmp eq ptr %260, null
  br i1 %261, label %267, label %262, !prof !728

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %140, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !532
  %265 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %260, i64 0, i32 1
  store ptr %264, ptr %265, align 8, !tbaa !532
  %266 = load ptr, ptr %263, align 8, !tbaa !532
  store ptr %260, ptr %266, align 8, !tbaa !900
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %140, i8 0, i64 16, i1 false)
  br label %267

267:                                              ; preds = %262, %258
  %268 = load ptr, ptr %143, align 8, !tbaa !623
  store ptr %259, ptr %268, align 8, !tbaa !243
  %269 = icmp eq ptr %259, null
  br i1 %269, label %274, label %270, !prof !731

270:                                              ; preds = %267
  %271 = load i64, ptr %259, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 141
  br i1 %273, label %275, label %274, !prof !728

274:                                              ; preds = %270, %267
  store ptr null, ptr %140, align 8, !tbaa !900
  br label %281

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.tree_ssa_name, ptr %259, i64 0, i32 5
  store ptr %276, ptr %140, align 8, !tbaa !900
  %277 = getelementptr inbounds %struct.tree_ssa_name, ptr %259, i64 0, i32 5, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !532
  %279 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %140, i64 0, i32 1
  store ptr %278, ptr %279, align 8, !tbaa !532
  %280 = load ptr, ptr %277, align 8, !tbaa !532
  store ptr %140, ptr %280, align 8, !tbaa !900
  store ptr %140, ptr %277, align 8, !tbaa !532
  br label %281

281:                                              ; preds = %275, %274
  %282 = icmp eq ptr %142, null
  br i1 %282, label %286, label %283, !prof !730

283:                                              ; preds = %281
  %284 = getelementptr inbounds %struct.use_optype_d, ptr %142, i64 0, i32 1
  %285 = load ptr, ptr %142, align 8, !tbaa !620
  br label %286

286:                                              ; preds = %281, %283
  %287 = phi ptr [ %285, %283 ], [ %142, %281 ]
  %288 = phi i8 [ %141, %283 ], [ 1, %281 ]
  %289 = phi ptr [ %284, %283 ], [ null, %281 ]
  %290 = icmp eq i8 %288, 0
  br i1 %290, label %139, label %291, !prof !901, !llvm.loop !902

291:                                              ; preds = %286, %135, %105
  %292 = load i32, ptr %85, align 8
  %293 = and i32 %292, 2048
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %355, label %295, !prof !903

295:                                              ; preds = %291
  %296 = and i32 %292, 255
  %297 = add nsw i32 %296, -10
  %298 = icmp ult i32 %297, -9
  br i1 %298, label %302, label %299, !prof !739

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %85, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !254
  br label %302

302:                                              ; preds = %299, %295
  %303 = phi ptr [ %301, %299 ], [ null, %295 ]
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305, !prof !739

305:                                              ; preds = %302
  %306 = and i32 %292, 254
  %307 = add nsw i32 %306, -10
  %308 = icmp ult i32 %307, -4
  br i1 %308, label %315, label %309, !prof !739

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %85, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !254
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313, !prof !904

313:                                              ; preds = %309
  %314 = load ptr, ptr %303, align 8, !tbaa !664
  br label %315

315:                                              ; preds = %313, %309, %305, %302
  %316 = phi ptr [ %303, %302 ], [ %303, %305 ], [ %303, %309 ], [ %314, %313 ]
  %317 = icmp eq ptr %316, null
  br i1 %317, label %322, label %318, !prof !739

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.def_optype_d, ptr %316, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !662
  %321 = load ptr, ptr %316, align 8, !tbaa !664
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi ptr [ %321, %318 ], [ %316, %315 ]
  %324 = phi i8 [ 0, %318 ], [ 1, %315 ]
  %325 = phi ptr [ %320, %318 ], [ null, %315 ]
  br i1 %317, label %355, label %326, !prof !905

326:                                              ; preds = %322, %350
  %327 = phi ptr [ %353, %350 ], [ %325, %322 ]
  %328 = phi i8 [ %352, %350 ], [ %324, %322 ]
  %329 = phi ptr [ %351, %350 ], [ %323, %322 ]
  %330 = load ptr, ptr %327, align 8, !tbaa !243
  %331 = load ptr, ptr @cfun, align 8, !tbaa !243
  %332 = call ptr @make_ssa_name_fn(ptr noundef %331, ptr noundef %330, ptr noundef nonnull %85) #19
  %333 = load i64, ptr %330, align 8
  %334 = and i64 %333, 65535
  %335 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !258
  %337 = icmp eq i32 %336, 3
  br i1 %337, label %339, label %338, !prof !737

338:                                              ; preds = %326
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1333, ptr noundef nonnull @.str.32) #19
  br label %339

339:                                              ; preds = %338, %326
  store ptr %332, ptr %327, align 8, !tbaa !243
  call fastcc void @register_new_def(ptr noundef %332, ptr noundef nonnull %330)
  %340 = call ptr @target_for_debug_bind(ptr noundef nonnull %330) #19
  %341 = icmp eq ptr %340, null
  br i1 %341, label %344, label %342, !prof !737

342:                                              ; preds = %339
  %343 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %340, ptr noundef %332, ptr noundef nonnull %85) #19
  call void @gsi_insert_after(ptr noundef nonnull %4, ptr noundef %343, i32 noundef 1) #19
  br label %344

344:                                              ; preds = %342, %339
  %345 = icmp eq ptr %329, null
  br i1 %345, label %350, label %346, !prof !737

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.def_optype_d, ptr %329, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !662
  %349 = load ptr, ptr %329, align 8, !tbaa !664
  br label %350

350:                                              ; preds = %346, %344
  %351 = phi ptr [ %349, %346 ], [ %329, %344 ]
  %352 = phi i8 [ %328, %346 ], [ 1, %344 ]
  %353 = phi ptr [ %348, %346 ], [ null, %344 ]
  %354 = icmp eq i8 %352, 0
  br i1 %354, label %326, label %355, !prof !905, !llvm.loop !906

355:                                              ; preds = %350, %322, %89, %291
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  %356 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %84, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !505
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %83, !prof !907, !llvm.loop !908

359:                                              ; preds = %355, %77, %48
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  br label %361

361:                                              ; preds = %511, %359
  %362 = phi i32 [ 0, %359 ], [ %512, %511 ]
  %363 = load ptr, ptr %360, align 8, !tbaa !243
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365, !prof !909

365:                                              ; preds = %361
  %366 = load i32, ptr %363, align 8, !tbaa !309
  br label %367

367:                                              ; preds = %365, %361
  %368 = phi i32 [ %366, %365 ], [ 0, %361 ]
  %369 = icmp eq i32 %368, %362
  br i1 %369, label %374, label %370, !prof !910

370:                                              ; preds = %367
  %371 = zext i32 %362 to i64
  %372 = getelementptr inbounds %struct.VEC_edge_base, ptr %363, i64 0, i32 2, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !243
  br label %374

374:                                              ; preds = %370, %367
  %375 = phi ptr [ %373, %370 ], [ null, %367 ]
  br i1 %369, label %513, label %376, !prof !910

376:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %377 = getelementptr inbounds %struct.edge_def, ptr %375, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !911
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %378) #19
  %379 = load ptr, ptr %3, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %380 = icmp eq ptr %379, null
  br i1 %380, label %502, label %381, !prof !912

381:                                              ; preds = %376, %493
  %382 = phi ptr [ %500, %493 ], [ %379, %376 ]
  %383 = load ptr, ptr %382, align 8, !tbaa !503
  %384 = getelementptr inbounds %struct.gimple_statement_phi, ptr %383, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !254
  %386 = getelementptr inbounds %struct.tree_ssa_name, ptr %385, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !254
  %388 = load i64, ptr %387, align 8
  %389 = and i64 %388, 65535
  %390 = icmp eq i64 %389, 141
  br i1 %390, label %391, label %451, !prof !263

391:                                              ; preds = %381
  %392 = getelementptr inbounds %struct.tree_ssa_name, ptr %387, i64 0, i32 3
  %393 = load i32, ptr %392, align 8, !tbaa !254
  %394 = load ptr, ptr @info_for_ssa_name, align 8
  %395 = icmp eq ptr %394, null
  br i1 %395, label %398, label %396, !prof !264

396:                                              ; preds = %391
  %397 = load i32, ptr %394, align 8, !tbaa !265
  br label %398

398:                                              ; preds = %396, %391
  %399 = phi i32 [ %397, %396 ], [ 0, %391 ]
  %400 = icmp ult i32 %393, %399
  br i1 %400, label %438, label %401, !prof !267

401:                                              ; preds = %398
  %402 = load ptr, ptr @cfun, align 8, !tbaa !243
  %403 = getelementptr inbounds %struct.function, ptr %402, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !268
  %405 = getelementptr inbounds %struct.gimple_df, ptr %404, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !270
  %407 = icmp eq ptr %406, null
  br i1 %407, label %410, label %408

408:                                              ; preds = %401
  %409 = load i32, ptr %406, align 8, !tbaa !274
  br label %410

410:                                              ; preds = %408, %401
  %411 = phi i32 [ %409, %408 ], [ 0, %401 ]
  br i1 %395, label %418, label %412

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %394, i64 0, i32 1
  %414 = load i32, ptr %413, align 4, !tbaa !276
  %415 = load i32, ptr %394, align 8, !tbaa !265
  %416 = sub i32 %414, %415
  %417 = icmp uge i32 %416, %411
  br label %420

418:                                              ; preds = %410
  %419 = icmp eq i32 %411, 0
  br label %420

420:                                              ; preds = %418, %412
  %421 = phi i1 [ %417, %412 ], [ %419, %418 ]
  br i1 %421, label %424, label %422

422:                                              ; preds = %420
  %423 = call ptr @vec_heap_p_reserve(ptr noundef %394, i32 noundef %411) #19
  store ptr %423, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %424

424:                                              ; preds = %422, %420
  %425 = icmp ult i32 %399, %411
  br i1 %425, label %426, label %438

426:                                              ; preds = %424, %426
  %427 = phi i32 [ %428, %426 ], [ %399, %424 ]
  %428 = add nuw i32 %427, 1
  %429 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %430 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %431 = getelementptr inbounds %struct.ssa_name_info, ptr %429, i64 0, i32 2
  store i32 %430, ptr %431, align 4, !tbaa !277
  %432 = load ptr, ptr @info_for_ssa_name, align 8
  %433 = load i32, ptr %432, align 8, !tbaa !265
  %434 = add i32 %433, 1
  store i32 %434, ptr %432, align 8, !tbaa !265
  %435 = zext i32 %433 to i64
  %436 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %432, i64 0, i32 2, i64 %435
  store ptr %429, ptr %436, align 8, !tbaa !243
  %437 = icmp eq i32 %428, %411
  br i1 %437, label %438, label %426, !llvm.loop !279

438:                                              ; preds = %426, %424, %398
  %439 = load ptr, ptr @info_for_ssa_name, align 8
  %440 = zext i32 %393 to i64
  %441 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %439, i64 0, i32 2, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !243
  %443 = getelementptr inbounds %struct.ssa_name_info, ptr %442, i64 0, i32 2
  %444 = load i32, ptr %443, align 4, !tbaa !277
  %445 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %446 = icmp ult i32 %444, %445
  br i1 %446, label %447, label %469, !prof !264

447:                                              ; preds = %438
  %448 = getelementptr inbounds %struct.ssa_name_info, ptr %442, i64 0, i32 1
  %449 = load i8, ptr %448, align 8
  %450 = and i8 %449, -4
  store i8 %450, ptr %448, align 8
  store ptr null, ptr %442, align 8, !tbaa !280
  store i32 %445, ptr %443, align 4, !tbaa !277
  br label %469

451:                                              ; preds = %381
  %452 = trunc i64 %388 to i16
  switch i16 %452, label %457 [
    i16 32, label %453
    i16 34, label %455
  ], !prof !281

453:                                              ; preds = %451
  %454 = getelementptr inbounds %struct.tree_var_decl, ptr %387, i64 0, i32 1
  br label %461

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.tree_parm_decl, ptr %387, i64 0, i32 2
  br label %461

457:                                              ; preds = %451
  %458 = icmp eq i64 %389, 36
  %459 = getelementptr inbounds %struct.tree_result_decl, ptr %387, i64 0, i32 1
  %460 = select i1 %458, ptr %459, ptr null
  br label %461

461:                                              ; preds = %457, %455, %453
  %462 = phi ptr [ %454, %453 ], [ %456, %455 ], [ %460, %457 ]
  %463 = icmp eq ptr %462, null
  br i1 %463, label %466, label %464, !prof !282

464:                                              ; preds = %461
  %465 = load ptr, ptr %462, align 8, !tbaa !243
  br label %466

466:                                              ; preds = %464, %461
  %467 = phi ptr [ %465, %464 ], [ null, %461 ]
  %468 = getelementptr inbounds %struct.var_ann_d, ptr %467, i64 0, i32 2
  br label %469

469:                                              ; preds = %466, %447, %438
  %470 = phi ptr [ %468, %466 ], [ %442, %438 ], [ %442, %447 ]
  %471 = load ptr, ptr %470, align 8, !tbaa !243
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %493, !prof !897

473:                                              ; preds = %469
  %474 = load i64, ptr %387, align 8
  %475 = and i64 %474, 65535
  %476 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %475
  %477 = load i32, ptr %476, align 4, !tbaa !258
  %478 = icmp eq i32 %477, 3
  br i1 %478, label %482, label %479, !prof !898

479:                                              ; preds = %473
  %480 = getelementptr inbounds %struct.tree_ssa_name, ptr %387, i64 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !254
  br label %482

482:                                              ; preds = %479, %473
  %483 = phi ptr [ %481, %479 ], [ %387, %473 ]
  %484 = load ptr, ptr @cfun, align 8, !tbaa !243
  %485 = call ptr @gimple_default_def(ptr noundef %484, ptr noundef %483) #19
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %491, !prof !899

487:                                              ; preds = %482
  %488 = call ptr @gimple_build_nop() #19
  %489 = load ptr, ptr @cfun, align 8, !tbaa !243
  %490 = call ptr @make_ssa_name_fn(ptr noundef %489, ptr noundef %483, ptr noundef %488) #19
  call void @set_default_def(ptr noundef %483, ptr noundef %490) #19
  br label %491

491:                                              ; preds = %487, %482
  %492 = phi ptr [ %490, %487 ], [ %485, %482 ]
  call void @set_current_def(ptr noundef nonnull %387, ptr noundef %492)
  br label %493

493:                                              ; preds = %469, %491
  %494 = phi ptr [ %492, %491 ], [ %471, %469 ]
  %495 = getelementptr inbounds %struct.tree_ssa_name, ptr %494, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !254
  %497 = getelementptr inbounds %struct.gimple_statement_base, ptr %496, i64 0, i32 2
  %498 = load i32, ptr %497, align 8, !tbaa !254
  call void @add_phi_arg(ptr noundef %383, ptr noundef %494, ptr noundef %375, i32 noundef %498) #19
  %499 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %382, i64 0, i32 2
  %500 = load ptr, ptr %499, align 8, !tbaa !505
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %381, !prof !913, !llvm.loop !914

502:                                              ; preds = %493, %376
  %503 = load ptr, ptr %360, align 8, !tbaa !243
  %504 = icmp eq ptr %503, null
  br i1 %504, label %507, label %505, !prof !915

505:                                              ; preds = %502
  %506 = load i32, ptr %503, align 8, !tbaa !309
  br label %507

507:                                              ; preds = %505, %502
  %508 = phi i32 [ %506, %505 ], [ 0, %502 ]
  %509 = icmp ult i32 %362, %508
  br i1 %509, label %511, label %510, !prof !916

510:                                              ; preds = %507
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %511

511:                                              ; preds = %510, %507
  %512 = add i32 %362, 1
  br label %361, !llvm.loop !917

513:                                              ; preds = %374
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rewrite_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #9 !prof !713 !PGOFuncName !918 {
  br label %3

3:                                                ; preds = %115, %2
  %4 = load ptr, ptr @block_defs_stack, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !919

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !274
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %117, label %11, !prof !919

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 8, !tbaa !274
  %13 = add i32 %12, -1
  store i32 %13, ptr %4, align 8, !tbaa !274
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !243
  %17 = icmp eq ptr %16, null
  br i1 %17, label %117, label %18, !prof !920

18:                                               ; preds = %11
  %19 = load i64, ptr %16, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %34, !prof !921

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !254
  %25 = tail call zeroext i8 @is_gimple_reg(ptr noundef %24) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %34, !prof !922

27:                                               ; preds = %22
  %28 = load ptr, ptr @block_defs_stack, align 8
  %29 = load i32, ptr %28, align 8, !tbaa !274
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 8, !tbaa !274
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_tree_base, ptr %28, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !243
  br label %34

34:                                               ; preds = %18, %22, %27
  %35 = phi ptr [ %16, %22 ], [ %16, %27 ], [ null, %18 ]
  %36 = phi ptr [ %24, %22 ], [ %33, %27 ], [ %16, %18 ]
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %40, label %100, !prof !284

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !254
  %43 = load ptr, ptr @info_for_ssa_name, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !285

45:                                               ; preds = %40
  %46 = load i32, ptr %43, align 8, !tbaa !265
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i32 [ %46, %45 ], [ 0, %40 ]
  %49 = icmp ult i32 %42, %48
  br i1 %49, label %87, label %50, !prof !286

50:                                               ; preds = %47
  %51 = load ptr, ptr @cfun, align 8, !tbaa !243
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !268
  %54 = getelementptr inbounds %struct.gimple_df, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !270
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !287

57:                                               ; preds = %50
  %58 = load i32, ptr %55, align 8, !tbaa !274
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi i32 [ %58, %57 ], [ 0, %50 ]
  br i1 %44, label %67, label %61, !prof !288

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %43, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !276
  %64 = load i32, ptr %43, align 8, !tbaa !265
  %65 = sub i32 %63, %64
  %66 = icmp uge i32 %65, %60
  br label %69

67:                                               ; preds = %59
  %68 = icmp eq i32 %60, 0
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i1 [ %66, %61 ], [ %68, %67 ]
  br i1 %70, label %73, label %71, !prof !289

71:                                               ; preds = %69
  %72 = tail call ptr @vec_heap_p_reserve(ptr noundef %43, i32 noundef %60) #19
  store ptr %72, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %73

73:                                               ; preds = %71, %69
  %74 = icmp ult i32 %48, %60
  br i1 %74, label %75, label %87, !prof !290

75:                                               ; preds = %73, %75
  %76 = phi i32 [ %77, %75 ], [ %48, %73 ]
  %77 = add nuw i32 %76, 1
  %78 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %79 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %80 = getelementptr inbounds %struct.ssa_name_info, ptr %78, i64 0, i32 2
  store i32 %79, ptr %80, align 4, !tbaa !277
  %81 = load ptr, ptr @info_for_ssa_name, align 8
  %82 = load i32, ptr %81, align 8, !tbaa !265
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 8, !tbaa !265
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %81, i64 0, i32 2, i64 %84
  store ptr %78, ptr %85, align 8, !tbaa !243
  %86 = icmp eq i32 %77, %60
  br i1 %86, label %87, label %75, !prof !291, !llvm.loop !279

87:                                               ; preds = %75, %73, %47
  %88 = load ptr, ptr @info_for_ssa_name, align 8
  %89 = zext i32 %42 to i64
  %90 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %88, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !243
  %92 = getelementptr inbounds %struct.ssa_name_info, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !277
  %94 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %115, !prof !292

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.ssa_name_info, ptr %91, i64 0, i32 1
  %98 = load i8, ptr %97, align 8
  %99 = and i8 %98, -4
  store i8 %99, ptr %97, align 8
  store ptr null, ptr %91, align 8, !tbaa !280
  store i32 %94, ptr %92, align 4, !tbaa !277
  br label %115

100:                                              ; preds = %34
  %101 = trunc i64 %37 to i16
  switch i16 %101, label %106 [
    i16 32, label %102
    i16 34, label %104
  ], !prof !293

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.tree_var_decl, ptr %36, i64 0, i32 1
  br label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tree_parm_decl, ptr %36, i64 0, i32 2
  br label %110

106:                                              ; preds = %100
  %107 = icmp eq i64 %38, 36
  %108 = getelementptr inbounds %struct.tree_result_decl, ptr %36, i64 0, i32 1
  %109 = select i1 %107, ptr %108, ptr null
  br label %110

110:                                              ; preds = %106, %104, %102
  %111 = phi ptr [ %103, %102 ], [ %105, %104 ], [ %109, %106 ]
  %112 = icmp ne ptr %111, null
  tail call void @llvm.assume(i1 %112)
  %113 = load ptr, ptr %111, align 8, !tbaa !243
  %114 = getelementptr inbounds %struct.var_ann_d, ptr %113, i64 0, i32 2
  br label %115

115:                                              ; preds = %87, %96, %110
  %116 = phi ptr [ %114, %110 ], [ %91, %96 ], [ %91, %87 ]
  store ptr %35, ptr %116, align 8, !tbaa !243
  br i1 %17, label %117, label %3, !prof !920

117:                                              ; preds = %11, %115, %8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rewrite_update_enter_block(ptr nocapture readnone %0, ptr noundef %1) #9 !prof !923 !PGOFuncName !924 {
  %3 = alloca %struct.repl_map_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.repl_map_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !925

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !258
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !313
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.52, i32 noundef %15)
  br label %17

17:                                               ; preds = %13, %9, %2
  %18 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !926

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_tree_base, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !877
  %23 = load i32, ptr %18, align 8, !tbaa !274
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27, !prof !927

25:                                               ; preds = %17, %20
  %26 = tail call ptr @vec_heap_p_reserve(ptr noundef %18, i32 noundef 1) #19
  store ptr %26, ptr @block_defs_stack, align 8, !tbaa !243
  br label %27

27:                                               ; preds = %20, %25
  %28 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %29 = load i32, ptr %28, align 8, !tbaa !274
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !274
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds %struct.VEC_tree_base, ptr %28, i64 0, i32 2, i64 %31
  store ptr null, ptr %32, align 8, !tbaa !243
  %33 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !313
  %36 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %35) #19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %1804, label %38, !prof !928

38:                                               ; preds = %27
  %39 = icmp eq ptr %1, null
  br label %40

40:                                               ; preds = %38, %70
  %41 = phi i32 [ %71, %70 ], [ 0, %38 ]
  br i1 %39, label %42, label %43, !prof !929

42:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 687, ptr noundef nonnull @.str.32) #19
  br label %43

43:                                               ; preds = %42, %40
  %44 = load ptr, ptr %1, align 8, !tbaa !243
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !930

46:                                               ; preds = %43
  %47 = load i32, ptr %44, align 8, !tbaa !309
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %47, %46 ], [ 0, %43 ]
  %50 = icmp eq i32 %49, %41
  br i1 %50, label %55, label %51, !prof !931

51:                                               ; preds = %48
  %52 = zext i32 %41 to i64
  %53 = getelementptr inbounds %struct.VEC_edge_base, ptr %44, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !243
  br label %55

55:                                               ; preds = %48, %51
  %56 = phi ptr [ %54, %51 ], [ null, %48 ]
  br i1 %50, label %72, label %57, !prof !931

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !433
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72, !prof !932

62:                                               ; preds = %57
  %63 = icmp eq ptr %44, null
  br i1 %63, label %66, label %64, !prof !933

64:                                               ; preds = %62
  %65 = load i32, ptr %44, align 8, !tbaa !309
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %65, %64 ], [ 0, %62 ]
  %68 = icmp ult i32 %41, %67
  br i1 %68, label %70, label %69, !prof !932

69:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %70

70:                                               ; preds = %66, %69
  %71 = add i32 %41, 1
  br label %40, !llvm.loop !934

72:                                               ; preds = %57, %55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %1) #19
  %73 = load ptr, ptr %6, align 8, !tbaa.struct !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %366, label %75, !prof !935

75:                                               ; preds = %72, %362
  %76 = phi ptr [ %364, %362 ], [ %73, %72 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !503
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 2048
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %362, label %81, !prof !936

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.gimple_statement_phi, ptr %77, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !254
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !254
  %86 = load ptr, ptr @cfun, align 8, !tbaa !243
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !268
  %89 = getelementptr inbounds %struct.gimple_df, ptr %88, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !323
  %91 = getelementptr inbounds %struct.tree_decl_minimal, ptr %85, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !254
  %93 = call i32 @bitmap_bit_p(ptr noundef %90, i32 noundef %92) #19
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %279, label %96, !prof !937

96:                                               ; preds = %81
  %97 = load i64, ptr %85, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 141
  br i1 %99, label %100, label %160, !prof !263

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !254
  %103 = load ptr, ptr @info_for_ssa_name, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !264

105:                                              ; preds = %100
  %106 = load i32, ptr %103, align 8, !tbaa !265
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %106, %105 ], [ 0, %100 ]
  %109 = icmp ult i32 %102, %108
  br i1 %109, label %147, label %110, !prof !267

110:                                              ; preds = %107
  %111 = load ptr, ptr @cfun, align 8, !tbaa !243
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !268
  %114 = getelementptr inbounds %struct.gimple_df, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !270
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load i32, ptr %115, align 8, !tbaa !274
  br label %119

119:                                              ; preds = %117, %110
  %120 = phi i32 [ %118, %117 ], [ 0, %110 ]
  br i1 %104, label %127, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %103, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !276
  %124 = load i32, ptr %103, align 8, !tbaa !265
  %125 = sub i32 %123, %124
  %126 = icmp uge i32 %125, %120
  br label %129

127:                                              ; preds = %119
  %128 = icmp eq i32 %120, 0
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi i1 [ %126, %121 ], [ %128, %127 ]
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = call ptr @vec_heap_p_reserve(ptr noundef %103, i32 noundef %120) #19
  store ptr %132, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %133

133:                                              ; preds = %131, %129
  %134 = icmp ult i32 %108, %120
  br i1 %134, label %135, label %147

135:                                              ; preds = %133, %135
  %136 = phi i32 [ %137, %135 ], [ %108, %133 ]
  %137 = add nuw i32 %136, 1
  %138 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %139 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %140 = getelementptr inbounds %struct.ssa_name_info, ptr %138, i64 0, i32 2
  store i32 %139, ptr %140, align 4, !tbaa !277
  %141 = load ptr, ptr @info_for_ssa_name, align 8
  %142 = load i32, ptr %141, align 8, !tbaa !265
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 8, !tbaa !265
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %141, i64 0, i32 2, i64 %144
  store ptr %138, ptr %145, align 8, !tbaa !243
  %146 = icmp eq i32 %137, %120
  br i1 %146, label %147, label %135, !llvm.loop !279

147:                                              ; preds = %135, %133, %107
  %148 = load ptr, ptr @info_for_ssa_name, align 8
  %149 = zext i32 %102 to i64
  %150 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %148, i64 0, i32 2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !243
  %152 = getelementptr inbounds %struct.ssa_name_info, ptr %151, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !277
  %154 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %178, !prof !264

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.ssa_name_info, ptr %151, i64 0, i32 1
  %158 = load i8, ptr %157, align 8
  %159 = and i8 %158, -4
  store i8 %159, ptr %157, align 8
  store ptr null, ptr %151, align 8, !tbaa !280
  store i32 %154, ptr %152, align 4, !tbaa !277
  br label %178

160:                                              ; preds = %96
  %161 = trunc i64 %97 to i16
  switch i16 %161, label %166 [
    i16 32, label %162
    i16 34, label %164
  ], !prof !281

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.tree_var_decl, ptr %85, i64 0, i32 1
  br label %170

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.tree_parm_decl, ptr %85, i64 0, i32 2
  br label %170

166:                                              ; preds = %160
  %167 = icmp eq i64 %98, 36
  %168 = getelementptr inbounds %struct.tree_result_decl, ptr %85, i64 0, i32 1
  %169 = select i1 %167, ptr %168, ptr null
  br label %170

170:                                              ; preds = %166, %164, %162
  %171 = phi ptr [ %163, %162 ], [ %165, %164 ], [ %169, %166 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173, !prof !282

173:                                              ; preds = %170
  %174 = load ptr, ptr %171, align 8, !tbaa !243
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi ptr [ %174, %173 ], [ null, %170 ]
  %177 = getelementptr inbounds %struct.var_ann_d, ptr %176, i64 0, i32 2
  br label %178

178:                                              ; preds = %147, %156, %175
  %179 = phi ptr [ %177, %175 ], [ %151, %147 ], [ %151, %156 ]
  %180 = load ptr, ptr %179, align 8, !tbaa !243
  %181 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183, !prof !938

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.VEC_tree_base, ptr %181, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !877
  %186 = load i32, ptr %181, align 8, !tbaa !274
  %187 = sub i32 %185, %186
  %188 = icmp ult i32 %187, 2
  br i1 %188, label %189, label %191, !prof !938

189:                                              ; preds = %178, %183
  %190 = call ptr @vec_heap_p_reserve(ptr noundef %181, i32 noundef 2) #19
  store ptr %190, ptr @block_defs_stack, align 8, !tbaa !243
  br label %191

191:                                              ; preds = %183, %189
  %192 = load ptr, ptr @block_defs_stack, align 8
  %193 = load i32, ptr %192, align 8, !tbaa !274
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8, !tbaa !274
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds %struct.VEC_tree_base, ptr %192, i64 0, i32 2, i64 %195
  store ptr %180, ptr %196, align 8, !tbaa !243
  %197 = add i32 %193, 2
  store i32 %197, ptr %192, align 8, !tbaa !274
  %198 = zext i32 %194 to i64
  %199 = getelementptr inbounds %struct.VEC_tree_base, ptr %192, i64 0, i32 2, i64 %198
  store ptr %85, ptr %199, align 8, !tbaa !243
  %200 = load i64, ptr %85, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 141
  br i1 %202, label %203, label %264, !prof !284

203:                                              ; preds = %191
  %204 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 3
  %205 = load i32, ptr %204, align 8, !tbaa !254
  %206 = load ptr, ptr @info_for_ssa_name, align 8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %210, label %208, !prof !285

208:                                              ; preds = %203
  %209 = load i32, ptr %206, align 8, !tbaa !265
  br label %210

210:                                              ; preds = %208, %203
  %211 = phi i32 [ %209, %208 ], [ 0, %203 ]
  %212 = icmp ult i32 %205, %211
  br i1 %212, label %250, label %213, !prof !286

213:                                              ; preds = %210
  %214 = load ptr, ptr @cfun, align 8, !tbaa !243
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !268
  %217 = getelementptr inbounds %struct.gimple_df, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !270
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220, !prof !287

220:                                              ; preds = %213
  %221 = load i32, ptr %218, align 8, !tbaa !274
  br label %222

222:                                              ; preds = %220, %213
  %223 = phi i32 [ %221, %220 ], [ 0, %213 ]
  br i1 %207, label %230, label %224, !prof !288

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %206, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !276
  %227 = load i32, ptr %206, align 8, !tbaa !265
  %228 = sub i32 %226, %227
  %229 = icmp uge i32 %228, %223
  br label %232

230:                                              ; preds = %222
  %231 = icmp eq i32 %223, 0
  br label %232

232:                                              ; preds = %230, %224
  %233 = phi i1 [ %229, %224 ], [ %231, %230 ]
  br i1 %233, label %236, label %234, !prof !289

234:                                              ; preds = %232
  %235 = call ptr @vec_heap_p_reserve(ptr noundef %206, i32 noundef %223) #19
  store ptr %235, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %236

236:                                              ; preds = %234, %232
  %237 = icmp ult i32 %211, %223
  br i1 %237, label %238, label %250, !prof !290

238:                                              ; preds = %236, %238
  %239 = phi i32 [ %240, %238 ], [ %211, %236 ]
  %240 = add nuw i32 %239, 1
  %241 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %242 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %243 = getelementptr inbounds %struct.ssa_name_info, ptr %241, i64 0, i32 2
  store i32 %242, ptr %243, align 4, !tbaa !277
  %244 = load ptr, ptr @info_for_ssa_name, align 8
  %245 = load i32, ptr %244, align 8, !tbaa !265
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 8, !tbaa !265
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %244, i64 0, i32 2, i64 %247
  store ptr %241, ptr %248, align 8, !tbaa !243
  %249 = icmp eq i32 %240, %223
  br i1 %249, label %250, label %238, !prof !291, !llvm.loop !279

250:                                              ; preds = %238, %236, %210
  %251 = load ptr, ptr @info_for_ssa_name, align 8
  %252 = zext i32 %205 to i64
  %253 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %251, i64 0, i32 2, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !243
  %255 = getelementptr inbounds %struct.ssa_name_info, ptr %254, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !277
  %257 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %259, label %263, !prof !292

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.ssa_name_info, ptr %254, i64 0, i32 1
  %261 = load i8, ptr %260, align 8
  %262 = and i8 %261, -4
  store i8 %262, ptr %260, align 8
  store ptr null, ptr %254, align 8, !tbaa !280
  store i32 %257, ptr %255, align 4, !tbaa !277
  br label %263

263:                                              ; preds = %259, %250
  store ptr %83, ptr %254, align 8, !tbaa !280
  br label %358

264:                                              ; preds = %191
  %265 = trunc i64 %200 to i16
  switch i16 %265, label %270 [
    i16 32, label %266
    i16 34, label %268
  ], !prof !293

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.tree_var_decl, ptr %85, i64 0, i32 1
  br label %274

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.tree_parm_decl, ptr %85, i64 0, i32 2
  br label %274

270:                                              ; preds = %264
  %271 = icmp eq i64 %201, 36
  %272 = getelementptr inbounds %struct.tree_result_decl, ptr %85, i64 0, i32 1
  %273 = select i1 %271, ptr %272, ptr null
  br label %274

274:                                              ; preds = %270, %268, %266
  %275 = phi ptr [ %267, %266 ], [ %269, %268 ], [ %273, %270 ]
  %276 = icmp ne ptr %275, null
  call void @llvm.assume(i1 %276)
  %277 = load ptr, ptr %275, align 8, !tbaa !243
  %278 = getelementptr inbounds %struct.var_ann_d, ptr %277, i64 0, i32 2
  store ptr %83, ptr %278, align 8, !tbaa !939
  br label %358

279:                                              ; preds = %81
  %280 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !254
  %282 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %283 = icmp eq ptr %282, null
  br i1 %283, label %299, label %284, !prof !941

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.simple_bitmap_def, ptr %282, i64 0, i32 1
  %286 = load i32, ptr %285, align 8, !tbaa !446
  %287 = icmp ult i32 %281, %286
  br i1 %287, label %288, label %299, !prof !942

288:                                              ; preds = %284
  %289 = lshr i32 %281, 6
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds %struct.simple_bitmap_def, ptr %282, i64 0, i32 3, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !301
  %293 = and i32 %281, 63
  %294 = zext nneg i32 %293 to i64
  %295 = shl nuw i64 1, %294
  %296 = and i64 %292, %295
  %297 = icmp ne i64 %296, 0
  %298 = zext i1 %297 to i8
  br label %299

299:                                              ; preds = %279, %284, %288
  %300 = phi i8 [ 0, %279 ], [ 0, %284 ], [ %298, %288 ]
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %314, label %302, !prof !943

302:                                              ; preds = %299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  store ptr %83, ptr %5, align 8, !tbaa !386
  %303 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %304 = call ptr @htab_find_slot(ptr noundef %303, ptr noundef nonnull %5, i32 noundef 0) #19
  %305 = icmp eq ptr %304, null
  br i1 %305, label %312, label %306, !prof !944

306:                                              ; preds = %302
  %307 = load ptr, ptr %304, align 8, !tbaa !243
  %308 = icmp eq ptr %307, null
  br i1 %308, label %312, label %309, !prof !944

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.repl_map_d, ptr %307, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !389
  br label %312

312:                                              ; preds = %302, %306, %309
  %313 = phi ptr [ %311, %309 ], [ null, %306 ], [ null, %302 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call fastcc void @register_new_update_set(ptr noundef %83, ptr noundef %313)
  br label %314

314:                                              ; preds = %312, %299
  %315 = load i32, ptr %280, align 8, !tbaa !254
  %316 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %317 = icmp eq ptr %316, null
  br i1 %317, label %334, label %318, !prof !941

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.simple_bitmap_def, ptr %316, i64 0, i32 1
  %320 = load i32, ptr %319, align 8, !tbaa !446
  %321 = icmp ult i32 %315, %320
  br i1 %321, label %322, label %334, !prof !942

322:                                              ; preds = %318
  %323 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %324 = lshr i32 %315, 6
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds %struct.simple_bitmap_def, ptr %323, i64 0, i32 3, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !301
  %328 = and i32 %315, 63
  %329 = zext nneg i32 %328 to i64
  %330 = shl nuw i64 1, %329
  %331 = and i64 %327, %330
  %332 = icmp ne i64 %331, 0
  %333 = zext i1 %332 to i8
  br label %334

334:                                              ; preds = %314, %318, %322
  %335 = phi i8 [ 0, %314 ], [ 0, %318 ], [ %333, %322 ]
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %358, label %337, !prof !945

337:                                              ; preds = %334
  %338 = call ptr @get_current_def(ptr noundef %83)
  %339 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %340 = icmp eq ptr %339, null
  br i1 %340, label %347, label %341, !prof !946

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.VEC_tree_base, ptr %339, i64 0, i32 1
  %343 = load i32, ptr %342, align 4, !tbaa !877
  %344 = load i32, ptr %339, align 8, !tbaa !274
  %345 = sub i32 %343, %344
  %346 = icmp ult i32 %345, 2
  br i1 %346, label %347, label %349, !prof !947

347:                                              ; preds = %337, %341
  %348 = call ptr @vec_heap_p_reserve(ptr noundef %339, i32 noundef 2) #19
  store ptr %348, ptr @block_defs_stack, align 8, !tbaa !243
  br label %349

349:                                              ; preds = %341, %347
  %350 = load ptr, ptr @block_defs_stack, align 8
  %351 = load i32, ptr %350, align 8, !tbaa !274
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 8, !tbaa !274
  %353 = zext i32 %351 to i64
  %354 = getelementptr inbounds %struct.VEC_tree_base, ptr %350, i64 0, i32 2, i64 %353
  store ptr %338, ptr %354, align 8, !tbaa !243
  %355 = add i32 %351, 2
  store i32 %355, ptr %350, align 8, !tbaa !274
  %356 = zext i32 %352 to i64
  %357 = getelementptr inbounds %struct.VEC_tree_base, ptr %350, i64 0, i32 2, i64 %356
  store ptr %83, ptr %357, align 8, !tbaa !243
  call void @set_current_def(ptr noundef %83, ptr noundef %83)
  br label %358

358:                                              ; preds = %274, %263, %334, %349
  br i1 %50, label %362, label %359, !prof !948

359:                                              ; preds = %358
  %360 = load i64, ptr %83, align 8
  %361 = or i64 %360, 4194304
  store i64 %361, ptr %83, align 8
  br label %362

362:                                              ; preds = %358, %359, %75
  %363 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %76, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !505
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %75, !prof !949, !llvm.loop !950

366:                                              ; preds = %362, %72
  %367 = load ptr, ptr @interesting_blocks, align 8, !tbaa !243
  %368 = load i32, ptr %34, align 8, !tbaa !313
  %369 = lshr i32 %368, 6
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds %struct.simple_bitmap_def, ptr %367, i64 0, i32 3, i64 %370
  %372 = load i64, ptr %371, align 8, !tbaa !301
  %373 = and i32 %368, 63
  %374 = zext nneg i32 %373 to i64
  %375 = shl nuw i64 1, %374
  %376 = and i64 %375, %372
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %1289, label %378, !prof !951

378:                                              ; preds = %366
  %379 = load ptr, ptr @blocks_to_update, align 8, !tbaa !243
  %380 = call i32 @bitmap_bit_p(ptr noundef %379, i32 noundef %368) #19
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %383, !prof !951

382:                                              ; preds = %378
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2136, ptr noundef nonnull @.str.32) #19
  br label %383

383:                                              ; preds = %378, %382
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %385 = load i32, ptr %384, align 8, !tbaa !508, !noalias !952
  %386 = and i32 %385, 512
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %394, !prof !586

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %390 = load ptr, ptr %389, align 8, !tbaa !254, !noalias !952
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392, !prof !955

392:                                              ; preds = %388
  %393 = load ptr, ptr %390, align 8, !tbaa !514, !noalias !952
  br label %394

394:                                              ; preds = %392, %388, %383
  %395 = phi ptr [ %393, %392 ], [ null, %388 ], [ null, %383 ]
  %396 = icmp eq ptr %395, null
  br i1 %396, label %399, label %397, !prof !955

397:                                              ; preds = %394
  %398 = load ptr, ptr %395, align 8, !tbaa !516, !noalias !952
  br label %399

399:                                              ; preds = %394, %397
  %400 = phi ptr [ %398, %397 ], [ null, %394 ]
  %401 = icmp eq ptr %400, null
  br i1 %401, label %1289, label %402, !prof !956

402:                                              ; preds = %399, %1285
  %403 = phi ptr [ %1287, %1285 ], [ %400, %399 ]
  %404 = load ptr, ptr %403, align 8, !tbaa !503
  %405 = load i32, ptr %404, align 8
  %406 = and i32 %405, 2560
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %1285, label %408, !prof !957

408:                                              ; preds = %402
  %409 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %410 = icmp eq ptr %409, null
  br i1 %410, label %420, label %411, !prof !958

411:                                              ; preds = %408
  %412 = load i32, ptr @dump_flags, align 4, !tbaa !258
  %413 = and i32 %412, 8
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %411
  %416 = call i64 @fwrite(ptr nonnull @.str.53, i64 39, i64 1, ptr nonnull %409)
  %417 = load ptr, ptr @dump_file, align 8, !tbaa !243
  call void @print_gimple_stmt(ptr noundef %417, ptr noundef nonnull %404, i32 noundef 0, i32 noundef 2) #19
  %418 = load ptr, ptr @dump_file, align 8, !tbaa !243
  %419 = call i32 @fputc(i32 10, ptr %418)
  br label %420

420:                                              ; preds = %415, %411, %408
  %421 = load i32, ptr %404, align 8
  %422 = and i32 %421, 512
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %868, label %424, !prof !959

424:                                              ; preds = %420
  %425 = and i32 %421, 255
  %426 = icmp eq i32 %425, 2
  br i1 %426, label %427, label %560, !prof !960

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %404, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !254
  %430 = icmp eq ptr %429, null
  br i1 %430, label %434, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.use_optype_d, ptr %429, i64 0, i32 1
  %433 = load ptr, ptr %429, align 8, !tbaa !620
  br label %434

434:                                              ; preds = %431, %427
  %435 = phi ptr [ %433, %431 ], [ %429, %427 ]
  %436 = phi i8 [ 0, %431 ], [ 1, %427 ]
  %437 = phi ptr [ %432, %431 ], [ null, %427 ]
  br i1 %430, label %868, label %438

438:                                              ; preds = %434, %526
  %439 = phi ptr [ %529, %526 ], [ %437, %434 ]
  %440 = phi i8 [ %528, %526 ], [ %436, %434 ]
  %441 = phi ptr [ %527, %526 ], [ %435, %434 ]
  %442 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %439, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8, !tbaa !623
  %444 = load ptr, ptr %443, align 8, !tbaa !243
  %445 = load i64, ptr %444, align 8
  %446 = and i64 %445, 65535
  %447 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %446
  %448 = load i32, ptr %447, align 4, !tbaa !258
  %449 = icmp eq i32 %448, 3
  br i1 %449, label %453, label %450

450:                                              ; preds = %438
  %451 = getelementptr inbounds %struct.tree_ssa_name, ptr %444, i64 0, i32 1
  %452 = load ptr, ptr %451, align 8, !tbaa !254
  br label %453

453:                                              ; preds = %450, %438
  %454 = phi ptr [ %452, %450 ], [ %444, %438 ]
  %455 = load ptr, ptr @cfun, align 8, !tbaa !243
  %456 = getelementptr inbounds %struct.function, ptr %455, i64 0, i32 3
  %457 = load ptr, ptr %456, align 8, !tbaa !268
  %458 = getelementptr inbounds %struct.gimple_df, ptr %457, i64 0, i32 9
  %459 = load ptr, ptr %458, align 8, !tbaa !323
  %460 = getelementptr inbounds %struct.tree_decl_minimal, ptr %454, i64 0, i32 2
  %461 = load i32, ptr %460, align 4, !tbaa !254
  %462 = call i32 @bitmap_bit_p(ptr noundef %459, i32 noundef %461) #19
  %463 = and i32 %462, 255
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %467, label %465

465:                                              ; preds = %453
  %466 = call ptr @get_current_def(ptr noundef %454)
  br label %495

467:                                              ; preds = %453
  %468 = getelementptr inbounds %struct.tree_ssa_name, ptr %444, i64 0, i32 3
  %469 = load i32, ptr %468, align 8, !tbaa !254
  %470 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %471 = icmp eq ptr %470, null
  br i1 %471, label %495, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.simple_bitmap_def, ptr %470, i64 0, i32 1
  %474 = load i32, ptr %473, align 8, !tbaa !446
  %475 = icmp ult i32 %469, %474
  br i1 %475, label %476, label %495

476:                                              ; preds = %472
  %477 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %478 = lshr i32 %469, 6
  %479 = zext nneg i32 %478 to i64
  %480 = getelementptr inbounds %struct.simple_bitmap_def, ptr %477, i64 0, i32 3, i64 %479
  %481 = load i64, ptr %480, align 8, !tbaa !301
  %482 = and i32 %469, 63
  %483 = zext nneg i32 %482 to i64
  %484 = shl nuw i64 1, %483
  %485 = and i64 %481, %484
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %495, label %487

487:                                              ; preds = %476
  %488 = call ptr @get_current_def(ptr noundef nonnull %444)
  %489 = icmp eq ptr %488, null
  br i1 %489, label %490, label %495

490:                                              ; preds = %487
  %491 = load i64, ptr %444, align 8
  %492 = and i64 %491, 4294967296
  %493 = icmp eq i64 %492, 0
  %494 = select i1 %493, ptr null, ptr %444
  br label %495

495:                                              ; preds = %490, %487, %476, %472, %467, %465
  %496 = phi ptr [ %466, %465 ], [ %488, %487 ], [ %494, %490 ], [ %444, %476 ], [ %444, %472 ], [ %444, %467 ]
  %497 = icmp ne ptr %496, null
  %498 = icmp ne ptr %496, %444
  %499 = and i1 %498, %497
  br i1 %499, label %500, label %520

500:                                              ; preds = %495
  %501 = load ptr, ptr %439, align 8, !tbaa !900
  %502 = icmp eq ptr %501, null
  br i1 %502, label %508, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %439, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !532
  %506 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %501, i64 0, i32 1
  store ptr %505, ptr %506, align 8, !tbaa !532
  %507 = load ptr, ptr %504, align 8, !tbaa !532
  store ptr %501, ptr %507, align 8, !tbaa !900
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %439, i8 0, i64 16, i1 false)
  br label %508

508:                                              ; preds = %503, %500
  %509 = load ptr, ptr %442, align 8, !tbaa !623
  store ptr %496, ptr %509, align 8, !tbaa !243
  %510 = load i64, ptr %496, align 8
  %511 = and i64 %510, 65535
  %512 = icmp eq i64 %511, 141
  br i1 %512, label %514, label %513

513:                                              ; preds = %508
  store ptr null, ptr %439, align 8, !tbaa !900
  br label %520

514:                                              ; preds = %508
  %515 = getelementptr inbounds %struct.tree_ssa_name, ptr %496, i64 0, i32 5
  store ptr %515, ptr %439, align 8, !tbaa !900
  %516 = getelementptr inbounds %struct.tree_ssa_name, ptr %496, i64 0, i32 5, i32 1
  %517 = load ptr, ptr %516, align 8, !tbaa !532
  %518 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %439, i64 0, i32 1
  store ptr %517, ptr %518, align 8, !tbaa !532
  %519 = load ptr, ptr %516, align 8, !tbaa !532
  store ptr %439, ptr %519, align 8, !tbaa !900
  store ptr %439, ptr %516, align 8, !tbaa !532
  br label %520

520:                                              ; preds = %514, %513, %495
  br i1 %497, label %521, label %531

521:                                              ; preds = %520
  %522 = icmp eq ptr %441, null
  br i1 %522, label %526, label %523

523:                                              ; preds = %521
  %524 = getelementptr inbounds %struct.use_optype_d, ptr %441, i64 0, i32 1
  %525 = load ptr, ptr %441, align 8, !tbaa !620
  br label %526

526:                                              ; preds = %521, %523
  %527 = phi ptr [ %525, %523 ], [ %441, %521 ]
  %528 = phi i8 [ %440, %523 ], [ 1, %521 ]
  %529 = phi ptr [ %524, %523 ], [ null, %521 ]
  %530 = icmp eq i8 %528, 0
  br i1 %530, label %438, label %868, !llvm.loop !961

531:                                              ; preds = %520
  %532 = load i32, ptr %404, align 8
  %533 = and i32 %532, 255
  %534 = add nsw i32 %533, -10
  %535 = icmp ult i32 %534, -9
  br i1 %535, label %540, label %536

536:                                              ; preds = %531
  %537 = getelementptr inbounds %struct.gimple_statement_base, ptr %404, i64 0, i32 3
  %538 = load i32, ptr %537, align 4, !tbaa !254
  %539 = icmp ugt i32 %538, 1
  br i1 %539, label %541, label %540

540:                                              ; preds = %536, %531
  call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 1665, ptr noundef nonnull @.str.32) #19
  br label %541

541:                                              ; preds = %540, %536
  %542 = load i32, ptr %404, align 8
  %543 = and i32 %542, 255
  %544 = zext nneg i32 %543 to i64
  %545 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !258
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %547
  %549 = load i64, ptr %548, align 8, !tbaa !301
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %541
  call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 1622, ptr noundef nonnull @.str.32) #19
  br label %552

552:                                              ; preds = %551, %541
  %553 = getelementptr inbounds i8, ptr %404, i64 %549
  %554 = getelementptr inbounds ptr, ptr %553, i64 1
  store ptr null, ptr %554, align 8, !tbaa !243
  %555 = load i32, ptr %404, align 8
  %556 = and i32 %555, 255
  %557 = add nsw i32 %556, -10
  %558 = icmp ult i32 %557, -9
  br i1 %558, label %868, label %559

559:                                              ; preds = %552
  call void @gimple_set_modified(ptr noundef nonnull %404, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %404) #19
  br label %868

560:                                              ; preds = %424
  %561 = add nsw i32 %425, -10
  %562 = icmp ult i32 %561, -9
  br i1 %562, label %566, label %563, !prof !960

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %404, i64 0, i32 2
  %565 = load ptr, ptr %564, align 8, !tbaa !254
  br label %566

566:                                              ; preds = %563, %560
  %567 = phi ptr [ %565, %563 ], [ null, %560 ]
  %568 = icmp eq ptr %567, null
  br i1 %568, label %572, label %569, !prof !960

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.use_optype_d, ptr %567, i64 0, i32 1
  %571 = load ptr, ptr %567, align 8, !tbaa !620
  br label %572

572:                                              ; preds = %569, %566
  %573 = phi ptr [ %571, %569 ], [ %567, %566 ]
  %574 = phi i8 [ 0, %569 ], [ 1, %566 ]
  %575 = phi ptr [ %570, %569 ], [ null, %566 ]
  br i1 %568, label %868, label %576, !prof !962

576:                                              ; preds = %572, %863
  %577 = phi ptr [ %866, %863 ], [ %575, %572 ]
  %578 = phi i8 [ %865, %863 ], [ %574, %572 ]
  %579 = phi ptr [ %864, %863 ], [ %573, %572 ]
  %580 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %577, i64 0, i32 3
  %581 = load ptr, ptr %580, align 8, !tbaa !623
  %582 = load ptr, ptr %581, align 8, !tbaa !243
  %583 = load i64, ptr %582, align 8
  %584 = and i64 %583, 65535
  %585 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !258
  %587 = icmp eq i32 %586, 3
  br i1 %587, label %591, label %588, !prof !963

588:                                              ; preds = %576
  %589 = getelementptr inbounds %struct.tree_ssa_name, ptr %582, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !254
  br label %591

591:                                              ; preds = %588, %576
  %592 = phi ptr [ %590, %588 ], [ %582, %576 ]
  %593 = load ptr, ptr @cfun, align 8, !tbaa !243
  %594 = getelementptr inbounds %struct.function, ptr %593, i64 0, i32 3
  %595 = load ptr, ptr %594, align 8, !tbaa !268
  %596 = getelementptr inbounds %struct.gimple_df, ptr %595, i64 0, i32 9
  %597 = load ptr, ptr %596, align 8, !tbaa !323
  %598 = getelementptr inbounds %struct.tree_decl_minimal, ptr %592, i64 0, i32 2
  %599 = load i32, ptr %598, align 4, !tbaa !254
  %600 = call i32 @bitmap_bit_p(ptr noundef %597, i32 noundef %599) #19
  %601 = and i32 %600, 255
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %709, label %603, !prof !964

603:                                              ; preds = %591
  %604 = load i64, ptr %592, align 8
  %605 = and i64 %604, 65535
  %606 = icmp eq i64 %605, 141
  br i1 %606, label %607, label %667, !prof !263

607:                                              ; preds = %603
  %608 = getelementptr inbounds %struct.tree_ssa_name, ptr %592, i64 0, i32 3
  %609 = load i32, ptr %608, align 8, !tbaa !254
  %610 = load ptr, ptr @info_for_ssa_name, align 8
  %611 = icmp eq ptr %610, null
  br i1 %611, label %614, label %612, !prof !264

612:                                              ; preds = %607
  %613 = load i32, ptr %610, align 8, !tbaa !265
  br label %614

614:                                              ; preds = %612, %607
  %615 = phi i32 [ %613, %612 ], [ 0, %607 ]
  %616 = icmp ult i32 %609, %615
  br i1 %616, label %654, label %617, !prof !267

617:                                              ; preds = %614
  %618 = load ptr, ptr @cfun, align 8, !tbaa !243
  %619 = getelementptr inbounds %struct.function, ptr %618, i64 0, i32 3
  %620 = load ptr, ptr %619, align 8, !tbaa !268
  %621 = getelementptr inbounds %struct.gimple_df, ptr %620, i64 0, i32 2
  %622 = load ptr, ptr %621, align 8, !tbaa !270
  %623 = icmp eq ptr %622, null
  br i1 %623, label %626, label %624

624:                                              ; preds = %617
  %625 = load i32, ptr %622, align 8, !tbaa !274
  br label %626

626:                                              ; preds = %624, %617
  %627 = phi i32 [ %625, %624 ], [ 0, %617 ]
  br i1 %611, label %634, label %628

628:                                              ; preds = %626
  %629 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %610, i64 0, i32 1
  %630 = load i32, ptr %629, align 4, !tbaa !276
  %631 = load i32, ptr %610, align 8, !tbaa !265
  %632 = sub i32 %630, %631
  %633 = icmp uge i32 %632, %627
  br label %636

634:                                              ; preds = %626
  %635 = icmp eq i32 %627, 0
  br label %636

636:                                              ; preds = %634, %628
  %637 = phi i1 [ %633, %628 ], [ %635, %634 ]
  br i1 %637, label %640, label %638

638:                                              ; preds = %636
  %639 = call ptr @vec_heap_p_reserve(ptr noundef %610, i32 noundef %627) #19
  store ptr %639, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %640

640:                                              ; preds = %638, %636
  %641 = icmp ult i32 %615, %627
  br i1 %641, label %642, label %654

642:                                              ; preds = %640, %642
  %643 = phi i32 [ %644, %642 ], [ %615, %640 ]
  %644 = add nuw i32 %643, 1
  %645 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %646 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %647 = getelementptr inbounds %struct.ssa_name_info, ptr %645, i64 0, i32 2
  store i32 %646, ptr %647, align 4, !tbaa !277
  %648 = load ptr, ptr @info_for_ssa_name, align 8
  %649 = load i32, ptr %648, align 8, !tbaa !265
  %650 = add i32 %649, 1
  store i32 %650, ptr %648, align 8, !tbaa !265
  %651 = zext i32 %649 to i64
  %652 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %648, i64 0, i32 2, i64 %651
  store ptr %645, ptr %652, align 8, !tbaa !243
  %653 = icmp eq i32 %644, %627
  br i1 %653, label %654, label %642, !llvm.loop !279

654:                                              ; preds = %642, %640, %614
  %655 = load ptr, ptr @info_for_ssa_name, align 8
  %656 = zext i32 %609 to i64
  %657 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %655, i64 0, i32 2, i64 %656
  %658 = load ptr, ptr %657, align 8, !tbaa !243
  %659 = getelementptr inbounds %struct.ssa_name_info, ptr %658, i64 0, i32 2
  %660 = load i32, ptr %659, align 4, !tbaa !277
  %661 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %662 = icmp ult i32 %660, %661
  br i1 %662, label %663, label %685, !prof !264

663:                                              ; preds = %654
  %664 = getelementptr inbounds %struct.ssa_name_info, ptr %658, i64 0, i32 1
  %665 = load i8, ptr %664, align 8
  %666 = and i8 %665, -4
  store i8 %666, ptr %664, align 8
  store ptr null, ptr %658, align 8, !tbaa !280
  store i32 %661, ptr %659, align 4, !tbaa !277
  br label %685

667:                                              ; preds = %603
  %668 = trunc i64 %604 to i16
  switch i16 %668, label %673 [
    i16 32, label %669
    i16 34, label %671
  ], !prof !281

669:                                              ; preds = %667
  %670 = getelementptr inbounds %struct.tree_var_decl, ptr %592, i64 0, i32 1
  br label %677

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.tree_parm_decl, ptr %592, i64 0, i32 2
  br label %677

673:                                              ; preds = %667
  %674 = icmp eq i64 %605, 36
  %675 = getelementptr inbounds %struct.tree_result_decl, ptr %592, i64 0, i32 1
  %676 = select i1 %674, ptr %675, ptr null
  br label %677

677:                                              ; preds = %673, %671, %669
  %678 = phi ptr [ %670, %669 ], [ %672, %671 ], [ %676, %673 ]
  %679 = icmp eq ptr %678, null
  br i1 %679, label %682, label %680, !prof !282

680:                                              ; preds = %677
  %681 = load ptr, ptr %678, align 8, !tbaa !243
  br label %682

682:                                              ; preds = %680, %677
  %683 = phi ptr [ %681, %680 ], [ null, %677 ]
  %684 = getelementptr inbounds %struct.var_ann_d, ptr %683, i64 0, i32 2
  br label %685

685:                                              ; preds = %682, %663, %654
  %686 = phi ptr [ %684, %682 ], [ %658, %654 ], [ %658, %663 ]
  %687 = load ptr, ptr %686, align 8, !tbaa !243
  %688 = icmp eq ptr %687, null
  br i1 %688, label %689, label %833, !prof !897

689:                                              ; preds = %685
  %690 = load i64, ptr %592, align 8
  %691 = and i64 %690, 65535
  %692 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %691
  %693 = load i32, ptr %692, align 4, !tbaa !258
  %694 = icmp eq i32 %693, 3
  br i1 %694, label %698, label %695, !prof !898

695:                                              ; preds = %689
  %696 = getelementptr inbounds %struct.tree_ssa_name, ptr %592, i64 0, i32 1
  %697 = load ptr, ptr %696, align 8, !tbaa !254
  br label %698

698:                                              ; preds = %695, %689
  %699 = phi ptr [ %697, %695 ], [ %592, %689 ]
  %700 = load ptr, ptr @cfun, align 8, !tbaa !243
  %701 = call ptr @gimple_default_def(ptr noundef %700, ptr noundef %699) #19
  %702 = icmp eq ptr %701, null
  br i1 %702, label %703, label %707, !prof !899

703:                                              ; preds = %698
  %704 = call ptr @gimple_build_nop() #19
  %705 = load ptr, ptr @cfun, align 8, !tbaa !243
  %706 = call ptr @make_ssa_name_fn(ptr noundef %705, ptr noundef %699, ptr noundef %704) #19
  call void @set_default_def(ptr noundef %699, ptr noundef %706) #19
  br label %707

707:                                              ; preds = %703, %698
  %708 = phi ptr [ %706, %703 ], [ %701, %698 ]
  call void @set_current_def(ptr noundef nonnull %592, ptr noundef %708)
  br label %833

709:                                              ; preds = %591
  %710 = getelementptr inbounds %struct.tree_ssa_name, ptr %582, i64 0, i32 3
  %711 = load i32, ptr %710, align 8, !tbaa !254
  %712 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %713 = icmp eq ptr %712, null
  br i1 %713, label %833, label %714, !prof !965

714:                                              ; preds = %709
  %715 = getelementptr inbounds %struct.simple_bitmap_def, ptr %712, i64 0, i32 1
  %716 = load i32, ptr %715, align 8, !tbaa !446
  %717 = icmp ult i32 %711, %716
  br i1 %717, label %718, label %833, !prof !966

718:                                              ; preds = %714
  %719 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %720 = lshr i32 %711, 6
  %721 = zext nneg i32 %720 to i64
  %722 = getelementptr inbounds %struct.simple_bitmap_def, ptr %719, i64 0, i32 3, i64 %721
  %723 = load i64, ptr %722, align 8, !tbaa !301
  %724 = and i32 %711, 63
  %725 = zext nneg i32 %724 to i64
  %726 = shl nuw i64 1, %725
  %727 = and i64 %723, %726
  %728 = icmp eq i64 %727, 0
  br i1 %728, label %833, label %729, !prof !967

729:                                              ; preds = %718
  %730 = load i64, ptr %582, align 8
  %731 = and i64 %730, 65535
  %732 = icmp eq i64 %731, 141
  br i1 %732, label %733, label %791, !prof !263

733:                                              ; preds = %729
  %734 = load ptr, ptr @info_for_ssa_name, align 8
  %735 = icmp eq ptr %734, null
  br i1 %735, label %738, label %736, !prof !264

736:                                              ; preds = %733
  %737 = load i32, ptr %734, align 8, !tbaa !265
  br label %738

738:                                              ; preds = %736, %733
  %739 = phi i32 [ %737, %736 ], [ 0, %733 ]
  %740 = icmp ult i32 %711, %739
  br i1 %740, label %778, label %741, !prof !267

741:                                              ; preds = %738
  %742 = load ptr, ptr @cfun, align 8, !tbaa !243
  %743 = getelementptr inbounds %struct.function, ptr %742, i64 0, i32 3
  %744 = load ptr, ptr %743, align 8, !tbaa !268
  %745 = getelementptr inbounds %struct.gimple_df, ptr %744, i64 0, i32 2
  %746 = load ptr, ptr %745, align 8, !tbaa !270
  %747 = icmp eq ptr %746, null
  br i1 %747, label %750, label %748

748:                                              ; preds = %741
  %749 = load i32, ptr %746, align 8, !tbaa !274
  br label %750

750:                                              ; preds = %748, %741
  %751 = phi i32 [ %749, %748 ], [ 0, %741 ]
  br i1 %735, label %758, label %752

752:                                              ; preds = %750
  %753 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %734, i64 0, i32 1
  %754 = load i32, ptr %753, align 4, !tbaa !276
  %755 = load i32, ptr %734, align 8, !tbaa !265
  %756 = sub i32 %754, %755
  %757 = icmp uge i32 %756, %751
  br label %760

758:                                              ; preds = %750
  %759 = icmp eq i32 %751, 0
  br label %760

760:                                              ; preds = %758, %752
  %761 = phi i1 [ %757, %752 ], [ %759, %758 ]
  br i1 %761, label %764, label %762

762:                                              ; preds = %760
  %763 = call ptr @vec_heap_p_reserve(ptr noundef %734, i32 noundef %751) #19
  store ptr %763, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %764

764:                                              ; preds = %762, %760
  %765 = icmp ult i32 %739, %751
  br i1 %765, label %766, label %778

766:                                              ; preds = %764, %766
  %767 = phi i32 [ %768, %766 ], [ %739, %764 ]
  %768 = add nuw i32 %767, 1
  %769 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %770 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %771 = getelementptr inbounds %struct.ssa_name_info, ptr %769, i64 0, i32 2
  store i32 %770, ptr %771, align 4, !tbaa !277
  %772 = load ptr, ptr @info_for_ssa_name, align 8
  %773 = load i32, ptr %772, align 8, !tbaa !265
  %774 = add i32 %773, 1
  store i32 %774, ptr %772, align 8, !tbaa !265
  %775 = zext i32 %773 to i64
  %776 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %772, i64 0, i32 2, i64 %775
  store ptr %769, ptr %776, align 8, !tbaa !243
  %777 = icmp eq i32 %768, %751
  br i1 %777, label %778, label %766, !llvm.loop !279

778:                                              ; preds = %766, %764, %738
  %779 = load ptr, ptr @info_for_ssa_name, align 8
  %780 = zext i32 %711 to i64
  %781 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %779, i64 0, i32 2, i64 %780
  %782 = load ptr, ptr %781, align 8, !tbaa !243
  %783 = getelementptr inbounds %struct.ssa_name_info, ptr %782, i64 0, i32 2
  %784 = load i32, ptr %783, align 4, !tbaa !277
  %785 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %786 = icmp ult i32 %784, %785
  br i1 %786, label %787, label %809, !prof !264

787:                                              ; preds = %778
  %788 = getelementptr inbounds %struct.ssa_name_info, ptr %782, i64 0, i32 1
  %789 = load i8, ptr %788, align 8
  %790 = and i8 %789, -4
  store i8 %790, ptr %788, align 8
  store ptr null, ptr %782, align 8, !tbaa !280
  store i32 %785, ptr %783, align 4, !tbaa !277
  br label %809

791:                                              ; preds = %729
  %792 = trunc i64 %730 to i16
  switch i16 %792, label %797 [
    i16 32, label %793
    i16 34, label %795
  ], !prof !281

793:                                              ; preds = %791
  %794 = getelementptr inbounds %struct.tree_var_decl, ptr %582, i64 0, i32 1
  br label %801

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.tree_parm_decl, ptr %582, i64 0, i32 2
  br label %801

797:                                              ; preds = %791
  %798 = icmp eq i64 %731, 36
  %799 = getelementptr inbounds %struct.tree_result_decl, ptr %582, i64 0, i32 1
  %800 = select i1 %798, ptr %799, ptr null
  br label %801

801:                                              ; preds = %797, %795, %793
  %802 = phi ptr [ %794, %793 ], [ %796, %795 ], [ %800, %797 ]
  %803 = icmp eq ptr %802, null
  br i1 %803, label %806, label %804, !prof !282

804:                                              ; preds = %801
  %805 = load ptr, ptr %802, align 8, !tbaa !243
  br label %806

806:                                              ; preds = %804, %801
  %807 = phi ptr [ %805, %804 ], [ null, %801 ]
  %808 = getelementptr inbounds %struct.var_ann_d, ptr %807, i64 0, i32 2
  br label %809

809:                                              ; preds = %806, %787, %778
  %810 = phi ptr [ %808, %806 ], [ %782, %778 ], [ %782, %787 ]
  %811 = load ptr, ptr %810, align 8, !tbaa !243
  %812 = icmp eq ptr %811, null
  br i1 %812, label %813, label %833, !prof !897

813:                                              ; preds = %809
  %814 = load i64, ptr %582, align 8
  %815 = and i64 %814, 65535
  %816 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %815
  %817 = load i32, ptr %816, align 4, !tbaa !258
  %818 = icmp eq i32 %817, 3
  br i1 %818, label %822, label %819, !prof !898

819:                                              ; preds = %813
  %820 = getelementptr inbounds %struct.tree_ssa_name, ptr %582, i64 0, i32 1
  %821 = load ptr, ptr %820, align 8, !tbaa !254
  br label %822

822:                                              ; preds = %819, %813
  %823 = phi ptr [ %821, %819 ], [ %582, %813 ]
  %824 = load ptr, ptr @cfun, align 8, !tbaa !243
  %825 = call ptr @gimple_default_def(ptr noundef %824, ptr noundef %823) #19
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %831, !prof !899

827:                                              ; preds = %822
  %828 = call ptr @gimple_build_nop() #19
  %829 = load ptr, ptr @cfun, align 8, !tbaa !243
  %830 = call ptr @make_ssa_name_fn(ptr noundef %829, ptr noundef %823, ptr noundef %828) #19
  call void @set_default_def(ptr noundef %823, ptr noundef %830) #19
  br label %831

831:                                              ; preds = %827, %822
  %832 = phi ptr [ %830, %827 ], [ %825, %822 ]
  call void @set_current_def(ptr noundef nonnull %582, ptr noundef %832)
  br label %833

833:                                              ; preds = %831, %809, %707, %685, %718, %714, %709
  %834 = phi ptr [ null, %718 ], [ null, %714 ], [ null, %709 ], [ %708, %707 ], [ %687, %685 ], [ %832, %831 ], [ %811, %809 ]
  %835 = icmp eq ptr %834, null
  %836 = icmp eq ptr %834, %582
  %837 = or i1 %835, %836
  br i1 %837, label %858, label %838, !prof !968

838:                                              ; preds = %833
  %839 = load ptr, ptr %577, align 8, !tbaa !900
  %840 = icmp eq ptr %839, null
  br i1 %840, label %846, label %841, !prof !969

841:                                              ; preds = %838
  %842 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %577, i64 0, i32 1
  %843 = load ptr, ptr %842, align 8, !tbaa !532
  %844 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %839, i64 0, i32 1
  store ptr %843, ptr %844, align 8, !tbaa !532
  %845 = load ptr, ptr %842, align 8, !tbaa !532
  store ptr %839, ptr %845, align 8, !tbaa !900
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %577, i8 0, i64 16, i1 false)
  br label %846

846:                                              ; preds = %841, %838
  %847 = load ptr, ptr %580, align 8, !tbaa !623
  store ptr %834, ptr %847, align 8, !tbaa !243
  %848 = load i64, ptr %834, align 8
  %849 = and i64 %848, 65535
  %850 = icmp eq i64 %849, 141
  br i1 %850, label %852, label %851, !prof !970

851:                                              ; preds = %846
  store ptr null, ptr %577, align 8, !tbaa !900
  br label %858

852:                                              ; preds = %846
  %853 = getelementptr inbounds %struct.tree_ssa_name, ptr %834, i64 0, i32 5
  store ptr %853, ptr %577, align 8, !tbaa !900
  %854 = getelementptr inbounds %struct.tree_ssa_name, ptr %834, i64 0, i32 5, i32 1
  %855 = load ptr, ptr %854, align 8, !tbaa !532
  %856 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %577, i64 0, i32 1
  store ptr %855, ptr %856, align 8, !tbaa !532
  %857 = load ptr, ptr %854, align 8, !tbaa !532
  store ptr %577, ptr %857, align 8, !tbaa !900
  store ptr %577, ptr %854, align 8, !tbaa !532
  br label %858

858:                                              ; preds = %852, %851, %833
  %859 = icmp eq ptr %579, null
  br i1 %859, label %863, label %860, !prof !971

860:                                              ; preds = %858
  %861 = getelementptr inbounds %struct.use_optype_d, ptr %579, i64 0, i32 1
  %862 = load ptr, ptr %579, align 8, !tbaa !620
  br label %863

863:                                              ; preds = %858, %860
  %864 = phi ptr [ %862, %860 ], [ %579, %858 ]
  %865 = phi i8 [ %578, %860 ], [ 1, %858 ]
  %866 = phi ptr [ %861, %860 ], [ null, %858 ]
  %867 = icmp eq i8 %865, 0
  br i1 %867, label %576, label %868, !prof !972, !llvm.loop !973

868:                                              ; preds = %863, %526, %572, %434, %559, %552, %420
  %869 = load i32, ptr %404, align 8
  %870 = and i32 %869, 2048
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %1285, label %872, !prof !974

872:                                              ; preds = %868
  %873 = and i32 %869, 255
  %874 = add nsw i32 %873, -10
  %875 = icmp ult i32 %874, -9
  br i1 %875, label %879, label %876, !prof !975

876:                                              ; preds = %872
  %877 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %404, i64 0, i32 1
  %878 = load ptr, ptr %877, align 8, !tbaa !254
  br label %879

879:                                              ; preds = %876, %872
  %880 = phi ptr [ %878, %876 ], [ null, %872 ]
  %881 = icmp eq ptr %880, null
  br i1 %881, label %886, label %882, !prof !976

882:                                              ; preds = %879
  %883 = getelementptr inbounds %struct.def_optype_d, ptr %880, i64 0, i32 1
  %884 = load ptr, ptr %883, align 8, !tbaa !662
  %885 = load ptr, ptr %880, align 8, !tbaa !664
  br label %886

886:                                              ; preds = %882, %879
  %887 = phi ptr [ %885, %882 ], [ %880, %879 ]
  %888 = phi i8 [ 0, %882 ], [ 1, %879 ]
  %889 = phi ptr [ %884, %882 ], [ null, %879 ]
  br i1 %881, label %1285, label %890, !prof !977

890:                                              ; preds = %886
  %891 = getelementptr inbounds i8, ptr %4, i64 8
  %892 = getelementptr inbounds i8, ptr %4, i64 16
  br label %893

893:                                              ; preds = %890, %1280
  %894 = phi ptr [ %1283, %1280 ], [ %889, %890 ]
  %895 = phi i8 [ %1282, %1280 ], [ %888, %890 ]
  %896 = phi ptr [ %1281, %1280 ], [ %887, %890 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  store ptr %403, ptr %4, align 8
  store ptr %395, ptr %891, align 8
  store ptr %1, ptr %892, align 8
  %897 = load ptr, ptr %894, align 8, !tbaa !243
  %898 = load i64, ptr %897, align 8
  %899 = and i64 %898, 65535
  %900 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %899
  %901 = load i32, ptr %900, align 4, !tbaa !258
  %902 = icmp eq i32 %901, 3
  br i1 %902, label %906, label %903, !prof !978

903:                                              ; preds = %893
  %904 = getelementptr inbounds %struct.tree_ssa_name, ptr %897, i64 0, i32 1
  %905 = load ptr, ptr %904, align 8, !tbaa !254
  br label %906

906:                                              ; preds = %903, %893
  %907 = phi ptr [ %905, %903 ], [ %897, %893 ]
  %908 = load ptr, ptr @cfun, align 8, !tbaa !243
  %909 = getelementptr inbounds %struct.function, ptr %908, i64 0, i32 3
  %910 = load ptr, ptr %909, align 8, !tbaa !268
  %911 = getelementptr inbounds %struct.gimple_df, ptr %910, i64 0, i32 9
  %912 = load ptr, ptr %911, align 8, !tbaa !323
  %913 = getelementptr inbounds %struct.tree_decl_minimal, ptr %907, i64 0, i32 2
  %914 = load i32, ptr %913, align 4, !tbaa !254
  %915 = call i32 @bitmap_bit_p(ptr noundef %912, i32 noundef %914) #19
  %916 = and i32 %915, 255
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1203, label %918, !prof !979

918:                                              ; preds = %906
  %919 = load i64, ptr %897, align 8
  %920 = and i64 %919, 65535
  %921 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %920
  %922 = load i32, ptr %921, align 4, !tbaa !258
  %923 = icmp eq i32 %922, 3
  br i1 %923, label %924, label %1019, !prof !980

924:                                              ; preds = %918
  %925 = load ptr, ptr @cfun, align 8, !tbaa !243
  %926 = call ptr @make_ssa_name_fn(ptr noundef %925, ptr noundef nonnull %897, ptr noundef nonnull %404) #19
  store ptr %926, ptr %894, align 8, !tbaa !243
  %927 = call ptr @target_for_debug_bind(ptr noundef %907) #19
  %928 = icmp eq ptr %927, null
  br i1 %928, label %1019, label %929, !prof !981

929:                                              ; preds = %924
  %930 = call ptr @gimple_build_debug_bind_stat(ptr noundef nonnull %927, ptr noundef %926, ptr noundef nonnull %404) #19
  %931 = load ptr, ptr %4, align 8
  %932 = icmp eq ptr %931, null
  br i1 %932, label %938, label %933

933:                                              ; preds = %929
  %934 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %931, i64 0, i32 2
  %935 = load ptr, ptr %934, align 8, !tbaa !505
  %936 = icmp eq ptr %935, null
  %937 = zext i1 %936 to i8
  br label %938

938:                                              ; preds = %933, %929
  %939 = phi i8 [ 0, %929 ], [ %937, %933 ]
  %940 = icmp eq i8 %939, 0
  br i1 %940, label %1018, label %941

941:                                              ; preds = %938
  %942 = call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %404) #19
  %943 = icmp eq i8 %942, 0
  br i1 %943, label %1018, label %944

944:                                              ; preds = %941
  %945 = load ptr, ptr %892, align 8
  %946 = getelementptr inbounds %struct.basic_block_def, ptr %945, i64 0, i32 1
  br label %947

947:                                              ; preds = %981, %944
  %948 = phi i32 [ 0, %944 ], [ %982, %981 ]
  %949 = phi ptr [ null, %944 ], [ %972, %981 ]
  %950 = load ptr, ptr %946, align 8, !tbaa !243
  %951 = icmp eq ptr %950, null
  br i1 %951, label %954, label %952

952:                                              ; preds = %947
  %953 = load i32, ptr %950, align 8, !tbaa !309
  br label %954

954:                                              ; preds = %952, %947
  %955 = phi i32 [ %953, %952 ], [ 0, %947 ]
  %956 = icmp eq i32 %955, %948
  br i1 %956, label %961, label %957

957:                                              ; preds = %954
  %958 = zext i32 %948 to i64
  %959 = getelementptr inbounds %struct.VEC_edge_base, ptr %950, i64 0, i32 2, i64 %958
  %960 = load ptr, ptr %959, align 8, !tbaa !243
  br label %961

961:                                              ; preds = %957, %954
  %962 = phi ptr [ %960, %957 ], [ null, %954 ]
  br i1 %956, label %983, label %963

963:                                              ; preds = %961
  %964 = getelementptr inbounds %struct.edge_def, ptr %962, i64 0, i32 7
  %965 = load i32, ptr %964, align 8, !tbaa !433
  %966 = and i32 %965, 8
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %971

968:                                              ; preds = %963
  %969 = icmp eq ptr %949, null
  br i1 %969, label %971, label %970

970:                                              ; preds = %968
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1875, ptr noundef nonnull @.str.32) #19
  br label %971

971:                                              ; preds = %970, %968, %963
  %972 = phi ptr [ %949, %963 ], [ %962, %968 ], [ %962, %970 ]
  %973 = load ptr, ptr %946, align 8, !tbaa !243
  %974 = icmp eq ptr %973, null
  br i1 %974, label %977, label %975

975:                                              ; preds = %971
  %976 = load i32, ptr %973, align 8, !tbaa !309
  br label %977

977:                                              ; preds = %975, %971
  %978 = phi i32 [ %976, %975 ], [ 0, %971 ]
  %979 = icmp ult i32 %948, %978
  br i1 %979, label %981, label %980

980:                                              ; preds = %977
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %981

981:                                              ; preds = %980, %977
  %982 = add i32 %948, 1
  br label %947, !llvm.loop !982

983:                                              ; preds = %961
  %984 = icmp eq ptr %949, null
  br i1 %984, label %1015, label %985

985:                                              ; preds = %983
  %986 = getelementptr inbounds %struct.edge_def, ptr %949, i64 0, i32 1
  %987 = load ptr, ptr %986, align 8, !tbaa !911
  %988 = load ptr, ptr %987, align 8, !tbaa !536
  %989 = icmp eq ptr %988, null
  br i1 %989, label %1015, label %990

990:                                              ; preds = %985
  %991 = load i32, ptr %988, align 8, !tbaa !309
  %992 = icmp eq i32 %991, 1
  br i1 %992, label %993, label %1015

993:                                              ; preds = %990
  %994 = getelementptr inbounds %struct.basic_block_def, ptr %987, i64 0, i32 13
  %995 = load i32, ptr %994, align 8, !tbaa !508
  %996 = and i32 %995, 512
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %999, label %998

998:                                              ; preds = %993
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 510, ptr noundef nonnull @.str.32) #19
  br label %999

999:                                              ; preds = %998, %993
  %1000 = getelementptr inbounds %struct.basic_block_def, ptr %987, i64 0, i32 7
  %1001 = load ptr, ptr %1000, align 8, !tbaa !254
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1007, label %1003

1003:                                             ; preds = %999
  %1004 = getelementptr inbounds %struct.gimple_bb_info, ptr %1001, i64 0, i32 1
  %1005 = load ptr, ptr %1004, align 8, !tbaa !983
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %1007, label %1015

1007:                                             ; preds = %1003, %999
  %1008 = load ptr, ptr %986, align 8, !tbaa !911
  %1009 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1010 = getelementptr inbounds %struct.function, ptr %1009, i64 0, i32 1
  %1011 = load ptr, ptr %1010, align 8, !tbaa !294
  %1012 = getelementptr inbounds %struct.control_flow_graph, ptr %1011, i64 0, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !350
  %1014 = icmp eq ptr %1008, %1013
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1007, %1003, %990, %985, %983
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1881, ptr noundef nonnull @.str.32) #19
  br label %1016

1016:                                             ; preds = %1015, %1007
  %1017 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %949, ptr noundef %930) #19
  br label %1019

1018:                                             ; preds = %941, %938
  call void @gsi_insert_after(ptr noundef nonnull %4, ptr noundef %930, i32 noundef 1) #19
  br label %1019

1019:                                             ; preds = %1018, %1016, %924, %918
  %1020 = phi ptr [ %897, %918 ], [ %926, %1016 ], [ %926, %1018 ], [ %926, %924 ]
  %1021 = load i64, ptr %907, align 8
  %1022 = and i64 %1021, 65535
  %1023 = icmp eq i64 %1022, 141
  br i1 %1023, label %1024, label %1084, !prof !263

1024:                                             ; preds = %1019
  %1025 = getelementptr inbounds %struct.tree_ssa_name, ptr %907, i64 0, i32 3
  %1026 = load i32, ptr %1025, align 8, !tbaa !254
  %1027 = load ptr, ptr @info_for_ssa_name, align 8
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1031, label %1029, !prof !264

1029:                                             ; preds = %1024
  %1030 = load i32, ptr %1027, align 8, !tbaa !265
  br label %1031

1031:                                             ; preds = %1029, %1024
  %1032 = phi i32 [ %1030, %1029 ], [ 0, %1024 ]
  %1033 = icmp ult i32 %1026, %1032
  br i1 %1033, label %1071, label %1034, !prof !267

1034:                                             ; preds = %1031
  %1035 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1036 = getelementptr inbounds %struct.function, ptr %1035, i64 0, i32 3
  %1037 = load ptr, ptr %1036, align 8, !tbaa !268
  %1038 = getelementptr inbounds %struct.gimple_df, ptr %1037, i64 0, i32 2
  %1039 = load ptr, ptr %1038, align 8, !tbaa !270
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1043, label %1041

1041:                                             ; preds = %1034
  %1042 = load i32, ptr %1039, align 8, !tbaa !274
  br label %1043

1043:                                             ; preds = %1041, %1034
  %1044 = phi i32 [ %1042, %1041 ], [ 0, %1034 ]
  br i1 %1028, label %1051, label %1045

1045:                                             ; preds = %1043
  %1046 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1027, i64 0, i32 1
  %1047 = load i32, ptr %1046, align 4, !tbaa !276
  %1048 = load i32, ptr %1027, align 8, !tbaa !265
  %1049 = sub i32 %1047, %1048
  %1050 = icmp uge i32 %1049, %1044
  br label %1053

1051:                                             ; preds = %1043
  %1052 = icmp eq i32 %1044, 0
  br label %1053

1053:                                             ; preds = %1051, %1045
  %1054 = phi i1 [ %1050, %1045 ], [ %1052, %1051 ]
  br i1 %1054, label %1057, label %1055

1055:                                             ; preds = %1053
  %1056 = call ptr @vec_heap_p_reserve(ptr noundef %1027, i32 noundef %1044) #19
  store ptr %1056, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %1057

1057:                                             ; preds = %1055, %1053
  %1058 = icmp ult i32 %1032, %1044
  br i1 %1058, label %1059, label %1071

1059:                                             ; preds = %1057, %1059
  %1060 = phi i32 [ %1061, %1059 ], [ %1032, %1057 ]
  %1061 = add nuw i32 %1060, 1
  %1062 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %1063 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1064 = getelementptr inbounds %struct.ssa_name_info, ptr %1062, i64 0, i32 2
  store i32 %1063, ptr %1064, align 4, !tbaa !277
  %1065 = load ptr, ptr @info_for_ssa_name, align 8
  %1066 = load i32, ptr %1065, align 8, !tbaa !265
  %1067 = add i32 %1066, 1
  store i32 %1067, ptr %1065, align 8, !tbaa !265
  %1068 = zext i32 %1066 to i64
  %1069 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1065, i64 0, i32 2, i64 %1068
  store ptr %1062, ptr %1069, align 8, !tbaa !243
  %1070 = icmp eq i32 %1061, %1044
  br i1 %1070, label %1071, label %1059, !llvm.loop !279

1071:                                             ; preds = %1059, %1057, %1031
  %1072 = load ptr, ptr @info_for_ssa_name, align 8
  %1073 = zext i32 %1026 to i64
  %1074 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1072, i64 0, i32 2, i64 %1073
  %1075 = load ptr, ptr %1074, align 8, !tbaa !243
  %1076 = getelementptr inbounds %struct.ssa_name_info, ptr %1075, i64 0, i32 2
  %1077 = load i32, ptr %1076, align 4, !tbaa !277
  %1078 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1079 = icmp ult i32 %1077, %1078
  br i1 %1079, label %1080, label %1102, !prof !264

1080:                                             ; preds = %1071
  %1081 = getelementptr inbounds %struct.ssa_name_info, ptr %1075, i64 0, i32 1
  %1082 = load i8, ptr %1081, align 8
  %1083 = and i8 %1082, -4
  store i8 %1083, ptr %1081, align 8
  store ptr null, ptr %1075, align 8, !tbaa !280
  store i32 %1078, ptr %1076, align 4, !tbaa !277
  br label %1102

1084:                                             ; preds = %1019
  %1085 = trunc i64 %1021 to i16
  switch i16 %1085, label %1090 [
    i16 32, label %1086
    i16 34, label %1088
  ], !prof !281

1086:                                             ; preds = %1084
  %1087 = getelementptr inbounds %struct.tree_var_decl, ptr %907, i64 0, i32 1
  br label %1094

1088:                                             ; preds = %1084
  %1089 = getelementptr inbounds %struct.tree_parm_decl, ptr %907, i64 0, i32 2
  br label %1094

1090:                                             ; preds = %1084
  %1091 = icmp eq i64 %1022, 36
  %1092 = getelementptr inbounds %struct.tree_result_decl, ptr %907, i64 0, i32 1
  %1093 = select i1 %1091, ptr %1092, ptr null
  br label %1094

1094:                                             ; preds = %1090, %1088, %1086
  %1095 = phi ptr [ %1087, %1086 ], [ %1089, %1088 ], [ %1093, %1090 ]
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1099, label %1097, !prof !282

1097:                                             ; preds = %1094
  %1098 = load ptr, ptr %1095, align 8, !tbaa !243
  br label %1099

1099:                                             ; preds = %1097, %1094
  %1100 = phi ptr [ %1098, %1097 ], [ null, %1094 ]
  %1101 = getelementptr inbounds %struct.var_ann_d, ptr %1100, i64 0, i32 2
  br label %1102

1102:                                             ; preds = %1071, %1080, %1099
  %1103 = phi ptr [ %1101, %1099 ], [ %1075, %1071 ], [ %1075, %1080 ]
  %1104 = load ptr, ptr %1103, align 8, !tbaa !243
  %1105 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1113, label %1107, !prof !984

1107:                                             ; preds = %1102
  %1108 = getelementptr inbounds %struct.VEC_tree_base, ptr %1105, i64 0, i32 1
  %1109 = load i32, ptr %1108, align 4, !tbaa !877
  %1110 = load i32, ptr %1105, align 8, !tbaa !274
  %1111 = sub i32 %1109, %1110
  %1112 = icmp ult i32 %1111, 2
  br i1 %1112, label %1113, label %1115, !prof !985

1113:                                             ; preds = %1107, %1102
  %1114 = call ptr @vec_heap_p_reserve(ptr noundef %1105, i32 noundef 2) #19
  store ptr %1114, ptr @block_defs_stack, align 8, !tbaa !243
  br label %1115

1115:                                             ; preds = %1113, %1107
  %1116 = load ptr, ptr @block_defs_stack, align 8
  %1117 = load i32, ptr %1116, align 8, !tbaa !274
  %1118 = add i32 %1117, 1
  store i32 %1118, ptr %1116, align 8, !tbaa !274
  %1119 = zext i32 %1117 to i64
  %1120 = getelementptr inbounds %struct.VEC_tree_base, ptr %1116, i64 0, i32 2, i64 %1119
  store ptr %1104, ptr %1120, align 8, !tbaa !243
  %1121 = add i32 %1117, 2
  store i32 %1121, ptr %1116, align 8, !tbaa !274
  %1122 = zext i32 %1118 to i64
  %1123 = getelementptr inbounds %struct.VEC_tree_base, ptr %1116, i64 0, i32 2, i64 %1122
  store ptr %907, ptr %1123, align 8, !tbaa !243
  %1124 = load i64, ptr %907, align 8
  %1125 = and i64 %1124, 65535
  %1126 = icmp eq i64 %1125, 141
  br i1 %1126, label %1127, label %1188, !prof !284

1127:                                             ; preds = %1115
  %1128 = getelementptr inbounds %struct.tree_ssa_name, ptr %907, i64 0, i32 3
  %1129 = load i32, ptr %1128, align 8, !tbaa !254
  %1130 = load ptr, ptr @info_for_ssa_name, align 8
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1134, label %1132, !prof !285

1132:                                             ; preds = %1127
  %1133 = load i32, ptr %1130, align 8, !tbaa !265
  br label %1134

1134:                                             ; preds = %1132, %1127
  %1135 = phi i32 [ %1133, %1132 ], [ 0, %1127 ]
  %1136 = icmp ult i32 %1129, %1135
  br i1 %1136, label %1174, label %1137, !prof !286

1137:                                             ; preds = %1134
  %1138 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1139 = getelementptr inbounds %struct.function, ptr %1138, i64 0, i32 3
  %1140 = load ptr, ptr %1139, align 8, !tbaa !268
  %1141 = getelementptr inbounds %struct.gimple_df, ptr %1140, i64 0, i32 2
  %1142 = load ptr, ptr %1141, align 8, !tbaa !270
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1146, label %1144, !prof !287

1144:                                             ; preds = %1137
  %1145 = load i32, ptr %1142, align 8, !tbaa !274
  br label %1146

1146:                                             ; preds = %1144, %1137
  %1147 = phi i32 [ %1145, %1144 ], [ 0, %1137 ]
  br i1 %1131, label %1154, label %1148, !prof !288

1148:                                             ; preds = %1146
  %1149 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1130, i64 0, i32 1
  %1150 = load i32, ptr %1149, align 4, !tbaa !276
  %1151 = load i32, ptr %1130, align 8, !tbaa !265
  %1152 = sub i32 %1150, %1151
  %1153 = icmp uge i32 %1152, %1147
  br label %1156

1154:                                             ; preds = %1146
  %1155 = icmp eq i32 %1147, 0
  br label %1156

1156:                                             ; preds = %1154, %1148
  %1157 = phi i1 [ %1153, %1148 ], [ %1155, %1154 ]
  br i1 %1157, label %1160, label %1158, !prof !289

1158:                                             ; preds = %1156
  %1159 = call ptr @vec_heap_p_reserve(ptr noundef %1130, i32 noundef %1147) #19
  store ptr %1159, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %1160

1160:                                             ; preds = %1158, %1156
  %1161 = icmp ult i32 %1135, %1147
  br i1 %1161, label %1162, label %1174, !prof !290

1162:                                             ; preds = %1160, %1162
  %1163 = phi i32 [ %1164, %1162 ], [ %1135, %1160 ]
  %1164 = add nuw i32 %1163, 1
  %1165 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %1166 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1167 = getelementptr inbounds %struct.ssa_name_info, ptr %1165, i64 0, i32 2
  store i32 %1166, ptr %1167, align 4, !tbaa !277
  %1168 = load ptr, ptr @info_for_ssa_name, align 8
  %1169 = load i32, ptr %1168, align 8, !tbaa !265
  %1170 = add i32 %1169, 1
  store i32 %1170, ptr %1168, align 8, !tbaa !265
  %1171 = zext i32 %1169 to i64
  %1172 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1168, i64 0, i32 2, i64 %1171
  store ptr %1165, ptr %1172, align 8, !tbaa !243
  %1173 = icmp eq i32 %1164, %1147
  br i1 %1173, label %1174, label %1162, !prof !291, !llvm.loop !279

1174:                                             ; preds = %1162, %1160, %1134
  %1175 = load ptr, ptr @info_for_ssa_name, align 8
  %1176 = zext i32 %1129 to i64
  %1177 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1175, i64 0, i32 2, i64 %1176
  %1178 = load ptr, ptr %1177, align 8, !tbaa !243
  %1179 = getelementptr inbounds %struct.ssa_name_info, ptr %1178, i64 0, i32 2
  %1180 = load i32, ptr %1179, align 4, !tbaa !277
  %1181 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1182 = icmp ult i32 %1180, %1181
  br i1 %1182, label %1183, label %1187, !prof !292

1183:                                             ; preds = %1174
  %1184 = getelementptr inbounds %struct.ssa_name_info, ptr %1178, i64 0, i32 1
  %1185 = load i8, ptr %1184, align 8
  %1186 = and i8 %1185, -4
  store i8 %1186, ptr %1184, align 8
  store ptr null, ptr %1178, align 8, !tbaa !280
  store i32 %1181, ptr %1179, align 4, !tbaa !277
  br label %1187

1187:                                             ; preds = %1183, %1174
  store ptr %1020, ptr %1178, align 8, !tbaa !280
  br label %1274

1188:                                             ; preds = %1115
  %1189 = trunc i64 %1124 to i16
  switch i16 %1189, label %1194 [
    i16 32, label %1190
    i16 34, label %1192
  ], !prof !293

1190:                                             ; preds = %1188
  %1191 = getelementptr inbounds %struct.tree_var_decl, ptr %907, i64 0, i32 1
  br label %1198

1192:                                             ; preds = %1188
  %1193 = getelementptr inbounds %struct.tree_parm_decl, ptr %907, i64 0, i32 2
  br label %1198

1194:                                             ; preds = %1188
  %1195 = icmp eq i64 %1125, 36
  %1196 = getelementptr inbounds %struct.tree_result_decl, ptr %907, i64 0, i32 1
  %1197 = select i1 %1195, ptr %1196, ptr null
  br label %1198

1198:                                             ; preds = %1194, %1192, %1190
  %1199 = phi ptr [ %1191, %1190 ], [ %1193, %1192 ], [ %1197, %1194 ]
  %1200 = icmp ne ptr %1199, null
  call void @llvm.assume(i1 %1200)
  %1201 = load ptr, ptr %1199, align 8, !tbaa !243
  %1202 = getelementptr inbounds %struct.var_ann_d, ptr %1201, i64 0, i32 2
  store ptr %1020, ptr %1202, align 8, !tbaa !939
  br label %1274

1203:                                             ; preds = %906
  %1204 = getelementptr inbounds %struct.tree_ssa_name, ptr %897, i64 0, i32 3
  %1205 = load i32, ptr %1204, align 8, !tbaa !254
  %1206 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1234, label %1208, !prof !986

1208:                                             ; preds = %1203
  %1209 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1206, i64 0, i32 1
  %1210 = load i32, ptr %1209, align 8, !tbaa !446
  %1211 = icmp ult i32 %1205, %1210
  br i1 %1211, label %1212, label %1234, !prof !987

1212:                                             ; preds = %1208
  %1213 = lshr i32 %1205, 6
  %1214 = zext nneg i32 %1213 to i64
  %1215 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1206, i64 0, i32 3, i64 %1214
  %1216 = load i64, ptr %1215, align 8, !tbaa !301
  %1217 = and i32 %1205, 63
  %1218 = zext nneg i32 %1217 to i64
  %1219 = shl nuw i64 1, %1218
  %1220 = and i64 %1216, %1219
  %1221 = icmp eq i64 %1220, 0
  br i1 %1221, label %1234, label %1222, !prof !988

1222:                                             ; preds = %1212
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %897, ptr %3, align 8, !tbaa !386
  %1223 = load ptr, ptr @repl_tbl, align 8, !tbaa !243
  %1224 = call ptr @htab_find_slot(ptr noundef %1223, ptr noundef nonnull %3, i32 noundef 0) #19
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1232, label %1226, !prof !989

1226:                                             ; preds = %1222
  %1227 = load ptr, ptr %1224, align 8, !tbaa !243
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1232, label %1229, !prof !989

1229:                                             ; preds = %1226
  %1230 = getelementptr inbounds %struct.repl_map_d, ptr %1227, i64 0, i32 1
  %1231 = load ptr, ptr %1230, align 8, !tbaa !389
  br label %1232

1232:                                             ; preds = %1229, %1226, %1222
  %1233 = phi ptr [ %1231, %1229 ], [ null, %1226 ], [ null, %1222 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call fastcc void @register_new_update_set(ptr noundef nonnull %897, ptr noundef %1233)
  br label %1234

1234:                                             ; preds = %1232, %1212, %1208, %1203
  %1235 = load i32, ptr %1204, align 8, !tbaa !254
  %1236 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %1237 = icmp eq ptr %1236, null
  br i1 %1237, label %1274, label %1238, !prof !986

1238:                                             ; preds = %1234
  %1239 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1236, i64 0, i32 1
  %1240 = load i32, ptr %1239, align 8, !tbaa !446
  %1241 = icmp ult i32 %1235, %1240
  br i1 %1241, label %1242, label %1274, !prof !987

1242:                                             ; preds = %1238
  %1243 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %1244 = lshr i32 %1235, 6
  %1245 = zext nneg i32 %1244 to i64
  %1246 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1243, i64 0, i32 3, i64 %1245
  %1247 = load i64, ptr %1246, align 8, !tbaa !301
  %1248 = and i32 %1235, 63
  %1249 = zext nneg i32 %1248 to i64
  %1250 = shl nuw i64 1, %1249
  %1251 = and i64 %1247, %1250
  %1252 = icmp eq i64 %1251, 0
  br i1 %1252, label %1274, label %1253, !prof !990

1253:                                             ; preds = %1242
  %1254 = call ptr @get_current_def(ptr noundef nonnull %897)
  %1255 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1263, label %1257, !prof !991

1257:                                             ; preds = %1253
  %1258 = getelementptr inbounds %struct.VEC_tree_base, ptr %1255, i64 0, i32 1
  %1259 = load i32, ptr %1258, align 4, !tbaa !877
  %1260 = load i32, ptr %1255, align 8, !tbaa !274
  %1261 = sub i32 %1259, %1260
  %1262 = icmp ult i32 %1261, 2
  br i1 %1262, label %1263, label %1265, !prof !992

1263:                                             ; preds = %1257, %1253
  %1264 = call ptr @vec_heap_p_reserve(ptr noundef %1255, i32 noundef 2) #19
  store ptr %1264, ptr @block_defs_stack, align 8, !tbaa !243
  br label %1265

1265:                                             ; preds = %1263, %1257
  %1266 = load ptr, ptr @block_defs_stack, align 8
  %1267 = load i32, ptr %1266, align 8, !tbaa !274
  %1268 = add i32 %1267, 1
  store i32 %1268, ptr %1266, align 8, !tbaa !274
  %1269 = zext i32 %1267 to i64
  %1270 = getelementptr inbounds %struct.VEC_tree_base, ptr %1266, i64 0, i32 2, i64 %1269
  store ptr %1254, ptr %1270, align 8, !tbaa !243
  %1271 = add i32 %1267, 2
  store i32 %1271, ptr %1266, align 8, !tbaa !274
  %1272 = zext i32 %1268 to i64
  %1273 = getelementptr inbounds %struct.VEC_tree_base, ptr %1266, i64 0, i32 2, i64 %1272
  store ptr %897, ptr %1273, align 8, !tbaa !243
  call void @set_current_def(ptr noundef nonnull %897, ptr noundef nonnull %897)
  br label %1274

1274:                                             ; preds = %1198, %1187, %1265, %1242, %1238, %1234
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  %1275 = icmp eq ptr %896, null
  br i1 %1275, label %1280, label %1276, !prof !993

1276:                                             ; preds = %1274
  %1277 = getelementptr inbounds %struct.def_optype_d, ptr %896, i64 0, i32 1
  %1278 = load ptr, ptr %1277, align 8, !tbaa !662
  %1279 = load ptr, ptr %896, align 8, !tbaa !664
  br label %1280

1280:                                             ; preds = %1276, %1274
  %1281 = phi ptr [ %1279, %1276 ], [ %896, %1274 ]
  %1282 = phi i8 [ %895, %1276 ], [ 1, %1274 ]
  %1283 = phi ptr [ %1278, %1276 ], [ null, %1274 ]
  %1284 = icmp eq i8 %1282, 0
  br i1 %1284, label %893, label %1285, !prof !994, !llvm.loop !995

1285:                                             ; preds = %1280, %886, %402, %868
  %1286 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %403, i64 0, i32 2
  %1287 = load ptr, ptr %1286, align 8, !tbaa !505
  %1288 = icmp eq ptr %1287, null
  br i1 %1288, label %1289, label %402, !prof !996, !llvm.loop !997

1289:                                             ; preds = %1285, %399, %366
  %1290 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  br label %1291

1291:                                             ; preds = %1802, %1289
  %1292 = phi i32 [ 0, %1289 ], [ %1803, %1802 ]
  %1293 = load ptr, ptr %1290, align 8, !tbaa !243
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1297, label %1295, !prof !998

1295:                                             ; preds = %1291
  %1296 = load i32, ptr %1293, align 8, !tbaa !309
  br label %1297

1297:                                             ; preds = %1295, %1291
  %1298 = phi i32 [ %1296, %1295 ], [ 0, %1291 ]
  %1299 = icmp eq i32 %1298, %1292
  br i1 %1299, label %1304, label %1300, !prof !999

1300:                                             ; preds = %1297
  %1301 = zext i32 %1292 to i64
  %1302 = getelementptr inbounds %struct.VEC_edge_base, ptr %1293, i64 0, i32 2, i64 %1301
  %1303 = load ptr, ptr %1302, align 8, !tbaa !243
  br label %1304

1304:                                             ; preds = %1300, %1297
  %1305 = phi ptr [ %1303, %1300 ], [ null, %1297 ]
  br i1 %1299, label %1804, label %1306, !prof !999

1306:                                             ; preds = %1304
  %1307 = load ptr, ptr @blocks_with_phis_to_rewrite, align 8, !tbaa !243
  %1308 = getelementptr inbounds %struct.edge_def, ptr %1305, i64 0, i32 1
  %1309 = load ptr, ptr %1308, align 8, !tbaa !911
  %1310 = getelementptr inbounds %struct.basic_block_def, ptr %1309, i64 0, i32 9
  %1311 = load i32, ptr %1310, align 8, !tbaa !313
  %1312 = call i32 @bitmap_bit_p(ptr noundef %1307, i32 noundef %1311) #19
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1793, label %1314, !prof !1000

1314:                                             ; preds = %1306
  %1315 = load ptr, ptr @phis_to_rewrite, align 8
  %1316 = load ptr, ptr %1308, align 8, !tbaa !911
  %1317 = getelementptr inbounds %struct.basic_block_def, ptr %1316, i64 0, i32 9
  %1318 = load i32, ptr %1317, align 8, !tbaa !313
  %1319 = zext i32 %1318 to i64
  %1320 = getelementptr inbounds %struct.VEC_gimple_vec_base, ptr %1315, i64 0, i32 2, i64 %1319
  %1321 = load ptr, ptr %1320, align 8, !tbaa !243
  %1322 = icmp eq ptr %1321, null
  %1323 = getelementptr inbounds %struct.edge_def, ptr %1305, i64 0, i32 6
  %1324 = getelementptr inbounds %struct.edge_def, ptr %1305, i64 0, i32 7
  br label %1325

1325:                                             ; preds = %1791, %1314
  %1326 = phi i32 [ 0, %1314 ], [ %1792, %1791 ]
  br i1 %1322, label %1334, label %1327, !prof !1001

1327:                                             ; preds = %1325
  %1328 = load i32, ptr %1321, align 8, !tbaa !646
  %1329 = icmp ugt i32 %1328, %1326
  br i1 %1329, label %1330, label %1334, !prof !1002

1330:                                             ; preds = %1327
  %1331 = zext i32 %1326 to i64
  %1332 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1321, i64 0, i32 2, i64 %1331
  %1333 = load ptr, ptr %1332, align 8, !tbaa !243
  br label %1334

1334:                                             ; preds = %1330, %1327, %1325
  %1335 = phi ptr [ %1333, %1330 ], [ null, %1327 ], [ null, %1325 ]
  %1336 = phi i1 [ false, %1330 ], [ true, %1327 ], [ true, %1325 ]
  br i1 %1336, label %1793, label %1337, !prof !1003

1337:                                             ; preds = %1334
  %1338 = load i32, ptr %1335, align 8
  %1339 = and i32 %1338, 512
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1341, label %1342, !prof !1004

1341:                                             ; preds = %1337
  call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 2006, ptr noundef nonnull @.str.32) #19
  br label %1342

1342:                                             ; preds = %1341, %1337
  %1343 = load i32, ptr %1323, align 4, !tbaa !1005
  %1344 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1335, i64 0, i32 1
  %1345 = load i32, ptr %1344, align 8, !tbaa !254
  %1346 = icmp ult i32 %1345, %1343
  br i1 %1346, label %1347, label %1348, !prof !1004

1347:                                             ; preds = %1342
  call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 3103, ptr noundef nonnull @.str.32) #19
  br label %1348

1348:                                             ; preds = %1347, %1342
  %1349 = zext i32 %1343 to i64
  %1350 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1335, i64 0, i32 4, i64 %1349
  %1351 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1350, i64 0, i32 3
  %1352 = load ptr, ptr %1351, align 8, !tbaa !623
  %1353 = load ptr, ptr %1352, align 8, !tbaa !243
  %1354 = icmp eq ptr %1353, null
  br i1 %1354, label %1363, label %1355, !prof !1006

1355:                                             ; preds = %1348
  %1356 = load i64, ptr %1353, align 8
  %1357 = and i64 %1356, 65535
  %1358 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1357
  %1359 = load i32, ptr %1358, align 4, !tbaa !258
  %1360 = icmp eq i32 %1359, 3
  %1361 = icmp eq i64 %1357, 141
  %1362 = or i1 %1360, %1361
  br i1 %1362, label %1473, label %1791, !prof !1007

1363:                                             ; preds = %1348
  %1364 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1335, i64 0, i32 3
  %1365 = load ptr, ptr %1364, align 8, !tbaa !254
  %1366 = getelementptr inbounds %struct.tree_ssa_name, ptr %1365, i64 0, i32 1
  %1367 = load ptr, ptr %1366, align 8, !tbaa !254
  %1368 = load i64, ptr %1367, align 8
  %1369 = and i64 %1368, 65535
  %1370 = icmp eq i64 %1369, 141
  br i1 %1370, label %1371, label %1431, !prof !263

1371:                                             ; preds = %1363
  %1372 = getelementptr inbounds %struct.tree_ssa_name, ptr %1367, i64 0, i32 3
  %1373 = load i32, ptr %1372, align 8, !tbaa !254
  %1374 = load ptr, ptr @info_for_ssa_name, align 8
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1378, label %1376, !prof !264

1376:                                             ; preds = %1371
  %1377 = load i32, ptr %1374, align 8, !tbaa !265
  br label %1378

1378:                                             ; preds = %1376, %1371
  %1379 = phi i32 [ %1377, %1376 ], [ 0, %1371 ]
  %1380 = icmp ult i32 %1373, %1379
  br i1 %1380, label %1418, label %1381, !prof !267

1381:                                             ; preds = %1378
  %1382 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1383 = getelementptr inbounds %struct.function, ptr %1382, i64 0, i32 3
  %1384 = load ptr, ptr %1383, align 8, !tbaa !268
  %1385 = getelementptr inbounds %struct.gimple_df, ptr %1384, i64 0, i32 2
  %1386 = load ptr, ptr %1385, align 8, !tbaa !270
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1390, label %1388

1388:                                             ; preds = %1381
  %1389 = load i32, ptr %1386, align 8, !tbaa !274
  br label %1390

1390:                                             ; preds = %1388, %1381
  %1391 = phi i32 [ %1389, %1388 ], [ 0, %1381 ]
  br i1 %1375, label %1398, label %1392

1392:                                             ; preds = %1390
  %1393 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1374, i64 0, i32 1
  %1394 = load i32, ptr %1393, align 4, !tbaa !276
  %1395 = load i32, ptr %1374, align 8, !tbaa !265
  %1396 = sub i32 %1394, %1395
  %1397 = icmp uge i32 %1396, %1391
  br label %1400

1398:                                             ; preds = %1390
  %1399 = icmp eq i32 %1391, 0
  br label %1400

1400:                                             ; preds = %1398, %1392
  %1401 = phi i1 [ %1397, %1392 ], [ %1399, %1398 ]
  br i1 %1401, label %1404, label %1402

1402:                                             ; preds = %1400
  %1403 = call ptr @vec_heap_p_reserve(ptr noundef %1374, i32 noundef %1391) #19
  store ptr %1403, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %1404

1404:                                             ; preds = %1402, %1400
  %1405 = icmp ult i32 %1379, %1391
  br i1 %1405, label %1406, label %1418

1406:                                             ; preds = %1404, %1406
  %1407 = phi i32 [ %1408, %1406 ], [ %1379, %1404 ]
  %1408 = add nuw i32 %1407, 1
  %1409 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %1410 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1411 = getelementptr inbounds %struct.ssa_name_info, ptr %1409, i64 0, i32 2
  store i32 %1410, ptr %1411, align 4, !tbaa !277
  %1412 = load ptr, ptr @info_for_ssa_name, align 8
  %1413 = load i32, ptr %1412, align 8, !tbaa !265
  %1414 = add i32 %1413, 1
  store i32 %1414, ptr %1412, align 8, !tbaa !265
  %1415 = zext i32 %1413 to i64
  %1416 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1412, i64 0, i32 2, i64 %1415
  store ptr %1409, ptr %1416, align 8, !tbaa !243
  %1417 = icmp eq i32 %1408, %1391
  br i1 %1417, label %1418, label %1406, !llvm.loop !279

1418:                                             ; preds = %1406, %1404, %1378
  %1419 = load ptr, ptr @info_for_ssa_name, align 8
  %1420 = zext i32 %1373 to i64
  %1421 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1419, i64 0, i32 2, i64 %1420
  %1422 = load ptr, ptr %1421, align 8, !tbaa !243
  %1423 = getelementptr inbounds %struct.ssa_name_info, ptr %1422, i64 0, i32 2
  %1424 = load i32, ptr %1423, align 4, !tbaa !277
  %1425 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1426 = icmp ult i32 %1424, %1425
  br i1 %1426, label %1427, label %1449, !prof !264

1427:                                             ; preds = %1418
  %1428 = getelementptr inbounds %struct.ssa_name_info, ptr %1422, i64 0, i32 1
  %1429 = load i8, ptr %1428, align 8
  %1430 = and i8 %1429, -4
  store i8 %1430, ptr %1428, align 8
  store ptr null, ptr %1422, align 8, !tbaa !280
  store i32 %1425, ptr %1423, align 4, !tbaa !277
  br label %1449

1431:                                             ; preds = %1363
  %1432 = trunc i64 %1368 to i16
  switch i16 %1432, label %1437 [
    i16 32, label %1433
    i16 34, label %1435
  ], !prof !281

1433:                                             ; preds = %1431
  %1434 = getelementptr inbounds %struct.tree_var_decl, ptr %1367, i64 0, i32 1
  br label %1441

1435:                                             ; preds = %1431
  %1436 = getelementptr inbounds %struct.tree_parm_decl, ptr %1367, i64 0, i32 2
  br label %1441

1437:                                             ; preds = %1431
  %1438 = icmp eq i64 %1369, 36
  %1439 = getelementptr inbounds %struct.tree_result_decl, ptr %1367, i64 0, i32 1
  %1440 = select i1 %1438, ptr %1439, ptr null
  br label %1441

1441:                                             ; preds = %1437, %1435, %1433
  %1442 = phi ptr [ %1434, %1433 ], [ %1436, %1435 ], [ %1440, %1437 ]
  %1443 = icmp eq ptr %1442, null
  br i1 %1443, label %1446, label %1444, !prof !282

1444:                                             ; preds = %1441
  %1445 = load ptr, ptr %1442, align 8, !tbaa !243
  br label %1446

1446:                                             ; preds = %1444, %1441
  %1447 = phi ptr [ %1445, %1444 ], [ null, %1441 ]
  %1448 = getelementptr inbounds %struct.var_ann_d, ptr %1447, i64 0, i32 2
  br label %1449

1449:                                             ; preds = %1446, %1427, %1418
  %1450 = phi ptr [ %1448, %1446 ], [ %1422, %1418 ], [ %1422, %1427 ]
  %1451 = load ptr, ptr %1450, align 8, !tbaa !243
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %1453, label %1723, !prof !897

1453:                                             ; preds = %1449
  %1454 = load i64, ptr %1367, align 8
  %1455 = and i64 %1454, 65535
  %1456 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1455
  %1457 = load i32, ptr %1456, align 4, !tbaa !258
  %1458 = icmp eq i32 %1457, 3
  br i1 %1458, label %1462, label %1459, !prof !898

1459:                                             ; preds = %1453
  %1460 = getelementptr inbounds %struct.tree_ssa_name, ptr %1367, i64 0, i32 1
  %1461 = load ptr, ptr %1460, align 8, !tbaa !254
  br label %1462

1462:                                             ; preds = %1459, %1453
  %1463 = phi ptr [ %1461, %1459 ], [ %1367, %1453 ]
  %1464 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1465 = call ptr @gimple_default_def(ptr noundef %1464, ptr noundef %1463) #19
  %1466 = icmp eq ptr %1465, null
  br i1 %1466, label %1467, label %1471, !prof !899

1467:                                             ; preds = %1462
  %1468 = call ptr @gimple_build_nop() #19
  %1469 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1470 = call ptr @make_ssa_name_fn(ptr noundef %1469, ptr noundef %1463, ptr noundef %1468) #19
  call void @set_default_def(ptr noundef %1463, ptr noundef %1470) #19
  br label %1471

1471:                                             ; preds = %1467, %1462
  %1472 = phi ptr [ %1470, %1467 ], [ %1465, %1462 ]
  call void @set_current_def(ptr noundef nonnull %1367, ptr noundef %1472)
  br label %1723

1473:                                             ; preds = %1355
  br i1 %1360, label %1477, label %1474, !prof !1008

1474:                                             ; preds = %1473
  %1475 = getelementptr inbounds %struct.tree_ssa_name, ptr %1353, i64 0, i32 1
  %1476 = load ptr, ptr %1475, align 8, !tbaa !254
  br label %1477

1477:                                             ; preds = %1474, %1473
  %1478 = phi ptr [ %1476, %1474 ], [ %1353, %1473 ]
  %1479 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1480 = getelementptr inbounds %struct.function, ptr %1479, i64 0, i32 3
  %1481 = load ptr, ptr %1480, align 8, !tbaa !268
  %1482 = getelementptr inbounds %struct.gimple_df, ptr %1481, i64 0, i32 9
  %1483 = load ptr, ptr %1482, align 8, !tbaa !323
  %1484 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1478, i64 0, i32 2
  %1485 = load i32, ptr %1484, align 4, !tbaa !254
  %1486 = call i32 @bitmap_bit_p(ptr noundef %1483, i32 noundef %1485) #19
  %1487 = and i32 %1486, 255
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1595, label %1489, !prof !1009

1489:                                             ; preds = %1477
  %1490 = load i64, ptr %1478, align 8
  %1491 = and i64 %1490, 65535
  %1492 = icmp eq i64 %1491, 141
  br i1 %1492, label %1493, label %1553, !prof !263

1493:                                             ; preds = %1489
  %1494 = getelementptr inbounds %struct.tree_ssa_name, ptr %1478, i64 0, i32 3
  %1495 = load i32, ptr %1494, align 8, !tbaa !254
  %1496 = load ptr, ptr @info_for_ssa_name, align 8
  %1497 = icmp eq ptr %1496, null
  br i1 %1497, label %1500, label %1498, !prof !264

1498:                                             ; preds = %1493
  %1499 = load i32, ptr %1496, align 8, !tbaa !265
  br label %1500

1500:                                             ; preds = %1498, %1493
  %1501 = phi i32 [ %1499, %1498 ], [ 0, %1493 ]
  %1502 = icmp ult i32 %1495, %1501
  br i1 %1502, label %1540, label %1503, !prof !267

1503:                                             ; preds = %1500
  %1504 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1505 = getelementptr inbounds %struct.function, ptr %1504, i64 0, i32 3
  %1506 = load ptr, ptr %1505, align 8, !tbaa !268
  %1507 = getelementptr inbounds %struct.gimple_df, ptr %1506, i64 0, i32 2
  %1508 = load ptr, ptr %1507, align 8, !tbaa !270
  %1509 = icmp eq ptr %1508, null
  br i1 %1509, label %1512, label %1510

1510:                                             ; preds = %1503
  %1511 = load i32, ptr %1508, align 8, !tbaa !274
  br label %1512

1512:                                             ; preds = %1510, %1503
  %1513 = phi i32 [ %1511, %1510 ], [ 0, %1503 ]
  br i1 %1497, label %1520, label %1514

1514:                                             ; preds = %1512
  %1515 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1496, i64 0, i32 1
  %1516 = load i32, ptr %1515, align 4, !tbaa !276
  %1517 = load i32, ptr %1496, align 8, !tbaa !265
  %1518 = sub i32 %1516, %1517
  %1519 = icmp uge i32 %1518, %1513
  br label %1522

1520:                                             ; preds = %1512
  %1521 = icmp eq i32 %1513, 0
  br label %1522

1522:                                             ; preds = %1520, %1514
  %1523 = phi i1 [ %1519, %1514 ], [ %1521, %1520 ]
  br i1 %1523, label %1526, label %1524

1524:                                             ; preds = %1522
  %1525 = call ptr @vec_heap_p_reserve(ptr noundef %1496, i32 noundef %1513) #19
  store ptr %1525, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %1526

1526:                                             ; preds = %1524, %1522
  %1527 = icmp ult i32 %1501, %1513
  br i1 %1527, label %1528, label %1540

1528:                                             ; preds = %1526, %1528
  %1529 = phi i32 [ %1530, %1528 ], [ %1501, %1526 ]
  %1530 = add nuw i32 %1529, 1
  %1531 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %1532 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1533 = getelementptr inbounds %struct.ssa_name_info, ptr %1531, i64 0, i32 2
  store i32 %1532, ptr %1533, align 4, !tbaa !277
  %1534 = load ptr, ptr @info_for_ssa_name, align 8
  %1535 = load i32, ptr %1534, align 8, !tbaa !265
  %1536 = add i32 %1535, 1
  store i32 %1536, ptr %1534, align 8, !tbaa !265
  %1537 = zext i32 %1535 to i64
  %1538 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1534, i64 0, i32 2, i64 %1537
  store ptr %1531, ptr %1538, align 8, !tbaa !243
  %1539 = icmp eq i32 %1530, %1513
  br i1 %1539, label %1540, label %1528, !llvm.loop !279

1540:                                             ; preds = %1528, %1526, %1500
  %1541 = load ptr, ptr @info_for_ssa_name, align 8
  %1542 = zext i32 %1495 to i64
  %1543 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1541, i64 0, i32 2, i64 %1542
  %1544 = load ptr, ptr %1543, align 8, !tbaa !243
  %1545 = getelementptr inbounds %struct.ssa_name_info, ptr %1544, i64 0, i32 2
  %1546 = load i32, ptr %1545, align 4, !tbaa !277
  %1547 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1548 = icmp ult i32 %1546, %1547
  br i1 %1548, label %1549, label %1571, !prof !264

1549:                                             ; preds = %1540
  %1550 = getelementptr inbounds %struct.ssa_name_info, ptr %1544, i64 0, i32 1
  %1551 = load i8, ptr %1550, align 8
  %1552 = and i8 %1551, -4
  store i8 %1552, ptr %1550, align 8
  store ptr null, ptr %1544, align 8, !tbaa !280
  store i32 %1547, ptr %1545, align 4, !tbaa !277
  br label %1571

1553:                                             ; preds = %1489
  %1554 = trunc i64 %1490 to i16
  switch i16 %1554, label %1559 [
    i16 32, label %1555
    i16 34, label %1557
  ], !prof !281

1555:                                             ; preds = %1553
  %1556 = getelementptr inbounds %struct.tree_var_decl, ptr %1478, i64 0, i32 1
  br label %1563

1557:                                             ; preds = %1553
  %1558 = getelementptr inbounds %struct.tree_parm_decl, ptr %1478, i64 0, i32 2
  br label %1563

1559:                                             ; preds = %1553
  %1560 = icmp eq i64 %1491, 36
  %1561 = getelementptr inbounds %struct.tree_result_decl, ptr %1478, i64 0, i32 1
  %1562 = select i1 %1560, ptr %1561, ptr null
  br label %1563

1563:                                             ; preds = %1559, %1557, %1555
  %1564 = phi ptr [ %1556, %1555 ], [ %1558, %1557 ], [ %1562, %1559 ]
  %1565 = icmp eq ptr %1564, null
  br i1 %1565, label %1568, label %1566, !prof !282

1566:                                             ; preds = %1563
  %1567 = load ptr, ptr %1564, align 8, !tbaa !243
  br label %1568

1568:                                             ; preds = %1566, %1563
  %1569 = phi ptr [ %1567, %1566 ], [ null, %1563 ]
  %1570 = getelementptr inbounds %struct.var_ann_d, ptr %1569, i64 0, i32 2
  br label %1571

1571:                                             ; preds = %1568, %1549, %1540
  %1572 = phi ptr [ %1570, %1568 ], [ %1544, %1540 ], [ %1544, %1549 ]
  %1573 = load ptr, ptr %1572, align 8, !tbaa !243
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1575, label %1723, !prof !897

1575:                                             ; preds = %1571
  %1576 = load i64, ptr %1478, align 8
  %1577 = and i64 %1576, 65535
  %1578 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1577
  %1579 = load i32, ptr %1578, align 4, !tbaa !258
  %1580 = icmp eq i32 %1579, 3
  br i1 %1580, label %1584, label %1581, !prof !898

1581:                                             ; preds = %1575
  %1582 = getelementptr inbounds %struct.tree_ssa_name, ptr %1478, i64 0, i32 1
  %1583 = load ptr, ptr %1582, align 8, !tbaa !254
  br label %1584

1584:                                             ; preds = %1581, %1575
  %1585 = phi ptr [ %1583, %1581 ], [ %1478, %1575 ]
  %1586 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1587 = call ptr @gimple_default_def(ptr noundef %1586, ptr noundef %1585) #19
  %1588 = icmp eq ptr %1587, null
  br i1 %1588, label %1589, label %1593, !prof !899

1589:                                             ; preds = %1584
  %1590 = call ptr @gimple_build_nop() #19
  %1591 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1592 = call ptr @make_ssa_name_fn(ptr noundef %1591, ptr noundef %1585, ptr noundef %1590) #19
  call void @set_default_def(ptr noundef %1585, ptr noundef %1592) #19
  br label %1593

1593:                                             ; preds = %1589, %1584
  %1594 = phi ptr [ %1592, %1589 ], [ %1587, %1584 ]
  call void @set_current_def(ptr noundef nonnull %1478, ptr noundef %1594)
  br label %1723

1595:                                             ; preds = %1477
  %1596 = getelementptr inbounds %struct.tree_ssa_name, ptr %1353, i64 0, i32 3
  %1597 = load i32, ptr %1596, align 8, !tbaa !254
  %1598 = load ptr, ptr @new_ssa_names, align 8, !tbaa !243
  %1599 = icmp eq ptr %1598, null
  br i1 %1599, label %1616, label %1600, !prof !1010

1600:                                             ; preds = %1595
  %1601 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1598, i64 0, i32 1
  %1602 = load i32, ptr %1601, align 8, !tbaa !446
  %1603 = icmp ult i32 %1597, %1602
  br i1 %1603, label %1604, label %1616, !prof !1011

1604:                                             ; preds = %1600
  %1605 = load ptr, ptr @old_ssa_names, align 8, !tbaa !243
  %1606 = lshr i32 %1597, 6
  %1607 = zext nneg i32 %1606 to i64
  %1608 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1605, i64 0, i32 3, i64 %1607
  %1609 = load i64, ptr %1608, align 8, !tbaa !301
  %1610 = and i32 %1597, 63
  %1611 = zext nneg i32 %1610 to i64
  %1612 = shl nuw i64 1, %1611
  %1613 = and i64 %1609, %1612
  %1614 = icmp ne i64 %1613, 0
  %1615 = zext i1 %1614 to i8
  br label %1616

1616:                                             ; preds = %1604, %1600, %1595
  %1617 = phi i8 [ 0, %1595 ], [ 0, %1600 ], [ %1615, %1604 ]
  %1618 = icmp eq i8 %1617, 0
  br i1 %1618, label %1723, label %1619, !prof !1012

1619:                                             ; preds = %1616
  %1620 = load i64, ptr %1353, align 8
  %1621 = and i64 %1620, 65535
  %1622 = icmp eq i64 %1621, 141
  br i1 %1622, label %1623, label %1681, !prof !263

1623:                                             ; preds = %1619
  %1624 = load ptr, ptr @info_for_ssa_name, align 8
  %1625 = icmp eq ptr %1624, null
  br i1 %1625, label %1628, label %1626, !prof !264

1626:                                             ; preds = %1623
  %1627 = load i32, ptr %1624, align 8, !tbaa !265
  br label %1628

1628:                                             ; preds = %1626, %1623
  %1629 = phi i32 [ %1627, %1626 ], [ 0, %1623 ]
  %1630 = icmp ult i32 %1597, %1629
  br i1 %1630, label %1668, label %1631, !prof !267

1631:                                             ; preds = %1628
  %1632 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1633 = getelementptr inbounds %struct.function, ptr %1632, i64 0, i32 3
  %1634 = load ptr, ptr %1633, align 8, !tbaa !268
  %1635 = getelementptr inbounds %struct.gimple_df, ptr %1634, i64 0, i32 2
  %1636 = load ptr, ptr %1635, align 8, !tbaa !270
  %1637 = icmp eq ptr %1636, null
  br i1 %1637, label %1640, label %1638

1638:                                             ; preds = %1631
  %1639 = load i32, ptr %1636, align 8, !tbaa !274
  br label %1640

1640:                                             ; preds = %1638, %1631
  %1641 = phi i32 [ %1639, %1638 ], [ 0, %1631 ]
  br i1 %1625, label %1648, label %1642

1642:                                             ; preds = %1640
  %1643 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1624, i64 0, i32 1
  %1644 = load i32, ptr %1643, align 4, !tbaa !276
  %1645 = load i32, ptr %1624, align 8, !tbaa !265
  %1646 = sub i32 %1644, %1645
  %1647 = icmp uge i32 %1646, %1641
  br label %1650

1648:                                             ; preds = %1640
  %1649 = icmp eq i32 %1641, 0
  br label %1650

1650:                                             ; preds = %1648, %1642
  %1651 = phi i1 [ %1647, %1642 ], [ %1649, %1648 ]
  br i1 %1651, label %1654, label %1652

1652:                                             ; preds = %1650
  %1653 = call ptr @vec_heap_p_reserve(ptr noundef %1624, i32 noundef %1641) #19
  store ptr %1653, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %1654

1654:                                             ; preds = %1652, %1650
  %1655 = icmp ult i32 %1629, %1641
  br i1 %1655, label %1656, label %1668

1656:                                             ; preds = %1654, %1656
  %1657 = phi i32 [ %1658, %1656 ], [ %1629, %1654 ]
  %1658 = add nuw i32 %1657, 1
  %1659 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %1660 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1661 = getelementptr inbounds %struct.ssa_name_info, ptr %1659, i64 0, i32 2
  store i32 %1660, ptr %1661, align 4, !tbaa !277
  %1662 = load ptr, ptr @info_for_ssa_name, align 8
  %1663 = load i32, ptr %1662, align 8, !tbaa !265
  %1664 = add i32 %1663, 1
  store i32 %1664, ptr %1662, align 8, !tbaa !265
  %1665 = zext i32 %1663 to i64
  %1666 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1662, i64 0, i32 2, i64 %1665
  store ptr %1659, ptr %1666, align 8, !tbaa !243
  %1667 = icmp eq i32 %1658, %1641
  br i1 %1667, label %1668, label %1656, !llvm.loop !279

1668:                                             ; preds = %1656, %1654, %1628
  %1669 = load ptr, ptr @info_for_ssa_name, align 8
  %1670 = zext i32 %1597 to i64
  %1671 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %1669, i64 0, i32 2, i64 %1670
  %1672 = load ptr, ptr %1671, align 8, !tbaa !243
  %1673 = getelementptr inbounds %struct.ssa_name_info, ptr %1672, i64 0, i32 2
  %1674 = load i32, ptr %1673, align 4, !tbaa !277
  %1675 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %1676 = icmp ult i32 %1674, %1675
  br i1 %1676, label %1677, label %1699, !prof !264

1677:                                             ; preds = %1668
  %1678 = getelementptr inbounds %struct.ssa_name_info, ptr %1672, i64 0, i32 1
  %1679 = load i8, ptr %1678, align 8
  %1680 = and i8 %1679, -4
  store i8 %1680, ptr %1678, align 8
  store ptr null, ptr %1672, align 8, !tbaa !280
  store i32 %1675, ptr %1673, align 4, !tbaa !277
  br label %1699

1681:                                             ; preds = %1619
  %1682 = trunc i64 %1620 to i16
  switch i16 %1682, label %1687 [
    i16 32, label %1683
    i16 34, label %1685
  ], !prof !281

1683:                                             ; preds = %1681
  %1684 = getelementptr inbounds %struct.tree_var_decl, ptr %1353, i64 0, i32 1
  br label %1691

1685:                                             ; preds = %1681
  %1686 = getelementptr inbounds %struct.tree_parm_decl, ptr %1353, i64 0, i32 2
  br label %1691

1687:                                             ; preds = %1681
  %1688 = icmp eq i64 %1621, 36
  %1689 = getelementptr inbounds %struct.tree_result_decl, ptr %1353, i64 0, i32 1
  %1690 = select i1 %1688, ptr %1689, ptr null
  br label %1691

1691:                                             ; preds = %1687, %1685, %1683
  %1692 = phi ptr [ %1684, %1683 ], [ %1686, %1685 ], [ %1690, %1687 ]
  %1693 = icmp eq ptr %1692, null
  br i1 %1693, label %1696, label %1694, !prof !282

1694:                                             ; preds = %1691
  %1695 = load ptr, ptr %1692, align 8, !tbaa !243
  br label %1696

1696:                                             ; preds = %1694, %1691
  %1697 = phi ptr [ %1695, %1694 ], [ null, %1691 ]
  %1698 = getelementptr inbounds %struct.var_ann_d, ptr %1697, i64 0, i32 2
  br label %1699

1699:                                             ; preds = %1696, %1677, %1668
  %1700 = phi ptr [ %1698, %1696 ], [ %1672, %1668 ], [ %1672, %1677 ]
  %1701 = load ptr, ptr %1700, align 8, !tbaa !243
  %1702 = icmp eq ptr %1701, null
  br i1 %1702, label %1703, label %1723, !prof !897

1703:                                             ; preds = %1699
  %1704 = load i64, ptr %1353, align 8
  %1705 = and i64 %1704, 65535
  %1706 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1705
  %1707 = load i32, ptr %1706, align 4, !tbaa !258
  %1708 = icmp eq i32 %1707, 3
  br i1 %1708, label %1712, label %1709, !prof !898

1709:                                             ; preds = %1703
  %1710 = getelementptr inbounds %struct.tree_ssa_name, ptr %1353, i64 0, i32 1
  %1711 = load ptr, ptr %1710, align 8, !tbaa !254
  br label %1712

1712:                                             ; preds = %1709, %1703
  %1713 = phi ptr [ %1711, %1709 ], [ %1353, %1703 ]
  %1714 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1715 = call ptr @gimple_default_def(ptr noundef %1714, ptr noundef %1713) #19
  %1716 = icmp eq ptr %1715, null
  br i1 %1716, label %1717, label %1721, !prof !899

1717:                                             ; preds = %1712
  %1718 = call ptr @gimple_build_nop() #19
  %1719 = load ptr, ptr @cfun, align 8, !tbaa !243
  %1720 = call ptr @make_ssa_name_fn(ptr noundef %1719, ptr noundef %1713, ptr noundef %1718) #19
  call void @set_default_def(ptr noundef %1713, ptr noundef %1720) #19
  br label %1721

1721:                                             ; preds = %1717, %1712
  %1722 = phi ptr [ %1720, %1717 ], [ %1715, %1712 ]
  call void @set_current_def(ptr noundef nonnull %1353, ptr noundef %1722)
  br label %1723

1723:                                             ; preds = %1721, %1699, %1593, %1571, %1471, %1449, %1616
  %1724 = phi ptr [ null, %1616 ], [ %1472, %1471 ], [ %1451, %1449 ], [ %1594, %1593 ], [ %1573, %1571 ], [ %1722, %1721 ], [ %1701, %1699 ]
  %1725 = icmp eq ptr %1724, null
  br i1 %1725, label %1782, label %1726, !prof !1013

1726:                                             ; preds = %1723
  %1727 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1350, i64 0, i32 2
  %1728 = load ptr, ptr %1727, align 8, !tbaa !254
  %1729 = load i32, ptr %1728, align 8
  %1730 = and i32 %1729, 255
  %1731 = icmp eq i32 %1730, 16
  br i1 %1731, label %1733, label %1732, !prof !1014

1732:                                             ; preds = %1726
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 544, ptr noundef nonnull @.str.32) #19
  br label %1733

1733:                                             ; preds = %1732, %1726
  %1734 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1728, i64 0, i32 4, i64 0
  %1735 = ptrtoint ptr %1350 to i64
  %1736 = ptrtoint ptr %1734 to i64
  %1737 = sub i64 %1735, %1736
  %1738 = sdiv exact i64 %1737, 48
  %1739 = trunc i64 %1738 to i32
  %1740 = load ptr, ptr %1350, align 8, !tbaa !900
  %1741 = icmp eq ptr %1740, null
  br i1 %1741, label %1747, label %1742, !prof !1015

1742:                                             ; preds = %1733
  %1743 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1350, i64 0, i32 1
  %1744 = load ptr, ptr %1743, align 8, !tbaa !532
  %1745 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1740, i64 0, i32 1
  store ptr %1744, ptr %1745, align 8, !tbaa !532
  %1746 = load ptr, ptr %1743, align 8, !tbaa !532
  store ptr %1740, ptr %1746, align 8, !tbaa !900
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1350, i8 0, i64 16, i1 false)
  br label %1747

1747:                                             ; preds = %1742, %1733
  %1748 = load ptr, ptr %1351, align 8, !tbaa !623
  store ptr %1724, ptr %1748, align 8, !tbaa !243
  %1749 = load i64, ptr %1724, align 8
  %1750 = and i64 %1749, 65535
  %1751 = icmp eq i64 %1750, 141
  br i1 %1751, label %1753, label %1752, !prof !1014

1752:                                             ; preds = %1747
  store ptr null, ptr %1350, align 8, !tbaa !900
  br label %1759

1753:                                             ; preds = %1747
  %1754 = getelementptr inbounds %struct.tree_ssa_name, ptr %1724, i64 0, i32 5
  store ptr %1754, ptr %1350, align 8, !tbaa !900
  %1755 = getelementptr inbounds %struct.tree_ssa_name, ptr %1724, i64 0, i32 5, i32 1
  %1756 = load ptr, ptr %1755, align 8, !tbaa !532
  %1757 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1350, i64 0, i32 1
  store ptr %1756, ptr %1757, align 8, !tbaa !532
  %1758 = load ptr, ptr %1755, align 8, !tbaa !532
  store ptr %1350, ptr %1758, align 8, !tbaa !900
  store ptr %1350, ptr %1755, align 8, !tbaa !532
  br label %1759

1759:                                             ; preds = %1753, %1752
  %1760 = getelementptr inbounds %struct.tree_ssa_name, ptr %1724, i64 0, i32 2
  %1761 = load ptr, ptr %1760, align 8, !tbaa !254
  %1762 = load i32, ptr %1761, align 8
  %1763 = and i32 %1762, 255
  %1764 = icmp eq i32 %1763, 16
  br i1 %1764, label %1765, label %1771, !prof !1016

1765:                                             ; preds = %1759
  %1766 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1761, i64 0, i32 2
  %1767 = load i32, ptr %1766, align 4, !tbaa !254
  %1768 = icmp eq i32 %1767, 1
  br i1 %1768, label %1769, label %1771, !prof !1017

1769:                                             ; preds = %1765
  %1770 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1761, i64 0, i32 4, i64 0, i32 2
  br label %1773

1771:                                             ; preds = %1765, %1759
  %1772 = getelementptr inbounds %struct.gimple_statement_base, ptr %1761, i64 0, i32 2
  br label %1773

1773:                                             ; preds = %1771, %1769
  %1774 = phi ptr [ %1770, %1769 ], [ %1772, %1771 ]
  %1775 = load i32, ptr %1774, align 8, !tbaa !254
  %1776 = and i64 %1738, 4294967295
  %1777 = load i32, ptr %1344, align 8, !tbaa !254
  %1778 = icmp ult i32 %1777, %1739
  br i1 %1778, label %1779, label %1780, !prof !1018

1779:                                             ; preds = %1773
  call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 3103, ptr noundef nonnull @.str.32) #19
  br label %1780

1780:                                             ; preds = %1779, %1773
  %1781 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1335, i64 0, i32 4, i64 %1776, i32 2
  store i32 %1775, ptr %1781, align 8, !tbaa !1019
  br label %1782

1782:                                             ; preds = %1780, %1723
  %1783 = load i32, ptr %1324, align 8, !tbaa !433
  %1784 = and i32 %1783, 2
  %1785 = icmp eq i32 %1784, 0
  br i1 %1785, label %1791, label %1786, !prof !1021

1786:                                             ; preds = %1782
  %1787 = load ptr, ptr %1351, align 8, !tbaa !623
  %1788 = load ptr, ptr %1787, align 8, !tbaa !243
  %1789 = load i64, ptr %1788, align 8
  %1790 = or i64 %1789, 4194304
  store i64 %1790, ptr %1788, align 8
  br label %1791

1791:                                             ; preds = %1786, %1782, %1355
  %1792 = add i32 %1326, 1
  br label %1325, !llvm.loop !1022

1793:                                             ; preds = %1334, %1306
  %1794 = load ptr, ptr %1290, align 8, !tbaa !243
  %1795 = icmp eq ptr %1794, null
  br i1 %1795, label %1798, label %1796, !prof !1023

1796:                                             ; preds = %1793
  %1797 = load i32, ptr %1794, align 8, !tbaa !309
  br label %1798

1798:                                             ; preds = %1796, %1793
  %1799 = phi i32 [ %1797, %1796 ], [ 0, %1793 ]
  %1800 = icmp ult i32 %1292, %1799
  br i1 %1800, label %1802, label %1801, !prof !1024

1801:                                             ; preds = %1798
  call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 738, ptr noundef nonnull @.str.32) #19
  br label %1802

1802:                                             ; preds = %1801, %1798
  %1803 = add i32 %1292, 1
  br label %1291, !llvm.loop !1025

1804:                                             ; preds = %1304, %27
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rewrite_update_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #9 !prof !923 !PGOFuncName !1026 {
  br label %3

3:                                                ; preds = %101, %2
  %4 = load ptr, ptr @block_defs_stack, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !1027

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !274
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %103, label %11, !prof !1027

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 8, !tbaa !274
  %13 = add i32 %12, -1
  store i32 %13, ptr %4, align 8, !tbaa !274
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !243
  %17 = icmp eq ptr %16, null
  br i1 %17, label %103, label %18, !prof !1028

18:                                               ; preds = %11
  %19 = add i32 %12, -2
  store i32 %19, ptr %4, align 8, !tbaa !274
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !243
  %23 = load i64, ptr %16, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %86, !prof !284

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !254
  %29 = load ptr, ptr @info_for_ssa_name, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !285

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 8, !tbaa !265
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ 0, %26 ]
  %35 = icmp ult i32 %28, %34
  br i1 %35, label %73, label %36, !prof !286

36:                                               ; preds = %33
  %37 = load ptr, ptr @cfun, align 8, !tbaa !243
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !268
  %40 = getelementptr inbounds %struct.gimple_df, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !270
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !287

43:                                               ; preds = %36
  %44 = load i32, ptr %41, align 8, !tbaa !274
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ %44, %43 ], [ 0, %36 ]
  br i1 %30, label %53, label %47, !prof !288

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %29, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !276
  %50 = load i32, ptr %29, align 8, !tbaa !265
  %51 = sub i32 %49, %50
  %52 = icmp uge i32 %51, %46
  br label %55

53:                                               ; preds = %45
  %54 = icmp eq i32 %46, 0
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i1 [ %52, %47 ], [ %54, %53 ]
  br i1 %56, label %59, label %57, !prof !289

57:                                               ; preds = %55
  %58 = tail call ptr @vec_heap_p_reserve(ptr noundef %29, i32 noundef %46) #19
  store ptr %58, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %59

59:                                               ; preds = %57, %55
  %60 = icmp ult i32 %34, %46
  br i1 %60, label %61, label %73, !prof !290

61:                                               ; preds = %59, %61
  %62 = phi i32 [ %63, %61 ], [ %34, %59 ]
  %63 = add nuw i32 %62, 1
  %64 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %65 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %66 = getelementptr inbounds %struct.ssa_name_info, ptr %64, i64 0, i32 2
  store i32 %65, ptr %66, align 4, !tbaa !277
  %67 = load ptr, ptr @info_for_ssa_name, align 8
  %68 = load i32, ptr %67, align 8, !tbaa !265
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !265
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %67, i64 0, i32 2, i64 %70
  store ptr %64, ptr %71, align 8, !tbaa !243
  %72 = icmp eq i32 %63, %46
  br i1 %72, label %73, label %61, !prof !291, !llvm.loop !279

73:                                               ; preds = %61, %59, %33
  %74 = load ptr, ptr @info_for_ssa_name, align 8
  %75 = zext i32 %28 to i64
  %76 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %74, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !243
  %78 = getelementptr inbounds %struct.ssa_name_info, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !277
  %80 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %101, !prof !292

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.ssa_name_info, ptr %77, i64 0, i32 1
  %84 = load i8, ptr %83, align 8
  %85 = and i8 %84, -4
  store i8 %85, ptr %83, align 8
  store ptr null, ptr %77, align 8, !tbaa !280
  store i32 %80, ptr %78, align 4, !tbaa !277
  br label %101

86:                                               ; preds = %18
  %87 = trunc i64 %23 to i16
  switch i16 %87, label %92 [
    i16 32, label %88
    i16 34, label %90
  ], !prof !293

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.tree_var_decl, ptr %16, i64 0, i32 1
  br label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.tree_parm_decl, ptr %16, i64 0, i32 2
  br label %96

92:                                               ; preds = %86
  %93 = icmp eq i64 %24, 36
  %94 = getelementptr inbounds %struct.tree_result_decl, ptr %16, i64 0, i32 1
  %95 = select i1 %93, ptr %94, ptr null
  br label %96

96:                                               ; preds = %92, %90, %88
  %97 = phi ptr [ %89, %88 ], [ %91, %90 ], [ %95, %92 ]
  %98 = icmp ne ptr %97, null
  tail call void @llvm.assume(i1 %98)
  %99 = load ptr, ptr %97, align 8, !tbaa !243
  %100 = getelementptr inbounds %struct.var_ann_d, ptr %99, i64 0, i32 2
  br label %101

101:                                              ; preds = %73, %82, %96
  %102 = phi ptr [ %100, %96 ], [ %77, %82 ], [ %77, %73 ]
  store ptr %22, ptr %102, align 8, !tbaa !243
  br i1 %17, label %103, label %3, !prof !1028

103:                                              ; preds = %11, %101, %8
  ret void
}

declare void @dump_dfa_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @register_new_def(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !1029 !PGOFuncName !1030 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %69, !prof !363

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !254
  %9 = load ptr, ptr @info_for_ssa_name, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !364

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 8, !tbaa !265
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %53, label %16, !prof !365

16:                                               ; preds = %13
  %17 = load ptr, ptr @cfun, align 8, !tbaa !243
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !268
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !270
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !366

23:                                               ; preds = %16
  %24 = load i32, ptr %21, align 8, !tbaa !274
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ]
  br i1 %10, label %33, label %27, !prof !366

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !276
  %30 = load i32, ptr %9, align 8, !tbaa !265
  %31 = sub i32 %29, %30
  %32 = icmp uge i32 %31, %26
  br label %35

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, 0
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i1 [ %32, %27 ], [ %34, %33 ]
  br i1 %36, label %39, label %37, !prof !367

37:                                               ; preds = %35
  %38 = tail call ptr @vec_heap_p_reserve(ptr noundef %9, i32 noundef %26) #19
  store ptr %38, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %39

39:                                               ; preds = %37, %35
  %40 = icmp ult i32 %14, %26
  br i1 %40, label %41, label %53, !prof !368

41:                                               ; preds = %39, %41
  %42 = phi i32 [ %43, %41 ], [ %14, %39 ]
  %43 = add nuw i32 %42, 1
  %44 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %45 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %46 = getelementptr inbounds %struct.ssa_name_info, ptr %44, i64 0, i32 2
  store i32 %45, ptr %46, align 4, !tbaa !277
  %47 = load ptr, ptr @info_for_ssa_name, align 8
  %48 = load i32, ptr %47, align 8, !tbaa !265
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !265
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %44, ptr %51, align 8, !tbaa !243
  %52 = icmp eq i32 %43, %26
  br i1 %52, label %53, label %41, !prof !369, !llvm.loop !279

53:                                               ; preds = %41, %39, %13
  %54 = load ptr, ptr @info_for_ssa_name, align 8
  %55 = zext i32 %8 to i64
  %56 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %54, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !243
  %58 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !277
  %60 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %66, !prof !370

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 1
  %64 = load i8, ptr %63, align 8
  %65 = and i8 %64, -4
  store i8 %65, ptr %63, align 8
  store ptr null, ptr %57, align 8, !tbaa !280
  store i32 %60, ptr %58, align 4, !tbaa !277
  br label %66

66:                                               ; preds = %62, %53
  %67 = getelementptr inbounds %struct.ssa_name_info, ptr %57, i64 0, i32 1
  %68 = load i8, ptr %67, align 8
  br label %85

69:                                               ; preds = %2
  %70 = trunc i64 %3 to i16
  switch i16 %70, label %75 [
    i16 32, label %71
    i16 34, label %73
  ], !prof !371

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.tree_var_decl, ptr %1, i64 0, i32 1
  br label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tree_parm_decl, ptr %1, i64 0, i32 2
  br label %79

75:                                               ; preds = %69
  %76 = icmp eq i64 %4, 36
  %77 = getelementptr inbounds %struct.tree_result_decl, ptr %1, i64 0, i32 1
  %78 = select i1 %76, ptr %77, ptr null
  br label %79

79:                                               ; preds = %75, %73, %71
  %80 = phi ptr [ %72, %71 ], [ %74, %73 ], [ %78, %75 ]
  %81 = icmp ne ptr %80, null
  tail call void @llvm.assume(i1 %81)
  %82 = load ptr, ptr %80, align 8, !tbaa !243
  %83 = load i8, ptr %82, align 8
  %84 = lshr i8 %83, 2
  br label %85

85:                                               ; preds = %66, %79
  %86 = phi i8 [ %68, %66 ], [ %84, %79 ]
  %87 = and i8 %86, 3
  %88 = icmp eq i8 %87, 1
  %89 = load i64, ptr %1, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 141
  br i1 %88, label %92, label %168, !prof !1031

92:                                               ; preds = %85
  br i1 %91, label %93, label %153, !prof !284

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !254
  %96 = load ptr, ptr @info_for_ssa_name, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !285

98:                                               ; preds = %93
  %99 = load i32, ptr %96, align 8, !tbaa !265
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %99, %98 ], [ 0, %93 ]
  %102 = icmp ult i32 %95, %101
  br i1 %102, label %140, label %103, !prof !286

103:                                              ; preds = %100
  %104 = load ptr, ptr @cfun, align 8, !tbaa !243
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !268
  %107 = getelementptr inbounds %struct.gimple_df, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !270
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110, !prof !287

110:                                              ; preds = %103
  %111 = load i32, ptr %108, align 8, !tbaa !274
  br label %112

112:                                              ; preds = %110, %103
  %113 = phi i32 [ %111, %110 ], [ 0, %103 ]
  br i1 %97, label %120, label %114, !prof !288

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %96, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !276
  %117 = load i32, ptr %96, align 8, !tbaa !265
  %118 = sub i32 %116, %117
  %119 = icmp uge i32 %118, %113
  br label %122

120:                                              ; preds = %112
  %121 = icmp eq i32 %113, 0
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi i1 [ %119, %114 ], [ %121, %120 ]
  br i1 %123, label %126, label %124, !prof !289

124:                                              ; preds = %122
  %125 = tail call ptr @vec_heap_p_reserve(ptr noundef %96, i32 noundef %113) #19
  store ptr %125, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %126

126:                                              ; preds = %124, %122
  %127 = icmp ult i32 %101, %113
  br i1 %127, label %128, label %140, !prof !290

128:                                              ; preds = %126, %128
  %129 = phi i32 [ %130, %128 ], [ %101, %126 ]
  %130 = add nuw i32 %129, 1
  %131 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %132 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %133 = getelementptr inbounds %struct.ssa_name_info, ptr %131, i64 0, i32 2
  store i32 %132, ptr %133, align 4, !tbaa !277
  %134 = load ptr, ptr @info_for_ssa_name, align 8
  %135 = load i32, ptr %134, align 8, !tbaa !265
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 8, !tbaa !265
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %134, i64 0, i32 2, i64 %137
  store ptr %131, ptr %138, align 8, !tbaa !243
  %139 = icmp eq i32 %130, %113
  br i1 %139, label %140, label %128, !prof !291, !llvm.loop !279

140:                                              ; preds = %128, %126, %100
  %141 = load ptr, ptr @info_for_ssa_name, align 8
  %142 = zext i32 %95 to i64
  %143 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %141, i64 0, i32 2, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !243
  %145 = getelementptr inbounds %struct.ssa_name_info, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !277
  %147 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %365, !prof !292

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.ssa_name_info, ptr %144, i64 0, i32 1
  %151 = load i8, ptr %150, align 8
  %152 = and i8 %151, -4
  store i8 %152, ptr %150, align 8
  store ptr null, ptr %144, align 8, !tbaa !280
  store i32 %147, ptr %145, align 4, !tbaa !277
  br label %365

153:                                              ; preds = %92
  %154 = trunc i64 %89 to i16
  switch i16 %154, label %159 [
    i16 32, label %155
    i16 34, label %157
  ], !prof !293

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.tree_var_decl, ptr %1, i64 0, i32 1
  br label %163

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.tree_parm_decl, ptr %1, i64 0, i32 2
  br label %163

159:                                              ; preds = %153
  %160 = icmp eq i64 %90, 36
  %161 = getelementptr inbounds %struct.tree_result_decl, ptr %1, i64 0, i32 1
  %162 = select i1 %160, ptr %161, ptr null
  br label %163

163:                                              ; preds = %159, %157, %155
  %164 = phi ptr [ %156, %155 ], [ %158, %157 ], [ %162, %159 ]
  %165 = icmp ne ptr %164, null
  tail call void @llvm.assume(i1 %165)
  %166 = load ptr, ptr %164, align 8, !tbaa !243
  %167 = getelementptr inbounds %struct.var_ann_d, ptr %166, i64 0, i32 2
  br label %365

168:                                              ; preds = %85
  br i1 %91, label %169, label %229, !prof !263

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %171 = load i32, ptr %170, align 8, !tbaa !254
  %172 = load ptr, ptr @info_for_ssa_name, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174, !prof !264

174:                                              ; preds = %169
  %175 = load i32, ptr %172, align 8, !tbaa !265
  br label %176

176:                                              ; preds = %174, %169
  %177 = phi i32 [ %175, %174 ], [ 0, %169 ]
  %178 = icmp ult i32 %171, %177
  br i1 %178, label %216, label %179, !prof !267

179:                                              ; preds = %176
  %180 = load ptr, ptr @cfun, align 8, !tbaa !243
  %181 = getelementptr inbounds %struct.function, ptr %180, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !268
  %183 = getelementptr inbounds %struct.gimple_df, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !270
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %179
  %187 = load i32, ptr %184, align 8, !tbaa !274
  br label %188

188:                                              ; preds = %186, %179
  %189 = phi i32 [ %187, %186 ], [ 0, %179 ]
  br i1 %173, label %196, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %172, i64 0, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !276
  %193 = load i32, ptr %172, align 8, !tbaa !265
  %194 = sub i32 %192, %193
  %195 = icmp uge i32 %194, %189
  br label %198

196:                                              ; preds = %188
  %197 = icmp eq i32 %189, 0
  br label %198

198:                                              ; preds = %196, %190
  %199 = phi i1 [ %195, %190 ], [ %197, %196 ]
  br i1 %199, label %202, label %200

200:                                              ; preds = %198
  %201 = tail call ptr @vec_heap_p_reserve(ptr noundef %172, i32 noundef %189) #19
  store ptr %201, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %202

202:                                              ; preds = %200, %198
  %203 = icmp ult i32 %177, %189
  br i1 %203, label %204, label %216

204:                                              ; preds = %202, %204
  %205 = phi i32 [ %206, %204 ], [ %177, %202 ]
  %206 = add nuw i32 %205, 1
  %207 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %208 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %209 = getelementptr inbounds %struct.ssa_name_info, ptr %207, i64 0, i32 2
  store i32 %208, ptr %209, align 4, !tbaa !277
  %210 = load ptr, ptr @info_for_ssa_name, align 8
  %211 = load i32, ptr %210, align 8, !tbaa !265
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 8, !tbaa !265
  %213 = zext i32 %211 to i64
  %214 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %210, i64 0, i32 2, i64 %213
  store ptr %207, ptr %214, align 8, !tbaa !243
  %215 = icmp eq i32 %206, %189
  br i1 %215, label %216, label %204, !llvm.loop !279

216:                                              ; preds = %204, %202, %176
  %217 = load ptr, ptr @info_for_ssa_name, align 8
  %218 = zext i32 %171 to i64
  %219 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %217, i64 0, i32 2, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !243
  %221 = getelementptr inbounds %struct.ssa_name_info, ptr %220, i64 0, i32 2
  %222 = load i32, ptr %221, align 4, !tbaa !277
  %223 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %225, label %247, !prof !264

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.ssa_name_info, ptr %220, i64 0, i32 1
  %227 = load i8, ptr %226, align 8
  %228 = and i8 %227, -4
  store i8 %228, ptr %226, align 8
  store ptr null, ptr %220, align 8, !tbaa !280
  store i32 %223, ptr %221, align 4, !tbaa !277
  br label %247

229:                                              ; preds = %168
  %230 = trunc i64 %89 to i16
  switch i16 %230, label %235 [
    i16 32, label %231
    i16 34, label %233
  ], !prof !281

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.tree_var_decl, ptr %1, i64 0, i32 1
  br label %239

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.tree_parm_decl, ptr %1, i64 0, i32 2
  br label %239

235:                                              ; preds = %229
  %236 = icmp eq i64 %90, 36
  %237 = getelementptr inbounds %struct.tree_result_decl, ptr %1, i64 0, i32 1
  %238 = select i1 %236, ptr %237, ptr null
  br label %239

239:                                              ; preds = %235, %233, %231
  %240 = phi ptr [ %232, %231 ], [ %234, %233 ], [ %238, %235 ]
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242, !prof !282

242:                                              ; preds = %239
  %243 = load ptr, ptr %240, align 8, !tbaa !243
  br label %244

244:                                              ; preds = %242, %239
  %245 = phi ptr [ %243, %242 ], [ null, %239 ]
  %246 = getelementptr inbounds %struct.var_ann_d, ptr %245, i64 0, i32 2
  br label %247

247:                                              ; preds = %216, %225, %244
  %248 = phi ptr [ %246, %244 ], [ %220, %216 ], [ %220, %225 ]
  %249 = load ptr, ptr %248, align 8, !tbaa !243
  %250 = icmp eq ptr %249, null
  br i1 %250, label %270, label %251, !prof !1032

251:                                              ; preds = %247
  %252 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #19
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %270, !prof !922

254:                                              ; preds = %251
  %255 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %256 = icmp eq ptr %255, null
  br i1 %256, label %262, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.VEC_tree_base, ptr %255, i64 0, i32 1
  %259 = load i32, ptr %258, align 4, !tbaa !877
  %260 = load i32, ptr %255, align 8, !tbaa !274
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %254, %257
  %263 = tail call ptr @vec_heap_p_reserve(ptr noundef %255, i32 noundef 1) #19
  store ptr %263, ptr @block_defs_stack, align 8, !tbaa !243
  br label %264

264:                                              ; preds = %257, %262
  %265 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %266 = load i32, ptr %265, align 8, !tbaa !274
  %267 = add i32 %266, 1
  store i32 %267, ptr %265, align 8, !tbaa !274
  %268 = zext i32 %266 to i64
  %269 = getelementptr inbounds %struct.VEC_tree_base, ptr %265, i64 0, i32 2, i64 %268
  store ptr %1, ptr %269, align 8, !tbaa !243
  br label %270

270:                                              ; preds = %264, %251, %247
  %271 = phi ptr [ %249, %264 ], [ %249, %251 ], [ %1, %247 ]
  %272 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %273 = icmp eq ptr %272, null
  br i1 %273, label %279, label %274, !prof !1033

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.VEC_tree_base, ptr %272, i64 0, i32 1
  %276 = load i32, ptr %275, align 4, !tbaa !877
  %277 = load i32, ptr %272, align 8, !tbaa !274
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %281, !prof !1034

279:                                              ; preds = %270, %274
  %280 = tail call ptr @vec_heap_p_reserve(ptr noundef %272, i32 noundef 1) #19
  store ptr %280, ptr @block_defs_stack, align 8, !tbaa !243
  br label %281

281:                                              ; preds = %274, %279
  %282 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %283 = load i32, ptr %282, align 8, !tbaa !274
  %284 = add i32 %283, 1
  store i32 %284, ptr %282, align 8, !tbaa !274
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds %struct.VEC_tree_base, ptr %282, i64 0, i32 2, i64 %285
  store ptr %271, ptr %286, align 8, !tbaa !243
  %287 = load i64, ptr %1, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 141
  br i1 %289, label %290, label %350, !prof !284

290:                                              ; preds = %281
  %291 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %292 = load i32, ptr %291, align 8, !tbaa !254
  %293 = load ptr, ptr @info_for_ssa_name, align 8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !285

295:                                              ; preds = %290
  %296 = load i32, ptr %293, align 8, !tbaa !265
  br label %297

297:                                              ; preds = %295, %290
  %298 = phi i32 [ %296, %295 ], [ 0, %290 ]
  %299 = icmp ult i32 %292, %298
  br i1 %299, label %337, label %300, !prof !286

300:                                              ; preds = %297
  %301 = load ptr, ptr @cfun, align 8, !tbaa !243
  %302 = getelementptr inbounds %struct.function, ptr %301, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !268
  %304 = getelementptr inbounds %struct.gimple_df, ptr %303, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !270
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307, !prof !287

307:                                              ; preds = %300
  %308 = load i32, ptr %305, align 8, !tbaa !274
  br label %309

309:                                              ; preds = %307, %300
  %310 = phi i32 [ %308, %307 ], [ 0, %300 ]
  br i1 %294, label %317, label %311, !prof !288

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %293, i64 0, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !276
  %314 = load i32, ptr %293, align 8, !tbaa !265
  %315 = sub i32 %313, %314
  %316 = icmp uge i32 %315, %310
  br label %319

317:                                              ; preds = %309
  %318 = icmp eq i32 %310, 0
  br label %319

319:                                              ; preds = %317, %311
  %320 = phi i1 [ %316, %311 ], [ %318, %317 ]
  br i1 %320, label %323, label %321, !prof !289

321:                                              ; preds = %319
  %322 = tail call ptr @vec_heap_p_reserve(ptr noundef %293, i32 noundef %310) #19
  store ptr %322, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %323

323:                                              ; preds = %321, %319
  %324 = icmp ult i32 %298, %310
  br i1 %324, label %325, label %337, !prof !290

325:                                              ; preds = %323, %325
  %326 = phi i32 [ %327, %325 ], [ %298, %323 ]
  %327 = add nuw i32 %326, 1
  %328 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %329 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %330 = getelementptr inbounds %struct.ssa_name_info, ptr %328, i64 0, i32 2
  store i32 %329, ptr %330, align 4, !tbaa !277
  %331 = load ptr, ptr @info_for_ssa_name, align 8
  %332 = load i32, ptr %331, align 8, !tbaa !265
  %333 = add i32 %332, 1
  store i32 %333, ptr %331, align 8, !tbaa !265
  %334 = zext i32 %332 to i64
  %335 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %331, i64 0, i32 2, i64 %334
  store ptr %328, ptr %335, align 8, !tbaa !243
  %336 = icmp eq i32 %327, %310
  br i1 %336, label %337, label %325, !prof !291, !llvm.loop !279

337:                                              ; preds = %325, %323, %297
  %338 = load ptr, ptr @info_for_ssa_name, align 8
  %339 = zext i32 %292 to i64
  %340 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %338, i64 0, i32 2, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !243
  %342 = getelementptr inbounds %struct.ssa_name_info, ptr %341, i64 0, i32 2
  %343 = load i32, ptr %342, align 4, !tbaa !277
  %344 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %345 = icmp ult i32 %343, %344
  br i1 %345, label %346, label %365, !prof !292

346:                                              ; preds = %337
  %347 = getelementptr inbounds %struct.ssa_name_info, ptr %341, i64 0, i32 1
  %348 = load i8, ptr %347, align 8
  %349 = and i8 %348, -4
  store i8 %349, ptr %347, align 8
  store ptr null, ptr %341, align 8, !tbaa !280
  store i32 %344, ptr %342, align 4, !tbaa !277
  br label %365

350:                                              ; preds = %281
  %351 = trunc i64 %287 to i16
  switch i16 %351, label %356 [
    i16 32, label %352
    i16 34, label %354
  ], !prof !293

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.tree_var_decl, ptr %1, i64 0, i32 1
  br label %360

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.tree_parm_decl, ptr %1, i64 0, i32 2
  br label %360

356:                                              ; preds = %350
  %357 = icmp eq i64 %288, 36
  %358 = getelementptr inbounds %struct.tree_result_decl, ptr %1, i64 0, i32 1
  %359 = select i1 %357, ptr %358, ptr null
  br label %360

360:                                              ; preds = %356, %354, %352
  %361 = phi ptr [ %353, %352 ], [ %355, %354 ], [ %359, %356 ]
  %362 = icmp ne ptr %361, null
  tail call void @llvm.assume(i1 %362)
  %363 = load ptr, ptr %361, align 8, !tbaa !243
  %364 = getelementptr inbounds %struct.var_ann_d, ptr %363, i64 0, i32 2
  br label %365

365:                                              ; preds = %337, %346, %140, %149, %360, %163
  %366 = phi ptr [ %364, %360 ], [ %167, %163 ], [ %144, %149 ], [ %144, %140 ], [ %341, %346 ], [ %341, %337 ]
  store ptr %0, ptr %366, align 8, !tbaa !243
  ret void
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @register_new_update_set(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !1035 !PGOFuncName !1036 {
  %3 = load ptr, ptr %1, align 8, !tbaa !297
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @bitmap_zero_bits, ptr %3, !prof !1037
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = shl i32 %7, 7
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !301
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = or disjoint i32 %8, %12
  br label %14

14:                                               ; preds = %260, %2
  %15 = phi i32 [ 0, %2 ], [ %70, %260 ]
  %16 = phi i64 [ %10, %2 ], [ %262, %260 ]
  %17 = phi ptr [ %5, %2 ], [ %72, %260 ]
  %18 = phi i32 [ %13, %2 ], [ %263, %260 ]
  %19 = icmp eq i64 %16, 0
  br i1 %19, label %34, label %20, !prof !1038

20:                                               ; preds = %48, %14
  %21 = phi i32 [ %15, %14 ], [ %49, %48 ]
  %22 = phi i64 [ %16, %14 ], [ %53, %48 ]
  %23 = phi ptr [ %17, %14 ], [ %40, %48 ]
  %24 = phi i32 [ %18, %14 ], [ %50, %48 ]
  %25 = and i64 %22, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %69, !prof !1039

27:                                               ; preds = %20, %27
  %28 = phi i32 [ %31, %27 ], [ %24, %20 ]
  %29 = phi i64 [ %30, %27 ], [ %22, %20 ]
  %30 = lshr exact i64 %29, 1
  %31 = add i32 %28, 1
  %32 = and i64 %29, 2
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %27, label %69, !prof !1040, !llvm.loop !302

34:                                               ; preds = %14
  %35 = add i32 %18, 63
  %36 = and i32 %35, -64
  %37 = add i32 %15, 1
  br label %38

38:                                               ; preds = %65, %34
  %39 = phi i64 [ %16, %34 ], [ %60, %65 ]
  %40 = phi ptr [ %17, %34 ], [ %63, %65 ]
  %41 = phi i32 [ %36, %34 ], [ %68, %65 ]
  %42 = phi i32 [ %37, %34 ], [ 0, %65 ]
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %59, label %44, !prof !1041

44:                                               ; preds = %38
  %45 = add i32 %41, 128
  %46 = shl i32 %42, 6
  %47 = sub i32 %45, %46
  br label %48

48:                                               ; preds = %44, %55
  %49 = phi i32 [ %57, %55 ], [ %42, %44 ]
  %50 = phi i32 [ %56, %55 ], [ %41, %44 ]
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !301
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %20, !prof !1042

55:                                               ; preds = %48
  %56 = add i32 %50, 64
  %57 = add i32 %49, 1
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %48, !prof !1043, !llvm.loop !303

59:                                               ; preds = %55, %38
  %60 = phi i64 [ %39, %38 ], [ %53, %55 ]
  %61 = phi i32 [ %41, %38 ], [ %47, %55 ]
  %62 = phi i32 [ %42, %38 ], [ 2, %55 ]
  %63 = load ptr, ptr %40, align 8, !tbaa !304
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !1044

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !299
  %68 = shl i32 %67, 7
  br label %38, !llvm.loop !305

69:                                               ; preds = %59, %27, %20
  %70 = phi i32 [ %21, %20 ], [ %21, %27 ], [ %62, %59 ]
  %71 = phi i64 [ %22, %20 ], [ %30, %27 ], [ %60, %59 ]
  %72 = phi ptr [ %23, %20 ], [ %23, %27 ], [ %63, %59 ]
  %73 = phi i32 [ %24, %20 ], [ %31, %27 ], [ %61, %59 ]
  %74 = phi i1 [ false, %20 ], [ false, %27 ], [ true, %59 ]
  br i1 %74, label %264, label %75, !prof !1045

75:                                               ; preds = %69
  %76 = load ptr, ptr @cfun, align 8, !tbaa !243
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !268
  %79 = getelementptr inbounds %struct.gimple_df, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !270
  %81 = zext i32 %73 to i64
  %82 = getelementptr inbounds %struct.VEC_tree_base, ptr %80, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !243
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %142, !prof !263

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !254
  %90 = load ptr, ptr @info_for_ssa_name, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !264

92:                                               ; preds = %87
  %93 = load i32, ptr %90, align 8, !tbaa !265
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ 0, %87 ]
  %96 = icmp ult i32 %89, %95
  br i1 %96, label %129, label %97, !prof !267

97:                                               ; preds = %94
  %98 = icmp eq ptr %80, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %80, align 8, !tbaa !274
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %100, %99 ], [ 0, %97 ]
  br i1 %91, label %109, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %90, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !276
  %106 = load i32, ptr %90, align 8, !tbaa !265
  %107 = sub i32 %105, %106
  %108 = icmp uge i32 %107, %102
  br label %111

109:                                              ; preds = %101
  %110 = icmp eq i32 %102, 0
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i1 [ %108, %103 ], [ %110, %109 ]
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = tail call ptr @vec_heap_p_reserve(ptr noundef %90, i32 noundef %102) #19
  store ptr %114, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %115

115:                                              ; preds = %113, %111
  %116 = icmp ult i32 %95, %102
  br i1 %116, label %117, label %129

117:                                              ; preds = %115, %117
  %118 = phi i32 [ %119, %117 ], [ %95, %115 ]
  %119 = add nuw i32 %118, 1
  %120 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %121 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %122 = getelementptr inbounds %struct.ssa_name_info, ptr %120, i64 0, i32 2
  store i32 %121, ptr %122, align 4, !tbaa !277
  %123 = load ptr, ptr @info_for_ssa_name, align 8
  %124 = load i32, ptr %123, align 8, !tbaa !265
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !265
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %123, i64 0, i32 2, i64 %126
  store ptr %120, ptr %127, align 8, !tbaa !243
  %128 = icmp eq i32 %119, %102
  br i1 %128, label %129, label %117, !llvm.loop !279

129:                                              ; preds = %117, %115, %94
  %130 = load ptr, ptr @info_for_ssa_name, align 8
  %131 = zext i32 %89 to i64
  %132 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %130, i64 0, i32 2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !243
  %134 = getelementptr inbounds %struct.ssa_name_info, ptr %133, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !277
  %136 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %160, !prof !264

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.ssa_name_info, ptr %133, i64 0, i32 1
  %140 = load i8, ptr %139, align 8
  %141 = and i8 %140, -4
  store i8 %141, ptr %139, align 8
  store ptr null, ptr %133, align 8, !tbaa !280
  store i32 %136, ptr %134, align 4, !tbaa !277
  br label %160

142:                                              ; preds = %75
  %143 = trunc i64 %84 to i16
  switch i16 %143, label %148 [
    i16 32, label %144
    i16 34, label %146
  ], !prof !281

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.tree_var_decl, ptr %83, i64 0, i32 1
  br label %152

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tree_parm_decl, ptr %83, i64 0, i32 2
  br label %152

148:                                              ; preds = %142
  %149 = icmp eq i64 %85, 36
  %150 = getelementptr inbounds %struct.tree_result_decl, ptr %83, i64 0, i32 1
  %151 = select i1 %149, ptr %150, ptr null
  br label %152

152:                                              ; preds = %148, %146, %144
  %153 = phi ptr [ %145, %144 ], [ %147, %146 ], [ %151, %148 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155, !prof !282

155:                                              ; preds = %152
  %156 = load ptr, ptr %153, align 8, !tbaa !243
  br label %157

157:                                              ; preds = %155, %152
  %158 = phi ptr [ %156, %155 ], [ null, %152 ]
  %159 = getelementptr inbounds %struct.var_ann_d, ptr %158, i64 0, i32 2
  br label %160

160:                                              ; preds = %129, %138, %157
  %161 = phi ptr [ %159, %157 ], [ %133, %129 ], [ %133, %138 ]
  %162 = load ptr, ptr %161, align 8, !tbaa !243
  %163 = load ptr, ptr @block_defs_stack, align 8, !tbaa !243
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165, !prof !1046

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.VEC_tree_base, ptr %163, i64 0, i32 1
  %167 = load i32, ptr %166, align 4, !tbaa !877
  %168 = load i32, ptr %163, align 8, !tbaa !274
  %169 = sub i32 %167, %168
  %170 = icmp ult i32 %169, 2
  br i1 %170, label %171, label %173, !prof !1047

171:                                              ; preds = %160, %165
  %172 = tail call ptr @vec_heap_p_reserve(ptr noundef %163, i32 noundef 2) #19
  store ptr %172, ptr @block_defs_stack, align 8, !tbaa !243
  br label %173

173:                                              ; preds = %165, %171
  %174 = load ptr, ptr @block_defs_stack, align 8
  %175 = load i32, ptr %174, align 8, !tbaa !274
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 8, !tbaa !274
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds %struct.VEC_tree_base, ptr %174, i64 0, i32 2, i64 %177
  store ptr %162, ptr %178, align 8, !tbaa !243
  %179 = add i32 %175, 2
  store i32 %179, ptr %174, align 8, !tbaa !274
  %180 = zext i32 %176 to i64
  %181 = getelementptr inbounds %struct.VEC_tree_base, ptr %174, i64 0, i32 2, i64 %180
  store ptr %83, ptr %181, align 8, !tbaa !243
  %182 = load i64, ptr %83, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 141
  br i1 %184, label %185, label %245, !prof !284

185:                                              ; preds = %173
  %186 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 3
  %187 = load i32, ptr %186, align 8, !tbaa !254
  %188 = load ptr, ptr @info_for_ssa_name, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190, !prof !285

190:                                              ; preds = %185
  %191 = load i32, ptr %188, align 8, !tbaa !265
  br label %192

192:                                              ; preds = %190, %185
  %193 = phi i32 [ %191, %190 ], [ 0, %185 ]
  %194 = icmp ult i32 %187, %193
  br i1 %194, label %232, label %195, !prof !286

195:                                              ; preds = %192
  %196 = load ptr, ptr @cfun, align 8, !tbaa !243
  %197 = getelementptr inbounds %struct.function, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !268
  %199 = getelementptr inbounds %struct.gimple_df, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !270
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202, !prof !287

202:                                              ; preds = %195
  %203 = load i32, ptr %200, align 8, !tbaa !274
  br label %204

204:                                              ; preds = %202, %195
  %205 = phi i32 [ %203, %202 ], [ 0, %195 ]
  br i1 %189, label %212, label %206, !prof !288

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %188, i64 0, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !276
  %209 = load i32, ptr %188, align 8, !tbaa !265
  %210 = sub i32 %208, %209
  %211 = icmp uge i32 %210, %205
  br label %214

212:                                              ; preds = %204
  %213 = icmp eq i32 %205, 0
  br label %214

214:                                              ; preds = %212, %206
  %215 = phi i1 [ %211, %206 ], [ %213, %212 ]
  br i1 %215, label %218, label %216, !prof !289

216:                                              ; preds = %214
  %217 = tail call ptr @vec_heap_p_reserve(ptr noundef %188, i32 noundef %205) #19
  store ptr %217, ptr @info_for_ssa_name, align 8, !tbaa !243
  br label %218

218:                                              ; preds = %216, %214
  %219 = icmp ult i32 %193, %205
  br i1 %219, label %220, label %232, !prof !290

220:                                              ; preds = %218, %220
  %221 = phi i32 [ %222, %220 ], [ %193, %218 ]
  %222 = add nuw i32 %221, 1
  %223 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %224 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %225 = getelementptr inbounds %struct.ssa_name_info, ptr %223, i64 0, i32 2
  store i32 %224, ptr %225, align 4, !tbaa !277
  %226 = load ptr, ptr @info_for_ssa_name, align 8
  %227 = load i32, ptr %226, align 8, !tbaa !265
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 8, !tbaa !265
  %229 = zext i32 %227 to i64
  %230 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %226, i64 0, i32 2, i64 %229
  store ptr %223, ptr %230, align 8, !tbaa !243
  %231 = icmp eq i32 %222, %205
  br i1 %231, label %232, label %220, !prof !291, !llvm.loop !279

232:                                              ; preds = %220, %218, %192
  %233 = load ptr, ptr @info_for_ssa_name, align 8
  %234 = zext i32 %187 to i64
  %235 = getelementptr inbounds %struct.VEC_ssa_name_info_p_base, ptr %233, i64 0, i32 2, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !243
  %237 = getelementptr inbounds %struct.ssa_name_info, ptr %236, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !277
  %239 = load i32, ptr @current_info_for_ssa_name_age, align 4, !tbaa !258
  %240 = icmp ult i32 %238, %239
  br i1 %240, label %241, label %260, !prof !292

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.ssa_name_info, ptr %236, i64 0, i32 1
  %243 = load i8, ptr %242, align 8
  %244 = and i8 %243, -4
  store i8 %244, ptr %242, align 8
  store ptr null, ptr %236, align 8, !tbaa !280
  store i32 %239, ptr %237, align 4, !tbaa !277
  br label %260

245:                                              ; preds = %173
  %246 = trunc i64 %182 to i16
  switch i16 %246, label %251 [
    i16 32, label %247
    i16 34, label %249
  ], !prof !293

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.tree_var_decl, ptr %83, i64 0, i32 1
  br label %255

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.tree_parm_decl, ptr %83, i64 0, i32 2
  br label %255

251:                                              ; preds = %245
  %252 = icmp eq i64 %183, 36
  %253 = getelementptr inbounds %struct.tree_result_decl, ptr %83, i64 0, i32 1
  %254 = select i1 %252, ptr %253, ptr null
  br label %255

255:                                              ; preds = %251, %249, %247
  %256 = phi ptr [ %248, %247 ], [ %250, %249 ], [ %254, %251 ]
  %257 = icmp ne ptr %256, null
  tail call void @llvm.assume(i1 %257)
  %258 = load ptr, ptr %256, align 8, !tbaa !243
  %259 = getelementptr inbounds %struct.var_ann_d, ptr %258, i64 0, i32 2
  br label %260

260:                                              ; preds = %232, %241, %255
  %261 = phi ptr [ %259, %255 ], [ %236, %241 ], [ %236, %232 ]
  store ptr %0, ptr %261, align 8, !tbaa !243
  %262 = lshr i64 %71, 1
  %263 = add i32 %73, 1
  br label %14, !llvm.loop !1048

264:                                              ; preds = %69
  ret void
}

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!241}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!35 = !{ptr @set_current_def, ptr @vec_heap_p_reserve, i64 1}
!36 = !{ptr @set_current_def, ptr @xcalloc, i64 7196}
!37 = !{ptr @rewrite_into_ssa, ptr @init_ssa_operands, i64 40}
!38 = !{ptr @rewrite_into_ssa, ptr @htab_elements, i64 40}
!39 = !{ptr @rewrite_into_ssa, ptr @htab_create, i64 40}
!40 = !{ptr @rewrite_into_ssa, ptr @htab_size, i64 80}
!41 = !{ptr @rewrite_into_ssa, ptr @xcalloc, i64 3718}
!42 = !{ptr @rewrite_into_ssa, ptr @sbitmap_alloc, i64 40}
!43 = !{ptr @rewrite_into_ssa, ptr @sbitmap_zero, i64 40}
!44 = !{ptr @rewrite_into_ssa, ptr @xmalloc, i64 40}
!45 = !{ptr @rewrite_into_ssa, ptr @bitmap_obstack_alloc_stat, i64 187406}
!46 = !{ptr @rewrite_into_ssa, ptr @calculate_dominance_info, i64 40}
!47 = !{ptr @rewrite_into_ssa, ptr @compute_dominance_frontiers, i64 40}
!48 = !{ptr @rewrite_into_ssa, ptr @init_walk_dominator_tree, i64 40}
!49 = !{ptr @rewrite_into_ssa, ptr @walk_dominator_tree, i64 40}
!50 = !{ptr @rewrite_into_ssa, ptr @fini_walk_dominator_tree, i64 40}
!51 = !{ptr @rewrite_into_ssa, ptr @bitmap_obstack_free, i64 189081}
!52 = !{ptr @rewrite_into_ssa, ptr @htab_find, i64 113037}
!53 = !{ptr @rewrite_into_ssa, ptr @bitmap_set_bit, i64 1675}
!54 = !{ptr @rewrite_into_ssa, ptr @referenced_var_lookup, i64 1675}
!55 = !{ptr @rewrite_into_ssa, ptr @compute_idf, i64 1675}
!56 = !{ptr @rewrite_into_ssa, ptr @insert_phi_nodes_for, i64 1675}
!57 = !{ptr @rewrite_into_ssa, ptr @rewrite_blocks, i64 40}
!58 = !{ptr @rewrite_into_ssa, ptr @free, i64 120}
!59 = !{ptr @rewrite_into_ssa, ptr @htab_delete, i64 40}
!60 = !{ptr @delete_update_ssa, ptr @free, i64 180631}
!61 = !{ptr @delete_update_ssa, ptr @htab_delete, i64 374}
!62 = !{ptr @delete_update_ssa, ptr @bitmap_clear, i64 225}
!63 = !{ptr @delete_update_ssa, ptr @bitmap_obstack_free, i64 683}
!64 = !{ptr @delete_update_ssa, ptr @release_ssa_name, i64 72}
!65 = !{ptr @create_new_def_for, ptr @duplicate_ssa_name, i64 90123}
!66 = !{ptr @create_new_def_for, ptr @init_update_ssa, i64 92}
!67 = !{ptr @create_new_def_for, ptr @add_new_name_mapping, i64 90123}
!68 = !{ptr @create_new_def_for, ptr @xcalloc, i64 2958}
!69 = !{ptr @register_new_name_mapping, ptr @init_update_ssa, i64 37}
!70 = !{ptr @register_new_name_mapping, ptr @add_new_name_mapping, i64 35583}
!71 = !{ptr @init_update_ssa, ptr @sbitmap_alloc, i64 450}
!72 = !{ptr @init_update_ssa, ptr @sbitmap_zero, i64 450}
!73 = !{ptr @init_update_ssa, ptr @htab_create, i64 225}
!74 = !{ptr @init_update_ssa, ptr @bitmap_obstack_alloc_stat, i64 225}
!75 = !{ptr @add_new_name_mapping, ptr @is_gimple_reg, i64 140695}
!76 = !{ptr @add_new_name_mapping, ptr @bitmap_set_bit, i64 186889}
!77 = !{ptr @add_new_name_mapping, ptr @htab_find_slot, i64 157977}
!78 = !{ptr @add_new_name_mapping, ptr @xmalloc, i64 140695}
!79 = !{ptr @add_new_name_mapping, ptr @bitmap_obstack_alloc_stat, i64 140695}
!80 = !{ptr @add_new_name_mapping, ptr @bitmap_ior_into, i64 8641}
!81 = !{ptr @mark_sym_for_renaming, ptr @bitmap_set_bit, i64 239634}
!82 = !{ptr @name_mappings_registered_p, ptr @htab_elements, i64 1124}
!83 = !{ptr @release_ssa_name_after_update_ssa, ptr @bitmap_obstack_alloc_stat, i64 8}
!84 = !{ptr @release_ssa_name_after_update_ssa, ptr @bitmap_set_bit, i64 72}
!85 = !{ptr @update_ssa, ptr @init_update_ssa, i64 96}
!86 = !{ptr @update_ssa, ptr @bitmap_obstack_alloc_stat, i64 1118030}
!87 = !{ptr @update_ssa, ptr @vec_heap_p_reserve_exact, i64 1}
!88 = !{ptr @update_ssa, ptr @calculate_dominance_info, i64 225}
!89 = !{ptr @update_ssa, ptr @sbitmap_zero, i64 323}
!90 = !{ptr @update_ssa, ptr @htab_empty, i64 49}
!91 = !{ptr @update_ssa, ptr @htab_create, i64 149}
!92 = !{ptr @update_ssa, ptr @sbitmap_first_set_bit, i64 503}
!93 = !{ptr @update_ssa, ptr @bitmap_bit_p, i64 423643}
!94 = !{ptr @update_ssa, ptr @bitmap_set_bit, i64 58126}
!95 = !{ptr @update_ssa, ptr @gsi_start_phis, i64 58126}
!96 = !{ptr @update_ssa, ptr @mark_def_interesting, i64 233788}
!97 = !{ptr @update_ssa, ptr @mark_use_interesting, i64 509013}
!98 = !{ptr @update_ssa, ptr @prepare_block_for_update, i64 96}
!99 = !{ptr @update_ssa, ptr @nearest_common_dominator_for_set, i64 182}
!100 = !{ptr @update_ssa, ptr @xmalloc, i64 149}
!101 = !{ptr @update_ssa, ptr @compute_dominance_frontiers, i64 149}
!102 = !{ptr @update_ssa, ptr @sbitmap_alloc, i64 278}
!103 = !{ptr @update_ssa, ptr @sbitmap_copy, i64 53}
!104 = !{ptr @update_ssa, ptr @insert_updated_phi_nodes_for, i64 90266}
!105 = !{ptr @update_ssa, ptr @free, i64 705}
!106 = !{ptr @update_ssa, ptr @referenced_var_lookup, i64 286}
!107 = !{ptr @update_ssa, ptr @bitmap_obstack_free, i64 1117580}
!108 = !{ptr @update_ssa, ptr @xcalloc, i64 3553}
!109 = !{ptr @update_ssa, ptr @set_current_def, i64 143}
!110 = !{ptr @update_ssa, ptr @rewrite_blocks, i64 225}
!111 = !{ptr @update_ssa, ptr @delete_update_ssa, i64 225}
!112 = !{ptr @def_blocks_free, ptr @bitmap_obstack_free, i64 848577}
!113 = !{ptr @def_blocks_free, ptr @free, i64 282859}
!114 = !{ptr @prepare_block_for_update, ptr @bitmap_bit_p, i64 4017768}
!115 = !{ptr @prepare_block_for_update, ptr @bitmap_set_bit, i64 658097}
!116 = !{ptr @prepare_block_for_update, ptr @gsi_start_phis, i64 842712}
!117 = !{ptr @prepare_block_for_update, ptr @mark_def_interesting, i64 291215}
!118 = !{ptr @prepare_block_for_update, ptr @mark_use_interesting, i64 225486}
!119 = !{ptr @prepare_block_for_update, ptr @vec_heap_p_reserve, i64 3}
!120 = !{ptr @prepare_block_for_update, ptr @vec_heap_p_reserve_exact, i64 58869}
!121 = !{ptr @prepare_block_for_update, ptr @htab_find_slot, i64 618022}
!122 = !{ptr @prepare_block_for_update, ptr @xmalloc, i64 51}
!123 = !{ptr @prepare_block_for_update, ptr @bitmap_obstack_alloc_stat, i64 153}
!124 = !{ptr @prepare_block_for_update, ptr @xcalloc, i64 139}
!125 = !{ptr @prepare_block_for_update, ptr @bitmap_first_set_bit, i64 9}
!126 = !{ptr @prepare_block_for_update, ptr @dominated_by_p, i64 9}
!127 = !{ptr @prepare_block_for_update, ptr @first_dom_son, i64 489294}
!128 = !{ptr @prepare_block_for_update, ptr @prepare_block_for_update, i64 489198}
!129 = !{ptr @prepare_block_for_update, ptr @next_dom_son, i64 489198}
!130 = !{ptr @insert_updated_phi_nodes_for, ptr @htab_find, i64 90266}
!131 = !{ptr @insert_updated_phi_nodes_for, ptr @compute_idf, i64 90266}
!132 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_obstack_alloc_stat, i64 90266}
!133 = !{ptr @insert_updated_phi_nodes_for, ptr @nearest_common_dominator_for_set, i64 90123}
!134 = !{ptr @insert_updated_phi_nodes_for, ptr @dominated_by_p, i64 455267}
!135 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_set_bit, i64 1740096}
!136 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_copy, i64 143}
!137 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_ior_into, i64 86907}
!138 = !{ptr @insert_updated_phi_nodes_for, ptr @insert_phi_nodes_for, i64 86907}
!139 = !{ptr @insert_updated_phi_nodes_for, ptr @bitmap_obstack_free, i64 180532}
!140 = !{ptr @rewrite_blocks, ptr @vec_heap_p_reserve_exact, i64 265}
!141 = !{ptr @rewrite_blocks, ptr @init_walk_dominator_tree, i64 265}
!142 = !{ptr @rewrite_blocks, ptr @walk_dominator_tree, i64 265}
!143 = !{ptr @rewrite_blocks, ptr @fini_walk_dominator_tree, i64 265}
!144 = !{ptr @rewrite_blocks, ptr @free, i64 265}
!145 = !{ptr @mark_def_sites_block, ptr @bitmap_clear, i64 187366}
!146 = !{ptr @mark_def_sites_block, ptr @gimple_set_modified, i64 403812}
!147 = !{ptr @mark_def_sites_block, ptr @update_stmt_operands, i64 403812}
!148 = !{ptr @mark_def_sites_block, ptr @bitmap_bit_p, i64 276508}
!149 = !{ptr @mark_def_sites_block, ptr @xcalloc, i64 178}
!150 = !{ptr @mark_def_sites_block, ptr @htab_find_slot, i64 310522}
!151 = !{ptr @mark_def_sites_block, ptr @xmalloc, i64 86522}
!152 = !{ptr @mark_def_sites_block, ptr @bitmap_obstack_alloc_stat, i64 259566}
!153 = !{ptr @mark_def_sites_block, ptr @bitmap_set_bit, i64 565694}
!154 = !{ptr @mark_def_sites_block, ptr @bitmap_first_set_bit, i64 2}
!155 = !{ptr @mark_def_sites_block, ptr @dominated_by_p, i64 2}
!156 = !{ptr @set_def_block, ptr @xcalloc, i64 61}
!157 = !{ptr @set_def_block, ptr @htab_find_slot, i64 107303}
!158 = !{ptr @set_def_block, ptr @xmalloc, i64 36382}
!159 = !{ptr @set_def_block, ptr @bitmap_obstack_alloc_stat, i64 109146}
!160 = !{ptr @set_def_block, ptr @bitmap_set_bit, i64 133960}
!161 = !{ptr @insert_phi_nodes_for, ptr @htab_find, i64 88582}
!162 = !{ptr @insert_phi_nodes_for, ptr @bitmap_and_compl_into, i64 121744}
!163 = !{ptr @insert_phi_nodes_for, ptr @bitmap_clear, i64 55420}
!164 = !{ptr @insert_phi_nodes_for, ptr @bitmap_obstack_alloc_stat, i64 66284}
!165 = !{ptr @insert_phi_nodes_for, ptr @bitmap_and_compl, i64 33162}
!166 = !{ptr @insert_phi_nodes_for, ptr @bitmap_obstack_free, i64 66284}
!167 = !{ptr @insert_phi_nodes_for, ptr @bitmap_ior, i64 33122}
!168 = !{ptr @insert_phi_nodes_for, ptr @bitmap_count_bits, i64 33122}
!169 = !{ptr @insert_phi_nodes_for, ptr @xmalloc, i64 33122}
!170 = !{ptr @insert_phi_nodes_for, ptr @bb_dom_dfs_in, i64 957975}
!171 = !{ptr @insert_phi_nodes_for, ptr @bb_dom_dfs_out, i64 584423}
!172 = !{ptr @insert_phi_nodes_for, ptr @spec_qsort, i64 33122}
!173 = !{ptr @insert_phi_nodes_for, ptr @vec_heap_o_reserve_exact, i64 33122}
!174 = !{ptr @insert_phi_nodes_for, ptr @vec_heap_o_reserve, i64 827}
!175 = !{ptr @insert_phi_nodes_for, ptr @bitmap_bit_p, i64 1258321}
!176 = !{ptr @insert_phi_nodes_for, ptr @get_immediate_dominator, i64 373552}
!177 = !{ptr @insert_phi_nodes_for, ptr @bitmap_set_bit, i64 100766}
!178 = !{ptr @insert_phi_nodes_for, ptr @free, i64 66244}
!179 = !{ptr @insert_phi_nodes_for, ptr @bitmap_copy, i64 33122}
!180 = !{ptr @insert_phi_nodes_for, ptr @gsi_start_phis, i64 13914}
!181 = !{ptr @insert_phi_nodes_for, ptr @create_phi_node, i64 56116}
!182 = !{ptr @insert_phi_nodes_for, ptr @duplicate_ssa_name, i64 14989}
!183 = !{ptr @insert_phi_nodes_for, ptr @add_new_name_mapping, i64 14989}
!184 = !{ptr @insert_phi_nodes_for, ptr @add_phi_arg, i64 31738}
!185 = !{ptr @insert_phi_nodes_for, ptr @target_for_debug_bind, i64 41127}
!186 = !{ptr @insert_phi_nodes_for, ptr @vec_heap_p_reserve, i64 1}
!187 = !{ptr @insert_phi_nodes_for, ptr @vec_heap_p_reserve_exact, i64 28092}
!188 = !{ptr @repl_map_free, ptr @bitmap_obstack_free, i64 140695}
!189 = !{ptr @repl_map_free, ptr @free, i64 140695}
!190 = !{ptr @mark_def_interesting, ptr @bitmap_bit_p, i64 525003}
!191 = !{ptr @mark_def_interesting, ptr @xcalloc, i64 269}
!192 = !{ptr @mark_def_interesting, ptr @htab_find_slot, i64 570033}
!193 = !{ptr @mark_def_interesting, ptr @xmalloc, i64 159822}
!194 = !{ptr @mark_def_interesting, ptr @bitmap_obstack_alloc_stat, i64 479466}
!195 = !{ptr @mark_def_interesting, ptr @bitmap_set_bit, i64 588467}
!196 = !{ptr @mark_def_interesting, ptr @set_def_block, i64 107303}
!197 = !{ptr @mark_use_interesting, ptr @bitmap_bit_p, i64 2058182}
!198 = !{ptr @mark_use_interesting, ptr @bitmap_set_bit, i64 845370}
!199 = !{ptr @mark_use_interesting, ptr @gsi_start_phis, i64 365234}
!200 = !{ptr @mark_use_interesting, ptr @vec_heap_p_reserve, i64 4}
!201 = !{ptr @mark_use_interesting, ptr @vec_heap_p_reserve_exact, i64 92770}
!202 = !{ptr @mark_use_interesting, ptr @htab_find_slot, i64 973925}
!203 = !{ptr @mark_use_interesting, ptr @xmalloc, i64 80}
!204 = !{ptr @mark_use_interesting, ptr @bitmap_obstack_alloc_stat, i64 240}
!205 = !{ptr @mark_use_interesting, ptr @xcalloc, i64 220}
!206 = !{ptr @mark_use_interesting, ptr @bitmap_first_set_bit, i64 15}
!207 = !{ptr @mark_use_interesting, ptr @dominated_by_p, i64 15}
!208 = !{ptr @rewrite_enter_block, ptr @vec_heap_p_reserve, i64 46}
!209 = !{ptr @rewrite_enter_block, ptr @gsi_start_phis, i64 520996}
!210 = !{ptr @rewrite_enter_block, ptr @is_gimple_reg, i64 151}
!211 = !{ptr @rewrite_enter_block, ptr @register_new_def, i64 255323}
!212 = !{ptr @rewrite_enter_block, ptr @gimple_default_def, i64 41}
!213 = !{ptr @rewrite_enter_block, ptr @gimple_build_nop, i64 15}
!214 = !{ptr @rewrite_enter_block, ptr @make_ssa_name_fn, i64 255187}
!215 = !{ptr @rewrite_enter_block, ptr @set_default_def, i64 15}
!216 = !{ptr @rewrite_enter_block, ptr @set_current_def, i64 41}
!217 = !{ptr @rewrite_enter_block, ptr @target_for_debug_bind, i64 255172}
!218 = !{ptr @rewrite_enter_block, ptr @add_phi_arg, i64 43614}
!219 = !{ptr @rewrite_leave_block, ptr @is_gimple_reg, i64 33911}
!220 = !{ptr @rewrite_leave_block, ptr @xcalloc, i64 3329}
!221 = !{ptr @rewrite_update_enter_block, ptr @vec_heap_p_reserve, i64 822}
!222 = !{ptr @rewrite_update_enter_block, ptr @bitmap_bit_p, i64 6141693}
!223 = !{ptr @rewrite_update_enter_block, ptr @gsi_start_phis, i64 807372}
!224 = !{ptr @rewrite_update_enter_block, ptr @xcalloc, i64 10901}
!225 = !{ptr @rewrite_update_enter_block, ptr @htab_find_slot, i64 140623}
!226 = !{ptr @rewrite_update_enter_block, ptr @register_new_update_set, i64 140623}
!227 = !{ptr @rewrite_update_enter_block, ptr @get_current_def, i64 108154}
!228 = !{ptr @rewrite_update_enter_block, ptr @set_current_def, i64 108325}
!229 = !{ptr @rewrite_update_enter_block, ptr @gimple_default_def, i64 171}
!230 = !{ptr @rewrite_update_enter_block, ptr @gimple_build_nop, i64 64}
!231 = !{ptr @rewrite_update_enter_block, ptr @make_ssa_name_fn, i64 69264}
!232 = !{ptr @rewrite_update_enter_block, ptr @set_default_def, i64 64}
!233 = !{ptr @rewrite_update_enter_block, ptr @target_for_debug_bind, i64 69200}
!234 = !{ptr @rewrite_update_leave_block, ptr @vec_heap_p_reserve, i64 1}
!235 = !{ptr @rewrite_update_leave_block, ptr @xcalloc, i64 14975}
!236 = !{ptr @register_new_def, ptr @xcalloc, i64 8525}
!237 = !{ptr @register_new_def, ptr @is_gimple_reg, i64 48753}
!238 = !{ptr @register_new_def, ptr @vec_heap_p_reserve, i64 60}
!239 = !{ptr @register_new_update_set, ptr @vec_heap_p_reserve, i64 85}
!240 = !{ptr @register_new_update_set, ptr @xcalloc, i64 4898}
!241 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!242 = !{!"function_entry_count", i64 0}
!243 = !{!244, !244, i64 0}
!244 = !{!"any pointer", !245, i64 0}
!245 = !{!"omnipotent char", !246, i64 0}
!246 = !{!"Simple C/C++ TBAA"}
!247 = !{!248, !244, i64 8}
!248 = !{!"_IO_FILE", !249, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !249, i64 112, !249, i64 116, !250, i64 120, !251, i64 128, !245, i64 130, !245, i64 131, !244, i64 136, !250, i64 144, !244, i64 152, !244, i64 160, !244, i64 168, !244, i64 176, !250, i64 184, !249, i64 192, !245, i64 196}
!249 = !{!"int", !245, i64 0}
!250 = !{!"long", !245, i64 0}
!251 = !{!"short", !245, i64 0}
!252 = !{!248, !244, i64 16}
!253 = !{!"branch_weights", i32 2000, i32 1}
!254 = !{!245, !245, i64 0}
!255 = !{!248, !244, i64 40}
!256 = !{!248, !244, i64 48}
!257 = !{!248, !249, i64 0}
!258 = !{!249, !249, i64 0}
!259 = distinct !{!259, !260, !261}
!260 = !{!"llvm.loop.mustprogress"}
!261 = !{!"llvm.loop.unroll.disable"}
!262 = !{!"function_entry_count", i64 108154}
!263 = !{!"branch_weights", i32 798163, i32 1602673}
!264 = !{!"branch_weights", i32 0, i32 798163}
!265 = !{!266, !249, i64 0}
!266 = !{!"VEC_ssa_name_info_p_base", !249, i64 0, !249, i64 4, !245, i64 8}
!267 = !{!"branch_weights", i32 798163, i32 0}
!268 = !{!269, !244, i64 24}
!269 = !{!"function", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !249, i64 104, !249, i64 108, !249, i64 112, !249, i64 116, !249, i64 120, !249, i64 124, !244, i64 128, !249, i64 136, !249, i64 137, !249, i64 138, !249, i64 138, !249, i64 138, !249, i64 138, !249, i64 138, !249, i64 138, !249, i64 138, !249, i64 139, !249, i64 139, !249, i64 139, !249, i64 139, !249, i64 139, !249, i64 139, !249, i64 139}
!270 = !{!271, !244, i64 16}
!271 = !{!"gimple_df", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !272, i64 32, !272, i64 48, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !249, i64 96, !273, i64 104}
!272 = !{!"pt_solution", !249, i64 0, !249, i64 0, !249, i64 0, !249, i64 0, !249, i64 0, !249, i64 0, !244, i64 8}
!273 = !{!"ssa_operands", !244, i64 0, !249, i64 8, !249, i64 12, !245, i64 16, !244, i64 24, !244, i64 32}
!274 = !{!275, !249, i64 0}
!275 = !{!"VEC_tree_base", !249, i64 0, !249, i64 4, !245, i64 8}
!276 = !{!266, !249, i64 4}
!277 = !{!278, !249, i64 12}
!278 = !{!"ssa_name_info", !244, i64 0, !249, i64 8, !249, i64 12}
!279 = distinct !{!279, !260, !261}
!280 = !{!278, !244, i64 0}
!281 = !{!"branch_weights", i32 0, i32 1547480, i32 55193}
!282 = !{!"branch_weights", i32 0, i32 1602673}
!283 = !{!"function_entry_count", i64 219294}
!284 = !{!"branch_weights", i32 713277, i32 1287970}
!285 = !{!"branch_weights", i32 1, i32 713276}
!286 = !{!"branch_weights", i32 712689, i32 588}
!287 = !{!"branch_weights", i32 0, i32 588}
!288 = !{!"branch_weights", i32 1, i32 587}
!289 = !{!"branch_weights", i32 583, i32 5}
!290 = !{!"branch_weights", i32 587, i32 1}
!291 = !{!"branch_weights", i32 587, i32 65087}
!292 = !{!"branch_weights", i32 105691, i32 607586}
!293 = !{!"branch_weights", i32 0, i32 1287850, i32 120}
!294 = !{!269, !244, i64 8}
!295 = !{!296, !249, i64 32}
!296 = !{!"control_flow_graph", !244, i64 0, !244, i64 8, !244, i64 16, !249, i64 24, !249, i64 28, !249, i64 32, !244, i64 40, !249, i64 48, !245, i64 52, !245, i64 60, !249, i64 68, !249, i64 72}
!297 = !{!298, !244, i64 0}
!298 = !{!"bitmap_head_def", !244, i64 0, !244, i64 8, !249, i64 16, !244, i64 24}
!299 = !{!300, !249, i64 16}
!300 = !{!"bitmap_element_def", !244, i64 0, !244, i64 8, !249, i64 16, !245, i64 24}
!301 = !{!250, !250, i64 0}
!302 = distinct !{!302, !260, !261}
!303 = distinct !{!303, !260, !261}
!304 = !{!300, !244, i64 0}
!305 = distinct !{!305, !261}
!306 = !{!296, !244, i64 16}
!307 = distinct !{!307, !260, !261}
!308 = distinct !{!308, !260, !261}
!309 = !{!310, !249, i64 0}
!310 = !{!"VEC_edge_base", !249, i64 0, !249, i64 4, !245, i64 8}
!311 = !{!312, !244, i64 0}
!312 = !{!"edge_def", !244, i64 0, !244, i64 8, !245, i64 16, !244, i64 24, !244, i64 32, !249, i64 40, !249, i64 44, !249, i64 48, !249, i64 52, !250, i64 56}
!313 = !{!314, !249, i64 80}
!314 = !{!"basic_block_def", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !245, i64 32, !244, i64 48, !244, i64 56, !245, i64 64, !250, i64 72, !249, i64 80, !249, i64 84, !249, i64 88, !249, i64 92, !249, i64 96}
!315 = !{!296, !244, i64 0}
!316 = distinct !{!316, !260, !261}
!317 = distinct !{!317, !260, !261}
!318 = distinct !{!318, !260, !261}
!319 = !{!271, !244, i64 0}
!320 = !{!321, !244, i64 24}
!321 = !{!"htab", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !249, i64 56, !249, i64 60, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !249, i64 104}
!322 = distinct !{!322, !260, !261}
!323 = !{!271, !244, i64 88}
!324 = distinct !{!324, !260, !261}
!325 = !{!326, !244, i64 176}
!326 = !{!"lang_hooks", !244, i64 0, !250, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !244, i64 112, !244, i64 120, !244, i64 128, !244, i64 136, !244, i64 144, !244, i64 152, !244, i64 160, !244, i64 168, !244, i64 176, !244, i64 184, !244, i64 192, !244, i64 200, !244, i64 208, !244, i64 216, !244, i64 224, !244, i64 232, !327, i64 240, !328, i64 248, !329, i64 256, !330, i64 272, !331, i64 432, !332, i64 560, !244, i64 584, !244, i64 592, !244, i64 600, !244, i64 608, !244, i64 616, !244, i64 624, !244, i64 632, !244, i64 640, !244, i64 648, !244, i64 656, !244, i64 664, !245, i64 672}
!327 = !{!"lang_hooks_for_tree_inlining", !244, i64 0}
!328 = !{!"lang_hooks_for_callgraph", !244, i64 0}
!329 = !{!"lang_hooks_for_tree_dump", !244, i64 0, !244, i64 8}
!330 = !{!"lang_hooks_for_decls", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !244, i64 112, !244, i64 120, !244, i64 128, !244, i64 136, !244, i64 144, !244, i64 152}
!331 = !{!"lang_hooks_for_types", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !244, i64 112, !245, i64 120}
!332 = !{!"lang_hooks_for_lto", !244, i64 0, !244, i64 8, !244, i64 16}
!333 = !{!334, !244, i64 0}
!334 = !{!"def_blocks_d", !244, i64 0, !244, i64 8, !244, i64 16, !244, i64 24}
!335 = !{!334, !244, i64 8}
!336 = !{!334, !244, i64 24}
!337 = !{!334, !244, i64 16}
!338 = !{!"function_entry_count", i64 40}
!339 = !{!"tree-into-ssa.c;rewrite_into_ssa"}
!340 = !{!"branch_weights", i32 40, i32 0}
!341 = !{!"branch_weights", i32 0, i32 40}
!342 = !{!"branch_weights", i32 50, i32 40}
!343 = !{!"branch_weights", i32 50, i32 0}
!344 = !{!"branch_weights", i32 159, i32 1}
!345 = !{!"branch_weights", i32 235960, i32 40}
!346 = !{!"branch_weights", i32 124638, i32 111322}
!347 = !{!"branch_weights", i32 445289, i32 159}
!348 = distinct !{!348, !260, !261}
!349 = !{!314, !244, i64 56}
!350 = !{!296, !244, i64 8}
!351 = !{!"branch_weights", i32 1, i32 159}
!352 = !{!"branch_weights", i32 159, i32 749145}
!353 = distinct !{!353, !260, !261}
!354 = !{!355, !244, i64 8}
!355 = !{!"dom_walk_data", !249, i64 0, !244, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !250, i64 48, !244, i64 56}
!356 = !{!355, !244, i64 16}
!357 = !{!355, !244, i64 24}
!358 = !{!359, !244, i64 0}
!359 = !{!"mark_def_sites_global_data", !244, i64 0}
!360 = !{!355, !244, i64 32}
!361 = !{!355, !250, i64 48}
!362 = !{!"branch_weights", i32 203, i32 111159}
!363 = !{!"branch_weights", i32 366884, i32 1517673}
!364 = !{!"branch_weights", i32 0, i32 366884}
!365 = !{!"branch_weights", i32 366882, i32 2}
!366 = !{!"branch_weights", i32 0, i32 2}
!367 = !{!"branch_weights", i32 1, i32 1}
!368 = !{!"branch_weights", i32 127, i32 1}
!369 = !{!"branch_weights", i32 127, i32 68737}
!370 = !{!"branch_weights", i32 74111, i32 292773}
!371 = !{!"branch_weights", i32 0, i32 1462440, i32 55233}
!372 = !{!"branch_weights", i32 109484, i32 1675}
!373 = distinct !{!373, !260, !261}
!374 = !{!"branch_weights", i32 591, i32 1124}
!375 = !{!"branch_weights", i32 1674, i32 1}
!376 = !{!"branch_weights", i32 18094, i32 1674}
!377 = !{!"branch_weights", i32 1, i32 462}
!378 = !{!"branch_weights", i32 335, i32 551}
!379 = !{!"branch_weights", i32 462, i32 424}
!380 = !{!"branch_weights", i32 40, i32 423}
!381 = !{!"branch_weights", i32 40, i32 1675}
!382 = distinct !{!382, !260, !261}
!383 = distinct !{!383, !260, !261}
!384 = !{!385, !244, i64 0}
!385 = !{!"simple_bitmap_def", !244, i64 0, !249, i64 8, !249, i64 12, !245, i64 16}
!386 = !{!387, !244, i64 0}
!387 = !{!"repl_map_d", !244, i64 0, !244, i64 8}
!388 = !{}
!389 = !{!387, !244, i64 8}
!390 = distinct !{!390, !260, !261}
!391 = !{!385, !249, i64 12}
!392 = distinct !{!392, !260, !261}
!393 = distinct !{!393, !260, !261}
!394 = distinct !{!394, !260, !261}
!395 = !{!396, !249, i64 0}
!396 = !{!"update_ssa_stats_d", !249, i64 0, !249, i64 4, !244, i64 8, !249, i64 16}
!397 = !{!396, !249, i64 4}
!398 = !{!396, !249, i64 16}
!399 = distinct !{!399, !260, !261}
!400 = !{!"function_entry_count", i64 266}
!401 = !{!"branch_weights", i32 0, i32 266}
!402 = !{!"branch_weights", i32 40, i32 226}
!403 = !{!"function_entry_count", i64 225}
!404 = !{!396, !244, i64 8}
!405 = !{!"branch_weights", i32 217, i32 8}
!406 = !{!"branch_weights", i32 0, i32 8}
!407 = !{!"branch_weights", i32 32, i32 48}
!408 = !{!"branch_weights", i32 143, i32 1}
!409 = !{!"branch_weights", i32 1837, i32 143}
!410 = !{!"branch_weights", i32 1, i32 223}
!411 = !{!"branch_weights", i32 24, i32 24}
!412 = !{!"branch_weights", i32 223, i32 161}
!413 = !{!"branch_weights", i32 8, i32 20}
!414 = !{!"branch_weights", i32 8, i32 72}
!415 = distinct !{!415, !260, !261}
!416 = !{!"branch_weights", i32 76, i32 149}
!417 = !{!"branch_weights", i32 0, i32 225}
!418 = !{!"branch_weights", i32 65, i32 160}
!419 = !{!"branch_weights", i32 13701, i32 166255}
!420 = !{!"branch_weights", i32 179730, i32 1}
!421 = !{!"branch_weights", i32 400915, i32 179730}
!422 = !{!"branch_weights", i32 1, i32 7433}
!423 = !{!"branch_weights", i32 1167, i32 13476}
!424 = !{!"branch_weights", i32 7433, i32 7210}
!425 = !{!"branch_weights", i32 225, i32 7209}
!426 = !{!"branch_weights", i32 225, i32 179731}
!427 = !{!"branch_weights", i32 0, i32 179731}
!428 = distinct !{!428, !260, !261}
!429 = !{!"function_entry_count", i64 90123}
!430 = !{!"branch_weights", i32 37798, i32 52325}
!431 = !{!"branch_weights", i32 0, i32 37798}
!432 = !{!"branch_weights", i32 37798, i32 0}
!433 = !{!312, !249, i64 48}
!434 = distinct !{!434, !260, !261}
!435 = !{!"branch_weights", i32 129, i32 125577}
!436 = !{!"branch_weights", i32 125706, i32 0}
!437 = !{!"function_entry_count", i64 35583}
!438 = !{!"tree-into-ssa.c;init_update_ssa"}
!439 = !{!"branch_weights", i32 666, i32 0}
!440 = !{!"branch_weights", i32 666, i32 49284}
!441 = !{!"function_entry_count", i64 140695}
!442 = !{!"tree-into-ssa.c;add_new_name_mapping"}
!443 = !{!"branch_weights", i32 140695, i32 0}
!444 = !{!"branch_weights", i32 0, i32 140695}
!445 = !{!"branch_weights", i32 46194, i32 94501}
!446 = !{!385, !249, i64 8}
!447 = !{!"branch_weights", i32 132054, i32 8641}
!448 = !{!"branch_weights", i32 0, i32 8641}
!449 = !{!"function_entry_count", i64 239634}
!450 = distinct !{!450, !260, !261}
!451 = !{!"function_entry_count", i64 1142}
!452 = !{!"branch_weights", i32 18, i32 1124}
!453 = !{!"branch_weights", i32 1124, i32 0}
!454 = !{!"branch_weights", i32 0, i32 1124}
!455 = !{!"function_entry_count", i64 3478100}
!456 = !{!"branch_weights", i32 2898437, i32 579663}
!457 = !{!"branch_weights", i32 579663, i32 0}
!458 = !{!"branch_weights", i32 72, i32 579591}
!459 = !{!"branch_weights", i32 579591, i32 0}
!460 = !{!"branch_weights", i32 652039, i32 -1670873572}
!461 = !{!"branch_weights", i32 72, i32 579519}
!462 = !{!"branch_weights", i32 579519, i32 0}
!463 = distinct !{!463, !260, !261}
!464 = !{!"function_entry_count", i64 72}
!465 = !{!"branch_weights", i32 72, i32 0}
!466 = !{!"branch_weights", i32 8, i32 64}
!467 = !{!"function_entry_count", i64 1557}
!468 = !{!"branch_weights", i32 0, i32 1557}
!469 = !{!"branch_weights", i32 129, i32 1428}
!470 = !{!"branch_weights", i32 0, i32 1428}
!471 = !{!"branch_weights", i32 1332, i32 225}
!472 = !{!"branch_weights", i32 225, i32 0}
!473 = !{!"branch_weights", i32 96, i32 129}
!474 = !{!"branch_weights", i32 1, i32 224}
!475 = !{!"branch_weights", i32 0, i32 49, i32 100, i32 76, i32 0}
!476 = !{!"branch_weights", i32 149, i32 76}
!477 = !{!"branch_weights", i32 0, i32 149}
!478 = !{!479, !249, i64 8}
!479 = !{!"param_info", !244, i64 0, !249, i64 8, !245, i64 12, !249, i64 16, !249, i64 20, !244, i64 24}
!480 = !{!"branch_weights", i32 128, i32 21}
!481 = !{!"branch_weights", i32 149, i32 0}
!482 = distinct !{!482, !260, !261}
!483 = distinct !{!483, !260, !261}
!484 = !{!"branch_weights", i32 129, i32 96}
!485 = !{!"branch_weights", i32 121, i32 8}
!486 = distinct !{!486, !260, !261}
!487 = !{!"branch_weights", i32 0, i32 129}
!488 = !{!"branch_weights", i32 49005, i32 76629}
!489 = !{!"branch_weights", i32 128, i32 1}
!490 = !{!"branch_weights", i32 125633, i32 1}
!491 = !{!"branch_weights", i32 48748, i32 128}
!492 = !{!"branch_weights", i32 0, i32 49005}
!493 = !{!"branch_weights", i32 410002, i32 125633}
!494 = !{!"branch_weights", i32 129, i32 125634}
!495 = !{!"branch_weights", i32 107326, i32 126538}
!496 = !{!"branch_weights", i32 126538, i32 0}
!497 = !{!"branch_weights", i32 76, i32 233788}
!498 = !{!"branch_weights", i32 233788, i32 0}
!499 = !{!"branch_weights", i32 0, i32 3180225}
!500 = !{!"branch_weights", i32 790691, i32 2389534}
!501 = !{i64 0, i64 8, !243, i64 8, i64 8, !243, i64 16, i64 8, !243}
!502 = !{!"branch_weights", i32 590756, i32 199935}
!503 = !{!504, !244, i64 0}
!504 = !{!"gimple_seq_node_d", !244, i64 0, !244, i64 8, !244, i64 16}
!505 = !{!504, !244, i64 16}
!506 = !{!"branch_weights", i32 199935, i32 0}
!507 = distinct !{!507, !260, !261}
!508 = !{!314, !249, i64 96}
!509 = !{!510}
!510 = distinct !{!510, !511, !"gsi_start_bb: argument 0"}
!511 = distinct !{!511, !"gsi_start_bb"}
!512 = !{!"branch_weights", i32 790691, i32 0}
!513 = !{!"branch_weights", i32 96, i32 790595}
!514 = !{!515, !244, i64 0}
!515 = !{!"gimple_bb_info", !244, i64 0, !244, i64 8}
!516 = !{!517, !244, i64 0}
!517 = !{!"gimple_seq_d", !244, i64 0, !244, i64 8, !244, i64 16}
!518 = !{!"branch_weights", i32 1, i32 790690}
!519 = !{!"branch_weights", i32 1757387, i32 0}
!520 = !{!"branch_weights", i32 790690, i32 966697}
!521 = distinct !{!521, !260, !261}
!522 = distinct !{!522, !260, !261}
!523 = !{!"branch_weights", i32 49005, i32 59249}
!524 = !{!"branch_weights", i32 108253, i32 1}
!525 = !{!"branch_weights", i32 532849, i32 108253}
!526 = !{!"branch_weights", i32 129, i32 108254}
!527 = !{!"branch_weights", i32 44937, i32 63317}
!528 = !{!"branch_weights", i32 63293, i32 24}
!529 = !{!530}
!530 = distinct !{!530, !531, !"gsi_start_bb: argument 0"}
!531 = distinct !{!531, !"gsi_start_bb"}
!532 = !{!533, !244, i64 8}
!533 = !{!"ssa_use_operand_d", !244, i64 0, !244, i64 8, !245, i64 16, !244, i64 24}
!534 = !{!"branch_weights", i32 1, i32 108253}
!535 = !{!"branch_weights", i32 77429, i32 431584}
!536 = !{!314, !244, i64 0}
!537 = !{!"branch_weights", i32 99411, i32 409602}
!538 = !{!"branch_weights", i32 108253, i32 400760}
!539 = distinct !{!539, !260, !261}
!540 = distinct !{!540, !260, !261}
!541 = !{!"branch_weights", i32 1, i32 148}
!542 = !{!"branch_weights", i32 148, i32 1117433}
!543 = distinct !{!543, !260, !261}
!544 = !{!"branch_weights", i32 53, i32 96}
!545 = !{!"branch_weights", i32 0, i32 53}
!546 = !{!"branch_weights", i32 32465, i32 57658}
!547 = !{!"branch_weights", i32 211, i32 1}
!548 = !{!"branch_weights", i32 90122, i32 1}
!549 = !{!"branch_weights", i32 129437, i32 211}
!550 = !{!"branch_weights", i32 0, i32 32465}
!551 = !{!"branch_weights", i32 293168, i32 90122}
!552 = !{!"branch_weights", i32 53, i32 90123}
!553 = distinct !{!553, !260, !261}
!554 = !{!"branch_weights", i32 244, i32 48}
!555 = !{!"branch_weights", i32 142, i32 1}
!556 = !{!"branch_weights", i32 4071, i32 142}
!557 = !{!"branch_weights", i32 1, i32 185}
!558 = !{!"branch_weights", i32 128, i32 95}
!559 = !{!"branch_weights", i32 185, i32 38}
!560 = !{!"branch_weights", i32 149, i32 37}
!561 = !{!"branch_weights", i32 149, i32 143}
!562 = distinct !{!562, !260, !261}
!563 = distinct !{!563, !260, !261}
!564 = !{!"branch_weights", i32 96, i32 53}
!565 = !{!"branch_weights", i32 70750, i32 37504}
!566 = !{!"branch_weights", i32 224, i32 1}
!567 = !{!"branch_weights", i32 70301, i32 224}
!568 = !{!"branch_weights", i32 0, i32 70750}
!569 = !{!"branch_weights", i32 225, i32 108254}
!570 = distinct !{!570, !260, !261}
!571 = !{!"branch_weights", i32 320, i32 48}
!572 = !{!"branch_weights", i32 1, i32 261}
!573 = !{!"branch_weights", i32 204, i32 95}
!574 = !{!"branch_weights", i32 261, i32 38}
!575 = !{!"branch_weights", i32 225, i32 37}
!576 = !{!"branch_weights", i32 225, i32 143}
!577 = distinct !{!577, !260, !261}
!578 = !{!"branch_weights", i32 17857, i32 789740}
!579 = !{!"branch_weights", i32 275051, i32 532321}
!580 = !{!"branch_weights", i32 0, i32 275051}
!581 = !{!"branch_weights", i32 1, i32 9291}
!582 = !{!"branch_weights", i32 727, i32 17632}
!583 = !{!"branch_weights", i32 9291, i32 9068}
!584 = !{!"branch_weights", i32 225, i32 9067}
!585 = !{!"branch_weights", i32 225, i32 807372}
!586 = !{!"branch_weights", i32 807372, i32 0}
!587 = distinct !{!587, !260, !261}
!588 = distinct !{!588, !260, !261}
!589 = distinct !{!589, !260, !261}
!590 = !{!"function_entry_count", i64 2859568}
!591 = !{!"tree-into-ssa.c;def_blocks_hash"}
!592 = !{!"VP", i32 0, i64 2859568, i64 6196242093822180960, i64 2859568}
!593 = !{!"function_entry_count", i64 2731765}
!594 = !{!"tree-into-ssa.c;def_blocks_eq"}
!595 = !{!"function_entry_count", i64 282859}
!596 = !{!"tree-into-ssa.c;def_blocks_free"}
!597 = !{!"function_entry_count", i64 489294}
!598 = !{!"tree-into-ssa.c;prepare_block_for_update"}
!599 = !{!600}
!600 = distinct !{!600, !601, !"gsi_start_bb: argument 0"}
!601 = distinct !{!601, !"gsi_start_bb"}
!602 = !{!"branch_weights", i32 401112, i32 88182}
!603 = !{!"branch_weights", i32 0, i32 88182}
!604 = !{!"branch_weights", i32 2571, i32 85611}
!605 = !{!"branch_weights", i32 0, i32 311097}
!606 = !{!"branch_weights", i32 85611, i32 225486}
!607 = !{!"branch_weights", i32 0, i32 225486}
!608 = !{!"branch_weights", i32 225486, i32 0}
!609 = distinct !{!609, !260, !261}
!610 = !{!"branch_weights", i32 88182, i32 0}
!611 = distinct !{!611, !260, !261}
!612 = !{!613}
!613 = distinct !{!613, !614, !"gsi_start_bb: argument 0"}
!614 = distinct !{!614, !"gsi_start_bb"}
!615 = !{!"branch_weights", i32 489294, i32 0}
!616 = !{!"branch_weights", i32 96, i32 489198}
!617 = !{!"branch_weights", i32 1, i32 489293}
!618 = !{!"branch_weights", i32 0, i32 1092590}
!619 = !{!"branch_weights", i32 51731, i32 1040859}
!620 = !{!621, !244, i64 0}
!621 = !{!"use_optype_d", !244, i64 0, !533, i64 8}
!622 = !{!"branch_weights", i32 1, i32 1092589}
!623 = !{!533, !244, i64 24}
!624 = !{!"branch_weights", i32 160965, i32 1116601}
!625 = !{!"branch_weights", i32 811476, i32 466090}
!626 = !{!627}
!627 = distinct !{!627, !628, !"gsi_start_bb: argument 0"}
!628 = distinct !{!628, !"gsi_start_bb"}
!629 = !{!630}
!630 = distinct !{!630, !631, !"gsi_start_bb: argument 0"}
!631 = distinct !{!631, !"gsi_start_bb"}
!632 = !{!"branch_weights", i32 302915, i32 897674}
!633 = !{!"branch_weights", i32 184968, i32 174063}
!634 = !{!"branch_weights", i32 151, i32 184817}
!635 = !{!"branch_weights", i32 0, i32 184817}
!636 = !{!637, !249, i64 4}
!637 = !{!"VEC_gimple_vec_base", !249, i64 0, !249, i64 4, !245, i64 8}
!638 = !{!637, !249, i64 0}
!639 = !{!"branch_weights", i32 184809, i32 8}
!640 = !{!"branch_weights", i32 155356, i32 29461}
!641 = !{!"branch_weights", i32 29461, i32 0}
!642 = distinct !{!642, !260, !261}
!643 = !{!"branch_weights", i32 179731, i32 5086}
!644 = !{!645, !249, i64 4}
!645 = !{!"VEC_gimple_base", !249, i64 0, !249, i64 4, !245, i64 8}
!646 = !{!645, !249, i64 0}
!647 = !{!"branch_weights", i32 5420, i32 297495}
!648 = !{!"branch_weights", i32 232107, i32 665567}
!649 = !{!"branch_weights", i32 95, i32 962967}
!650 = !{!"branch_weights", i32 628885, i32 334177}
!651 = !{!"branch_weights", i32 40, i32 684195}
!652 = !{!"branch_weights", i32 26, i32 684209}
!653 = !{!"branch_weights", i32 0, i32 26}
!654 = !{!"branch_weights", i32 366864, i32 1151185}
!655 = !{!"branch_weights", i32 0, i32 366864}
!656 = !{!"branch_weights", i32 366864, i32 0}
!657 = !{!"branch_weights", i32 0, i32 1095992, i32 55193}
!658 = !{!"branch_weights", i32 1040859, i32 236707}
!659 = !{!"branch_weights", i32 184977, i32 1092589}
!660 = distinct !{!660, !260, !261}
!661 = !{!"branch_weights", i32 435259, i32 657331}
!662 = !{!663, !244, i64 8}
!663 = !{!"def_optype_d", !244, i64 0, !244, i64 8}
!664 = !{!663, !244, i64 0}
!665 = !{!"branch_weights", i32 235922, i32 856668}
!666 = !{!"branch_weights", i32 69200, i32 787468}
!667 = !{!"branch_weights", i32 651064, i32 205604}
!668 = !{!"branch_weights", i32 657331, i32 199337}
!669 = !{!"branch_weights", i32 0, i32 856668}
!670 = distinct !{!670, !260, !261}
!671 = !{!"branch_weights", i32 489293, i32 603297}
!672 = distinct !{!672, !260, !261}
!673 = !{!"branch_weights", i32 489198, i32 0}
!674 = distinct !{!674, !260, !261}
!675 = !{!"function_entry_count", i64 90266}
!676 = !{!"tree-into-ssa.c;insert_updated_phi_nodes_for"}
!677 = !{!"branch_weights", i32 0, i32 90266}
!678 = !{!"branch_weights", i32 90123, i32 143}
!679 = !{!"branch_weights", i32 0, i32 90123, i32 0}
!680 = !{!"branch_weights", i32 0, i32 90123}
!681 = !{!"branch_weights", i32 273844, i32 271546}
!682 = !{!"branch_weights", i32 455266, i32 1}
!683 = !{!"branch_weights", i32 7694494, i32 455266}
!684 = !{!"branch_weights", i32 1, i32 222335}
!685 = !{!"branch_weights", i32 170828, i32 183721}
!686 = !{!"branch_weights", i32 222335, i32 132214}
!687 = !{!"branch_weights", i32 90123, i32 132213}
!688 = !{!"branch_weights", i32 90123, i32 455267}
!689 = !{!"branch_weights", i32 0, i32 455267}
!690 = !{!"branch_weights", i32 119749, i32 335518}
!691 = distinct !{!691, !260, !261}
!692 = !{!"branch_weights", i32 3359, i32 86907}
!693 = !{!"branch_weights", i32 0, i32 86907}
!694 = !{!"branch_weights", i32 182365, i32 380208}
!695 = !{!"branch_weights", i32 475665, i32 1}
!696 = !{!"branch_weights", i32 4043722, i32 475665}
!697 = !{!"branch_weights", i32 1, i32 130174}
!698 = !{!"branch_weights", i32 77985, i32 95458}
!699 = !{!"branch_weights", i32 130174, i32 43269}
!700 = !{!"branch_weights", i32 86907, i32 43268}
!701 = !{!"branch_weights", i32 86907, i32 475666}
!702 = !{!"branch_weights", i32 0, i32 1880244}
!703 = !{!"branch_weights", i32 475666, i32 1404578}
!704 = !{!"branch_weights", i32 1404578, i32 0}
!705 = !{!"branch_weights", i32 0, i32 1404578}
!706 = distinct !{!706, !260, !261}
!707 = distinct !{!707, !260, !261}
!708 = !{!"function_entry_count", i64 265}
!709 = !{!"tree-into-ssa.c;rewrite_blocks"}
!710 = !{!"branch_weights", i32 265, i32 0}
!711 = !{!"branch_weights", i32 40, i32 225}
!712 = !{!"branch_weights", i32 0, i32 265}
!713 = !{!"function_entry_count", i64 187366}
!714 = !{!"tree-into-ssa.c;mark_def_sites_block"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"gsi_start_bb: argument 0"}
!717 = distinct !{!717, !"gsi_start_bb"}
!718 = !{!"branch_weights", i32 187366, i32 0}
!719 = !{!"branch_weights", i32 40, i32 187326}
!720 = !{!"branch_weights", i32 1, i32 187365}
!721 = !{!"branch_weights", i32 0, i32 403812}
!722 = !{!"branch_weights", i32 403812, i32 0}
!723 = !{!"branch_weights", i32 46360, i32 357452}
!724 = !{!"branch_weights", i32 143462, i32 213990}
!725 = !{!"branch_weights", i32 53349, i32 160641}
!726 = !{!"branch_weights", i32 137716, i32 266096}
!727 = !{!"branch_weights", i32 127304, i32 276508}
!728 = !{!"branch_weights", i32 276508, i32 0}
!729 = !{!"branch_weights", i32 55350, i32 221158}
!730 = !{!"branch_weights", i32 266096, i32 10412}
!731 = !{!"branch_weights", i32 0, i32 276508}
!732 = distinct !{!732, !260, !261}
!733 = !{!"branch_weights", i32 146502, i32 257310}
!734 = !{!"branch_weights", i32 0, i32 257310}
!735 = !{!"branch_weights", i32 188242, i32 69068}
!736 = !{!"branch_weights", i32 148640, i32 255172}
!737 = !{!"branch_weights", i32 255172, i32 0}
!738 = !{!"branch_weights", i32 282724, i32 551116}
!739 = !{!"branch_weights", i32 0, i32 255172}
!740 = distinct !{!740, !260, !261}
!741 = !{!"branch_weights", i32 2962, i32 400850}
!742 = !{!"branch_weights", i32 400850, i32 0}
!743 = !{!"branch_weights", i32 187365, i32 216447}
!744 = distinct !{!744, !260, !261}
!745 = !{!"function_entry_count", i64 107303}
!746 = !{!"tree-into-ssa.c;set_def_block"}
!747 = !{!"branch_weights", i32 626688, i32 207152}
!748 = !{!"tree-into-ssa.c;set_phi_state"}
!749 = !{!"function_entry_count", i64 88582}
!750 = !{!"tree-into-ssa.c;insert_phi_nodes_for"}
!751 = !{!"branch_weights", i32 0, i32 88582}
!752 = !{!"branch_weights", i32 55420, i32 33162}
!753 = !{!"branch_weights", i32 40, i32 33122}
!754 = !{!755, !249, i64 0}
!755 = !{!"dom_dfsnum", !249, i64 0, !249, i64 4}
!756 = !{!755, !249, i64 4}
!757 = !{!"branch_weights", i32 0, i32 33122}
!758 = !{!"branch_weights", i32 102729, i32 514816}
!759 = !{!"branch_weights", i32 584422, i32 1}
!760 = !{!"branch_weights", i32 2089085, i32 584422}
!761 = !{!"branch_weights", i32 1, i32 77517}
!762 = !{!"branch_weights", i32 52307, i32 69607}
!763 = !{!"branch_weights", i32 77517, i32 44397}
!764 = !{!"branch_weights", i32 33122, i32 44396}
!765 = !{!"branch_weights", i32 33122, i32 584423}
!766 = distinct !{!766, !260, !261}
!767 = !{!"branch_weights", i32 33122, i32 0}
!768 = !{!769, !249, i64 0}
!769 = !{!"VEC_int_base", !249, i64 0, !249, i64 4, !245, i64 8}
!770 = !{!"branch_weights", i32 33121, i32 1}
!771 = !{!"branch_weights", i32 584423, i32 584423}
!772 = !{!"branch_weights", i32 232203, i32 936643}
!773 = !{!"branch_weights", i32 33121, i32 1135725}
!774 = distinct !{!774, !260, !261}
!775 = !{!"branch_weights", i32 58926, i32 400694}
!776 = !{!"branch_weights", i32 426497, i32 1}
!777 = !{!"branch_weights", i32 773540, i32 426497}
!778 = !{!"branch_weights", i32 1, i32 38232}
!779 = !{!"branch_weights", i32 17540, i32 25804}
!780 = !{!"branch_weights", i32 38232, i32 5112}
!781 = !{!"branch_weights", i32 33122, i32 5111}
!782 = !{!"branch_weights", i32 33122, i32 426498}
!783 = !{!769, !249, i64 4}
!784 = !{!"branch_weights", i32 820, i32 425678}
!785 = distinct !{!785, !260, !261}
!786 = !{!"branch_weights", i32 0, i32 461469}
!787 = !{!"branch_weights", i32 33122, i32 428347}
!788 = !{!"branch_weights", i32 0, i32 428347}
!789 = distinct !{!789, !260, !261}
!790 = !{!"branch_weights", i32 373552, i32 54795}
!791 = !{!"branch_weights", i32 373551, i32 1}
!792 = !{!"branch_weights", i32 2432143, i32 2509185}
!793 = !{!"branch_weights", i32 4567777, i32 373551}
!794 = distinct !{!794, !260, !261}
!795 = !{!"branch_weights", i32 287662, i32 85890}
!796 = !{!"branch_weights", i32 56116, i32 84569}
!797 = !{!"branch_weights", i32 0, i32 244413}
!798 = !{!"branch_weights", i32 56116, i32 188297}
!799 = !{!"branch_weights", i32 71475, i32 116822}
!800 = !{!"branch_weights", i32 1849, i32 69626}
!801 = !{!"branch_weights", i32 0, i32 1849}
!802 = !{!"branch_weights", i32 7, i32 1842}
!803 = !{!"branch_weights", i32 0, i32 188297}
!804 = !{!"branch_weights", i32 188297, i32 0}
!805 = distinct !{!805, !260, !261}
!806 = !{!"branch_weights", i32 76425, i32 12157}
!807 = !{!"branch_weights", i32 97693, i32 47005}
!808 = !{!"branch_weights", i32 56115, i32 1}
!809 = !{!"branch_weights", i32 461343, i32 56115}
!810 = !{!"branch_weights", i32 1, i32 90124}
!811 = !{!"branch_weights", i32 82557, i32 9111}
!812 = !{!"branch_weights", i32 90124, i32 1544}
!813 = !{!"branch_weights", i32 88582, i32 1543}
!814 = !{!"branch_weights", i32 88582, i32 56116}
!815 = !{!"branch_weights", i32 151, i32 55965}
!816 = !{!817}
!817 = distinct !{!817, !818, !"gsi_start_bb: argument 0"}
!818 = distinct !{!818, !"gsi_start_bb"}
!819 = !{!"branch_weights", i32 14989, i32 41127}
!820 = !{!"branch_weights", i32 0, i32 14989}
!821 = !{!"branch_weights", i32 0, i32 46727}
!822 = !{!"branch_weights", i32 14989, i32 31738}
!823 = !{!"branch_weights", i32 0, i32 31738}
!824 = !{!"branch_weights", i32 31738, i32 0}
!825 = distinct !{!825, !260, !261}
!826 = !{!"branch_weights", i32 41127, i32 0}
!827 = !{!828}
!828 = distinct !{!828, !829, !"gsi_after_labels: argument 0"}
!829 = distinct !{!829, !"gsi_after_labels"}
!830 = !{!831}
!831 = distinct !{!831, !832, !"gsi_start_bb: argument 0"}
!832 = distinct !{!832, !"gsi_start_bb"}
!833 = !{!831, !828}
!834 = !{!835, !244, i64 0}
!835 = !{!"", !244, i64 0, !244, i64 8, !244, i64 16}
!836 = !{!835, !244, i64 8}
!837 = !{!835, !244, i64 16}
!838 = distinct !{!838, !260, !261}
!839 = distinct !{!839, !260, !261}
!840 = !{!"function_entry_count", i64 12394224}
!841 = !{!"tree-into-ssa.c;cmp_dfsnum"}
!842 = !{!"function_entry_count", i64 603469}
!843 = !{!"tree-into-ssa.c;repl_map_hash"}
!844 = !{!"VP", i32 0, i64 603469, i64 6196242093822180960, i64 603469}
!845 = !{!"function_entry_count", i64 562281}
!846 = !{!"tree-into-ssa.c;repl_map_eq"}
!847 = !{!"tree-into-ssa.c;repl_map_free"}
!848 = !{!"function_entry_count", i64 525003}
!849 = !{!"tree-into-ssa.c;mark_def_interesting"}
!850 = !{!"branch_weights", i32 0, i32 525003}
!851 = !{!"branch_weights", i32 53638, i32 471365}
!852 = !{!"branch_weights", i32 207152, i32 626688}
!853 = !{!"branch_weights", i32 180150, i32 291215}
!854 = !{!"branch_weights", i32 0, i32 180150}
!855 = !{!"branch_weights", i32 180150, i32 0}
!856 = !{!"branch_weights", i32 81482, i32 98668}
!857 = !{!"branch_weights", i32 0, i32 98668}
!858 = !{!"branch_weights", i32 156190, i32 49781}
!859 = !{!"branch_weights", i32 107302, i32 1}
!860 = !{!"branch_weights", i32 3278140, i32 107302}
!861 = !{!"branch_weights", i32 1, i32 107301}
!862 = !{!"branch_weights", i32 58414, i32 57522}
!863 = !{!"branch_weights", i32 107301, i32 8635}
!864 = !{!"branch_weights", i32 98668, i32 8634}
!865 = !{!"branch_weights", i32 98668, i32 107303}
!866 = distinct !{!866, !260, !261}
!867 = !{!"function_entry_count", i64 734499}
!868 = !{!"tree-into-ssa.c;mark_use_interesting"}
!869 = !{!870}
!870 = distinct !{!870, !871, !"gsi_start_bb: argument 0"}
!871 = distinct !{!871, !"gsi_start_bb"}
!872 = !{!873}
!873 = distinct !{!873, !874, !"gsi_start_bb: argument 0"}
!874 = distinct !{!874, !"gsi_start_bb"}
!875 = !{!"tree-into-ssa.c;rewrite_enter_block"}
!876 = !{!"branch_weights", i32 0, i32 187366}
!877 = !{!275, !249, i64 4}
!878 = !{!"branch_weights", i32 46, i32 187320}
!879 = !{!"branch_weights", i32 187215, i32 151}
!880 = !{!"branch_weights", i32 0, i32 151}
!881 = !{!"branch_weights", i32 151, i32 0}
!882 = distinct !{!882, !260, !261}
!883 = !{!"branch_weights", i32 62, i32 187304}
!884 = !{!885}
!885 = distinct !{!885, !886, !"gsi_start_bb: argument 0"}
!886 = distinct !{!886, !"gsi_start_bb"}
!887 = !{!"branch_weights", i32 187304, i32 0}
!888 = !{!"branch_weights", i32 0, i32 187304}
!889 = !{!"branch_weights", i32 1, i32 187303}
!890 = !{!"branch_weights", i32 403790, i32 0}
!891 = !{!"branch_weights", i32 2940, i32 400850}
!892 = !{!"branch_weights", i32 134754, i32 266096}
!893 = !{!"branch_weights", i32 0, i32 266096}
!894 = !{!"branch_weights", i32 143462, i32 122634}
!895 = !{!"branch_weights", i32 53349, i32 69285}
!896 = !{!"branch_weights", i32 1, i32 266095}
!897 = !{!"branch_weights", i32 211, i32 1665183}
!898 = !{!"branch_weights", i32 135, i32 76}
!899 = !{!"branch_weights", i32 80, i32 131}
!900 = !{!533, !244, i64 0}
!901 = !{!"branch_weights", i32 10413, i32 266095}
!902 = distinct !{!902, !260, !261}
!903 = !{!"branch_weights", i32 145678, i32 255172}
!904 = !{!"branch_weights", i32 188242, i32 66930}
!905 = !{!"branch_weights", i32 1, i32 255171}
!906 = distinct !{!906, !260, !261}
!907 = !{!"branch_weights", i32 187303, i32 216487}
!908 = distinct !{!908, !260, !261}
!909 = !{!"branch_weights", i32 61, i32 520935}
!910 = !{!"branch_weights", i32 187366, i32 333630}
!911 = !{!312, !244, i64 8}
!912 = !{!"branch_weights", i32 290016, i32 43614}
!913 = !{!"branch_weights", i32 43614, i32 0}
!914 = distinct !{!914, !260, !261}
!915 = !{!"branch_weights", i32 0, i32 333630}
!916 = !{!"branch_weights", i32 333630, i32 0}
!917 = distinct !{!917, !260, !261}
!918 = !{!"tree-into-ssa.c;rewrite_leave_block"}
!919 = !{!"branch_weights", i32 0, i32 333205}
!920 = !{!"branch_weights", i32 187366, i32 145839}
!921 = !{!"branch_weights", i32 48753, i32 97086}
!922 = !{!"branch_weights", i32 0, i32 48753}
!923 = !{!"function_entry_count", i64 1428867}
!924 = !{!"tree-into-ssa.c;rewrite_update_enter_block"}
!925 = !{!"branch_weights", i32 1428867, i32 0}
!926 = !{!"branch_weights", i32 0, i32 1428867}
!927 = !{!"branch_weights", i32 514, i32 1428353}
!928 = !{!"branch_weights", i32 621495, i32 807372}
!929 = !{!"branch_weights", i32 0, i32 2192882}
!930 = !{!"branch_weights", i32 96, i32 2192786}
!931 = !{!"branch_weights", i32 807372, i32 1385510}
!932 = !{!"branch_weights", i32 1385510, i32 0}
!933 = !{!"branch_weights", i32 0, i32 1385510}
!934 = distinct !{!934, !260, !261}
!935 = !{!"branch_weights", i32 545569, i32 261803}
!936 = !{!"branch_weights", i32 46973, i32 214830}
!937 = !{!"branch_weights", i32 88243, i32 126587}
!938 = !{!"branch_weights", i32 0, i32 126587}
!939 = !{!940, !244, i64 8}
!940 = !{!"var_ann_d", !249, i64 0, !249, i64 0, !249, i64 0, !249, i64 0, !249, i64 0, !249, i64 4, !244, i64 8}
!941 = !{!"branch_weights", i32 0, i32 88243}
!942 = !{!"branch_weights", i32 88243, i32 0}
!943 = !{!"branch_weights", i32 35476, i32 52767}
!944 = !{!"branch_weights", i32 0, i32 52767}
!945 = !{!"branch_weights", i32 49471, i32 38772}
!946 = !{!"branch_weights", i32 0, i32 38772}
!947 = !{!"branch_weights", i32 19, i32 38753}
!948 = !{!"branch_weights", i32 214830, i32 0}
!949 = !{!"branch_weights", i32 261803, i32 0}
!950 = distinct !{!950, !260, !261}
!951 = !{!"branch_weights", i32 0, i32 807372}
!952 = !{!953}
!953 = distinct !{!953, !954, !"gsi_start_bb: argument 0"}
!954 = distinct !{!954, !"gsi_start_bb"}
!955 = !{!"branch_weights", i32 96, i32 807276}
!956 = !{!"branch_weights", i32 1, i32 807371}
!957 = !{!"branch_weights", i32 902636, i32 886036}
!958 = !{!"branch_weights", i32 886036, i32 0}
!959 = !{!"branch_weights", i32 26077, i32 859959}
!960 = !{!"branch_weights", i32 0, i32 859959}
!961 = distinct !{!961, !260, !261}
!962 = !{!"branch_weights", i32 1, i32 859958}
!963 = !{!"branch_weights", i32 160965, i32 1091091}
!964 = !{!"branch_weights", i32 785966, i32 466090}
!965 = !{!"branch_weights", i32 0, i32 785966}
!966 = !{!"branch_weights", i32 785966, i32 0}
!967 = !{!"branch_weights", i32 354382, i32 431584}
!968 = !{!"branch_weights", i32 853989, i32 398067}
!969 = !{!"branch_weights", i32 160965, i32 237102}
!970 = !{!"branch_weights", i32 398067, i32 0}
!971 = !{!"branch_weights", i32 859959, i32 392097}
!972 = !{!"branch_weights", i32 392098, i32 859958}
!973 = distinct !{!973, !260, !261}
!974 = !{!"branch_weights", i32 514454, i32 371582}
!975 = !{!"branch_weights", i32 0, i32 371582}
!976 = !{!"branch_weights", i32 5880, i32 365702}
!977 = !{!"branch_weights", i32 1, i32 371581}
!978 = !{!"branch_weights", i32 69200, i32 500199}
!979 = !{!"branch_weights", i32 363795, i32 205604}
!980 = !{!"branch_weights", i32 69200, i32 136404}
!981 = !{!"branch_weights", i32 69200, i32 0}
!982 = distinct !{!982, !260, !261}
!983 = !{!515, !244, i64 8}
!984 = !{!"branch_weights", i32 0, i32 205604}
!985 = !{!"branch_weights", i32 259, i32 205345}
!986 = !{!"branch_weights", i32 0, i32 363795}
!987 = !{!"branch_weights", i32 363795, i32 0}
!988 = !{!"branch_weights", i32 275939, i32 87856}
!989 = !{!"branch_weights", i32 0, i32 87856}
!990 = !{!"branch_weights", i32 294413, i32 69382}
!991 = !{!"branch_weights", i32 0, i32 69382}
!992 = !{!"branch_weights", i32 29, i32 69353}
!993 = !{!"branch_weights", i32 365702, i32 203697}
!994 = !{!"branch_weights", i32 197818, i32 371581}
!995 = distinct !{!995, !260, !261}
!996 = !{!"branch_weights", i32 807371, i32 981301}
!997 = distinct !{!997, !260, !261}
!998 = !{!"branch_weights", i32 65, i32 2319546}
!999 = !{!"branch_weights", i32 807372, i32 1512239}
!1000 = !{!"branch_weights", i32 1053309, i32 458930}
!1001 = !{!"branch_weights", i32 0, i32 929194}
!1002 = !{!"branch_weights", i32 470264, i32 458930}
!1003 = !{!"branch_weights", i32 458930, i32 470264}
!1004 = !{!"branch_weights", i32 0, i32 470264}
!1005 = !{!312, !249, i64 44}
!1006 = !{!"branch_weights", i32 112945, i32 357319}
!1007 = !{!"branch_weights", i32 356930, i32 389}
!1008 = !{!"branch_weights", i32 8927, i32 348003}
!1009 = !{!"branch_weights", i32 131444, i32 225486}
!1010 = !{!"branch_weights", i32 0, i32 131444}
!1011 = !{!"branch_weights", i32 131444, i32 0}
!1012 = !{!"branch_weights", i32 22277, i32 109167}
!1013 = !{!"branch_weights", i32 22277, i32 447598}
!1014 = !{!"branch_weights", i32 447598, i32 0}
!1015 = !{!"branch_weights", i32 121872, i32 325726}
!1016 = !{!"branch_weights", i32 247016, i32 200582}
!1017 = !{!"branch_weights", i32 41349, i32 205667}
!1018 = !{!"branch_weights", i32 0, i32 447598}
!1019 = !{!1020, !249, i64 40}
!1020 = !{!"phi_arg_d", !533, i64 0, !244, i64 32, !249, i64 40}
!1021 = !{!"branch_weights", i32 469875, i32 0}
!1022 = distinct !{!1022, !260, !261}
!1023 = !{!"branch_weights", i32 0, i32 1512239}
!1024 = !{!"branch_weights", i32 1512239, i32 0}
!1025 = distinct !{!1025, !260, !261}
!1026 = !{!"tree-into-ssa.c;rewrite_update_leave_block"}
!1027 = !{!"branch_weights", i32 0, i32 2018470}
!1028 = !{!"branch_weights", i32 1428867, i32 589603}
!1029 = !{!"function_entry_count", i64 255323}
!1030 = !{!"tree-into-ssa.c;register_new_def"}
!1031 = !{!"branch_weights", i32 109484, i32 145839}
!1032 = !{!"branch_weights", i32 97086, i32 48753}
!1033 = !{!"branch_weights", i32 0, i32 145839}
!1034 = !{!"branch_weights", i32 60, i32 145779}
!1035 = !{!"function_entry_count", i64 140623}
!1036 = !{!"tree-into-ssa.c;register_new_update_set"}
!1037 = !{!"branch_weights", i32 0, i32 140623}
!1038 = !{!"branch_weights", i32 219421, i32 70460}
!1039 = !{!"branch_weights", i32 149257, i32 1}
!1040 = !{!"branch_weights", i32 4580382, i32 149257}
!1041 = !{!"branch_weights", i32 1, i32 149256}
!1042 = !{!"branch_weights", i32 79093, i32 78798}
!1043 = !{!"branch_weights", i32 149256, i32 8635}
!1044 = !{!"branch_weights", i32 140623, i32 8634}
!1045 = !{!"branch_weights", i32 140623, i32 149258}
!1046 = !{!"branch_weights", i32 0, i32 149258}
!1047 = !{!"branch_weights", i32 85, i32 149173}
!1048 = distinct !{!1048, !260, !261}
