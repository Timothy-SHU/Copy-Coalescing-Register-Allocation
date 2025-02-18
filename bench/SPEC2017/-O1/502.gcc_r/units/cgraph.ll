; ModuleID = 'cgraph.c'
source_filename = "cgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_edge_hook_list = type { ptr, ptr, ptr }
%struct.cgraph_node_hook_list = type { ptr, ptr, ptr }
%struct.cgraph_2edge_hook_list = type { ptr, ptr, ptr }
%struct.cgraph_2node_hook_list = type { ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.cgraph_asm_node = type { ptr, ptr, i32 }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cgraph_global_info_ready = dso_local local_unnamed_addr global i8 0, align 1
@cgraph_state = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_function_flags_ready = dso_local local_unnamed_addr global i8 0, align 1
@first_cgraph_edge_removal_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_node_removal_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_function_insertion_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_edge_duplicated_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_node_duplicated_hook = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"cgraph.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_hash = internal global ptr null, align 8
@assembler_name_hash = internal global ptr null, align 8
@cgraph_nodes = dso_local local_unnamed_addr global ptr null, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@free_edges = internal global ptr null, align 8
@cgraph_edge_max_uid = dso_local local_unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@free_nodes = internal global ptr null, align 8
@cgraph_n_nodes = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_nodes_queue = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_inline_failed_string.cif_string_table = internal unnamed_addr constant [19 x ptr] [ptr null, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 16
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"function not considered for inlining\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"function body not available\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"redefined extern inline functions are not considered for inlining\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"function not inlinable\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"function not inline candidate\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"--param large-function-growth limit reached\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"--param large-stack-frame-growth limit reached\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"--param max-inline-insns-single limit reached\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"--param max-inline-insns-auto limit reached\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"--param inline-unit-growth limit reached\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"recursive inlining\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"call is unlikely and code size would grow\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"function not declared inline and code size would grow\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"optimizing for size and code size would grow\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"target specific option mismatch\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"mismatched arguments\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"originally indirect function call not considered for inlining\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"not_available\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"overwritable\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@cgraph_availability_names = dso_local local_unnamed_addr constant [5 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 16
@.str.25 = private unnamed_addr constant [10 x i8] c"%s/%i(%i)\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c" @\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" (inline copy in %s/%i)\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c" (clone of %s/%i)\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" executed %ldx\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c" %i time, %i benefit\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c" (%i after inlining)\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c" %i size, %i benefit\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c" %i bytes stack usage\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c" %i bytes after inlining\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c" nested in: %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c" address_taken\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" reachable\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" body\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c" process\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" local\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c" always_inline\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c" inlinable\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c" redefined_extern_inline\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c" asm_written\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"\0A  called by: \00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"%s/%i \00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"(%ldx) \00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"(%.2f per call) \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"(inlined) \00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"(indirect) \00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"(can throw external) \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"\0A  calls: \00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"(nested in %i loops) \00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"  aliases & thunks:\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c" %s/%i\00", align 1
@.str.61 = private unnamed_addr constant [68 x i8] c" (thunk of %s fixed ofset %i virtual value %i has virtual offset %i\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.63 = private unnamed_addr constant [13 x i8] c"callgraph:\0A\0A\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.64 = private unnamed_addr constant [46 x i8] c"%D renamed after being referenced in assembly\00", align 1
@cgraph_order = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_asm_nodes = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_asm_last_node = internal global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@cgraph_new_nodes = dso_local local_unnamed_addr global ptr null, align 8
@pass_early_local_passes = external local_unnamed_addr global %struct.simple_ipa_opt_pass, align 8
@gt_ggc_r_gt_cgraph_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @free_edges, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_edge, ptr @gt_pch_nx_cgraph_edge }, %struct.ggc_root_tab { ptr @free_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @cgraph_asm_last_node, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_asm_node, ptr @gt_pch_nx_cgraph_asm_node }, %struct.ggc_root_tab { ptr @assembler_name_hash, i64 1, i64 8, ptr @gt_ggc_m_P11cgraph_node4htab, ptr @gt_pch_n_P11cgraph_node4htab }, %struct.ggc_root_tab { ptr @cgraph_hash, i64 1, i64 8, ptr @gt_ggc_m_P11cgraph_node4htab, ptr @gt_pch_n_P11cgraph_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@clone_fn_id_num = internal global i32 0, align 4
@gt_pch_rs_gt_cgraph_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @clone_fn_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@cgraph_max_uid = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_max_pid = dso_local local_unnamed_addr global i32 0, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.65 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"_clone\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !86 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !87
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !86 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !87
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !86 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !86 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !87
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !86 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !86 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !86 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !86 {
  %2 = load i32, ptr %0, align 8, !tbaa !101
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !86 {
  %2 = load i32, ptr %0, align 8, !tbaa !101
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !86 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !86 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !86 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
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
  br i1 %23, label %7, label %24, !llvm.loop !103

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_add_edge_removal_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !106 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store ptr %0, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !110
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_edge_removal_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !prof !111, !llvm.loop !112

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !87
  ret ptr %3
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_edge_removal_hook(ptr noundef %0) local_unnamed_addr #9 !prof !106 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_edge_removal_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !prof !111, !llvm.loop !113

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  store ptr %9, ptr %3, align 8, !tbaa !87
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_add_node_removal_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !114 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store ptr %0, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !118
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_node_removal_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !prof !119, !llvm.loop !120

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_node_removal_hook(ptr noundef %0) local_unnamed_addr #9 !prof !121 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_node_removal_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !prof !122, !llvm.loop !123

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  store ptr %9, ptr %3, align 8, !tbaa !87
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_add_function_insertion_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !114 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store ptr %0, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !118
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_function_insertion_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !prof !119, !llvm.loop !124

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_function_insertion_hook(ptr noundef %0) local_unnamed_addr #9 !prof !114 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_function_insertion_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !prof !125, !llvm.loop !126

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  store ptr %9, ptr %3, align 8, !tbaa !87
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_call_function_insertion_hooks(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = load ptr, ptr @first_cgraph_function_insertion_hook, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  tail call void %6(ptr noundef %0, ptr noundef %8) #24
  %9 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !127

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_add_edge_duplication_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !106 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store ptr %0, ptr %3, align 8, !tbaa !128
  %4 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !131
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_edge_duplicated_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !prof !111, !llvm.loop !132

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_edge_duplication_hook(ptr noundef %0) local_unnamed_addr #9 !prof !106 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_edge_duplicated_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !prof !111, !llvm.loop !133

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  store ptr %9, ptr %3, align 8, !tbaa !87
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_add_node_duplication_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !114 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store ptr %0, ptr %3, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !137
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_node_duplicated_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !prof !119, !llvm.loop !138

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_node_duplication_hook(ptr noundef %0) local_unnamed_addr #9 !prof !121 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_node_duplicated_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !prof !122, !llvm.loop !139

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  store ptr %9, ptr %3, align 8, !tbaa !87
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cgraph_node(ptr noundef %0) local_unnamed_addr #11 !prof !140 {
  %2 = alloca %struct.cgraph_node, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %2) #24
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6, !prof !141

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 468, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12, !prof !142

10:                                               ; preds = %7
  %11 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_node, ptr noundef nonnull @eq_node, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #24
  store ptr %11, ptr @cgraph_hash, align 8, !tbaa !87
  br label %12

12:                                               ; preds = %10, %7
  store ptr %0, ptr %2, align 8, !tbaa !143
  %13 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %14 = call ptr @htab_find_slot(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 1) #24
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !151

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 27
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 512
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %76, label %22, !prof !152

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !153
  br label %76

25:                                               ; preds = %12
  %26 = load ptr, ptr @free_nodes, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !154

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  store ptr %30, ptr @free_nodes, align 8, !tbaa !87
  br label %36

31:                                               ; preds = %25
  %32 = call ptr @ggc_alloc_cleared_stat(i64 noundef 312) #24
  %33 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !102
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @cgraph_max_uid, align 4, !tbaa !102
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %32, i64 0, i32 24
  store i32 %33, ptr %35, align 8, !tbaa !156
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %26, %28 ], [ %32, %31 ]
  %38 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !87
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !155
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 26
  store i32 -1, ptr %40, align 8, !tbaa !157
  %41 = load i32, ptr @cgraph_order, align 4, !tbaa !102
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr @cgraph_order, align 4, !tbaa !102
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 25
  store i32 %41, ptr %43, align 4, !tbaa !158
  %44 = icmp eq ptr %38, null
  br i1 %44, label %47, label %45, !prof !159

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 4
  store ptr %37, ptr %46, align 8, !tbaa !160
  br label %47

47:                                               ; preds = %36, %45
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 4
  store ptr null, ptr %48, align 8, !tbaa !160
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %49, align 8, !tbaa !161
  store ptr %37, ptr @cgraph_nodes, align 8, !tbaa !87
  %50 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !102
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @cgraph_n_nodes, align 4, !tbaa !102
  store ptr %0, ptr %37, align 8, !tbaa !143
  store ptr %37, ptr %14, align 8, !tbaa !87
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !98
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55, !prof !162

55:                                               ; preds = %47
  %56 = load i64, ptr %53, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 29
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = call ptr @cgraph_node(ptr noundef nonnull %53)
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 5
  store ptr %60, ptr %61, align 8, !tbaa !163
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !164
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %37, i64 0, i32 7
  store ptr %63, ptr %64, align 8, !tbaa !165
  store ptr %37, ptr %62, align 8, !tbaa !164
  br label %65

65:                                               ; preds = %59, %55, %47
  %66 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68, !prof !162

68:                                               ; preds = %65
  %69 = call ptr @decl_assembler_name(ptr noundef nonnull %0) #24
  %70 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %71 = call i32 @decl_assembler_name_hash(ptr noundef %69) #24
  %72 = call ptr @htab_find_slot_with_hash(ptr noundef %70, ptr noundef %69, i32 noundef %71, i32 noundef 1) #24
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store ptr %37, ptr %72, align 8, !tbaa !87
  br label %76

76:                                               ; preds = %65, %75, %68, %17, %22
  %77 = phi ptr [ %24, %22 ], [ %15, %17 ], [ %37, %68 ], [ %37, %75 ], [ %37, %65 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %2) #24
  ret ptr %77
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_node(ptr nocapture noundef readonly %0) #12 !prof !166 !PGOFuncName !167 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !98
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !168 !PGOFuncName !169 {
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = load ptr, ptr %1, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @decl_assembler_name_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @cgraph_same_body_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !86 {
  %3 = tail call fastcc ptr @cgraph_same_body_alias_1(ptr noundef %0, ptr noundef %1)
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @cgraph_same_body_alias_1(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !86 {
  %3 = alloca %struct.cgraph_node, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %3) #24
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 29
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 519, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 29
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #24
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call ptr @cgraph_node(ptr noundef nonnull %1)
  store ptr %0, ptr %3, align 8, !tbaa !143
  %15 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #24
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load ptr, ptr @free_nodes, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !155
  store ptr %24, ptr @free_nodes, align 8, !tbaa !87
  br label %30

25:                                               ; preds = %19
  %26 = call ptr @ggc_alloc_cleared_stat(i64 noundef 312) #24
  %27 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !102
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr @cgraph_max_uid, align 4, !tbaa !102
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 24
  store i32 %27, ptr %29, align 8, !tbaa !156
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi ptr [ %20, %22 ], [ %26, %25 ]
  store ptr %0, ptr %31, align 8, !tbaa !143
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 27
  %33 = load i16, ptr %32, align 4
  %34 = or i16 %33, 512
  store i16 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 13
  store ptr %14, ptr %35, align 8, !tbaa !153
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 4
  store ptr null, ptr %36, align 8, !tbaa !160
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 4
  store ptr %31, ptr %41, align 8, !tbaa !160
  br label %42

42:                                               ; preds = %40, %30
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 3
  store ptr %38, ptr %43, align 8, !tbaa !155
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 22, i32 2
  store ptr %1, ptr %44, align 8, !tbaa !170
  store ptr %31, ptr %37, align 8, !tbaa !153
  store ptr %31, ptr %16, align 8, !tbaa !87
  br label %45

45:                                               ; preds = %13, %42
  %46 = phi ptr [ %31, %42 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %3) #24
  ret ptr %46
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_add_thunk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noundef readnone %5, ptr noundef %6) local_unnamed_addr #9 !prof !86 {
  %8 = tail call ptr @cgraph_get_node(ptr noundef %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @.str.1) #24
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %16, %20
  tail call void @cgraph_remove_node(ptr noundef nonnull %8)
  br label %22

22:                                               ; preds = %21, %7
  %23 = tail call fastcc ptr @cgraph_same_body_alias_1(ptr noundef %0, ptr noundef %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #24
  br label %26

26:                                               ; preds = %22, %25
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22
  store i64 %3, ptr %27, align 8, !tbaa !171
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 3
  store i8 %2, ptr %28, align 8, !tbaa !172
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 1
  store i64 %4, ptr %29, align 8, !tbaa !173
  %30 = icmp ne ptr %5, null
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 4
  store i8 %31, ptr %32, align 1, !tbaa !174
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 2
  store ptr %6, ptr %33, align 8, !tbaa !170
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 5
  store i8 1, ptr %34, align 2, !tbaa !175
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cgraph_get_node(ptr noundef %0) local_unnamed_addr #13 !prof !176 {
  %2 = alloca %struct.cgraph_node, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %2) #24
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6, !prof !177

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 599, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10, !prof !178

10:                                               ; preds = %7
  store ptr %0, ptr %2, align 8, !tbaa !143
  %11 = call ptr @htab_find_slot(ptr noundef nonnull %8, ptr noundef nonnull %2, i32 noundef 0) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13, !prof !178

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16, !prof !178

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 512
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21, !prof !177

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !153
  br label %24

24:                                               ; preds = %10, %13, %21, %16, %7
  %25 = phi ptr [ null, %7 ], [ %23, %21 ], [ %14, %16 ], [ null, %13 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %2) #24
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_remove_node(ptr noundef %0) local_unnamed_addr #13 !prof !179 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 8, !tbaa !156
  %4 = load ptr, ptr @first_cgraph_node_removal_hook, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !180

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  tail call void %8(ptr noundef %0, ptr noundef %10) #24, !prof !181
  %11 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !prof !182, !llvm.loop !183

14:                                               ; preds = %6, %1
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = icmp eq ptr %16, null
  br i1 %17, label %70, label %18, !prof !185

18:                                               ; preds = %14, %64
  %19 = phi ptr [ %21, %64 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !186
  %22 = load ptr, ptr @first_cgraph_edge_removal_hook, align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24, !prof !111

24:                                               ; preds = %18, %24
  %25 = phi ptr [ %30, %24 ], [ %22, %18 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  tail call void %26(ptr noundef nonnull %19, ptr noundef %28) #24
  %29 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !prof !111, !llvm.loop !188

32:                                               ; preds = %24, %18
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !189
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !190

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !191
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 6
  store ptr %38, ptr %39, align 8, !tbaa !191
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !191
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !192

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %42, i64 0, i32 5
  store ptr %34, ptr %45, align 8, !tbaa !189
  br label %46

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr %33, align 8, !tbaa !189
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53, !prof !190

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !193
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %51, i64 0, i32 1
  store ptr %42, ptr %52, align 8, !tbaa !194
  br label %53

53:                                               ; preds = %49, %46
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !193
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 15
  %57 = load ptr, ptr %56, align 8, !tbaa !195
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59, !prof !196

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !197
  %62 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %63 = tail call i32 %62(ptr noundef %61) #24, !prof !198
  tail call void @htab_remove_elt_with_hash(ptr noundef nonnull %57, ptr noundef %61, i32 noundef %63) #24
  br label %64

64:                                               ; preds = %59, %53
  %65 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 12
  %66 = load i32, ptr %65, align 4, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %19, i8 0, i64 96, i1 false)
  store i32 %66, ptr %65, align 4, !tbaa !199
  %67 = load ptr, ptr @free_edges, align 8, !tbaa !87
  %68 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !200
  store ptr %19, ptr @free_edges, align 8, !tbaa !87
  %69 = icmp eq ptr %21, null
  br i1 %69, label %70, label %18, !prof !201, !llvm.loop !202

70:                                               ; preds = %64, %14
  store ptr null, ptr %15, align 8, !tbaa !184
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !194
  %73 = icmp eq ptr %72, null
  br i1 %73, label %114, label %74, !prof !203

74:                                               ; preds = %70, %109
  %75 = phi ptr [ %77, %109 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.cgraph_edge, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !191
  %78 = load ptr, ptr @first_cgraph_edge_removal_hook, align 8, !tbaa !87
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80, !prof !111

80:                                               ; preds = %74, %80
  %81 = phi ptr [ %86, %80 ], [ %78, %74 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !107
  %83 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %81, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !109
  tail call void %82(ptr noundef nonnull %75, ptr noundef %84) #24
  %85 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %81, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !87
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %80, !prof !111, !llvm.loop !188

88:                                               ; preds = %80, %74
  %89 = getelementptr inbounds %struct.cgraph_edge, ptr %75, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !200
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92, !prof !204

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.cgraph_edge, ptr %75, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !186
  %95 = getelementptr inbounds %struct.cgraph_edge, ptr %90, i64 0, i32 4
  store ptr %94, ptr %95, align 8, !tbaa !186
  br label %96

96:                                               ; preds = %92, %88
  %97 = getelementptr inbounds %struct.cgraph_edge, ptr %75, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !186
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !205

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cgraph_edge, ptr %98, i64 0, i32 3
  store ptr %90, ptr %101, align 8, !tbaa !200
  br label %102

102:                                              ; preds = %100, %96
  %103 = load ptr, ptr %89, align 8, !tbaa !200
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109, !prof !204

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.cgraph_edge, ptr %75, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !206
  %108 = getelementptr inbounds %struct.cgraph_node, ptr %107, i64 0, i32 2
  store ptr %98, ptr %108, align 8, !tbaa !184
  br label %109

109:                                              ; preds = %105, %102
  %110 = getelementptr inbounds %struct.cgraph_edge, ptr %75, i64 0, i32 12
  %111 = load i32, ptr %110, align 4, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %75, i8 0, i64 96, i1 false)
  store i32 %111, ptr %110, align 4, !tbaa !199
  %112 = load ptr, ptr @free_edges, align 8, !tbaa !87
  store ptr %112, ptr %89, align 8, !tbaa !200
  store ptr %75, ptr @free_edges, align 8, !tbaa !87
  %113 = icmp eq ptr %77, null
  br i1 %113, label %114, label %74, !prof !207, !llvm.loop !208

114:                                              ; preds = %109, %70
  store ptr null, ptr %71, align 8, !tbaa !194
  %115 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %116 = load ptr, ptr %115, align 8, !tbaa !195
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118, !prof !209

118:                                              ; preds = %114
  tail call void @htab_delete(ptr noundef nonnull %116) #24
  store ptr null, ptr %115, align 8, !tbaa !195
  br label %119

119:                                              ; preds = %114, %118
  %120 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 17
  %121 = load ptr, ptr %120, align 8, !tbaa !87
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123, !prof !210

123:                                              ; preds = %119
  tail call void @free(ptr noundef %121)
  br label %124

124:                                              ; preds = %119, %123
  store ptr null, ptr %120, align 8, !tbaa !87
  %125 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %126 = load i16, ptr %125, align 4
  %127 = and i16 %126, -10
  store i16 %127, ptr %125, align 4
  %128 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !87
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131, !prof !111

131:                                              ; preds = %124, %131
  %132 = phi ptr [ %135, %131 ], [ %129, %124 ]
  %133 = getelementptr inbounds %struct.cgraph_node, ptr %132, i64 0, i32 5
  store ptr null, ptr %133, align 8, !tbaa !163
  %134 = getelementptr inbounds %struct.cgraph_node, ptr %132, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !87
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %131, !prof !111, !llvm.loop !211

137:                                              ; preds = %131, %124
  store ptr null, ptr %128, align 8, !tbaa !164
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !163
  %140 = icmp eq ptr %139, null
  br i1 %140, label %151, label %141, !prof !212

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.cgraph_node, ptr %139, i64 0, i32 6
  br label %143

143:                                              ; preds = %143, %141
  %144 = phi ptr [ %142, %141 ], [ %147, %143 ]
  %145 = load ptr, ptr %144, align 8, !tbaa !87
  %146 = icmp eq ptr %145, %0
  %147 = getelementptr inbounds %struct.cgraph_node, ptr %145, i64 0, i32 7
  br i1 %146, label %148, label %143, !llvm.loop !213

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !165
  store ptr %150, ptr %144, align 8, !tbaa !87
  br label %151

151:                                              ; preds = %148, %137
  %152 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !160
  %154 = icmp eq ptr %153, null
  %155 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !155
  %157 = getelementptr inbounds %struct.cgraph_node, ptr %153, i64 0, i32 3
  %158 = select i1 %154, ptr @cgraph_nodes, ptr %157, !prof !214
  store ptr %156, ptr %158, align 8, !tbaa !87
  %159 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !155
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162, !prof !215

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.cgraph_node, ptr %160, i64 0, i32 4
  store ptr %153, ptr %163, align 8, !tbaa !160
  br label %164

164:                                              ; preds = %162, %151
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, i8 0, i64 16, i1 false)
  %165 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %166 = tail call ptr @htab_find_slot(ptr noundef %165, ptr noundef %0, i32 noundef 0) #24
  %167 = load ptr, ptr %166, align 8, !tbaa !87
  %168 = icmp eq ptr %167, %0
  br i1 %168, label %169, label %246, !prof !216

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %171 = load ptr, ptr %170, align 8, !tbaa !87
  %172 = icmp eq ptr %171, null
  br i1 %172, label %244, label %173, !prof !217

173:                                              ; preds = %169, %178
  %174 = phi ptr [ %180, %178 ], [ %171, %169 ]
  %175 = load ptr, ptr %0, align 8, !tbaa !143
  %176 = load ptr, ptr %174, align 8, !tbaa !143
  %177 = icmp eq ptr %176, %175
  br i1 %177, label %182, label %178, !prof !218

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 9
  %180 = load ptr, ptr %179, align 8, !tbaa !87
  %181 = icmp eq ptr %180, null
  br i1 %181, label %244, label %173, !prof !218, !llvm.loop !219

182:                                              ; preds = %173
  store ptr %174, ptr %166, align 8, !tbaa !87
  %183 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 9
  %184 = load ptr, ptr %183, align 8, !tbaa !220
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186, !prof !221

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 10
  %188 = load ptr, ptr %187, align 8, !tbaa !222
  %189 = getelementptr inbounds %struct.cgraph_node, ptr %184, i64 0, i32 10
  store ptr %188, ptr %189, align 8, !tbaa !222
  br label %190

190:                                              ; preds = %186, %182
  %191 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 10
  %192 = load ptr, ptr %191, align 8, !tbaa !222
  %193 = icmp eq ptr %192, null
  %194 = load ptr, ptr %170, align 8, !tbaa !223
  %195 = icmp eq ptr %194, %174
  br i1 %193, label %202, label %196, !prof !218

196:                                              ; preds = %190
  br i1 %195, label %197, label %198

197:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1349, ptr noundef nonnull @.str.1) #24
  br label %198

198:                                              ; preds = %196, %197
  %199 = load ptr, ptr %183, align 8, !tbaa !220
  %200 = load ptr, ptr %191, align 8, !tbaa !222
  %201 = getelementptr inbounds %struct.cgraph_node, ptr %200, i64 0, i32 9
  store ptr %199, ptr %201, align 8, !tbaa !220
  br label %206

202:                                              ; preds = %190
  br i1 %195, label %204, label %203, !prof !218

203:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1355, ptr noundef nonnull @.str.1) #24
  br label %204

204:                                              ; preds = %202, %203
  %205 = load ptr, ptr %183, align 8, !tbaa !220
  store ptr %205, ptr %170, align 8, !tbaa !223
  br label %206

206:                                              ; preds = %204, %198
  %207 = load ptr, ptr %170, align 8, !tbaa !223
  store ptr null, ptr %170, align 8, !tbaa !223
  %208 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 21
  %209 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %208, ptr noundef nonnull align 8 dereferenceable(24) %209, i64 24, i1 false), !tbaa.struct !224
  %210 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %211 = load ptr, ptr %210, align 8, !tbaa !225
  %212 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 12
  store ptr %211, ptr %212, align 8, !tbaa !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %183, i8 0, i64 16, i1 false)
  %213 = load ptr, ptr %210, align 8, !tbaa !225
  %214 = icmp eq ptr %213, null
  br i1 %214, label %222, label %215, !prof !218

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.cgraph_node, ptr %213, i64 0, i32 11
  %217 = load ptr, ptr %216, align 8, !tbaa !223
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.cgraph_node, ptr %217, i64 0, i32 10
  store ptr %174, ptr %220, align 8, !tbaa !222
  br label %221

221:                                              ; preds = %219, %215
  store ptr %217, ptr %183, align 8, !tbaa !220
  store ptr %174, ptr %216, align 8, !tbaa !223
  br label %222

222:                                              ; preds = %221, %206
  %223 = icmp eq ptr %207, null
  br i1 %223, label %246, label %224, !prof !221

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 11
  %226 = load ptr, ptr %225, align 8, !tbaa !223
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229, !prof !226

228:                                              ; preds = %224
  store ptr %207, ptr %225, align 8, !tbaa !223
  br label %237

229:                                              ; preds = %224, %229
  %230 = phi ptr [ %232, %229 ], [ %226, %224 ]
  %231 = getelementptr inbounds %struct.cgraph_node, ptr %230, i64 0, i32 9
  %232 = load ptr, ptr %231, align 8, !tbaa !220
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %229, !llvm.loop !227

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.cgraph_node, ptr %230, i64 0, i32 9
  store ptr %207, ptr %235, align 8, !tbaa !220
  %236 = getelementptr inbounds %struct.cgraph_node, ptr %207, i64 0, i32 10
  store ptr %230, ptr %236, align 8, !tbaa !222
  br label %237

237:                                              ; preds = %234, %228
  br label %238

238:                                              ; preds = %237, %238
  %239 = phi ptr [ %242, %238 ], [ %207, %237 ]
  %240 = getelementptr inbounds %struct.cgraph_node, ptr %239, i64 0, i32 12
  store ptr %174, ptr %240, align 8, !tbaa !225
  %241 = getelementptr inbounds %struct.cgraph_node, ptr %239, i64 0, i32 9
  %242 = load ptr, ptr %241, align 8, !tbaa !220
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %238, !prof !228, !llvm.loop !229

244:                                              ; preds = %178, %169
  %245 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  tail call void @htab_clear_slot(ptr noundef %245, ptr noundef nonnull %166) #24
  br label %246

246:                                              ; preds = %238, %222, %244, %164
  %247 = phi i1 [ true, %164 ], [ false, %244 ], [ true, %222 ], [ true, %238 ]
  %248 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 10
  %249 = load ptr, ptr %248, align 8, !tbaa !222
  %250 = icmp eq ptr %249, null
  br i1 %250, label %255, label %251, !prof !230

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %253 = load ptr, ptr %252, align 8, !tbaa !220
  %254 = getelementptr inbounds %struct.cgraph_node, ptr %249, i64 0, i32 9
  store ptr %253, ptr %254, align 8, !tbaa !220
  br label %263

255:                                              ; preds = %246
  %256 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %257 = load ptr, ptr %256, align 8, !tbaa !225
  %258 = icmp eq ptr %257, null
  br i1 %258, label %263, label %259, !prof !231

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %261 = load ptr, ptr %260, align 8, !tbaa !220
  %262 = getelementptr inbounds %struct.cgraph_node, ptr %257, i64 0, i32 11
  store ptr %261, ptr %262, align 8, !tbaa !223
  br label %263

263:                                              ; preds = %255, %259, %251
  %264 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %265 = load ptr, ptr %264, align 8, !tbaa !220
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267, !prof !216

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.cgraph_node, ptr %265, i64 0, i32 10
  store ptr %249, ptr %268, align 8, !tbaa !222
  br label %269

269:                                              ; preds = %267, %263
  %270 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %271 = load ptr, ptr %270, align 8, !tbaa !223
  %272 = icmp eq ptr %271, null
  br i1 %272, label %307, label %273, !prof !232

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %275 = load ptr, ptr %274, align 8, !tbaa !225
  %276 = icmp eq ptr %275, null
  br i1 %276, label %301, label %277, !prof !233

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.cgraph_node, ptr %271, i64 0, i32 9
  %279 = load ptr, ptr %278, align 8, !tbaa !220
  %280 = icmp eq ptr %279, null
  br i1 %280, label %289, label %281, !prof !234

281:                                              ; preds = %277, %281
  %282 = phi ptr [ %287, %281 ], [ %279, %277 ]
  %283 = phi ptr [ %282, %281 ], [ %271, %277 ]
  %284 = load ptr, ptr %274, align 8, !tbaa !225
  %285 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 12
  store ptr %284, ptr %285, align 8, !tbaa !225
  %286 = getelementptr inbounds %struct.cgraph_node, ptr %282, i64 0, i32 9
  %287 = load ptr, ptr %286, align 8, !tbaa !220
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %281, !prof !235, !llvm.loop !236

289:                                              ; preds = %281, %277
  %290 = phi ptr [ %271, %277 ], [ %282, %281 ]
  %291 = getelementptr inbounds %struct.cgraph_node, ptr %290, i64 0, i32 9
  %292 = load ptr, ptr %274, align 8, !tbaa !225
  %293 = getelementptr inbounds %struct.cgraph_node, ptr %290, i64 0, i32 12
  store ptr %292, ptr %293, align 8, !tbaa !225
  %294 = load ptr, ptr %274, align 8, !tbaa !225
  %295 = getelementptr inbounds %struct.cgraph_node, ptr %294, i64 0, i32 11
  %296 = load ptr, ptr %295, align 8, !tbaa !223
  store ptr %296, ptr %291, align 8, !tbaa !220
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298, !prof !233

298:                                              ; preds = %289
  %299 = getelementptr inbounds %struct.cgraph_node, ptr %296, i64 0, i32 10
  store ptr %290, ptr %299, align 8, !tbaa !222
  br label %300

300:                                              ; preds = %298, %289
  store ptr %271, ptr %295, align 8, !tbaa !223
  br label %307

301:                                              ; preds = %273, %301
  %302 = phi ptr [ %304, %301 ], [ %271, %273 ]
  %303 = getelementptr inbounds %struct.cgraph_node, ptr %302, i64 0, i32 9
  %304 = load ptr, ptr %303, align 8, !tbaa !220
  %305 = getelementptr inbounds %struct.cgraph_node, ptr %302, i64 0, i32 12
  store ptr null, ptr %305, align 8, !tbaa !225
  %306 = icmp eq ptr %304, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %303, i8 0, i64 16, i1 false)
  br i1 %306, label %307, label %301, !llvm.loop !237

307:                                              ; preds = %301, %300, %269
  %308 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %309 = load ptr, ptr %308, align 8, !tbaa !153
  %310 = icmp eq ptr %309, null
  br i1 %310, label %315, label %311, !prof !111

311:                                              ; preds = %307, %311
  %312 = phi ptr [ %313, %311 ], [ %309, %307 ]
  tail call void @cgraph_remove_same_body_alias(ptr noundef nonnull %312)
  %313 = load ptr, ptr %308, align 8, !tbaa !153
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %311, !prof !111, !llvm.loop !238

315:                                              ; preds = %311, %307
  %316 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 14
  %317 = load ptr, ptr %316, align 8, !tbaa !239
  %318 = icmp eq ptr %317, null
  br i1 %318, label %328, label %319, !prof !212

319:                                              ; preds = %315, %319
  %320 = phi ptr [ %322, %319 ], [ %317, %315 ]
  %321 = getelementptr inbounds %struct.cgraph_node, ptr %320, i64 0, i32 14
  %322 = load ptr, ptr %321, align 8, !tbaa !239
  %323 = icmp eq ptr %322, %0
  br i1 %323, label %324, label %319, !llvm.loop !240

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.cgraph_node, ptr %320, i64 0, i32 14
  %326 = icmp eq ptr %317, %320
  %327 = select i1 %326, ptr null, ptr %317
  store ptr %327, ptr %325, align 8, !tbaa !239
  store ptr null, ptr %316, align 8, !tbaa !239
  br label %328

328:                                              ; preds = %324, %315
  br i1 %247, label %329, label %358, !prof !241

329:                                              ; preds = %328
  %330 = load ptr, ptr %166, align 8, !tbaa !87
  %331 = icmp eq ptr %330, null
  br i1 %331, label %358, label %332, !prof !242

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.cgraph_node, ptr %330, i64 0, i32 11
  %334 = load ptr, ptr %333, align 8, !tbaa !223
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %358, !prof !243

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.cgraph_node, ptr %330, i64 0, i32 12
  %338 = load ptr, ptr %337, align 8, !tbaa !225
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %358, !prof !125

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.cgraph_node, ptr %330, i64 0, i32 19, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !244
  %343 = icmp eq ptr %342, null
  %344 = load i8, ptr @cgraph_global_info_ready, align 1
  %345 = icmp ne i8 %344, 0
  %346 = select i1 %343, i1 %345, i1 false, !prof !245
  br i1 %346, label %347, label %358, !prof !245

347:                                              ; preds = %340
  %348 = load ptr, ptr %330, align 8, !tbaa !143
  %349 = load i64, ptr %348, align 8
  %350 = and i64 %349, 4194304
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.tree_decl_common, ptr %348, i64 0, i32 2
  %354 = load i64, ptr %353, align 8
  %355 = and i64 %354, 33554432
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %352, %347
  br label %358

358:                                              ; preds = %332, %336, %340, %352, %357, %329, %328
  %359 = phi i1 [ false, %328 ], [ true, %329 ], [ true, %332 ], [ true, %336 ], [ false, %357 ], [ true, %352 ], [ true, %340 ]
  %360 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %361 = icmp eq ptr %360, null
  br i1 %361, label %374, label %362, !prof !212

362:                                              ; preds = %358
  %363 = load ptr, ptr %0, align 8, !tbaa !143
  %364 = tail call ptr @decl_assembler_name(ptr noundef %363) #24
  %365 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %366 = tail call i32 @decl_assembler_name_hash(ptr noundef %364) #24
  %367 = tail call ptr @htab_find_slot_with_hash(ptr noundef %365, ptr noundef %364, i32 noundef %366, i32 noundef 0) #24
  %368 = icmp eq ptr %367, null
  br i1 %368, label %374, label %369

369:                                              ; preds = %362
  %370 = load ptr, ptr %367, align 8, !tbaa !87
  %371 = icmp eq ptr %370, %0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  tail call void @htab_clear_slot(ptr noundef %373, ptr noundef nonnull %367) #24
  br label %374

374:                                              ; preds = %362, %369, %372, %358
  br i1 %359, label %376, label %375, !prof !241

375:                                              ; preds = %374
  tail call void @cgraph_release_function_body(ptr noundef %0)
  br label %376

376:                                              ; preds = %375, %374
  store ptr null, ptr %0, align 8, !tbaa !143
  %377 = load ptr, ptr %115, align 8, !tbaa !195
  %378 = icmp eq ptr %377, null
  br i1 %378, label %380, label %379, !prof !212

379:                                              ; preds = %376
  tail call void @htab_delete(ptr noundef nonnull %377) #24
  store ptr null, ptr %115, align 8, !tbaa !195
  br label %380

380:                                              ; preds = %379, %376
  %381 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !102
  %382 = add nsw i32 %381, -1
  store i32 %382, ptr @cgraph_n_nodes, align 4, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 0, i64 312, i1 false)
  store i32 %3, ptr %2, align 8, !tbaa !156
  %383 = load ptr, ptr @free_nodes, align 8, !tbaa !87
  store ptr %383, ptr %159, align 8, !tbaa !155
  store ptr %0, ptr @free_nodes, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_insert_node_to_hashtable(ptr noundef %0) local_unnamed_addr #9 !prof !106 {
  %2 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %3 = tail call ptr @htab_find_slot(ptr noundef %2, ptr noundef %0, i32 noundef 1) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !111

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr %3, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cgraph_node_for_asm(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_node_by_assembler_name, ptr noundef nonnull @eq_assembler_name, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #24
  store ptr %5, ptr @assembler_name_hash, align 8, !tbaa !87
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %4, %40
  %9 = phi ptr [ %42, %40 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !143
  %15 = tail call ptr @decl_assembler_name(ptr noundef %14) #24
  %16 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %17 = tail call i32 @decl_assembler_name_hash(ptr noundef %15) #24
  %18 = tail call ptr @htab_find_slot_with_hash(ptr noundef %16, ptr noundef %15, i32 noundef %17, i32 noundef 1) #24
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store ptr %9, ptr %18, align 8, !tbaa !87
  br label %22

22:                                               ; preds = %21, %13
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !153
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22, %36
  %27 = phi ptr [ %38, %36 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = tail call ptr @decl_assembler_name(ptr noundef %28) #24
  %30 = tail call i32 @decl_assembler_name_hash(ptr noundef %29) #24
  %31 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %32 = tail call ptr @htab_find_slot_with_hash(ptr noundef %31, ptr noundef %29, i32 noundef %30, i32 noundef 1) #24
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store ptr %27, ptr %32, align 8, !tbaa !87
  br label %36

36:                                               ; preds = %35, %26
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !155
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !llvm.loop !246

40:                                               ; preds = %36, %22, %8
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %8, !llvm.loop !247

44:                                               ; preds = %40, %4, %1
  %45 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %46 = tail call i32 @decl_assembler_name_hash(ptr noundef %0) #24
  %47 = tail call ptr @htab_find_slot_with_hash(ptr noundef %45, ptr noundef %0, i32 noundef %46, i32 noundef 0) #24
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %47, align 8, !tbaa !87
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 27
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, 512
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 13
  %57 = load ptr, ptr %56, align 8, !tbaa !153
  br label %58

58:                                               ; preds = %44, %49, %55
  %59 = phi ptr [ %57, %55 ], [ %50, %49 ], [ null, %44 ]
  ret ptr %59
}

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_node_by_assembler_name(ptr nocapture noundef readonly %0) #9 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = tail call ptr @decl_assembler_name(ptr noundef %2) #24
  %4 = tail call i32 @decl_assembler_name_hash(ptr noundef %3) #24
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define internal i32 @eq_assembler_name(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = tail call zeroext i8 @decl_assembler_name_equal(ptr noundef %3, ptr noundef %1) #24
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cgraph_edge(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !248 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !249

6:                                                ; preds = %2
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %8 = tail call i32 %7(ptr noundef %1) #24, !prof !250
  %9 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %8) #24
  br label %51

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14, !prof !233

14:                                               ; preds = %10, %20
  %15 = phi ptr [ %23, %20 ], [ %12, %10 ]
  %16 = phi i32 [ %21, %20 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %25, label %20, !prof !251

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %16, 1
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14, !prof !252, !llvm.loop !253

25:                                               ; preds = %14, %20
  %26 = phi i32 [ %21, %20 ], [ %16, %14 ]
  %27 = phi ptr [ %23, %20 ], [ %15, %14 ]
  %28 = icmp ugt i32 %26, 100
  br label %29

29:                                               ; preds = %25, %10
  %30 = phi i1 [ false, %10 ], [ %28, %25 ]
  %31 = phi ptr [ %12, %10 ], [ %27, %25 ]
  br i1 %30, label %32, label %51, !prof !254

32:                                               ; preds = %29
  %33 = tail call ptr @htab_create_alloc(i64 noundef 120, ptr noundef nonnull @edge_hash, ptr noundef nonnull @edge_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #24
  store ptr %33, ptr %3, align 8, !tbaa !195
  %34 = load ptr, ptr %11, align 8, !tbaa !87
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36, !prof !255

36:                                               ; preds = %32, %47
  %37 = phi ptr [ %49, %47 ], [ %34, %32 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !195
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %37, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !197
  %41 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %42 = tail call i32 %41(ptr noundef %40) #24, !prof !256
  %43 = tail call ptr @htab_find_slot_with_hash(ptr noundef %38, ptr noundef %40, i32 noundef %42, i32 noundef 1) #24
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !257

46:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #24
  br label %47

47:                                               ; preds = %36, %46
  store ptr %37, ptr %43, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.cgraph_edge, ptr %37, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !prof !258, !llvm.loop !259

51:                                               ; preds = %47, %32, %29, %6
  %52 = phi ptr [ %9, %6 ], [ %31, %29 ], [ %31, %32 ], [ %31, %47 ]
  ret ptr %52
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @edge_hash(ptr nocapture noundef readonly %0) #11 !prof !260 !PGOFuncName !261 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = tail call i32 %2(ptr noundef %4) #24, !prof !262
  ret i32 %5
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @edge_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #14 !prof !263 !PGOFuncName !264 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_set_call_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !265 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !266

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %12 = tail call i32 %11(ptr noundef %10) #24
  tail call void @htab_remove_elt_with_hash(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %12) #24
  br label %13

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  store ptr %1, ptr %14, align 8, !tbaa !197
  %15 = load ptr, ptr %3, align 8, !tbaa !193
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  tail call void @push_cfun(ptr noundef %18) #24
  %19 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %1) #24
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %21 = load i8, ptr %20, align 2
  %22 = shl i8 %19, 2
  %23 = and i8 %22, 4
  %24 = and i8 %21, -5
  %25 = or disjoint i8 %24, %23
  store i8 %25, ptr %20, align 2
  tail call void @pop_cfun() #24
  %26 = load ptr, ptr %3, align 8, !tbaa !193
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !195
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30, !prof !266

30:                                               ; preds = %13
  %31 = load ptr, ptr %14, align 8, !tbaa !197
  %32 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %33 = tail call i32 %32(ptr noundef %31) #24
  %34 = tail call ptr @htab_find_slot_with_hash(ptr noundef nonnull %28, ptr noundef %31, i32 noundef %33, i32 noundef 1) #24
  %35 = load ptr, ptr %34, align 8, !tbaa !87
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 793, ptr noundef nonnull @.str.1) #24
  br label %38

38:                                               ; preds = %30, %37
  store ptr %0, ptr %34, align 8, !tbaa !87
  br label %39

39:                                               ; preds = %38, %13
  ret void
}

declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_set_call_stmt_including_clones(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !114 {
  %4 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !245

6:                                                ; preds = %3
  tail call void @cgraph_set_call_stmt(ptr noundef nonnull %4, ptr noundef %2)
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !223
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %0
  %12 = or i1 %10, %11
  br i1 %12, label %40, label %13, !prof !267

13:                                               ; preds = %7, %37
  %14 = phi ptr [ %38, %37 ], [ %9, %7 ]
  %15 = tail call ptr @cgraph_edge(ptr noundef %14, ptr noundef %1)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !245

17:                                               ; preds = %13
  tail call void @cgraph_set_call_stmt(ptr noundef nonnull %15, ptr noundef %2)
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !223
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %37, !prof !125

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !220
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %37, !prof !125

26:                                               ; preds = %22
  %27 = icmp eq ptr %14, %0
  br i1 %27, label %37, label %28, !prof !268

28:                                               ; preds = %26, %33
  %29 = phi ptr [ %35, %33 ], [ %14, %26 ]
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !220
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37, !prof !125

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !225
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %28, !prof !269, !llvm.loop !270

37:                                               ; preds = %28, %33, %26, %22, %18
  %38 = phi ptr [ %20, %18 ], [ %24, %22 ], [ %14, %26 ], [ %35, %33 ], [ %31, %28 ]
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %13, !prof !269, !llvm.loop !271

40:                                               ; preds = %37, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_create_edge_including_clones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #9 !prof !86 {
  %9 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %3)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call ptr @cgraph_create_edge(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6)
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 9
  store i32 %7, ptr %13, align 8, !tbaa !272
  br label %14

14:                                               ; preds = %11, %8
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !223
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %53, label %20

20:                                               ; preds = %14, %50
  %21 = phi ptr [ %51, %50 ], [ %16, %14 ]
  %22 = tail call ptr @cgraph_edge(ptr noundef %21, ptr noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @cgraph_set_call_stmt(ptr noundef nonnull %22, ptr noundef %3)
  br label %31

25:                                               ; preds = %20
  %26 = tail call ptr @cgraph_edge(ptr noundef %21, ptr noundef %3)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = tail call ptr @cgraph_create_edge(ptr noundef %21, ptr noundef %1, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6)
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 9
  store i32 %7, ptr %30, align 8, !tbaa !272
  br label %31

31:                                               ; preds = %25, %28, %24
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !223
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !220
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = icmp eq ptr %21, %0
  br i1 %40, label %50, label %41

41:                                               ; preds = %39, %46
  %42 = phi ptr [ %48, %46 ], [ %21, %39 ]
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !220
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !225
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %50, label %41, !llvm.loop !273

50:                                               ; preds = %41, %46, %39, %35, %31
  %51 = phi ptr [ %33, %31 ], [ %37, %35 ], [ %21, %39 ], [ %48, %46 ], [ %44, %41 ]
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %20, !llvm.loop !274

53:                                               ; preds = %50, %14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cgraph_create_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 !prof !275 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8, !prof !276

8:                                                ; preds = %6
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %13, label %12, !prof !277

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 928, ptr noundef nonnull @.str.1) #24
  br label %13

13:                                               ; preds = %12, %8, %6
  %14 = load ptr, ptr @free_edges, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !278

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  store ptr %18, ptr @free_edges, align 8, !tbaa !87
  br label %24

19:                                               ; preds = %13
  %20 = tail call ptr @ggc_alloc_stat(i64 noundef 96) #24
  %21 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !102
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr @cgraph_edge_max_uid, align 4, !tbaa !102
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %20, i64 0, i32 12
  store i32 %21, ptr %23, align 4, !tbaa !199
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %14, %16 ], [ %20, %19 ]
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 8
  store ptr null, ptr %26, align 8, !tbaa !279
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 1
  store ptr %0, ptr %27, align 8, !tbaa !193
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !206
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 7
  store ptr %2, ptr %29, align 8, !tbaa !197
  %30 = load ptr, ptr %0, align 8, !tbaa !143
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  tail call void @push_cfun(ptr noundef %32) #24
  br i1 %7, label %37, label %33, !prof !276

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef nonnull %2) #24
  %35 = shl i8 %34, 2
  %36 = and i8 %35, 4
  br label %37

37:                                               ; preds = %24, %33
  %38 = phi i8 [ %36, %33 ], [ 0, %24 ]
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 14
  %40 = load i8, ptr %39, align 2
  %41 = and i8 %40, -5
  %42 = or disjoint i8 %41, %38
  store i8 %42, ptr %39, align 2
  tail call void @pop_cfun() #24
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 3
  store ptr null, ptr %43, align 8, !tbaa !200
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !184
  %46 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 4
  store ptr %45, ptr %46, align 8, !tbaa !186
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48, !prof !280

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %45, i64 0, i32 3
  store ptr %25, ptr %49, align 8, !tbaa !200
  br label %50

50:                                               ; preds = %48, %37
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 5
  store ptr null, ptr %51, align 8, !tbaa !189
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !194
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 6
  store ptr %53, ptr %54, align 8, !tbaa !191
  %55 = icmp eq ptr %53, null
  br i1 %55, label %58, label %56, !prof !281

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 5
  store ptr %25, ptr %57, align 8, !tbaa !189
  br label %58

58:                                               ; preds = %56, %50
  store ptr %25, ptr %52, align 8, !tbaa !194
  store ptr %25, ptr %44, align 8, !tbaa !184
  store i64 %3, ptr %25, align 8, !tbaa !282
  %59 = icmp sgt i64 %3, -1
  br i1 %59, label %61, label %60, !prof !277

60:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 962, ptr noundef nonnull @.str.1) #24
  br label %61

61:                                               ; preds = %58, %60
  %62 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 11
  store i32 %4, ptr %62, align 8, !tbaa !283
  %63 = icmp sgt i32 %4, -1
  br i1 %63, label %65, label %64, !prof !277

64:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 964, ptr noundef nonnull @.str.1) #24
  br label %65

65:                                               ; preds = %61, %64
  %66 = icmp slt i32 %4, 100001
  br i1 %66, label %68, label %67, !prof !277

67:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @.str.1) #24
  br label %68

68:                                               ; preds = %65, %67
  %69 = trunc i32 %5 to i16
  %70 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 13
  store i16 %69, ptr %70, align 8, !tbaa !284
  %71 = load i8, ptr %39, align 2
  %72 = and i8 %71, -2
  store i8 %72, ptr %39, align 2
  br i1 %7, label %92, label %73, !prof !276

73:                                               ; preds = %68
  %74 = load i32, ptr %2, align 8
  %75 = lshr i32 %74, 15
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 2
  %78 = and i8 %71, -4
  %79 = or disjoint i8 %77, %78
  store i8 %79, ptr %39, align 2
  %80 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %81 = load ptr, ptr %80, align 8, !tbaa !195
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83, !prof !285

83:                                               ; preds = %73
  %84 = load ptr, ptr %29, align 8, !tbaa !197
  %85 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %86 = tail call i32 %85(ptr noundef %84) #24, !prof !286
  %87 = tail call ptr @htab_find_slot_with_hash(ptr noundef nonnull %81, ptr noundef %84, i32 noundef %86, i32 noundef 1) #24
  %88 = load ptr, ptr %87, align 8, !tbaa !87
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90, !prof !287

90:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 978, ptr noundef nonnull @.str.1) #24
  br label %91

91:                                               ; preds = %83, %90
  store ptr %25, ptr %87, align 8, !tbaa !87
  br label %94

92:                                               ; preds = %68
  %93 = and i8 %71, -4
  store i8 %93, ptr %39, align 2
  br label %94

94:                                               ; preds = %92, %91, %73
  %95 = load ptr, ptr %28, align 8, !tbaa !206
  %96 = getelementptr inbounds %struct.cgraph_node, ptr %95, i64 0, i32 27
  %97 = load i16, ptr %96, align 4
  %98 = and i16 %97, 32
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %116, label %100, !prof !288

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %95, i64 0, i32 18, i32 2
  %102 = load i8, ptr %101, align 8
  %103 = and i8 %102, 32
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %116, !prof !289

105:                                              ; preds = %100
  %106 = and i8 %102, 8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %116, label %108, !prof !290

108:                                              ; preds = %105
  %109 = load ptr, ptr %29, align 8, !tbaa !197
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111, !prof !290

111:                                              ; preds = %108
  %112 = load i32, ptr %109, align 8
  %113 = and i32 %112, 65536
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116, !prof !289

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %111, %105, %100, %94, %115
  %117 = phi i32 [ 2, %115 ], [ 3, %94 ], [ 4, %100 ], [ 5, %105 ], [ 17, %111 ]
  %118 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 9
  store i32 %117, ptr %118, align 8, !tbaa !272
  ret ptr %25
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_edge(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = load ptr, ptr @first_cgraph_edge_removal_hook, align 8, !tbaa !87
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  tail call void %6(ptr noundef %0, ptr noundef %8) #24
  %9 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !188

12:                                               ; preds = %4, %1
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !186
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %14, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !186
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !186
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %22, i64 0, i32 3
  store ptr %14, ptr %25, align 8, !tbaa !200
  br label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr %13, align 8, !tbaa !200
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !206
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 2
  store ptr %22, ptr %32, align 8, !tbaa !184
  br label %33

33:                                               ; preds = %26, %29
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !189
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !191
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 6
  store ptr %39, ptr %40, align 8, !tbaa !191
  br label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !191
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cgraph_edge, ptr %43, i64 0, i32 5
  store ptr %35, ptr %46, align 8, !tbaa !189
  br label %47

47:                                               ; preds = %45, %41
  %48 = load ptr, ptr %34, align 8, !tbaa !189
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !193
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 1
  store ptr %43, ptr %53, align 8, !tbaa !194
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !193
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %56, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !195
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !197
  %63 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !87
  %64 = tail call i32 %63(ptr noundef %62) #24
  tail call void @htab_remove_elt_with_hash(ptr noundef nonnull %58, ptr noundef %62, i32 noundef %64) #24
  br label %65

65:                                               ; preds = %54, %60
  %66 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %67 = load i32, ptr %66, align 4, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  store i32 %67, ptr %66, align 4, !tbaa !199
  %68 = load ptr, ptr @free_edges, align 8, !tbaa !87
  store ptr %68, ptr %13, align 8, !tbaa !200
  store ptr %0, ptr @free_edges, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_redirect_edge_callee(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !291 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !292

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !186
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %4, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !186
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !186
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !293

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 3
  store ptr %4, ptr %15, align 8, !tbaa !200
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %3, align 8, !tbaa !200
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23, !prof !292

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 2
  store ptr %12, ptr %22, align 8, !tbaa !184
  br label %23

23:                                               ; preds = %16, %19
  store ptr null, ptr %3, align 8, !tbaa !200
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !294

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 3
  store ptr %0, ptr %28, align 8, !tbaa !200
  br label %29

29:                                               ; preds = %27, %23
  store ptr %25, ptr %11, align 8, !tbaa !186
  store ptr %0, ptr %24, align 8, !tbaa !184
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  store ptr %1, ptr %30, align 8, !tbaa !206
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_update_edges_for_call_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !86 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  %7 = tail call ptr @cgraph_node(ptr noundef %6)
  tail call fastcc void @cgraph_update_edges_for_call_stmt_node(ptr noundef %7, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !223
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %7
  %12 = or i1 %10, %11
  br i1 %12, label %36, label %13

13:                                               ; preds = %3, %33
  %14 = phi ptr [ %34, %33 ], [ %9, %3 ]
  tail call fastcc void @cgraph_update_edges_for_call_stmt_node(ptr noundef %14, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !223
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !220
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = icmp eq ptr %14, %7
  br i1 %23, label %33, label %24

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %31, %29 ], [ %14, %22 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !220
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !225
  %32 = icmp eq ptr %31, %7
  br i1 %32, label %33, label %24, !llvm.loop !297

33:                                               ; preds = %24, %29, %22, %18, %13
  %34 = phi ptr [ %16, %13 ], [ %20, %18 ], [ %14, %22 ], [ %31, %29 ], [ %27, %24 ]
  %35 = icmp eq ptr %34, %7
  br i1 %35, label %36, label %13, !llvm.loop !298

36:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @cgraph_update_edges_for_call_stmt_node(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3) unnamed_addr #9 !prof !86 {
  %5 = load i32, ptr %3, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !299
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds i8, ptr %3, i64 %14
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 121
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  br label %27

27:                                               ; preds = %24, %17, %4
  %28 = phi ptr [ null, %4 ], [ %26, %24 ], [ null, %17 ]
  %29 = icmp ne ptr %28, null
  %30 = icmp ne ptr %2, null
  %31 = or i1 %30, %29
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = icmp eq ptr %28, %2
  br i1 %33, label %70, label %34

34:                                               ; preds = %32
  %35 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  br i1 %29, label %38, label %43

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !206
  %41 = load ptr, ptr %40, align 8, !tbaa !143
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %74, label %43

43:                                               ; preds = %38, %37
  %44 = load i64, ptr %35, align 8, !tbaa !282
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !283
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 13
  %48 = load i16, ptr %47, align 8, !tbaa !284
  %49 = zext i16 %48 to i32
  tail call void @cgraph_remove_edge(ptr noundef nonnull %35)
  br label %59

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !98
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !300
  %55 = load ptr, ptr @current_function_decl, align 8, !tbaa !87
  %56 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %55, ptr noundef %52) #24
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 10
  %58 = load i32, ptr %57, align 4, !tbaa !302
  br label %59

59:                                               ; preds = %50, %43
  %60 = phi i64 [ %44, %43 ], [ %54, %50 ]
  %61 = phi i32 [ %46, %43 ], [ %56, %50 ]
  %62 = phi i32 [ %49, %43 ], [ %58, %50 ]
  br i1 %29, label %63, label %74

63:                                               ; preds = %59
  %64 = tail call ptr @cgraph_node(ptr noundef nonnull %28)
  %65 = tail call ptr @cgraph_create_edge(ptr noundef %0, ptr noundef %64, ptr noundef nonnull %3, i64 noundef %60, i32 noundef %61, i32 noundef %62)
  %66 = getelementptr inbounds %struct.cgraph_edge, ptr %65, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !272
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1121, ptr noundef nonnull @.str.1) #24
  br label %74

70:                                               ; preds = %32
  %71 = icmp eq ptr %1, %3
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1)
  tail call void @cgraph_set_call_stmt(ptr noundef %73, ptr noundef nonnull %3)
  br label %74

74:                                               ; preds = %38, %72, %70, %59, %63, %69, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_node_remove_callees(ptr nocapture noundef %0) local_unnamed_addr #13 !prof !303 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5, !prof !203

5:                                                ; preds = %1, %40
  %6 = phi ptr [ %8, %40 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !191
  %9 = load ptr, ptr @first_cgraph_edge_removal_hook, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !111

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %17, %11 ], [ %9, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  tail call void %13(ptr noundef nonnull %6, ptr noundef %15) #24
  %16 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !prof !111, !llvm.loop !188

19:                                               ; preds = %11, %5
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !204

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !186
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !186
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !186
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !205

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 3
  store ptr %21, ptr %32, align 8, !tbaa !200
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %20, align 8, !tbaa !200
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40, !prof !204

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !206
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 2
  store ptr %29, ptr %39, align 8, !tbaa !184
  br label %40

40:                                               ; preds = %33, %36
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, i8 0, i64 96, i1 false)
  store i32 %42, ptr %41, align 4, !tbaa !199
  %43 = load ptr, ptr @free_edges, align 8, !tbaa !87
  store ptr %43, ptr %20, align 8, !tbaa !200
  store ptr %6, ptr @free_edges, align 8, !tbaa !87
  %44 = icmp eq ptr %8, null
  br i1 %44, label %45, label %5, !prof !207, !llvm.loop !208

45:                                               ; preds = %40, %1
  store ptr null, ptr %2, align 8, !tbaa !194
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !195
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !209

49:                                               ; preds = %45
  tail call void @htab_delete(ptr noundef nonnull %47) #24
  store ptr null, ptr %46, align 8, !tbaa !195
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_release_function_body(ptr nocapture noundef %0) local_unnamed_addr #13 !prof !304 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6, !prof !305

6:                                                ; preds = %1
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !87
  tail call void @push_cfun(ptr noundef nonnull %4) #24
  %8 = load ptr, ptr @cfun, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !306
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !307

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !143
  store ptr %13, ptr @current_function_decl, align 8, !tbaa !87
  tail call void @delete_tree_ssa() #24
  tail call void @delete_tree_cfg_annotations() #24
  %14 = load ptr, ptr @cfun, align 8, !tbaa !87
  store ptr null, ptr %14, align 8, !tbaa !308
  store ptr %7, ptr @current_function_decl, align 8, !tbaa !87
  br label %15

15:                                               ; preds = %12, %6
  %16 = load ptr, ptr @cfun, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20, !prof !307

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !102
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !125

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1223, ptr noundef nonnull @.str.1) #24
  br label %25

25:                                               ; preds = %20, %24
  %26 = load ptr, ptr @cfun, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !309
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 8, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !102
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !125

32:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1224, ptr noundef nonnull @.str.1) #24
  br label %33

33:                                               ; preds = %25, %32
  tail call void @clear_edges() #24
  br label %34

34:                                               ; preds = %33, %15
  %35 = load ptr, ptr @cfun, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !310
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !311

39:                                               ; preds = %34
  tail call void @free_histograms() #24
  br label %40

40:                                               ; preds = %39, %34
  %41 = load ptr, ptr @cfun, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !312
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !311

45:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #24
  br label %46

46:                                               ; preds = %40, %45
  tail call void @pop_cfun() #24
  %47 = load ptr, ptr %0, align 8, !tbaa !143
  tail call void @gimple_set_body(ptr noundef %47, ptr noundef null) #24
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !311

51:                                               ; preds = %46
  tail call void @free(ptr noundef %49)
  br label %52

52:                                               ; preds = %46, %51
  store ptr null, ptr %48, align 8, !tbaa !87
  %53 = load ptr, ptr %0, align 8, !tbaa !143
  %54 = getelementptr inbounds %struct.tree_function_decl, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  tail call void @ggc_free(ptr noundef %55) #24
  %56 = load ptr, ptr %0, align 8, !tbaa !143
  %57 = getelementptr inbounds %struct.tree_function_decl, ptr %56, i64 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !98
  br label %58

58:                                               ; preds = %52, %1
  %59 = load ptr, ptr %0, align 8, !tbaa !143
  %60 = getelementptr inbounds %struct.tree_decl_non_common, ptr %59, i64 0, i32 1
  store ptr null, ptr %60, align 8, !tbaa !98
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 4
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %69, !prof !311

65:                                               ; preds = %58
  %66 = load ptr, ptr @global_trees, align 16, !tbaa !87
  %67 = load ptr, ptr %0, align 8, !tbaa !143
  %68 = getelementptr inbounds %struct.tree_decl_common, ptr %67, i64 0, i32 5
  store ptr %66, ptr %68, align 8, !tbaa !98
  br label %69

69:                                               ; preds = %65, %58
  ret void
}

declare void @delete_tree_ssa() local_unnamed_addr #3

declare void @delete_tree_cfg_annotations() local_unnamed_addr #3

declare void @clear_edges() local_unnamed_addr #3

declare void @free_histograms() local_unnamed_addr #3

declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_same_body_alias(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 512
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1255, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 3
  br label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 13
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %20, %17 ], [ %16, %15 ]
  store ptr %14, ptr %22, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !155
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 4
  store ptr %11, ptr %27, align 8, !tbaa !160
  br label %28

28:                                               ; preds = %26, %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %29 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %30 = tail call ptr @htab_find_slot(ptr noundef %29, ptr noundef %0, i32 noundef 0) #24
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  tail call void @htab_clear_slot(ptr noundef %34, ptr noundef nonnull %30) #24
  br label %35

35:                                               ; preds = %33, %28
  %36 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !143
  %40 = tail call ptr @decl_assembler_name(ptr noundef %39) #24
  %41 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %42 = tail call i32 @decl_assembler_name_hash(ptr noundef %40) #24
  %43 = tail call ptr @htab_find_slot_with_hash(ptr noundef %41, ptr noundef %40, i32 noundef %42, i32 noundef 0) #24
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %43, align 8, !tbaa !87
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  tail call void @htab_clear_slot(ptr noundef %49, ptr noundef nonnull %43) #24
  br label %50

50:                                               ; preds = %38, %45, %48, %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 0, i64 312, i1 false)
  store i32 %3, ptr %2, align 8, !tbaa !156
  %51 = load ptr, ptr @free_nodes, align 8, !tbaa !87
  store ptr %51, ptr %23, align 8, !tbaa !155
  store ptr %0, ptr @free_nodes, align 8, !tbaa !87
  ret void
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_remove_node_and_inline_clones(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %8, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !191
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !272
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %14)
  br label %15

15:                                               ; preds = %5, %12
  %16 = icmp eq ptr %8, null
  br i1 %16, label %17, label %5, !llvm.loop !313

17:                                               ; preds = %15, %1
  tail call void @cgraph_remove_node(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_mark_reachable_node(ptr noundef %0) local_unnamed_addr #13 !prof !314 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %21, !prof !315

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !316

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !143
  tail call void @notice_global_symbol(ptr noundef %12) #24
  %13 = load i16, ptr %2, align 4
  %14 = or i16 %13, 8
  store i16 %14, ptr %2, align 4
  %15 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !98
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !317

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1526, ptr noundef nonnull @.str.1) #24
  br label %18

18:                                               ; preds = %11, %17
  %19 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 8
  store ptr %19, ptr %20, align 8, !tbaa !318
  store ptr %0, ptr @cgraph_nodes_queue, align 8, !tbaa !87
  br label %21

21:                                               ; preds = %18, %6, %1
  ret void
}

declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_mark_needed_node(ptr noundef %0) local_unnamed_addr #13 !prof !319 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !320

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1540, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i16, ptr %2, align 4
  %11 = and i16 %10, 8
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %28, !prof !315

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18, !prof !316

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !143
  tail call void @notice_global_symbol(ptr noundef %19) #24
  %20 = load i16, ptr %2, align 4
  %21 = or i16 %20, 8
  store i16 %21, ptr %2, align 4
  %22 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !98
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24, !prof !317

24:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1526, ptr noundef nonnull @.str.1) #24
  br label %25

25:                                               ; preds = %24, %18
  %26 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 8
  store ptr %26, ptr %27, align 8, !tbaa !318
  store ptr %0, ptr @cgraph_nodes_queue, align 8, !tbaa !87
  br label %28

28:                                               ; preds = %9, %13, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_mark_address_taken_node(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = or i16 %3, 2
  store i16 %4, ptr %2, align 4
  tail call void @cgraph_mark_needed_node(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local nonnull ptr @cgraph_local_info(ptr noundef %0) local_unnamed_addr #11 !prof !321 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %6, label %5, !prof !322

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1560, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @cgraph_node(ptr noundef nonnull %0)
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 18
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @cgraph_global_info(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  %5 = load i8, ptr @cgraph_global_info_ready, align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1572, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %1, %8
  %10 = tail call ptr @cgraph_node(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 19
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cgraph_rtl_info(ptr noundef %0) local_unnamed_addr #13 !prof !323 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %6, label %5, !prof !324

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1584, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @cgraph_node(ptr noundef nonnull %0)
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !87
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %15, label %10, !prof !325

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8, !tbaa !143
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 4194304
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15, !prof !326

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 20
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ null, %10 ]
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cgraph_inline_failed_string(i32 noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = icmp ult i32 %0, 19
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1606, ptr noundef nonnull @.str.1) #24
  br label %4

4:                                                ; preds = %1, %3
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [19 x ptr], ptr @cgraph_inline_failed_string.cif_string_table, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cgraph_node_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !86 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #24
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_cgraph_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !86 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %4 = load ptr, ptr %1, align 8, !tbaa !143
  %5 = tail call ptr %3(ptr noundef %4, i32 noundef 2) #24
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %5, i32 noundef %7, i32 noundef %9)
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %1) #24
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !244
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %17 = load ptr, ptr %13, align 8, !tbaa !143
  %18 = tail call ptr %16(ptr noundef %17, i32 noundef 2) #24
  %19 = load ptr, ptr %12, align 8, !tbaa !244
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 24
  %21 = load i32, ptr %20, align 8, !tbaa !156
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %18, i32 noundef %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !225
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %29 = load ptr, ptr %25, align 8, !tbaa !143
  %30 = tail call ptr %28(ptr noundef %29, i32 noundef 2) #24
  %31 = load ptr, ptr %24, align 8, !tbaa !225
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 24
  %33 = load i32, ptr %32, align 8, !tbaa !156
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %30, i32 noundef %33)
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !98
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %1), !range !335
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [5 x ptr], ptr @cgraph_availability_names, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 23
  %46 = load i64, ptr %45, align 8, !tbaa !336
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %46)
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !337
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !338
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %53, i32 noundef %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !339
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %52, align 8, !tbaa !337
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %61)
  br label %68

68:                                               ; preds = %66, %63, %59
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !340
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !341
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %70, i32 noundef %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !342
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %69, align 8, !tbaa !340
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %78)
  br label %85

85:                                               ; preds = %83, %80, %76
  %86 = load i64, ptr %51, align 8, !tbaa !343
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = trunc i64 %86 to i32
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64, ptr %11, align 8, !tbaa !344
  %93 = load i64, ptr %51, align 8, !tbaa !343
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = trunc i64 %92 to i32
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !163
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %104 = load ptr, ptr %100, align 8, !tbaa !143
  %105 = tail call ptr %103(ptr noundef %104, i32 noundef 2) #24
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %105)
  br label %107

107:                                              ; preds = %102, %98
  %108 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %109 = load i16, ptr %108, align 4
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 7, i64 1, ptr %0)
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i16, ptr %108, align 4
  %116 = and i16 %115, 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 14, i64 1, ptr %0)
  br label %125

120:                                              ; preds = %114
  %121 = and i16 %115, 8
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 10, i64 1, ptr %0)
  br label %125

125:                                              ; preds = %120, %123, %118
  %126 = load ptr, ptr %1, align 8, !tbaa !143
  %127 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %126) #24
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr %0)
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i16, ptr %108, align 4
  %133 = and i16 %132, 64
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 8, i64 1, ptr %0)
  br label %137

137:                                              ; preds = %135, %131
  %138 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %139 = load i8, ptr %138, align 8
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 6, i64 1, ptr %0)
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i8, ptr %138, align 8
  %146 = and i8 %145, 2
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 19, i64 1, ptr %0)
  br label %150

150:                                              ; preds = %148, %144
  %151 = load i8, ptr %138, align 8
  %152 = and i8 %151, 4
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 10, i64 1, ptr %0)
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i8, ptr %138, align 8
  %158 = and i8 %157, 16
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 14, i64 1, ptr %0)
  br label %167

162:                                              ; preds = %156
  %163 = and i8 %157, 8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 10, i64 1, ptr %0)
  br label %167

167:                                              ; preds = %162, %165, %160
  %168 = load i8, ptr %138, align 8
  %169 = and i8 %168, 32
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 24, i64 1, ptr %0)
  br label %173

173:                                              ; preds = %171, %167
  %174 = load ptr, ptr %1, align 8, !tbaa !143
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 4194304
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 12, i64 1, ptr %0)
  br label %180

180:                                              ; preds = %178, %173
  %181 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 14, i64 1, ptr %0)
  %182 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !87
  %184 = icmp eq ptr %183, null
  br i1 %184, label %231, label %185

185:                                              ; preds = %180, %227
  %186 = phi ptr [ %229, %227 ], [ %183, %180 ]
  %187 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !193
  %189 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %190 = load ptr, ptr %188, align 8, !tbaa !143
  %191 = tail call ptr %189(ptr noundef %190, i32 noundef 2) #24
  %192 = load ptr, ptr %187, align 8, !tbaa !193
  %193 = getelementptr inbounds %struct.cgraph_node, ptr %192, i64 0, i32 24
  %194 = load i32, ptr %193, align 8, !tbaa !156
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %191, i32 noundef %194)
  %196 = load i64, ptr %186, align 8, !tbaa !282
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %185
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i64 noundef %196)
  br label %200

200:                                              ; preds = %198, %185
  %201 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 11
  %202 = load i32, ptr %201, align 8, !tbaa !283
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = sitofp i32 %202 to double
  %206 = fdiv double %205, 1.000000e+03
  %207 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, double noundef %206)
  br label %208

208:                                              ; preds = %204, %200
  %209 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !272
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 10, i64 1, ptr %0)
  br label %214

214:                                              ; preds = %212, %208
  %215 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 14
  %216 = load i8, ptr %215, align 2
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %214
  %220 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 11, i64 1, ptr %0)
  br label %221

221:                                              ; preds = %219, %214
  %222 = load i8, ptr %215, align 2
  %223 = and i8 %222, 4
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 21, i64 1, ptr %0)
  br label %227

227:                                              ; preds = %221, %225
  %228 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 4
  %229 = load ptr, ptr %228, align 8, !tbaa !87
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %185, !llvm.loop !345

231:                                              ; preds = %227, %180
  %232 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 10, i64 1, ptr %0)
  %233 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !87
  %235 = icmp eq ptr %234, null
  br i1 %235, label %289, label %236

236:                                              ; preds = %231, %285
  %237 = phi ptr [ %287, %285 ], [ %234, %231 ]
  %238 = getelementptr inbounds %struct.cgraph_edge, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !206
  %240 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %241 = load ptr, ptr %239, align 8, !tbaa !143
  %242 = tail call ptr %240(ptr noundef %241, i32 noundef 2) #24
  %243 = load ptr, ptr %238, align 8, !tbaa !206
  %244 = getelementptr inbounds %struct.cgraph_node, ptr %243, i64 0, i32 24
  %245 = load i32, ptr %244, align 8, !tbaa !156
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %242, i32 noundef %245)
  %247 = getelementptr inbounds %struct.cgraph_edge, ptr %237, i64 0, i32 9
  %248 = load i32, ptr %247, align 8, !tbaa !272
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %236
  %251 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 10, i64 1, ptr %0)
  br label %252

252:                                              ; preds = %250, %236
  %253 = getelementptr inbounds %struct.cgraph_edge, ptr %237, i64 0, i32 14
  %254 = load i8, ptr %253, align 2
  %255 = and i8 %254, 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 11, i64 1, ptr %0)
  br label %259

259:                                              ; preds = %257, %252
  %260 = load i64, ptr %237, align 8, !tbaa !282
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %259
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i64 noundef %260)
  br label %264

264:                                              ; preds = %262, %259
  %265 = getelementptr inbounds %struct.cgraph_edge, ptr %237, i64 0, i32 11
  %266 = load i32, ptr %265, align 8, !tbaa !283
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = sitofp i32 %266 to double
  %270 = fdiv double %269, 1.000000e+03
  %271 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, double noundef %270)
  br label %272

272:                                              ; preds = %268, %264
  %273 = getelementptr inbounds %struct.cgraph_edge, ptr %237, i64 0, i32 13
  %274 = load i16, ptr %273, align 8, !tbaa !284
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = zext i16 %274 to i32
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %277)
  br label %279

279:                                              ; preds = %276, %272
  %280 = load i8, ptr %253, align 2
  %281 = and i8 %280, 4
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 21, i64 1, ptr %0)
  br label %285

285:                                              ; preds = %279, %283
  %286 = getelementptr inbounds %struct.cgraph_edge, ptr %237, i64 0, i32 6
  %287 = load ptr, ptr %286, align 8, !tbaa !87
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %236, !llvm.loop !346

289:                                              ; preds = %285, %231
  %290 = tail call i32 @fputc(i32 10, ptr %0)
  %291 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 13
  %292 = load ptr, ptr %291, align 8, !tbaa !153
  %293 = icmp eq ptr %292, null
  br i1 %293, label %331, label %294

294:                                              ; preds = %289
  %295 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 19, i64 1, ptr %0)
  %296 = load ptr, ptr %291, align 8, !tbaa !87
  %297 = icmp eq ptr %296, null
  br i1 %297, label %329, label %298

298:                                              ; preds = %294, %325
  %299 = phi ptr [ %327, %325 ], [ %296, %294 ]
  %300 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %301 = load ptr, ptr %299, align 8, !tbaa !143
  %302 = tail call ptr %300(ptr noundef %301, i32 noundef 2) #24
  %303 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 24
  %304 = load i32, ptr %303, align 8, !tbaa !156
  %305 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %302, i32 noundef %304)
  %306 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 22, i32 5
  %307 = load i8, ptr %306, align 2, !tbaa !175
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %325, label %309

309:                                              ; preds = %298
  %310 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 22
  %311 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !327
  %312 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 22, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !170
  %314 = tail call ptr %311(ptr noundef %313, i32 noundef 2) #24
  %315 = load i64, ptr %310, align 8, !tbaa !171
  %316 = trunc i64 %315 to i32
  %317 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 22, i32 1
  %318 = load i64, ptr %317, align 8, !tbaa !173
  %319 = trunc i64 %318 to i32
  %320 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 22, i32 4
  %321 = load i8, ptr %320, align 1, !tbaa !174
  %322 = zext i8 %321 to i32
  %323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %314, i32 noundef %316, i32 noundef %319, i32 noundef %322)
  %324 = tail call i32 @fputc(i32 41, ptr %0)
  br label %325

325:                                              ; preds = %298, %309
  %326 = getelementptr inbounds %struct.cgraph_node, ptr %299, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !87
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %298, !llvm.loop !347

329:                                              ; preds = %325, %294
  %330 = tail call i32 @fputc(i32 10, ptr %0)
  br label %331

331:                                              ; preds = %329, %289
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @dump_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @cgraph_function_body_availability(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !348 {
  %2 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !98
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !349

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2071, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %40, label %10, !prof !350

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %40, !prof !351

15:                                               ; preds = %10
  %16 = and i8 %12, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %40, label %18, !prof !352

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40, !prof !353

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %19, i64 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39, !prof !353

29:                                               ; preds = %24
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !354
  %31 = tail call zeroext i8 %30(ptr noundef %19) #24, !prof !366
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39, !prof !367

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8, !tbaa !143
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 33554432
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %29, %24
  br label %40

40:                                               ; preds = %33, %18, %15, %10, %5, %39
  %41 = phi i32 [ 3, %39 ], [ 1, %5 ], [ 4, %10 ], [ 3, %15 ], [ 3, %18 ], [ 2, %33 ]
  ret i32 %41
}

declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_cgraph_node(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !87
  tail call void @dump_cgraph_node(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_cgraph(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 12, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @dump_cgraph_node(ptr noundef %0, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !368

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_cgraph() local_unnamed_addr #9 !prof !86 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !87
  %2 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 12, i64 1, ptr %1) #25
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  tail call void @dump_cgraph_node(ptr noundef %1, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !368

10:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @change_decl_assembler_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !121 {
  %3 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !369

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1788, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %2, %5
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %8, i64 13
  %10 = load i8, ptr %9, align 1, !tbaa !98
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12, !prof !370

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !371

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  br label %38

18:                                               ; preds = %12
  %19 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #24
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %40, label %21, !prof !111

21:                                               ; preds = %18
  %22 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #24
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 67108864
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %0, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %28, i64 11
  %30 = load i8, ptr %29, align 1, !tbaa !98
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull %0) #24
  br label %38

38:                                               ; preds = %21, %26, %32, %36, %16
  %39 = phi ptr [ %17, %16 ], [ %13, %36 ], [ %13, %32 ], [ %13, %26 ], [ %13, %21 ]
  store ptr %1, ptr %39, align 8, !tbaa !98
  br label %40

40:                                               ; preds = %38, %18
  ret void
}

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_add_asm_node(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 24) #24
  %3 = getelementptr inbounds %struct.cgraph_asm_node, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !372
  %4 = load i32, ptr @cgraph_order, align 4, !tbaa !102
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @cgraph_order, align 4, !tbaa !102
  %6 = getelementptr inbounds %struct.cgraph_asm_node, ptr %2, i64 0, i32 2
  store i32 %4, ptr %6, align 8, !tbaa !374
  store ptr null, ptr %2, align 8, !tbaa !375
  %7 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @cgraph_asm_last_node, align 8
  %10 = select i1 %8, ptr @cgraph_asm_nodes, ptr %9
  store ptr %2, ptr %10, align 8, !tbaa !87
  store ptr %2, ptr @cgraph_asm_last_node, align 8, !tbaa !87
  ret ptr %2
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cgraph_function_possibly_inlined_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !376 {
  %2 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !98
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  br i1 %3, label %6, label %10, !prof !377

6:                                                ; preds = %1
  %7 = and i32 %5, 32768
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i8
  br label %14

10:                                               ; preds = %1
  %11 = lshr i32 %5, 16
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i8 [ %13, %10 ], [ %9, %6 ]
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cgraph_clone_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #13 !prof !291 {
  %9 = load i64, ptr %0, align 8, !tbaa !282
  %10 = mul nsw i64 %9, %4
  %11 = sdiv i64 %10, 10000
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !283
  %15 = sext i32 %14 to i64
  %16 = sext i32 %12 to i64
  %17 = mul nsw i64 %15, %16
  %18 = sdiv i64 %17, 1000
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 100000)
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !206
  %22 = trunc i64 %19 to i32
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %24 = load i16, ptr %23, align 8, !tbaa !284
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, %6
  %27 = tail call ptr @cgraph_create_edge(ptr noundef %1, ptr noundef %21, ptr noundef %2, i64 noundef %11, i32 noundef %22, i32 noundef %26)
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !272
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %27, i64 0, i32 9
  store i32 %29, ptr %30, align 8, !tbaa !272
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %27, i64 0, i32 14
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, -2
  %37 = or disjoint i8 %36, %33
  store i8 %37, ptr %34, align 2
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %27, i64 0, i32 10
  store i32 %3, ptr %38, align 4, !tbaa !378
  %39 = icmp eq i8 %7, 0
  br i1 %39, label %45, label %40, !prof !379

40:                                               ; preds = %8
  %41 = load i64, ptr %27, align 8, !tbaa !282
  %42 = load i64, ptr %0, align 8, !tbaa !282
  %43 = sub nsw i64 %42, %41
  %44 = tail call i64 @llvm.smax.i64(i64 %43, i64 0)
  store i64 %44, ptr %0, align 8
  br label %45

45:                                               ; preds = %40, %8
  %46 = load ptr, ptr @first_cgraph_edge_duplicated_hook, align 8, !tbaa !87
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48, !prof !380

48:                                               ; preds = %45, %48
  %49 = phi ptr [ %54, %48 ], [ %46, %45 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  %51 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %49, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !130
  tail call void %50(ptr noundef nonnull %0, ptr noundef %27, ptr noundef %52) #24, !prof !381
  %53 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !87
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %48, !prof !382, !llvm.loop !383

56:                                               ; preds = %48, %45
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cgraph_clone_node(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef readonly %5) local_unnamed_addr #13 !prof !291 {
  %7 = load ptr, ptr @free_nodes, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !154

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  store ptr %11, ptr @free_nodes, align 8, !tbaa !87
  br label %17

12:                                               ; preds = %6
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 312) #24
  %14 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !102
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @cgraph_max_uid, align 4, !tbaa !102
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 24
  store i32 %14, ptr %16, align 8, !tbaa !156
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi ptr [ %7, %9 ], [ %13, %12 ]
  %19 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 26
  store i32 -1, ptr %21, align 8, !tbaa !157
  %22 = load i32, ptr @cgraph_order, align 4, !tbaa !102
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @cgraph_order, align 4, !tbaa !102
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 25
  store i32 %22, ptr %24, align 4, !tbaa !158
  %25 = icmp eq ptr %19, null
  br i1 %25, label %28, label %26, !prof !159

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 4
  store ptr %18, ptr %27, align 8, !tbaa !160
  br label %28

28:                                               ; preds = %17, %26
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 4
  store ptr null, ptr %29, align 8, !tbaa !160
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %30, align 8, !tbaa !161
  store ptr %18, ptr @cgraph_nodes, align 8, !tbaa !87
  %31 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !102
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @cgraph_n_nodes, align 4, !tbaa !102
  %33 = load ptr, ptr %0, align 8, !tbaa !143
  store ptr %33, ptr %18, align 8, !tbaa !143
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !163
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 5
  store ptr %35, ptr %36, align 8, !tbaa !163
  %37 = icmp eq ptr %35, null
  br i1 %37, label %42, label %38, !prof !294

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !164
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 7
  store ptr %40, ptr %41, align 8, !tbaa !165
  store ptr %18, ptr %39, align 8, !tbaa !164
  br label %42

42:                                               ; preds = %38, %28
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 32
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, -33
  %49 = or disjoint i16 %48, %45
  store i16 %49, ptr %46, align 4
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 18
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef nonnull align 8 dereferenceable(40) %51, i64 40, i1 false), !tbaa.struct !384
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 18, i32 2
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, -3
  store i8 %54, ptr %52, align 8
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 19
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %55, ptr noundef nonnull align 8 dereferenceable(40) %56, i64 40, i1 false), !tbaa.struct !385
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 20
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 20
  %59 = load i32, ptr %58, align 8, !tbaa !102
  store i32 %59, ptr %57, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 23
  store i64 %1, ptr %60, align 8, !tbaa !336
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 21
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %62, i64 24, i1 false), !tbaa.struct !224
  store ptr null, ptr %61, align 8, !tbaa !386
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %64 = load i64, ptr %63, align 8, !tbaa !336
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %71, label %66, !prof !294

66:                                               ; preds = %42
  %67 = icmp slt i64 %64, %1
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = mul nsw i64 %1, 10000
  %70 = sdiv i64 %69, %64
  br label %71

71:                                               ; preds = %42, %66, %68
  %72 = phi i64 [ %70, %68 ], [ 10000, %66 ], [ 0, %42 ]
  %73 = icmp eq i8 %4, 0
  br i1 %73, label %77, label %74, !prof !387

74:                                               ; preds = %71
  %75 = sub nsw i64 %64, %1
  %76 = tail call i64 @llvm.smax.i64(i64 %75, i64 0)
  store i64 %76, ptr %63, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = icmp eq ptr %5, null
  br label %79

79:                                               ; preds = %91, %77
  %80 = phi i32 [ 0, %77 ], [ %92, %91 ]
  br i1 %78, label %88, label %81, !prof !294

81:                                               ; preds = %79
  %82 = load i32, ptr %5, align 8, !tbaa !388
  %83 = icmp ugt i32 %82, %80
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %5, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !87
  br label %88

88:                                               ; preds = %79, %81, %84
  %89 = phi ptr [ %87, %84 ], [ null, %81 ], [ null, %79 ]
  %90 = phi i1 [ false, %84 ], [ true, %81 ], [ true, %79 ]
  br i1 %90, label %93, label %91, !prof !294

91:                                               ; preds = %88
  tail call void @cgraph_redirect_edge_callee(ptr noundef %89, ptr noundef nonnull %18)
  %92 = add i32 %80, 1
  br label %79, !llvm.loop !390

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !87
  %96 = icmp eq ptr %95, null
  br i1 %96, label %154, label %97, !prof !391

97:                                               ; preds = %93
  %98 = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %99 = sext i32 %98 to i64
  br label %100

100:                                              ; preds = %97, %150
  %101 = phi ptr [ %95, %97 ], [ %152, %150 ]
  %102 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !197
  %104 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 10
  %105 = load i32, ptr %104, align 4, !tbaa !378
  %106 = load i64, ptr %101, align 8, !tbaa !282
  %107 = mul nsw i64 %106, %72
  %108 = sdiv i64 %107, 10000
  %109 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 11
  %110 = load i32, ptr %109, align 8, !tbaa !283
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %99
  %113 = sdiv i64 %112, 1000
  %114 = tail call i64 @llvm.smin.i64(i64 %113, i64 100000)
  %115 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !206
  %117 = trunc i64 %114 to i32
  %118 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 13
  %119 = load i16, ptr %118, align 8, !tbaa !284
  %120 = zext i16 %119 to i32
  %121 = add nsw i32 %120, %3
  %122 = tail call ptr @cgraph_create_edge(ptr noundef nonnull %18, ptr noundef %116, ptr noundef %103, i64 noundef %108, i32 noundef %117, i32 noundef %121)
  %123 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !272
  %125 = getelementptr inbounds %struct.cgraph_edge, ptr %122, i64 0, i32 9
  store i32 %124, ptr %125, align 8, !tbaa !272
  %126 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 14
  %127 = load i8, ptr %126, align 2
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.cgraph_edge, ptr %122, i64 0, i32 14
  %130 = load i8, ptr %129, align 2
  %131 = and i8 %130, -2
  %132 = or disjoint i8 %131, %128
  store i8 %132, ptr %129, align 2
  %133 = getelementptr inbounds %struct.cgraph_edge, ptr %122, i64 0, i32 10
  store i32 %105, ptr %133, align 4, !tbaa !378
  br i1 %73, label %139, label %134, !prof !379

134:                                              ; preds = %100
  %135 = load i64, ptr %122, align 8, !tbaa !282
  %136 = load i64, ptr %101, align 8, !tbaa !282
  %137 = sub nsw i64 %136, %135
  %138 = tail call i64 @llvm.smax.i64(i64 %137, i64 0)
  store i64 %138, ptr %101, align 8
  br label %139

139:                                              ; preds = %134, %100
  %140 = load ptr, ptr @first_cgraph_edge_duplicated_hook, align 8, !tbaa !87
  %141 = icmp eq ptr %140, null
  br i1 %141, label %150, label %142, !prof !380

142:                                              ; preds = %139, %142
  %143 = phi ptr [ %148, %142 ], [ %140, %139 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !128
  %145 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %143, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !130
  tail call void %144(ptr noundef nonnull %101, ptr noundef %122, ptr noundef %146) #24, !prof !381
  %147 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %143, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !87
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %142, !prof !382, !llvm.loop !383

150:                                              ; preds = %142, %139
  %151 = getelementptr inbounds %struct.cgraph_edge, ptr %101, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !87
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %100, !prof !382, !llvm.loop !392

154:                                              ; preds = %150, %93
  %155 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %156 = load ptr, ptr %155, align 8, !tbaa !223
  %157 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 9
  store ptr %156, ptr %157, align 8, !tbaa !220
  %158 = icmp eq ptr %156, null
  br i1 %158, label %161, label %159, !prof !393

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.cgraph_node, ptr %156, i64 0, i32 10
  store ptr %18, ptr %160, align 8, !tbaa !222
  br label %161

161:                                              ; preds = %159, %154
  store ptr %18, ptr %155, align 8, !tbaa !223
  %162 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 12
  store ptr %0, ptr %162, align 8, !tbaa !225
  %163 = load ptr, ptr @first_cgraph_node_duplicated_hook, align 8, !tbaa !87
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165, !prof !394

165:                                              ; preds = %161, %165
  %166 = phi ptr [ %171, %165 ], [ %163, %161 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !134
  %168 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %166, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !136
  tail call void %167(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %169) #24, !prof !395
  %170 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %166, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !87
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %165, !prof !396, !llvm.loop !397

173:                                              ; preds = %165, %161
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @cgraph_create_virtual_clone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !86 {
  %5 = alloca %struct.cgraph_node, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %5) #24
  %7 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %6) #24
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1973, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %4, %9
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call ptr @copy_node_stat(ptr noundef %6) #24
  br label %16

14:                                               ; preds = %10
  %15 = tail call ptr @build_function_decl_skip_args(ptr noundef %6, ptr noundef nonnull %3) #24
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !98
  %19 = tail call fastcc ptr @clone_function_name(ptr noundef %6)
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !98
  %21 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 1
  store ptr %19, ptr %21, align 8, !tbaa !98
  tail call void @set_decl_rtl(ptr noundef %17, ptr noundef null) #24
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !336
  %24 = tail call ptr @cgraph_clone_node(ptr noundef nonnull %0, i64 noundef %23, i32 noundef 1000, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %1)
  store ptr %17, ptr %24, align 8, !tbaa !143
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, -33554433
  store i64 %27, ptr %25, align 8
  %28 = load ptr, ptr %24, align 8, !tbaa !143
  %29 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %28, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !98
  %30 = load ptr, ptr %24, align 8, !tbaa !143
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, -134217729
  store i64 %32, ptr %30, align 8
  %33 = load ptr, ptr %24, align 8, !tbaa !143
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -513
  store i32 %36, ptr %34, align 8
  %37 = load ptr, ptr %24, align 8, !tbaa !143
  %38 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -129
  store i32 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 21
  store ptr %2, ptr %41, align 8, !tbaa !386
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 21, i32 1
  store ptr %3, ptr %42, align 8, !tbaa !398
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !399
  br i1 %11, label %81, label %45

45:                                               ; preds = %16
  %46 = icmp eq ptr %44, null
  br i1 %46, label %81, label %47

47:                                               ; preds = %45
  %48 = tail call ptr @bitmap_gc_alloc_stat() #24
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi ptr [ %0, %47 ], [ %52, %49 ]
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !225
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !llvm.loop !400

54:                                               ; preds = %49
  %55 = load ptr, ptr %50, align 8, !tbaa !143
  %56 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !98
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %54, %75
  %60 = phi ptr [ %79, %75 ], [ %57, %54 ]
  %61 = phi i32 [ %76, %75 ], [ 0, %54 ]
  %62 = phi i32 [ %78, %75 ], [ 0, %54 ]
  %63 = load ptr, ptr %43, align 8, !tbaa !399
  %64 = tail call i32 @bitmap_bit_p(ptr noundef %63, i32 noundef %62) #24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %62) #24
  br label %75

68:                                               ; preds = %59
  %69 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %61) #24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %62) #24
  br label %73

73:                                               ; preds = %71, %68
  %74 = add nsw i32 %61, 1
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi i32 [ %61, %66 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 1
  %78 = add nuw nsw i32 %62, 1
  %79 = load ptr, ptr %77, align 8, !tbaa !98
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %59, !llvm.loop !401

81:                                               ; preds = %75, %45, %54, %16
  %82 = phi ptr [ %44, %16 ], [ %48, %54 ], [ %3, %45 ], [ %48, %75 ]
  %83 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 21, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !399
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 18, i32 2
  %85 = load i8, ptr %84, align 8
  %86 = and i8 %85, -4
  %87 = or disjoint i8 %86, 1
  store i8 %87, ptr %84, align 8
  %88 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 27
  %89 = load i16, ptr %88, align 4
  %90 = or i16 %89, 24
  store i16 %90, ptr %88, align 4
  store ptr %17, ptr %5, align 8, !tbaa !143
  %91 = load ptr, ptr @cgraph_hash, align 8, !tbaa !87
  %92 = call ptr @htab_find_slot(ptr noundef %91, ptr noundef nonnull %5, i32 noundef 1) #24
  %93 = load ptr, ptr %92, align 8, !tbaa !87
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2035, ptr noundef nonnull @.str.1) #24
  br label %96

96:                                               ; preds = %81, %95
  store ptr %24, ptr %92, align 8, !tbaa !87
  %97 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = call ptr @decl_assembler_name(ptr noundef %17) #24
  %101 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !87
  %102 = call i32 @decl_assembler_name_hash(ptr noundef %100) #24
  %103 = call ptr @htab_find_slot_with_hash(ptr noundef %101, ptr noundef %100, i32 noundef %102, i32 noundef 1) #24
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2045, ptr noundef nonnull @.str.1) #24
  br label %107

107:                                              ; preds = %99, %106
  store ptr %24, ptr %103, align 8, !tbaa !87
  br label %108

108:                                              ; preds = %107, %96
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %5) #24
  ret ptr %24
}

declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_decl_skip_args(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @clone_function_name(ptr noundef %0) unnamed_addr #9 !prof !86 {
  %2 = tail call ptr @decl_assembler_name(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = zext i32 %5 to i64
  %7 = add nuw nsw i64 %6, 7
  %8 = alloca i8, i64 %7, align 16
  %9 = load ptr, ptr %3, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %8, ptr align 1 %9, i64 %6, i1 false)
  %10 = getelementptr inbounds i8, ptr %8, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %10, ptr noundef nonnull align 1 dereferenceable(7) @.str.66, i64 7, i1 false)
  store i8 46, ptr %10, align 1, !tbaa !98
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %12 = add i64 %11, 32
  %13 = alloca i8, i64 %12, align 16
  %14 = load i32, ptr @clone_fn_id_num, align 4, !tbaa !102
  %15 = add i32 %14, 1
  store i32 %15, ptr @clone_fn_id_num, align 4, !tbaa !102
  %16 = zext i32 %14 to i64
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull %8, i64 noundef %16)
  %18 = call ptr @get_identifier(ptr noundef nonnull %13) #24
  ret ptr %18
}

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_unnest_node(ptr noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2057, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  br label %8

8:                                                ; preds = %7, %8
  %9 = phi ptr [ %12, %8 ], [ %4, %7 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, %0
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 7
  br i1 %11, label %13, label %8, !llvm.loop !402

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  store ptr %15, ptr %9, align 8, !tbaa !87
  store ptr null, ptr %2, align 8, !tbaa !163
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_add_new_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !86 {
  %3 = load i32, ptr @cgraph_state, align 4, !tbaa !102
  switch i32 %3, label %73 [
    i32 0, label %4
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %53
  ]

4:                                                ; preds = %2
  %5 = tail call ptr @cgraph_node(ptr noundef %0)
  %6 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 8
  store ptr %6, ptr %7, align 8, !tbaa !318
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 27
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, 16
  store i16 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %4
  store ptr %5, ptr @cgraph_new_nodes, align 8, !tbaa !87
  br label %73

14:                                               ; preds = %2, %2, %2
  %15 = tail call ptr @cgraph_node(ptr noundef %0)
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 18, i32 2
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, -6
  %19 = or disjoint i8 %18, 4
  store i8 %19, ptr %16, align 8
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 27
  %21 = load i16, ptr %20, align 4
  %22 = or i16 %21, 9
  store i16 %22, ptr %20, align 4
  %23 = icmp eq i8 %1, 0
  %24 = load i32, ptr @cgraph_state, align 4
  %25 = icmp eq i32 %24, 3
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %44

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !98
  tail call void @push_cfun(ptr noundef %29) #24
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !87
  tail call void @gimple_register_cfg_hooks() #24
  tail call void @tree_lowering_passes(ptr noundef %0) #24
  tail call void @bitmap_obstack_initialize(ptr noundef null) #24
  %30 = load ptr, ptr %28, align 8, !tbaa !98
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !306
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 10
  %38 = load i8, ptr %37, align 8
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %27, %36
  %42 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !403
  tail call void @execute_pass_list(ptr noundef %42) #24
  br label %43

43:                                               ; preds = %41, %36
  tail call void @bitmap_obstack_release(ptr noundef null) #24
  tail call void @pop_cfun() #24
  store ptr null, ptr @current_function_decl, align 8, !tbaa !87
  br label %44

44:                                               ; preds = %43, %14
  %45 = phi i8 [ 1, %43 ], [ %1, %14 ]
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i16, ptr %20, align 4
  %49 = or i16 %48, 16
  store i16 %49, ptr %20, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !87
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 8
  store ptr %51, ptr %52, align 8, !tbaa !318
  store ptr %15, ptr @cgraph_new_nodes, align 8, !tbaa !87
  br label %73

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  tail call void @push_cfun(ptr noundef %55) #24
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !87
  tail call void @gimple_register_cfg_hooks() #24
  %56 = icmp eq i8 %1, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @tree_lowering_passes(ptr noundef %0) #24
  br label %58

58:                                               ; preds = %57, %53
  tail call void @bitmap_obstack_initialize(ptr noundef null) #24
  %59 = load ptr, ptr %54, align 8, !tbaa !98
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !306
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gimple_df, ptr %63, i64 0, i32 10
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61, %58, %65
  %71 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !403
  tail call void @execute_pass_list(ptr noundef %71) #24
  br label %72

72:                                               ; preds = %70, %65
  tail call void @bitmap_obstack_release(ptr noundef null) #24
  tail call void @tree_rest_of_compilation(ptr noundef %0) #24
  tail call void @pop_cfun() #24
  store ptr null, ptr @current_function_decl, align 8, !tbaa !87
  br label %73

73:                                               ; preds = %2, %72, %50, %13
  %74 = phi i8 [ %1, %2 ], [ %1, %72 ], [ %45, %50 ], [ %1, %13 ]
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !98
  %79 = tail call i32 @function_needs_eh_personality(ptr noundef %78) #24
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !406
  %83 = tail call ptr %82() #24
  %84 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !98
  br label %85

85:                                               ; preds = %81, %76, %73
  ret void
}

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

declare void @tree_lowering_passes(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @execute_pass_list(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @tree_rest_of_compilation(ptr noundef) local_unnamed_addr #3

declare i32 @function_needs_eh_personality(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cgraph_node_can_be_local_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !407 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %22, !prof !408

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !143
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !369

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !239
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %18 = load i8, ptr %17, align 8
  %19 = lshr i8 %18, 1
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  br label %22

22:                                               ; preds = %12, %16, %1
  %23 = phi i8 [ 0, %1 ], [ 1, %12 ], [ %21, %16 ]
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_make_decl_local(ptr noundef %0) local_unnamed_addr #13 !prof !409 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %17 [
    i16 32, label %4
    i16 29, label %8
  ], !prof !410

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -9
  store i32 %7, ptr %5, align 8
  br label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, -513
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !98
  %13 = and i32 %10, -641
  store i32 %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, -33554433
  store i64 %16, ptr %14, align 8
  br label %18

17:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2212, ptr noundef nonnull @.str.1) #24
  br label %18

18:                                               ; preds = %8, %17, %4
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, -134217729
  store i64 %20, ptr %0, align 8
  %21 = and i64 %19, 65535
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !98
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %52, label %25, !prof !411

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29, !prof !412

29:                                               ; preds = %25
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #24
  %30 = load ptr, ptr %26, align 8, !tbaa !98
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #24
  %33 = load ptr, ptr %26, align 8, !tbaa !98
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %33, %32 ], [ %30, %29 ]
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = shl i32 %47, 24
  %49 = and i32 %48, -2147483648
  %50 = and i32 %42, 2147418157
  %51 = or disjoint i32 %49, %50
  store i32 %51, ptr %41, align 8
  br label %52

52:                                               ; preds = %39, %34, %18, %25, %45
  ret void
}

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cgraph_make_node_local(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !86 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !143
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !239
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2235, ptr noundef nonnull @.str.1) #24
  br label %22

22:                                               ; preds = %12, %16, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !143
  %24 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %28, %22
  tail call void @cgraph_make_decl_local(ptr noundef %23)
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !87
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %41, %37 ], [ %35, %33 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !143
  tail call void @cgraph_make_decl_local(ptr noundef %39)
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %37, !llvm.loop !413

43:                                               ; preds = %37, %33
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, -4
  %47 = or disjoint i8 %46, 1
  store i8 %47, ptr %44, align 8
  %48 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %0), !range !335
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2246, ptr noundef nonnull @.str.1) #24
  br label %51

51:                                               ; preds = %50, %43, %28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_nothrow_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #19 !prof !407 {
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = load i64, ptr %3, align 8
  %5 = and i8 %1, 1
  %6 = zext nneg i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 25
  %8 = and i64 %4, -33554433
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13, !prof !111

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %2 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -33554433
  %18 = or disjoint i64 %17, %7
  store i64 %18, ptr %15, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !prof !111, !llvm.loop !414

22:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_readonly_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #20 !prof !106 {
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = load i64, ptr %3, align 8
  %5 = and i8 %1, 1
  %6 = zext nneg i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 20
  %8 = and i64 %4, -1048577
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13, !prof !111

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %2 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -1048577
  %18 = or disjoint i64 %17, %7
  store i64 %18, ptr %15, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !prof !111, !llvm.loop !415

22:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_pure_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #20 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i8 %1, 1
  %7 = zext nneg i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 27
  %9 = and i32 %5, -134217729
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %4, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %2 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -134217729
  %20 = or disjoint i32 %19, %8
  store i32 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !416

24:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_looping_const_or_pure_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #20 !prof !106 {
  %3 = load ptr, ptr %0, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i8 %1, 1
  %7 = zext nneg i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 28
  %9 = and i32 %5, -268435457
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %4, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !111

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %2 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -268435457
  %20 = or disjoint i32 %19, %8
  store i32 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !prof !111, !llvm.loop !417

24:                                               ; preds = %14, %2
  ret void
}

declare void @gt_ggc_mx_cgraph_edge(ptr noundef) #3

declare void @gt_pch_nx_cgraph_edge(ptr noundef) #3

declare void @gt_ggc_mx_cgraph_node(ptr noundef) #3

declare void @gt_pch_nx_cgraph_node(ptr noundef) #3

declare void @gt_ggc_mx_cgraph_asm_node(ptr noundef) #3

declare void @gt_pch_nx_cgraph_asm_node(ptr noundef) #3

declare void @gt_ggc_m_P11cgraph_node4htab(ptr noundef) #3

declare void @gt_pch_n_P11cgraph_node4htab(ptr noundef) #3

declare zeroext i8 @decl_assembler_name_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @cgraph_add_edge_removal_hook, ptr @xmalloc, i64 1}
!36 = !{ptr @cgraph_remove_edge_removal_hook, ptr @free, i64 1}
!37 = !{ptr @cgraph_add_node_removal_hook, ptr @xmalloc, i64 3}
!38 = !{ptr @cgraph_remove_node_removal_hook, ptr @free, i64 2}
!39 = !{ptr @cgraph_add_function_insertion_hook, ptr @xmalloc, i64 3}
!40 = !{ptr @cgraph_remove_function_insertion_hook, ptr @free, i64 3}
!41 = !{ptr @cgraph_add_edge_duplication_hook, ptr @xmalloc, i64 1}
!42 = !{ptr @cgraph_remove_edge_duplication_hook, ptr @free, i64 1}
!43 = !{ptr @cgraph_add_node_duplication_hook, ptr @xmalloc, i64 3}
!44 = !{ptr @cgraph_remove_node_duplication_hook, ptr @free, i64 2}
!45 = !{ptr @cgraph_node, ptr @htab_create_alloc, i64 1}
!46 = !{ptr @cgraph_node, ptr @htab_find_slot, i64 554641}
!47 = !{ptr @cgraph_node, ptr @ggc_alloc_cleared_stat, i64 647}
!48 = !{ptr @cgraph_get_node, ptr @htab_find_slot, i64 39}
!49 = !{ptr @cgraph_remove_node, ptr @htab_remove_elt_with_hash, i64 23}
!50 = !{ptr @cgraph_remove_node, ptr @htab_delete, i64 8}
!51 = !{ptr @cgraph_remove_node, ptr @free, i64 41}
!52 = !{ptr @cgraph_remove_node, ptr @htab_find_slot, i64 663}
!53 = !{ptr @cgraph_remove_node, ptr @htab_clear_slot, i64 618}
!54 = !{ptr @cgraph_remove_node, ptr @cgraph_release_function_body, i64 618}
!55 = !{ptr @cgraph_insert_node_to_hashtable, ptr @htab_find_slot, i64 1}
!56 = !{ptr @cgraph_edge, ptr @htab_find_with_hash, i64 68699}
!57 = !{ptr @cgraph_edge, ptr @htab_create_alloc, i64 19}
!58 = !{ptr @cgraph_edge, ptr @htab_find_slot_with_hash, i64 68691}
!59 = !{ptr @cgraph_set_call_stmt, ptr @push_cfun, i64 6}
!60 = !{ptr @cgraph_set_call_stmt, ptr @stmt_can_throw_external, i64 6}
!61 = !{ptr @cgraph_set_call_stmt, ptr @pop_cfun, i64 6}
!62 = !{ptr @cgraph_set_call_stmt_including_clones, ptr @cgraph_edge, i64 6}
!63 = !{ptr @cgraph_set_call_stmt_including_clones, ptr @cgraph_set_call_stmt, i64 6}
!64 = !{ptr @cgraph_create_edge, ptr @ggc_alloc_stat, i64 69174}
!65 = !{ptr @cgraph_create_edge, ptr @push_cfun, i64 207487}
!66 = !{ptr @cgraph_create_edge, ptr @stmt_can_throw_external, i64 207487}
!67 = !{ptr @cgraph_create_edge, ptr @pop_cfun, i64 207487}
!68 = !{ptr @cgraph_create_edge, ptr @htab_find_slot_with_hash, i64 27}
!69 = !{ptr @cgraph_node_remove_callees, ptr @htab_delete, i64 11}
!70 = !{ptr @cgraph_release_function_body, ptr @push_cfun, i64 656}
!71 = !{ptr @cgraph_release_function_body, ptr @delete_tree_ssa, i64 3}
!72 = !{ptr @cgraph_release_function_body, ptr @delete_tree_cfg_annotations, i64 3}
!73 = !{ptr @cgraph_release_function_body, ptr @clear_edges, i64 3}
!74 = !{ptr @cgraph_release_function_body, ptr @pop_cfun, i64 656}
!75 = !{ptr @cgraph_release_function_body, ptr @gimple_set_body, i64 656}
!76 = !{ptr @cgraph_release_function_body, ptr @ggc_free, i64 656}
!77 = !{ptr @cgraph_mark_reachable_node, ptr @notice_global_symbol, i64 9}
!78 = !{ptr @cgraph_mark_needed_node, ptr @notice_global_symbol, i64 31}
!79 = !{ptr @cgraph_local_info, ptr @cgraph_node, i64 138072}
!80 = !{ptr @cgraph_rtl_info, ptr @cgraph_node, i64 68996}
!81 = !{ptr @change_decl_assembler_name, ptr @decl_assembler_name, i64 1}
!82 = !{ptr @cgraph_clone_edge, ptr @cgraph_create_edge, i64 46}
!83 = !{ptr @cgraph_clone_node, ptr @ggc_alloc_cleared_stat, i64 43}
!84 = !{ptr @cgraph_clone_node, ptr @cgraph_create_edge, i64 45}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!92, !88, i64 8}
!92 = !{!"_IO_FILE", !93, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !93, i64 112, !93, i64 116, !94, i64 120, !95, i64 128, !89, i64 130, !89, i64 131, !88, i64 136, !94, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !94, i64 184, !93, i64 192, !89, i64 196}
!93 = !{!"int", !89, i64 0}
!94 = !{!"long", !89, i64 0}
!95 = !{!"short", !89, i64 0}
!96 = !{!92, !88, i64 16}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!89, !89, i64 0}
!99 = !{!92, !88, i64 40}
!100 = !{!92, !88, i64 48}
!101 = !{!92, !93, i64 0}
!102 = !{!93, !93, i64 0}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!"function_entry_count", i64 1}
!107 = !{!108, !88, i64 0}
!108 = !{!"cgraph_edge_hook_list", !88, i64 0, !88, i64 8, !88, i64 16}
!109 = !{!108, !88, i64 8}
!110 = !{!108, !88, i64 16}
!111 = !{!"branch_weights", i32 1, i32 0}
!112 = distinct !{!112, !104, !105}
!113 = distinct !{!113, !104, !105}
!114 = !{!"function_entry_count", i64 3}
!115 = !{!116, !88, i64 0}
!116 = !{!"cgraph_node_hook_list", !88, i64 0, !88, i64 8, !88, i64 16}
!117 = !{!116, !88, i64 8}
!118 = !{!116, !88, i64 16}
!119 = !{!"branch_weights", i32 3, i32 3}
!120 = distinct !{!120, !104, !105}
!121 = !{!"function_entry_count", i64 2}
!122 = !{!"branch_weights", i32 2, i32 1}
!123 = distinct !{!123, !104, !105}
!124 = distinct !{!124, !104, !105}
!125 = !{!"branch_weights", i32 3, i32 0}
!126 = distinct !{!126, !104, !105}
!127 = distinct !{!127, !104, !105}
!128 = !{!129, !88, i64 0}
!129 = !{!"cgraph_2edge_hook_list", !88, i64 0, !88, i64 8, !88, i64 16}
!130 = !{!129, !88, i64 8}
!131 = !{!129, !88, i64 16}
!132 = distinct !{!132, !104, !105}
!133 = distinct !{!133, !104, !105}
!134 = !{!135, !88, i64 0}
!135 = !{!"cgraph_2node_hook_list", !88, i64 0, !88, i64 8, !88, i64 16}
!136 = !{!135, !88, i64 8}
!137 = !{!135, !88, i64 16}
!138 = distinct !{!138, !104, !105}
!139 = distinct !{!139, !104, !105}
!140 = !{!"function_entry_count", i64 554641}
!141 = !{!"branch_weights", i32 554641, i32 0}
!142 = !{!"branch_weights", i32 1, i32 554640}
!143 = !{!144, !88, i64 0}
!144 = !{!"cgraph_node", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !145, i64 144, !147, i64 184, !148, i64 224, !149, i64 232, !150, i64 256, !94, i64 288, !93, i64 296, !93, i64 300, !93, i64 304, !93, i64 308, !93, i64 308, !93, i64 308, !93, i64 308, !93, i64 308, !93, i64 308, !93, i64 308, !93, i64 308, !93, i64 309, !93, i64 309}
!145 = !{!"cgraph_local_info", !88, i64 0, !146, i64 8, !93, i64 32, !93, i64 32, !93, i64 32, !93, i64 32, !93, i64 32, !93, i64 32, !93, i64 32, !93, i64 32}
!146 = !{!"inline_summary", !94, i64 0, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20}
!147 = !{!"cgraph_global_info", !94, i64 0, !94, i64 8, !88, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !89, i64 36}
!148 = !{!"cgraph_rtl_info", !93, i64 0}
!149 = !{!"cgraph_clone_info", !88, i64 0, !88, i64 8, !88, i64 16}
!150 = !{!"cgraph_thunk_info", !94, i64 0, !94, i64 8, !88, i64 16, !89, i64 24, !89, i64 25, !89, i64 26}
!151 = !{!"branch_weights", i32 690, i32 553951}
!152 = !{!"branch_weights", i32 553951, i32 0}
!153 = !{!144, !88, i64 104}
!154 = !{!"branch_weights", i32 690, i32 46}
!155 = !{!144, !88, i64 24}
!156 = !{!144, !93, i64 296}
!157 = !{!144, !93, i64 304}
!158 = !{!144, !93, i64 300}
!159 = !{!"branch_weights", i32 1, i32 735}
!160 = !{!144, !88, i64 32}
!161 = !{!144, !93, i64 216}
!162 = !{!"branch_weights", i32 690, i32 0}
!163 = !{!144, !88, i64 40}
!164 = !{!144, !88, i64 48}
!165 = !{!144, !88, i64 56}
!166 = !{!"function_entry_count", i64 556091}
!167 = !{!"cgraph.c;hash_node"}
!168 = !{!"function_entry_count", i64 825531}
!169 = !{!"cgraph.c;eq_node"}
!170 = !{!144, !88, i64 272}
!171 = !{!144, !94, i64 256}
!172 = !{!144, !89, i64 280}
!173 = !{!144, !94, i64 264}
!174 = !{!144, !89, i64 281}
!175 = !{!144, !89, i64 282}
!176 = !{!"function_entry_count", i64 39}
!177 = !{!"branch_weights", i32 39, i32 0}
!178 = !{!"branch_weights", i32 0, i32 39}
!179 = !{!"function_entry_count", i64 663}
!180 = !{!"branch_weights", i32 621, i32 42}
!181 = !{!"VP", i32 0, i64 42, i64 -2396246888078766255, i64 42}
!182 = !{!"branch_weights", i32 42, i32 0}
!183 = distinct !{!183, !104, !105}
!184 = !{!144, !88, i64 16}
!185 = !{!"branch_weights", i32 615, i32 48}
!186 = !{!187, !88, i64 32}
!187 = !{!"cgraph_edge", !94, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !93, i64 72, !93, i64 76, !93, i64 80, !93, i64 84, !95, i64 88, !93, i64 90, !93, i64 90, !93, i64 90}
!188 = distinct !{!188, !104, !105}
!189 = !{!187, !88, i64 40}
!190 = !{!"branch_weights", i32 0, i32 48}
!191 = !{!187, !88, i64 48}
!192 = !{!"branch_weights", i32 38, i32 10}
!193 = !{!187, !88, i64 8}
!194 = !{!144, !88, i64 8}
!195 = !{!144, !88, i64 120}
!196 = !{!"branch_weights", i32 25, i32 23}
!197 = !{!187, !88, i64 56}
!198 = !{!"VP", i32 0, i64 23, i64 6196242093822180960, i64 23}
!199 = !{!187, !93, i64 84}
!200 = !{!187, !88, i64 24}
!201 = !{!"branch_weights", i32 48, i32 0}
!202 = distinct !{!202, !104, !105}
!203 = !{!"branch_weights", i32 1, i32 1513}
!204 = !{!"branch_weights", i32 79043, i32 128396}
!205 = !{!"branch_weights", i32 565, i32 206874}
!206 = !{!187, !88, i64 16}
!207 = !{!"branch_weights", i32 1513, i32 205926}
!208 = distinct !{!208, !104, !105}
!209 = !{!"branch_weights", i32 1495, i32 19}
!210 = !{!"branch_weights", i32 622, i32 41}
!211 = distinct !{!211, !104, !105}
!212 = !{!"branch_weights", i32 663, i32 0}
!213 = distinct !{!213, !104, !105}
!214 = !{!"branch_weights", i32 9, i32 654}
!215 = !{!"branch_weights", i32 3, i32 660}
!216 = !{!"branch_weights", i32 625, i32 38}
!217 = !{!"branch_weights", i32 611, i32 7}
!218 = !{!"branch_weights", i32 7, i32 0}
!219 = distinct !{!219, !104, !105}
!220 = !{!144, !88, i64 72}
!221 = !{!"branch_weights", i32 3, i32 4}
!222 = !{!144, !88, i64 80}
!223 = !{!144, !88, i64 88}
!224 = !{i64 0, i64 8, !87, i64 8, i64 8, !87, i64 16, i64 8, !87}
!225 = !{!144, !88, i64 96}
!226 = !{!"branch_weights", i32 4, i32 0}
!227 = distinct !{!227, !104, !105}
!228 = !{!"branch_weights", i32 223, i32 97}
!229 = distinct !{!229, !104, !105}
!230 = !{!"branch_weights", i32 628, i32 35}
!231 = !{!"branch_weights", i32 625, i32 3}
!232 = !{!"branch_weights", i32 662, i32 1}
!233 = !{!"branch_weights", i32 0, i32 1}
!234 = !{!"branch_weights", i32 1, i32 127}
!235 = !{!"branch_weights", i32 127, i32 1}
!236 = distinct !{!236, !104, !105}
!237 = distinct !{!237, !104, !105}
!238 = distinct !{!238, !104, !105}
!239 = !{!144, !88, i64 112}
!240 = distinct !{!240, !104, !105}
!241 = !{!"branch_weights", i32 45, i32 618}
!242 = !{!"branch_weights", i32 0, i32 45}
!243 = !{!"branch_weights", i32 3, i32 42}
!244 = !{!144, !88, i64 200}
!245 = !{!"branch_weights", i32 0, i32 3}
!246 = distinct !{!246, !104, !105}
!247 = distinct !{!247, !104, !105}
!248 = !{!"function_entry_count", i64 69246}
!249 = !{!"branch_weights", i32 547, i32 68699}
!250 = !{!"VP", i32 0, i64 68699, i64 6196242093822180960, i64 68699}
!251 = !{!"branch_weights", i32 547, i32 78730}
!252 = !{!"branch_weights", i32 0, i32 79277}
!253 = distinct !{!253, !104, !105}
!254 = !{!"branch_weights", i32 19, i32 528}
!255 = !{!"branch_weights", i32 1, i32 151}
!256 = !{!"VP", i32 0, i64 68691, i64 6196242093822180960, i64 68691}
!257 = !{!"branch_weights", i32 68691, i32 0}
!258 = !{!"branch_weights", i32 151, i32 549377}
!259 = distinct !{!259, !104, !105}
!260 = !{!"function_entry_count", i64 88289}
!261 = !{!"cgraph.c;edge_hash"}
!262 = !{!"VP", i32 0, i64 88289, i64 6196242093822180960, i64 88289}
!263 = !{!"function_entry_count", i64 239865}
!264 = !{!"cgraph.c;edge_eq"}
!265 = !{!"function_entry_count", i64 6}
!266 = !{!"branch_weights", i32 6, i32 0}
!267 = !{!"branch_weights", i32 3, i32 573}
!268 = !{!"branch_weights", i32 1, i32 191}
!269 = !{!"branch_weights", i32 191, i32 1}
!270 = distinct !{!270, !104, !105}
!271 = distinct !{!271, !104, !105}
!272 = !{!187, !93, i64 72}
!273 = distinct !{!273, !104, !105}
!274 = distinct !{!274, !104, !105}
!275 = !{!"function_entry_count", i64 207487}
!276 = !{!"branch_weights", i32 0, i32 207487}
!277 = !{!"branch_weights", i32 207487, i32 0}
!278 = !{!"branch_weights", i32 69174, i32 138313}
!279 = !{!187, !88, i64 64}
!280 = !{!"branch_weights", i32 95, i32 207392}
!281 = !{!"branch_weights", i32 158, i32 207329}
!282 = !{!187, !94, i64 0}
!283 = !{!187, !93, i64 80}
!284 = !{!187, !95, i64 88}
!285 = !{!"branch_weights", i32 207460, i32 27}
!286 = !{!"VP", i32 0, i64 27, i64 6196242093822180960, i64 27}
!287 = !{!"branch_weights", i32 27, i32 0}
!288 = !{!"branch_weights", i32 85852, i32 121635}
!289 = !{!"branch_weights", i32 121635, i32 0}
!290 = !{!"branch_weights", i32 0, i32 121635}
!291 = !{!"function_entry_count", i64 46}
!292 = !{!"branch_weights", i32 10, i32 36}
!293 = !{!"branch_weights", i32 37, i32 9}
!294 = !{!"branch_weights", i32 46, i32 0}
!295 = !{!296, !88, i64 48}
!296 = !{!"function", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !93, i64 104, !93, i64 108, !93, i64 112, !93, i64 116, !93, i64 120, !93, i64 124, !88, i64 128, !93, i64 136, !93, i64 137, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139}
!297 = distinct !{!297, !104, !105}
!298 = distinct !{!298, !104, !105}
!299 = !{!94, !94, i64 0}
!300 = !{!301, !94, i64 72}
!301 = !{!"basic_block_def", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !89, i64 32, !88, i64 48, !88, i64 56, !89, i64 64, !94, i64 72, !93, i64 80, !93, i64 84, !93, i64 88, !93, i64 92, !93, i64 96}
!302 = !{!301, !93, i64 84}
!303 = !{!"function_entry_count", i64 851}
!304 = !{!"function_entry_count", i64 656}
!305 = !{!"branch_weights", i32 0, i32 656}
!306 = !{!296, !88, i64 24}
!307 = !{!"branch_weights", i32 653, i32 3}
!308 = !{!296, !88, i64 0}
!309 = !{!296, !88, i64 8}
!310 = !{!296, !88, i64 40}
!311 = !{!"branch_weights", i32 656, i32 0}
!312 = !{!296, !88, i64 32}
!313 = distinct !{!313, !104, !105}
!314 = !{!"function_entry_count", i64 16386}
!315 = !{!"branch_weights", i32 16386, i32 52643}
!316 = !{!"branch_weights", i32 16346, i32 40}
!317 = !{!"branch_weights", i32 40, i32 0}
!318 = !{!144, !88, i64 64}
!319 = !{!"function_entry_count", i64 52643}
!320 = !{!"branch_weights", i32 52643, i32 0}
!321 = !{!"function_entry_count", i64 138072}
!322 = !{!"branch_weights", i32 138072, i32 0}
!323 = !{!"function_entry_count", i64 68996}
!324 = !{!"branch_weights", i32 68996, i32 0}
!325 = !{!"branch_weights", i32 38, i32 68958}
!326 = !{!"branch_weights", i32 16387, i32 52571}
!327 = !{!328, !88, i64 176}
!328 = !{!"lang_hooks", !88, i64 0, !94, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !88, i64 184, !88, i64 192, !88, i64 200, !88, i64 208, !88, i64 216, !88, i64 224, !88, i64 232, !329, i64 240, !330, i64 248, !331, i64 256, !332, i64 272, !333, i64 432, !334, i64 560, !88, i64 584, !88, i64 592, !88, i64 600, !88, i64 608, !88, i64 616, !88, i64 624, !88, i64 632, !88, i64 640, !88, i64 648, !88, i64 656, !88, i64 664, !89, i64 672}
!329 = !{!"lang_hooks_for_tree_inlining", !88, i64 0}
!330 = !{!"lang_hooks_for_callgraph", !88, i64 0}
!331 = !{!"lang_hooks_for_tree_dump", !88, i64 0, !88, i64 8}
!332 = !{!"lang_hooks_for_decls", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !88, i64 152}
!333 = !{!"lang_hooks_for_types", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !89, i64 120}
!334 = !{!"lang_hooks_for_lto", !88, i64 0, !88, i64 8, !88, i64 16}
!335 = !{i32 1, i32 5}
!336 = !{!144, !94, i64 288}
!337 = !{!144, !93, i64 168}
!338 = !{!144, !93, i64 172}
!339 = !{!144, !93, i64 208}
!340 = !{!144, !93, i64 160}
!341 = !{!144, !93, i64 164}
!342 = !{!144, !93, i64 212}
!343 = !{!144, !94, i64 152}
!344 = !{!144, !94, i64 184}
!345 = distinct !{!345, !104, !105}
!346 = distinct !{!346, !104, !105}
!347 = distinct !{!347, !104, !105}
!348 = !{!"function_entry_count", i64 367502}
!349 = !{!"branch_weights", i32 0, i32 367502}
!350 = !{!"branch_weights", i32 49805, i32 317697}
!351 = !{!"branch_weights", i32 317078, i32 619}
!352 = !{!"branch_weights", i32 31, i32 317047}
!353 = !{!"branch_weights", i32 317047, i32 0}
!354 = !{!355, !88, i64 1112}
!355 = !{!"gcc_target", !356, i64 0, !358, i64 368, !359, i64 664, !93, i64 744, !88, i64 752, !88, i64 760, !88, i64 768, !88, i64 776, !88, i64 784, !88, i64 792, !88, i64 800, !88, i64 808, !88, i64 816, !88, i64 824, !88, i64 832, !88, i64 840, !88, i64 848, !88, i64 856, !88, i64 864, !88, i64 872, !88, i64 880, !88, i64 888, !88, i64 896, !88, i64 904, !88, i64 912, !88, i64 920, !88, i64 928, !88, i64 936, !88, i64 944, !88, i64 952, !88, i64 960, !88, i64 968, !88, i64 976, !88, i64 984, !88, i64 992, !88, i64 1000, !88, i64 1008, !88, i64 1016, !88, i64 1024, !88, i64 1032, !88, i64 1040, !88, i64 1048, !88, i64 1056, !94, i64 1064, !94, i64 1072, !88, i64 1080, !88, i64 1088, !88, i64 1096, !88, i64 1104, !88, i64 1112, !88, i64 1120, !88, i64 1128, !88, i64 1136, !88, i64 1144, !88, i64 1152, !88, i64 1160, !88, i64 1168, !360, i64 1176, !88, i64 1232, !88, i64 1240, !88, i64 1248, !88, i64 1256, !88, i64 1264, !88, i64 1272, !88, i64 1280, !88, i64 1288, !88, i64 1296, !88, i64 1304, !88, i64 1312, !88, i64 1320, !88, i64 1328, !88, i64 1336, !88, i64 1344, !88, i64 1352, !88, i64 1360, !88, i64 1368, !88, i64 1376, !88, i64 1384, !88, i64 1392, !88, i64 1400, !88, i64 1408, !88, i64 1416, !88, i64 1424, !88, i64 1432, !88, i64 1440, !88, i64 1448, !88, i64 1456, !94, i64 1464, !361, i64 1472, !88, i64 1664, !88, i64 1672, !88, i64 1680, !88, i64 1688, !88, i64 1696, !88, i64 1704, !88, i64 1712, !88, i64 1720, !88, i64 1728, !88, i64 1736, !88, i64 1744, !88, i64 1752, !88, i64 1760, !88, i64 1768, !88, i64 1776, !362, i64 1784, !363, i64 1792, !364, i64 1896, !365, i64 1968, !88, i64 2016, !89, i64 2024, !89, i64 2025, !89, i64 2026, !89, i64 2027, !89, i64 2028, !89, i64 2029, !89, i64 2030, !89, i64 2031, !89, i64 2032, !89, i64 2033, !89, i64 2034, !89, i64 2035}
!356 = !{!"asm_out", !88, i64 0, !88, i64 8, !88, i64 16, !357, i64 24, !357, i64 56, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !88, i64 184, !88, i64 192, !88, i64 200, !88, i64 208, !88, i64 216, !88, i64 224, !88, i64 232, !88, i64 240, !88, i64 248, !88, i64 256, !88, i64 264, !88, i64 272, !88, i64 280, !88, i64 288, !88, i64 296, !88, i64 304, !88, i64 312, !88, i64 320, !88, i64 328, !88, i64 336, !88, i64 344, !88, i64 352, !88, i64 360}
!357 = !{!"asm_int_op", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
!358 = !{!"sched", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !88, i64 184, !88, i64 192, !88, i64 200, !88, i64 208, !88, i64 216, !88, i64 224, !88, i64 232, !88, i64 240, !88, i64 248, !88, i64 256, !88, i64 264, !88, i64 272, !88, i64 280, !88, i64 288}
!359 = !{!"vectorize", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72}
!360 = !{!"addr_space", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48}
!361 = !{!"calls", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !88, i64 184}
!362 = !{!"c", !88, i64 0}
!363 = !{!"cxx", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96}
!364 = !{!"emutls", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !89, i64 64, !89, i64 65}
!365 = !{!"target_option_hooks", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40}
!366 = !{!"VP", i32 0, i64 317047, i64 -4452430551855564803, i64 317047}
!367 = !{!"branch_weights", i32 0, i32 317047}
!368 = distinct !{!368, !104, !105}
!369 = !{!"branch_weights", i32 2, i32 0}
!370 = !{!"branch_weights", i32 0, i32 2}
!371 = !{!"branch_weights", i32 1, i32 1}
!372 = !{!373, !88, i64 8}
!373 = !{!"cgraph_asm_node", !88, i64 0, !88, i64 8, !93, i64 16}
!374 = !{!373, !93, i64 16}
!375 = !{!373, !88, i64 0}
!376 = !{!"function_entry_count", i64 38}
!377 = !{!"branch_weights", i32 0, i32 38}
!378 = !{!187, !93, i64 76}
!379 = !{!"branch_weights", i32 0, i32 91}
!380 = !{!"branch_weights", i32 46, i32 45}
!381 = !{!"VP", i32 0, i64 22, i64 -3860144408819467257, i64 22}
!382 = !{!"branch_weights", i32 45, i32 0}
!383 = distinct !{!383, !104, !105}
!384 = !{i64 0, i64 8, !87, i64 8, i64 8, !299, i64 16, i64 4, !102, i64 20, i64 4, !102, i64 24, i64 4, !102, i64 28, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102, i64 32, i64 4, !102}
!385 = !{i64 0, i64 8, !299, i64 8, i64 8, !299, i64 16, i64 8, !87, i64 24, i64 4, !102, i64 28, i64 4, !102, i64 32, i64 4, !102, i64 36, i64 1, !98}
!386 = !{!144, !88, i64 232}
!387 = !{!"branch_weights", i32 0, i32 46}
!388 = !{!389, !93, i64 0}
!389 = !{!"VEC_cgraph_edge_p_base", !93, i64 0, !93, i64 4, !89, i64 8}
!390 = distinct !{!390, !104, !105}
!391 = !{!"branch_weights", i32 1, i32 45}
!392 = distinct !{!392, !104, !105}
!393 = !{!"branch_weights", i32 4, i32 42}
!394 = !{!"branch_weights", i32 1, i32 183}
!395 = !{!"VP", i32 0, i64 123, i64 3737372772730542806, i64 41, i64 6310250871146164189, i64 41, i64 -5375802154647259057, i64 41}
!396 = !{!"branch_weights", i32 183, i32 309}
!397 = distinct !{!397, !104, !105}
!398 = !{!144, !88, i64 240}
!399 = !{!144, !88, i64 248}
!400 = distinct !{!400, !104, !105}
!401 = distinct !{!401, !104, !105}
!402 = distinct !{!402, !104, !105}
!403 = !{!404, !88, i64 32}
!404 = !{!"simple_ipa_opt_pass", !405, i64 0}
!405 = !{!"opt_pass", !93, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !93, i64 48, !93, i64 52, !93, i64 56, !93, i64 60, !93, i64 64, !93, i64 68, !93, i64 72}
!406 = !{!328, !88, i64 656}
!407 = !{!"function_entry_count", i64 40}
!408 = !{!"branch_weights", i32 2, i32 38}
!409 = !{!"function_entry_count", i64 79}
!410 = !{!"branch_weights", i32 0, i32 76, i32 3}
!411 = !{!"branch_weights", i32 0, i32 79}
!412 = !{!"branch_weights", i32 79, i32 0}
!413 = distinct !{!413, !104, !105}
!414 = distinct !{!414, !104, !105}
!415 = distinct !{!415, !104, !105}
!416 = distinct !{!416, !104, !105}
!417 = distinct !{!417, !104, !105}
