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
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
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

@cgraph_nodes = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_nodes_queue = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_new_nodes = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_n_nodes = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_max_uid = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_edge_max_uid = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_max_pid = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_asm_nodes = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_order = dso_local local_unnamed_addr global i32 0, align 4
@first_cgraph_edge_removal_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_node_removal_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_edge_duplicated_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_node_duplicated_hook = dso_local local_unnamed_addr global ptr null, align 8
@first_cgraph_function_insertion_hook = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_global_info_ready = dso_local local_unnamed_addr global i8 0, align 1
@cgraph_state = dso_local local_unnamed_addr global i32 0, align 4
@cgraph_function_flags_ready = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"cgraph.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_hash = internal global ptr null, align 8
@assembler_name_hash = internal global ptr null, align 8
@free_nodes = internal global ptr null, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@free_edges = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@cgraph_inline_failed_string.cif_string_table = internal unnamed_addr constant [19 x ptr] [ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"function not considered for inlining\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"function body not available\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"redefined extern inline functions are not considered for inlining\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"function not inlinable\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"function not inline candidate\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"--param large-function-growth limit reached\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"--param large-stack-frame-growth limit reached\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"--param max-inline-insns-single limit reached\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"--param max-inline-insns-auto limit reached\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"--param inline-unit-growth limit reached\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"recursive inlining\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"call is unlikely and code size would grow\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"function not declared inline and code size would grow\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"optimizing for size and code size would grow\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"target specific option mismatch\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"mismatched arguments\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"originally indirect function call not considered for inlining\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@cgraph_availability_names = dso_local local_unnamed_addr constant [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"not_available\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"overwritable\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"%s/%i(%i)\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" @\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c" (inline copy in %s/%i)\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c" (clone of %s/%i)\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c" executed %ldx\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c" %i time, %i benefit\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c" (%i after inlining)\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" %i size, %i benefit\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c" %i bytes stack usage\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c" %i bytes after inlining\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c" nested in: %s\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c" address_taken\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c" reachable\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c" body\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c" process\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c" local\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c" always_inline\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c" inlinable\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c" redefined_extern_inline\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c" asm_written\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"\0A  called by: \00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"%s/%i \00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"(%ldx) \00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"(%.2f per call) \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"(inlined) \00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"(indirect) \00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"(can throw external) \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"\0A  calls: \00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"(nested in %i loops) \00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"  aliases & thunks:\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c" %s/%i\00", align 1
@.str.62 = private unnamed_addr constant [68 x i8] c" (thunk of %s fixed ofset %i virtual value %i has virtual offset %i\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [13 x i8] c"callgraph:\0A\0A\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.65 = private unnamed_addr constant [46 x i8] c"%D renamed after being referenced in assembly\00", align 1
@cgraph_asm_last_node = internal global ptr null, align 8
@.str.66 = private unnamed_addr constant [7 x i8] c"_clone\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@clone_fn_id_num = internal global i32 0, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@pass_early_local_passes = external local_unnamed_addr global %struct.simple_ipa_opt_pass, align 8
@gt_ggc_r_gt_cgraph_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @free_edges, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_edge, ptr @gt_pch_nx_cgraph_edge }, %struct.ggc_root_tab { ptr @free_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @cgraph_asm_last_node, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_asm_node, ptr @gt_pch_nx_cgraph_asm_node }, %struct.ggc_root_tab { ptr @assembler_name_hash, i64 1, i64 8, ptr @gt_ggc_m_P11cgraph_node4htab, ptr @gt_pch_n_P11cgraph_node4htab }, %struct.ggc_root_tab { ptr @cgraph_hash, i64 1, i64 8, ptr @gt_ggc_m_P11cgraph_node4htab, ptr @gt_pch_n_P11cgraph_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_cgraph_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @clone_fn_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_add_edge_removal_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #19
  store ptr %0, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_edge_removal_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !llvm.loop !14

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_edge_removal_hook(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_edge_removal_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !llvm.loop !16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  store ptr %9, ptr %3, align 8, !tbaa !13
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_add_node_removal_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #19
  store ptr %0, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !20
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_node_removal_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !llvm.loop !21

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_node_removal_hook(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_node_removal_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !llvm.loop !22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  store ptr %9, ptr %3, align 8, !tbaa !13
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_add_function_insertion_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #19
  store ptr %0, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !20
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_function_insertion_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !llvm.loop !23

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_function_insertion_hook(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_function_insertion_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !llvm.loop !24

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  store ptr %9, ptr %3, align 8, !tbaa !13
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_call_function_insertion_hooks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @first_cgraph_function_insertion_hook, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  tail call void %6(ptr noundef %0, ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !25

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_add_edge_duplication_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #19
  store ptr %0, ptr %3, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !29
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_edge_duplicated_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !llvm.loop !30

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_edge_duplication_hook(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_edge_duplicated_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !llvm.loop !31

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  store ptr %9, ptr %3, align 8, !tbaa !13
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_add_node_duplication_hook(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #19
  store ptr %0, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !35
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ @first_cgraph_node_duplicated_hook, %2 ], [ %10, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %8, i64 0, i32 2
  br i1 %9, label %11, label %6, !llvm.loop !36

11:                                               ; preds = %6
  store ptr %3, ptr %7, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_node_duplication_hook(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @first_cgraph_node_duplicated_hook, %1 ], [ %6, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %0
  %6 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %2, !llvm.loop !37

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  store ptr %9, ptr %3, align 8, !tbaa !13
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cgraph_node, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %2) #21
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 468, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_node, ptr noundef nonnull @eq_node, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #19
  store ptr %11, ptr @cgraph_hash, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %8, %7 ]
  store ptr %0, ptr %2, align 8, !tbaa !38
  %14 = call ptr @htab_find_slot(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 1) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 27
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 512
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  br label %51

25:                                               ; preds = %12
  %26 = call fastcc ptr @cgraph_create_node() #20
  store ptr %0, ptr %26, align 8, !tbaa !38
  store ptr %26, ptr %14, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i64, ptr %28, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 29
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = call ptr @cgraph_node(ptr noundef nonnull %28) #20
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 5
  store ptr %35, ptr %36, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 7
  store ptr %38, ptr %39, align 8, !tbaa !52
  store ptr %26, ptr %37, align 8, !tbaa !51
  br label %40

40:                                               ; preds = %34, %30, %25
  %41 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %45 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %46 = call i32 @decl_assembler_name_hash(ptr noundef %44) #19
  %47 = call ptr @htab_find_slot_with_hash(ptr noundef %45, ptr noundef %44, i32 noundef %46, i32 noundef 1) #19
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store ptr %26, ptr %47, align 8, !tbaa !13
  br label %51

51:                                               ; preds = %40, %50, %43, %17, %22
  %52 = phi ptr [ %24, %22 ], [ %15, %17 ], [ %26, %43 ], [ %26, %50 ], [ %26, %40 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %2) #21
  ret ptr %52
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_node(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cgraph_create_node() unnamed_addr #0 {
  %1 = tail call fastcc ptr @cgraph_allocate_node() #20
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 26
  store i32 -1, ptr %4, align 8, !tbaa !54
  %5 = load i32, ptr @cgraph_order, align 4, !tbaa !55
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @cgraph_order, align 4, !tbaa !55
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 25
  store i32 %5, ptr %7, align 4, !tbaa !56
  %8 = icmp eq ptr %2, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 4
  store ptr %1, ptr %10, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %9, %0
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %13, align 8, !tbaa !58
  store ptr %1, ptr @cgraph_nodes, align 8, !tbaa !13
  %14 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !55
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @cgraph_n_nodes, align 4, !tbaa !55
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @decl_assembler_name_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cgraph_allocate_node() unnamed_addr #0 {
  %1 = load ptr, ptr @free_nodes, align 8, !tbaa !13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  store ptr %5, ptr @free_nodes, align 8, !tbaa !13
  br label %11

6:                                                ; preds = %0
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 312) #19
  %8 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !55
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @cgraph_max_uid, align 4, !tbaa !55
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 24
  store i32 %8, ptr %10, align 8, !tbaa !59
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi ptr [ %1, %3 ], [ %7, %6 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cgraph_same_body_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @cgraph_same_body_alias_1(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @cgraph_same_body_alias_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.cgraph_node, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %3) #21
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 29
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 519, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 29
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #19
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call ptr @cgraph_node(ptr noundef nonnull %1) #20
  store ptr %0, ptr %3, align 8, !tbaa !38
  %15 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #19
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = call fastcc ptr @cgraph_allocate_node() #20
  store ptr %0, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 27
  %22 = load i16, ptr %21, align 4
  %23 = or i16 %22, 512
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 13
  store ptr %14, ptr %24, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 4
  store ptr null, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 4
  store ptr %20, ptr %30, align 8, !tbaa !57
  br label %31

31:                                               ; preds = %29, %19
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 3
  store ptr %27, ptr %32, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 22, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !60
  store ptr %20, ptr %26, align 8, !tbaa !48
  store ptr %20, ptr %16, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %13, %31
  %35 = phi ptr [ %20, %31 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %3) #21
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_add_thunk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noundef readnone %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @cgraph_get_node(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @.str.1) #19
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.1) #19
  br label %21

21:                                               ; preds = %16, %20
  tail call void @cgraph_remove_node(ptr noundef nonnull %8) #20
  br label %22

22:                                               ; preds = %21, %7
  %23 = tail call fastcc ptr @cgraph_same_body_alias_1(ptr noundef %0, ptr noundef %1) #20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #19
  br label %26

26:                                               ; preds = %22, %25
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22
  store i64 %3, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 3
  store i8 %2, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 1
  store i64 %4, ptr %29, align 8, !tbaa !63
  %30 = icmp ne ptr %5, null
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 4
  store i8 %31, ptr %32, align 1, !tbaa !64
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 2
  store ptr %6, ptr %33, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 22, i32 5
  store i8 1, ptr %34, align 2, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_get_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cgraph_node, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %2) #21
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 599, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  store ptr %0, ptr %2, align 8, !tbaa !38
  %11 = call ptr @htab_find_slot(ptr noundef nonnull %8, ptr noundef nonnull %2, i32 noundef 0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 512
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %10, %13, %21, %16, %7
  %25 = phi ptr [ null, %7 ], [ %23, %21 ], [ %14, %16 ], [ null, %13 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %2) #21
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 8, !tbaa !59
  tail call fastcc void @cgraph_call_node_removal_hooks(ptr noundef %0) #20
  tail call fastcc void @cgraph_node_remove_callers(ptr noundef %0) #20
  tail call void @cgraph_node_remove_callees(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 17
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(ptr noundef nonnull %4) #20
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, -10
  store i16 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11, !llvm.loop !66

17:                                               ; preds = %11, %1
  store ptr null, ptr %8, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 6
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %22, %21 ], [ %27, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = icmp eq ptr %25, %0
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 7
  br i1 %26, label %28, label %23, !llvm.loop !67

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  store ptr %30, ptr %24, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %28, %17
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %33, i64 0, i32 3
  %38 = select i1 %34, ptr @cgraph_nodes, ptr %37
  store ptr %36, ptr %38, align 8, !tbaa !13
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %40 = icmp eq ptr %36, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %36, i64 0, i32 4
  store ptr %33, ptr %42, align 8, !tbaa !57
  br label %43

43:                                               ; preds = %41, %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %44 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %45 = tail call ptr @htab_find_slot(ptr noundef %44, ptr noundef nonnull %0, i32 noundef 0) #19
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %127

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %125, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !38
  br label %54

54:                                               ; preds = %52, %58
  %55 = phi ptr [ %50, %52 ], [ %60, %58 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = icmp eq ptr %56, %53
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %125, label %54, !llvm.loop !68

62:                                               ; preds = %54
  store ptr %55, ptr %45, align 8, !tbaa !13
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !70
  br i1 %65, label %70, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %64, i64 0, i32 10
  store ptr %67, ptr %69, align 8, !tbaa !70
  br label %70

70:                                               ; preds = %62, %68
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 10
  %72 = icmp eq ptr %67, null
  %73 = load ptr, ptr %49, align 8, !tbaa !71
  %74 = icmp eq ptr %73, %55
  br i1 %72, label %85, label %75

75:                                               ; preds = %70
  br i1 %74, label %76, label %80

76:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1349, ptr noundef nonnull @.str.1) #19
  %77 = load ptr, ptr %63, align 8, !tbaa !69
  %78 = load ptr, ptr %71, align 8, !tbaa !70
  %79 = load ptr, ptr %49, align 8, !tbaa !71
  br label %80

80:                                               ; preds = %75, %76
  %81 = phi ptr [ %73, %75 ], [ %79, %76 ]
  %82 = phi ptr [ %67, %75 ], [ %78, %76 ]
  %83 = phi ptr [ %64, %75 ], [ %77, %76 ]
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %82, i64 0, i32 9
  store ptr %83, ptr %84, align 8, !tbaa !69
  br label %88

85:                                               ; preds = %70
  br i1 %74, label %88, label %86

86:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1355, ptr noundef nonnull @.str.1) #19
  %87 = load ptr, ptr %63, align 8, !tbaa !69
  br label %88

88:                                               ; preds = %86, %85, %80
  %89 = phi ptr [ %81, %80 ], [ %64, %85 ], [ %87, %86 ]
  store ptr null, ptr %49, align 8, !tbaa !71
  %90 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 21
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(24) %91, i64 24, i1 false), !tbaa.struct !72
  %92 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %93 = load ptr, ptr %92, align 8, !tbaa !73
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 12
  store ptr %93, ptr %94, align 8, !tbaa !73
  %95 = icmp eq ptr %93, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br i1 %95, label %103, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.cgraph_node, ptr %93, i64 0, i32 11
  %98 = load ptr, ptr %97, align 8, !tbaa !71
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %98, i64 0, i32 10
  store ptr %55, ptr %101, align 8, !tbaa !70
  br label %102

102:                                              ; preds = %100, %96
  store ptr %98, ptr %63, align 8, !tbaa !69
  store ptr %55, ptr %97, align 8, !tbaa !71
  br label %103

103:                                              ; preds = %102, %88
  %104 = icmp eq ptr %89, null
  br i1 %104, label %127, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 11
  %107 = load ptr, ptr %106, align 8, !tbaa !71
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store ptr %89, ptr %106, align 8, !tbaa !71
  br label %118

110:                                              ; preds = %105, %110
  %111 = phi ptr [ %113, %110 ], [ %107, %105 ]
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !69
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %110, !llvm.loop !74

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 9
  store ptr %89, ptr %116, align 8, !tbaa !69
  %117 = getelementptr inbounds %struct.cgraph_node, ptr %89, i64 0, i32 10
  store ptr %111, ptr %117, align 8, !tbaa !70
  br label %118

118:                                              ; preds = %115, %109
  br label %119

119:                                              ; preds = %118, %119
  %120 = phi ptr [ %123, %119 ], [ %89, %118 ]
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %120, i64 0, i32 12
  store ptr %55, ptr %121, align 8, !tbaa !73
  %122 = getelementptr inbounds %struct.cgraph_node, ptr %120, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !69
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %119, !llvm.loop !75

125:                                              ; preds = %58, %48
  %126 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  tail call void @htab_clear_slot(ptr noundef %126, ptr noundef nonnull %45) #19
  br label %127

127:                                              ; preds = %119, %103, %125, %43
  %128 = phi i1 [ true, %43 ], [ false, %125 ], [ true, %103 ], [ true, %119 ]
  %129 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 10
  %130 = load ptr, ptr %129, align 8, !tbaa !70
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !69
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %130, i64 0, i32 9
  store ptr %134, ptr %135, align 8, !tbaa !69
  br label %144

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !73
  %139 = icmp eq ptr %138, null
  %140 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 9
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  br i1 %139, label %144, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 11
  store ptr %141, ptr %143, align 8, !tbaa !71
  br label %144

144:                                              ; preds = %136, %142, %132
  %145 = phi ptr [ %141, %142 ], [ %134, %132 ], [ %141, %136 ]
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.cgraph_node, ptr %145, i64 0, i32 10
  store ptr %130, ptr %148, align 8, !tbaa !70
  br label %149

149:                                              ; preds = %147, %144
  %150 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = icmp eq ptr %151, null
  br i1 %152, label %185, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 12
  %155 = load ptr, ptr %154, align 8, !tbaa !73
  %156 = icmp eq ptr %155, null
  br i1 %156, label %179, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.cgraph_node, ptr %151, i64 0, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !69
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %157, %161
  %162 = phi ptr [ %166, %161 ], [ %159, %157 ]
  %163 = phi ptr [ %162, %161 ], [ %151, %157 ]
  %164 = getelementptr inbounds %struct.cgraph_node, ptr %163, i64 0, i32 12
  store ptr %155, ptr %164, align 8, !tbaa !73
  %165 = getelementptr inbounds %struct.cgraph_node, ptr %162, i64 0, i32 9
  %166 = load ptr, ptr %165, align 8, !tbaa !69
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %161, !llvm.loop !76

168:                                              ; preds = %161, %157
  %169 = phi ptr [ %151, %157 ], [ %162, %161 ]
  %170 = getelementptr inbounds %struct.cgraph_node, ptr %169, i64 0, i32 9
  %171 = getelementptr inbounds %struct.cgraph_node, ptr %169, i64 0, i32 12
  store ptr %155, ptr %171, align 8, !tbaa !73
  %172 = load ptr, ptr %154, align 8, !tbaa !73
  %173 = getelementptr inbounds %struct.cgraph_node, ptr %172, i64 0, i32 11
  %174 = load ptr, ptr %173, align 8, !tbaa !71
  store ptr %174, ptr %170, align 8, !tbaa !69
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.cgraph_node, ptr %174, i64 0, i32 10
  store ptr %169, ptr %177, align 8, !tbaa !70
  br label %178

178:                                              ; preds = %176, %168
  store ptr %151, ptr %173, align 8, !tbaa !71
  br label %185

179:                                              ; preds = %153, %179
  %180 = phi ptr [ %182, %179 ], [ %151, %153 ]
  %181 = getelementptr inbounds %struct.cgraph_node, ptr %180, i64 0, i32 9
  %182 = load ptr, ptr %181, align 8, !tbaa !69
  %183 = getelementptr inbounds %struct.cgraph_node, ptr %180, i64 0, i32 12
  store ptr null, ptr %183, align 8, !tbaa !73
  %184 = icmp eq ptr %182, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %181, i8 0, i64 16, i1 false)
  br i1 %184, label %185, label %179, !llvm.loop !77

185:                                              ; preds = %179, %178, %149
  %186 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %187 = load ptr, ptr %186, align 8, !tbaa !48
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %185, %189
  %190 = phi ptr [ %191, %189 ], [ %187, %185 ]
  tail call void @cgraph_remove_same_body_alias(ptr noundef nonnull %190) #20
  %191 = load ptr, ptr %186, align 8, !tbaa !48
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %189, !llvm.loop !78

193:                                              ; preds = %189, %185
  %194 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 14
  %195 = load ptr, ptr %194, align 8, !tbaa !79
  %196 = icmp eq ptr %195, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %193, %197
  %198 = phi ptr [ %200, %197 ], [ %195, %193 ]
  %199 = getelementptr inbounds %struct.cgraph_node, ptr %198, i64 0, i32 14
  %200 = load ptr, ptr %199, align 8, !tbaa !79
  %201 = icmp eq ptr %200, %0
  br i1 %201, label %202, label %197, !llvm.loop !80

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.cgraph_node, ptr %198, i64 0, i32 14
  %204 = icmp eq ptr %195, %198
  %205 = select i1 %204, ptr null, ptr %195
  store ptr %205, ptr %203, align 8, !tbaa !79
  store ptr null, ptr %194, align 8, !tbaa !79
  br label %206

206:                                              ; preds = %202, %193
  br i1 %128, label %207, label %236

207:                                              ; preds = %206
  %208 = load ptr, ptr %45, align 8, !tbaa !13
  %209 = icmp eq ptr %208, null
  br i1 %209, label %236, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.cgraph_node, ptr %208, i64 0, i32 11
  %212 = load ptr, ptr %211, align 8, !tbaa !71
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %236

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.cgraph_node, ptr %208, i64 0, i32 12
  %216 = load ptr, ptr %215, align 8, !tbaa !73
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.cgraph_node, ptr %208, i64 0, i32 19, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !81
  %221 = icmp eq ptr %220, null
  %222 = load i8, ptr @cgraph_global_info_ready, align 1
  %223 = icmp ne i8 %222, 0
  %224 = select i1 %221, i1 %223, i1 false
  br i1 %224, label %225, label %236

225:                                              ; preds = %218
  %226 = load ptr, ptr %208, align 8, !tbaa !38
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 4194304
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.tree_decl_common, ptr %226, i64 0, i32 2
  %232 = load i64, ptr %231, align 8
  %233 = and i64 %232, 33554432
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %230, %225
  br label %236

236:                                              ; preds = %210, %214, %218, %230, %235, %207, %206
  %237 = phi i1 [ false, %206 ], [ true, %207 ], [ true, %210 ], [ true, %214 ], [ false, %235 ], [ true, %230 ], [ true, %218 ]
  %238 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %239 = icmp eq ptr %238, null
  br i1 %239, label %252, label %240

240:                                              ; preds = %236
  %241 = load ptr, ptr %0, align 8, !tbaa !38
  %242 = tail call ptr @decl_assembler_name(ptr noundef %241) #19
  %243 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %244 = tail call i32 @decl_assembler_name_hash(ptr noundef %242) #19
  %245 = tail call ptr @htab_find_slot_with_hash(ptr noundef %243, ptr noundef %242, i32 noundef %244, i32 noundef 0) #19
  %246 = icmp eq ptr %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %240
  %248 = load ptr, ptr %245, align 8, !tbaa !13
  %249 = icmp eq ptr %248, %0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  tail call void @htab_clear_slot(ptr noundef %251, ptr noundef nonnull %245) #19
  br label %252

252:                                              ; preds = %240, %247, %250, %236
  br i1 %237, label %254, label %253

253:                                              ; preds = %252
  tail call void @cgraph_release_function_body(ptr noundef nonnull %0) #20
  br label %254

254:                                              ; preds = %253, %252
  store ptr null, ptr %0, align 8, !tbaa !38
  %255 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %256 = load ptr, ptr %255, align 8, !tbaa !82
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  tail call void @htab_delete(ptr noundef nonnull %256) #19
  br label %259

259:                                              ; preds = %258, %254
  %260 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !55
  %261 = add nsw i32 %260, -1
  store i32 %261, ptr @cgraph_n_nodes, align 4, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 0, i64 312, i1 false)
  store i32 %3, ptr %2, align 8, !tbaa !59
  %262 = load ptr, ptr @free_nodes, align 8, !tbaa !13
  store ptr %262, ptr %39, align 8, !tbaa !53
  store ptr %0, ptr @free_nodes, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_insert_node_to_hashtable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %3 = tail call ptr @htab_find_slot(ptr noundef %2, ptr noundef %0, i32 noundef 1) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr %3, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_node_for_asm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %46

4:                                                ; preds = %1
  %5 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_node_by_assembler_name, ptr noundef nonnull @eq_assembler_name, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #19
  store ptr %5, ptr @assembler_name_hash, align 8, !tbaa !13
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4, %40
  %9 = phi ptr [ %42, %40 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !38
  %15 = tail call ptr @decl_assembler_name(ptr noundef %14) #19
  %16 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %17 = tail call i32 @decl_assembler_name_hash(ptr noundef %15) #19
  %18 = tail call ptr @htab_find_slot_with_hash(ptr noundef %16, ptr noundef %15, i32 noundef %17, i32 noundef 1) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store ptr %9, ptr %18, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %21, %13
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22, %36
  %27 = phi ptr [ %38, %36 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = tail call ptr @decl_assembler_name(ptr noundef %28) #19
  %30 = tail call i32 @decl_assembler_name_hash(ptr noundef %29) #19
  %31 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %32 = tail call ptr @htab_find_slot_with_hash(ptr noundef %31, ptr noundef %29, i32 noundef %30, i32 noundef 1) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store ptr %27, ptr %32, align 8, !tbaa !13
  br label %36

36:                                               ; preds = %35, %26
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !llvm.loop !83

40:                                               ; preds = %36, %22, %8
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %8, !llvm.loop !84

44:                                               ; preds = %40
  %45 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  br label %46

46:                                               ; preds = %44, %4, %1
  %47 = phi ptr [ %45, %44 ], [ %5, %4 ], [ %2, %1 ]
  %48 = tail call i32 @decl_assembler_name_hash(ptr noundef %0) #19
  %49 = tail call ptr @htab_find_slot_with_hash(ptr noundef %47, ptr noundef %0, i32 noundef %48, i32 noundef 0) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %49, align 8, !tbaa !13
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 27
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 512
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 13
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  br label %60

60:                                               ; preds = %46, %51, %57
  %61 = phi ptr [ %59, %57 ], [ %52, %51 ], [ null, %46 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_node_by_assembler_name(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = tail call ptr @decl_assembler_name(ptr noundef %2) #19
  %4 = tail call i32 @decl_assembler_name_hash(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @eq_assembler_name(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call zeroext i8 @decl_assembler_name_equal(ptr noundef %3, ptr noundef %1) #19
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @decl_assembler_name_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_edge(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %8 = tail call i32 %7(ptr noundef %1) #19
  %9 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %8) #19
  br label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %10, %20
  %15 = phi ptr [ %23, %20 ], [ %12, %10 ]
  %16 = phi i32 [ %21, %20 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %16, 1
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14, !llvm.loop !88

25:                                               ; preds = %20, %14
  %26 = phi i32 [ %21, %20 ], [ %16, %14 ]
  %27 = phi ptr [ null, %20 ], [ %15, %14 ]
  %28 = icmp ugt i32 %26, 100
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = tail call ptr @htab_create_alloc(i64 noundef 120, ptr noundef nonnull @edge_hash, ptr noundef nonnull @edge_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #19
  store ptr %30, ptr %3, align 8, !tbaa !82
  %31 = load ptr, ptr %11, align 8, !tbaa !13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %29, %44
  %34 = phi ptr [ %46, %44 ], [ %31, %29 ]
  %35 = load ptr, ptr %3, align 8, !tbaa !82
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %39 = tail call i32 %38(ptr noundef %37) #19
  %40 = tail call ptr @htab_find_slot_with_hash(ptr noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef 1) #19
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #19
  br label %44

44:                                               ; preds = %33, %43
  store ptr %34, ptr %40, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %34, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %33, !llvm.loop !89

48:                                               ; preds = %44, %10, %29, %25, %6
  %49 = phi ptr [ %9, %6 ], [ %27, %25 ], [ %27, %29 ], [ null, %10 ], [ %27, %44 ]
  ret ptr %49
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @edge_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call i32 %2(ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @edge_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_set_call_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %12 = tail call i32 %11(ptr noundef %10) #19
  tail call void @htab_remove_elt_with_hash(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %12) #19
  %13 = load ptr, ptr %3, align 8, !tbaa !90
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi ptr [ %13, %8 ], [ %4, %2 ]
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  store ptr %1, ptr %16, align 8, !tbaa !85
  %17 = load ptr, ptr %15, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  tail call void @push_cfun(ptr noundef %19) #19
  %20 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %1) #19
  %21 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %22 = load i8, ptr %21, align 2
  %23 = shl i8 %20, 2
  %24 = and i8 %23, 4
  %25 = and i8 %22, -5
  %26 = or disjoint i8 %25, %24
  store i8 %26, ptr %21, align 2
  tail call void @pop_cfun() #19
  %27 = load ptr, ptr %3, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %14
  %32 = load ptr, ptr %16, align 8, !tbaa !85
  %33 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %34 = tail call i32 %33(ptr noundef %32) #19
  %35 = tail call ptr @htab_find_slot_with_hash(ptr noundef nonnull %29, ptr noundef %32, i32 noundef %34, i32 noundef 1) #19
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 793, ptr noundef nonnull @.str.1) #19
  br label %39

39:                                               ; preds = %31, %38
  store ptr %0, ptr %35, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %39, %14
  ret void
}

; Function Attrs: optsize
declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_set_call_stmt_including_clones(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @cgraph_set_call_stmt(ptr noundef nonnull %4, ptr noundef %2) #20
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %0
  %12 = or i1 %10, %11
  br i1 %12, label %40, label %13

13:                                               ; preds = %7, %37
  %14 = phi ptr [ %38, %37 ], [ %9, %7 ]
  %15 = tail call ptr @cgraph_edge(ptr noundef nonnull %14, ptr noundef %1) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @cgraph_set_call_stmt(ptr noundef nonnull %15, ptr noundef %2) #20
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = icmp eq ptr %14, %0
  br i1 %27, label %40, label %28

28:                                               ; preds = %26, %33
  %29 = phi ptr [ %35, %33 ], [ %14, %26 ]
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %40, label %28, !llvm.loop !91

37:                                               ; preds = %28, %22, %18
  %38 = phi ptr [ %20, %18 ], [ %24, %22 ], [ %31, %28 ]
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %13, !llvm.loop !92

40:                                               ; preds = %26, %37, %33, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_create_edge_including_clones(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %3) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call ptr @cgraph_create_edge(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #20
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 9
  store i32 %7, ptr %13, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %11, %8
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %53, label %20

20:                                               ; preds = %14, %50
  %21 = phi ptr [ %51, %50 ], [ %16, %14 ]
  %22 = tail call ptr @cgraph_edge(ptr noundef nonnull %21, ptr noundef %2) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @cgraph_set_call_stmt(ptr noundef nonnull %22, ptr noundef %3) #20
  br label %31

25:                                               ; preds = %20
  %26 = tail call ptr @cgraph_edge(ptr noundef nonnull %21, ptr noundef %3) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = tail call ptr @cgraph_create_edge(ptr noundef nonnull %21, ptr noundef %1, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #20
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 9
  store i32 %7, ptr %30, align 8, !tbaa !93
  br label %31

31:                                               ; preds = %25, %28, %24
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = icmp eq ptr %21, %0
  br i1 %40, label %53, label %41

41:                                               ; preds = %39, %46
  %42 = phi ptr [ %48, %46 ], [ %21, %39 ]
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %53, label %41, !llvm.loop !94

50:                                               ; preds = %41, %35, %31
  %51 = phi ptr [ %33, %31 ], [ %37, %35 ], [ %44, %41 ]
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %20, !llvm.loop !95

53:                                               ; preds = %39, %50, %46, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_create_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %2) #20, !range !96
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 928, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %11, %8, %6
  %13 = load ptr, ptr @free_edges, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  store ptr %17, ptr @free_edges, align 8, !tbaa !13
  br label %23

18:                                               ; preds = %12
  %19 = tail call ptr @ggc_alloc_stat(i64 noundef 96) #19
  %20 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !55
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @cgraph_edge_max_uid, align 4, !tbaa !55
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %19, i64 0, i32 12
  store i32 %20, ptr %22, align 4, !tbaa !98
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi ptr [ %13, %15 ], [ %19, %18 ]
  %25 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 8
  store ptr null, ptr %25, align 8, !tbaa !99
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 1
  store ptr %0, ptr %26, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 2
  store ptr %1, ptr %27, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 7
  store ptr %2, ptr %28, align 8, !tbaa !85
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.tree_function_decl, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  tail call void @push_cfun(ptr noundef %31) #19
  br i1 %7, label %36, label %32

32:                                               ; preds = %23
  %33 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef nonnull %2) #19
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 4
  br label %36

36:                                               ; preds = %23, %32
  %37 = phi i8 [ %35, %32 ], [ 0, %23 ]
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 14
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, -5
  %41 = or disjoint i8 %40, %37
  store i8 %41, ptr %38, align 2
  tail call void @pop_cfun() #19
  %42 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 3
  store ptr null, ptr %42, align 8, !tbaa !97
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !102
  %46 = icmp eq ptr %44, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.cgraph_edge, ptr %44, i64 0, i32 3
  store ptr %24, ptr %48, align 8, !tbaa !97
  br label %49

49:                                               ; preds = %47, %36
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 5
  store ptr null, ptr %50, align 8, !tbaa !103
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !104
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 6
  store ptr %52, ptr %53, align 8, !tbaa !105
  %54 = icmp eq ptr %52, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 5
  store ptr %24, ptr %56, align 8, !tbaa !103
  br label %57

57:                                               ; preds = %55, %49
  store ptr %24, ptr %51, align 8, !tbaa !104
  store ptr %24, ptr %43, align 8, !tbaa !101
  store i64 %3, ptr %24, align 8, !tbaa !106
  %58 = icmp sgt i64 %3, -1
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 962, ptr noundef nonnull @.str.1) #19
  br label %60

60:                                               ; preds = %57, %59
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 11
  store i32 %4, ptr %61, align 8, !tbaa !107
  %62 = icmp sgt i32 %4, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = icmp ult i32 %4, 100001
  br i1 %64, label %67, label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ 964, %60 ], [ 965, %63 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %66, ptr noundef nonnull @.str.1) #19
  br label %67

67:                                               ; preds = %65, %63
  %68 = trunc i32 %5 to i16
  %69 = getelementptr inbounds %struct.cgraph_edge, ptr %24, i64 0, i32 13
  store i16 %68, ptr %69, align 8, !tbaa !108
  %70 = load i8, ptr %38, align 2
  %71 = and i8 %70, -2
  store i8 %71, ptr %38, align 2
  br i1 %7, label %89, label %72

72:                                               ; preds = %67
  %73 = tail call fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr noundef nonnull %2) #20, !range !96
  %74 = shl nuw nsw i8 %73, 1
  %75 = and i8 %70, -4
  %76 = or disjoint i8 %74, %75
  store i8 %76, ptr %38, align 2
  %77 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %78 = load ptr, ptr %77, align 8, !tbaa !82
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr %28, align 8, !tbaa !85
  %82 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %83 = tail call i32 %82(ptr noundef %81) #19
  %84 = tail call ptr @htab_find_slot_with_hash(ptr noundef nonnull %78, ptr noundef %81, i32 noundef %83, i32 noundef 1) #19
  %85 = load ptr, ptr %84, align 8, !tbaa !13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 978, ptr noundef nonnull @.str.1) #19
  br label %88

88:                                               ; preds = %80, %87
  store ptr %24, ptr %84, align 8, !tbaa !13
  br label %91

89:                                               ; preds = %67
  %90 = and i8 %70, -4
  store i8 %90, ptr %38, align 2
  br label %91

91:                                               ; preds = %89, %88, %72
  tail call fastcc void @initialize_inline_failed(ptr noundef nonnull %24) #20
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !109
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @initialize_inline_failed(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 27
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 18, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = and i8 %10, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr noundef nonnull %18) #20, !range !96
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %20, %13, %8, %1, %23
  %25 = phi i32 [ 2, %23 ], [ 3, %1 ], [ 4, %8 ], [ 5, %13 ], [ 17, %20 ]
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 %25, ptr %26, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_edge(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @cgraph_call_edge_removal_hooks(ptr noundef %0) #20
  tail call fastcc void @cgraph_edge_remove_callee(ptr noundef %0) #20
  tail call fastcc void @cgraph_edge_remove_caller(ptr noundef %0) #20
  tail call fastcc void @cgraph_free_edge(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_call_edge_removal_hooks(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @first_cgraph_edge_removal_hook, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  tail call void %6(ptr noundef %0, ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.cgraph_edge_hook_list, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !110

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cgraph_edge_remove_callee(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  br i1 %4, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %3, i64 0, i32 4
  store ptr %6, ptr %8, align 8, !tbaa !102
  br label %9

9:                                                ; preds = %1, %7
  %10 = icmp eq ptr %6, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 3
  store ptr %3, ptr %12, align 8, !tbaa !97
  %13 = load ptr, ptr %2, align 8, !tbaa !97
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %13, %11 ], [ %3, %9 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 2
  store ptr %6, ptr %20, align 8, !tbaa !101
  br label %21

21:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_edge_remove_caller(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  br i1 %4, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %3, i64 0, i32 6
  store ptr %6, ptr %8, align 8, !tbaa !105
  br label %9

9:                                                ; preds = %1, %7
  %10 = icmp eq ptr %6, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 5
  store ptr %3, ptr %12, align 8, !tbaa !103
  %13 = load ptr, ptr %2, align 8, !tbaa !103
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %13, %11 ], [ %3, %9 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  br i1 %16, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 1
  store ptr %6, ptr %20, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %14, %19
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  %28 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !13
  %29 = tail call i32 %28(ptr noundef %27) #19
  tail call void @htab_remove_elt_with_hash(ptr noundef nonnull %23, ptr noundef %27, i32 noundef %29) #19
  br label %30

30:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cgraph_free_edge(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  store i32 %3, ptr %2, align 4, !tbaa !98
  %4 = load ptr, ptr @free_edges, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !97
  store ptr %0, ptr @free_edges, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_redirect_edge_callee(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  tail call fastcc void @cgraph_edge_remove_callee(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 3
  store ptr null, ptr %3, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %5, i64 0, i32 3
  store ptr %0, ptr %8, align 8, !tbaa !97
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 4
  store ptr %5, ptr %10, align 8, !tbaa !102
  store ptr %0, ptr %4, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_update_edges_for_call_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = tail call ptr @cgraph_node(ptr noundef %6) #20
  tail call fastcc void @cgraph_update_edges_for_call_stmt_node(ptr noundef %7, ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %7
  %12 = or i1 %10, %11
  br i1 %12, label %36, label %13

13:                                               ; preds = %3, %33
  %14 = phi ptr [ %34, %33 ], [ %9, %3 ]
  tail call fastcc void @cgraph_update_edges_for_call_stmt_node(ptr noundef nonnull %14, ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = icmp eq ptr %14, %7
  br i1 %23, label %36, label %24

24:                                               ; preds = %22, %29
  %25 = phi ptr [ %31, %29 ], [ %14, %22 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = icmp eq ptr %31, %7
  br i1 %32, label %36, label %24, !llvm.loop !113

33:                                               ; preds = %24, %18, %13
  %34 = phi ptr [ %16, %13 ], [ %20, %18 ], [ %27, %24 ]
  %35 = icmp eq ptr %34, %7
  br i1 %35, label %36, label %13, !llvm.loop !114

36:                                               ; preds = %22, %33, %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_update_edges_for_call_stmt_node(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #20, !range !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %3) #20
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %2, null
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = icmp eq ptr %10, %2
  br i1 %15, label %51, label %16

16:                                               ; preds = %14
  %17 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  br i1 %11, label %20, label %25

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %55, label %25

25:                                               ; preds = %20, %19
  %26 = load i64, ptr %17, align 8, !tbaa !106
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !107
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 13
  %30 = load i16, ptr %29, align 8, !tbaa !108
  %31 = zext i16 %30 to i32
  tail call void @cgraph_remove_edge(ptr noundef nonnull %17) #20
  br label %40

32:                                               ; preds = %16
  %33 = tail call fastcc ptr @gimple_bb(ptr noundef %3) #20
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !115
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !13
  %37 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %36, ptr noundef %33) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 10
  %39 = load i32, ptr %38, align 4, !tbaa !117
  br label %40

40:                                               ; preds = %32, %25
  %41 = phi i64 [ %26, %25 ], [ %35, %32 ]
  %42 = phi i32 [ %28, %25 ], [ %37, %32 ]
  %43 = phi i32 [ %31, %25 ], [ %39, %32 ]
  br i1 %11, label %44, label %55

44:                                               ; preds = %40
  %45 = tail call ptr @cgraph_node(ptr noundef nonnull %10) #20
  %46 = tail call ptr @cgraph_create_edge(ptr noundef %0, ptr noundef %45, ptr noundef %3, i64 noundef %41, i32 noundef %42, i32 noundef %43) #20
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !93
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1121, ptr noundef nonnull @.str.1) #19
  br label %55

51:                                               ; preds = %14
  %52 = icmp eq ptr %1, %3
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = tail call ptr @cgraph_edge(ptr noundef %0, ptr noundef %1) #20
  tail call void @cgraph_set_call_stmt(ptr noundef %54, ptr noundef %3) #20
  br label %55

55:                                               ; preds = %20, %53, %51, %40, %44, %50, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !96
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !109
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !118
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !109
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !55
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_node_remove_callees(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  tail call fastcc void @cgraph_call_edge_removal_hooks(ptr noundef nonnull %6) #20
  tail call fastcc void @cgraph_edge_remove_callee(ptr noundef nonnull %6) #20
  tail call fastcc void @cgraph_free_edge(ptr noundef nonnull %6) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !119

10:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @htab_delete(ptr noundef nonnull %12) #19
  store ptr null, ptr %11, align 8, !tbaa !82
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_release_function_body(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !13
  tail call void @push_cfun(ptr noundef nonnull %4) #19
  %8 = load ptr, ptr @cfun, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %13, ptr @current_function_decl, align 8, !tbaa !13
  tail call void @delete_tree_ssa() #19
  tail call void @delete_tree_cfg_annotations() #19
  %14 = load ptr, ptr @cfun, align 8, !tbaa !13
  store ptr null, ptr %14, align 8, !tbaa !121
  store ptr %7, ptr @current_function_decl, align 8, !tbaa !13
  %15 = load ptr, ptr @cfun, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %15, %12 ], [ %8, %6 ]
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1223, ptr noundef nonnull @.str.1) #19
  %26 = load ptr, ptr @cfun, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  br label %29

29:                                               ; preds = %21, %25
  %30 = phi ptr [ %19, %21 ], [ %28, %25 ]
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 8, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !55
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1224, ptr noundef nonnull @.str.1) #19
  br label %35

35:                                               ; preds = %29, %34
  tail call void @clear_edges() #19
  %36 = load ptr, ptr @cfun, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi ptr [ %36, %35 ], [ %17, %16 ]
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  tail call void @free_histograms() #19
  %43 = load ptr, ptr @cfun, align 8, !tbaa !13
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %43, %42 ], [ %38, %37 ]
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #19
  br label %50

50:                                               ; preds = %44, %49
  tail call void @pop_cfun() #19
  %51 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @gimple_set_body(ptr noundef %51, ptr noundef null) #19
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 17
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(ptr noundef nonnull %52) #20
  %53 = load ptr, ptr %0, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.tree_function_decl, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  tail call void @ggc_free(ptr noundef %55) #19
  %56 = load ptr, ptr %0, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct.tree_function_decl, ptr %56, i64 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !49
  %58 = load ptr, ptr %0, align 8, !tbaa !38
  br label %59

59:                                               ; preds = %50, %1
  %60 = phi ptr [ %58, %50 ], [ %2, %1 ]
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %60, i64 0, i32 1
  store ptr null, ptr %61, align 8, !tbaa !49
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load ptr, ptr @global_trees, align 16, !tbaa !13
  %68 = load ptr, ptr %0, align 8, !tbaa !38
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %68, i64 0, i32 5
  store ptr %67, ptr %69, align 8, !tbaa !49
  br label %70

70:                                               ; preds = %66, %59
  ret void
}

; Function Attrs: optsize
declare void @delete_tree_ssa() local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_tree_cfg_annotations() local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_histograms() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_free(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_same_body_alias(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 512
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1255, ptr noundef nonnull @.str.1) #19
  br label %9

9:                                                ; preds = %1, %8
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 3
  br label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 13
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %20, %17 ], [ %16, %15 ]
  store ptr %14, ptr %22, align 8, !tbaa !13
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 3
  %24 = icmp eq ptr %14, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 4
  store ptr %11, ptr %26, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %25, %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %28 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %29 = tail call ptr @htab_find_slot(ptr noundef %28, ptr noundef nonnull %0, i32 noundef 0) #19
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  tail call void @htab_clear_slot(ptr noundef %33, ptr noundef nonnull %29) #19
  br label %34

34:                                               ; preds = %32, %27
  %35 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 8, !tbaa !38
  %39 = tail call ptr @decl_assembler_name(ptr noundef %38) #19
  %40 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %41 = tail call i32 @decl_assembler_name_hash(ptr noundef %39) #19
  %42 = tail call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef %39, i32 noundef %41, i32 noundef 0) #19
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %42, align 8, !tbaa !13
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  tail call void @htab_clear_slot(ptr noundef %48, ptr noundef nonnull %42) #19
  br label %49

49:                                               ; preds = %37, %44, %47, %34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 0, i64 312, i1 false)
  store i32 %3, ptr %2, align 8, !tbaa !59
  %50 = load ptr, ptr @free_nodes, align 8, !tbaa !13
  store ptr %50, ptr %23, align 8, !tbaa !53
  store ptr %0, ptr @free_nodes, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_call_node_removal_hooks(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @first_cgraph_node_removal_hook, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  tail call void %6(ptr noundef %0, ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.cgraph_node_hook_list, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !125

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_node_remove_callers(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  tail call fastcc void @cgraph_call_edge_removal_hooks(ptr noundef nonnull %6) #20
  tail call fastcc void @cgraph_edge_remove_caller(ptr noundef nonnull %6) #20
  tail call fastcc void @cgraph_free_edge(ptr noundef nonnull %6) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !126

10:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_remove_node_and_inline_clones(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %8, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !93
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  tail call void @cgraph_remove_node_and_inline_clones(ptr noundef %14) #20
  br label %15

15:                                               ; preds = %5, %12
  %16 = icmp eq ptr %8, null
  br i1 %16, label %17, label %5, !llvm.loop !127

17:                                               ; preds = %15, %1
  tail call void @cgraph_remove_node(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_mark_reachable_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @notice_global_symbol(ptr noundef %12) #19
  %13 = load i16, ptr %2, align 4
  %14 = or i16 %13, 8
  store i16 %14, ptr %2, align 4
  %15 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !49
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1526, ptr noundef nonnull @.str.1) #19
  br label %18

18:                                               ; preds = %11, %17
  %19 = load ptr, ptr @cgraph_nodes_queue, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 8
  store ptr %19, ptr %20, align 8, !tbaa !128
  store ptr %0, ptr @cgraph_nodes_queue, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %18, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_mark_needed_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1540, ptr noundef nonnull @.str.1) #19
  br label %9

9:                                                ; preds = %1, %8
  tail call void @cgraph_mark_reachable_node(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_mark_address_taken_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = or i16 %3, 2
  store i16 %4, ptr %2, align 4
  tail call void @cgraph_mark_needed_node(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @cgraph_local_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1560, ptr noundef nonnull @.str.1) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #20
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 18
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @cgraph_global_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  %5 = load i8, ptr @cgraph_global_info_ready, align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1572, ptr noundef nonnull @.str.1) #19
  br label %9

9:                                                ; preds = %1, %8
  %10 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #20
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 19
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_rtl_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1584, ptr noundef nonnull @.str.1) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #20
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !13
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8, !tbaa !38
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 4194304
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 20
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ null, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_inline_failed_string(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 19
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1606, ptr noundef nonnull @.str.1) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [19 x ptr], ptr @cgraph_inline_failed_string.cif_string_table, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_node_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !129
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cgraph_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @cgraph_node_name(ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %3, i32 noundef %5, i32 noundef %7) #20
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @cgraph_node_name(ptr noundef nonnull %11) #20
  %15 = load ptr, ptr %10, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 24
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %14, i32 noundef %17) #20
  br label %19

19:                                               ; preds = %13, %2
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @cgraph_node_name(ptr noundef nonnull %21) #20
  %25 = load ptr, ptr %20, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 24
  %27 = load i32, ptr %26, align 8, !tbaa !59
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %24, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !49
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %1) #20, !range !137
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [5 x ptr], ptr @cgraph_availability_names, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %36) #20
  br label %38

38:                                               ; preds = %32, %29
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 23
  %40 = load i64, ptr %39, align 8, !tbaa !138
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %40) #20
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !139
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !140
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %47, i32 noundef %51) #20
  br label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !141
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %46, align 8, !tbaa !139
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %55) #20
  br label %62

62:                                               ; preds = %60, %57, %53
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !142
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 1, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !143
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %64, i32 noundef %68) #20
  br label %70

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !144
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %63, align 8, !tbaa !142
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %72) #20
  br label %79

79:                                               ; preds = %77, %74, %70
  %80 = load i64, ptr %45, align 8, !tbaa !145
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = trunc i64 %80 to i32
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %83) #20
  %85 = load i64, ptr %45, align 8, !tbaa !145
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i64 [ %85, %82 ], [ 0, %79 ]
  %88 = load i64, ptr %9, align 8, !tbaa !146
  %89 = icmp eq i64 %88, %87
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = trunc i64 %88 to i32
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %91) #20
  br label %93

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !50
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = tail call ptr @cgraph_node_name(ptr noundef nonnull %95) #20
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %98) #20
  br label %100

100:                                              ; preds = %97, %93
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %102 = load i16, ptr %101, align 4
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr %0)
  %107 = load i16, ptr %101, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = phi i16 [ %107, %105 ], [ %102, %100 ]
  %110 = and i16 %109, 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 14, i64 1, ptr %0)
  br label %119

114:                                              ; preds = %108
  %115 = and i16 %109, 8
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 10, i64 1, ptr %0)
  br label %119

119:                                              ; preds = %114, %117, %112
  %120 = load ptr, ptr %1, align 8, !tbaa !38
  %121 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %120) #19
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 5, i64 1, ptr %0)
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i16, ptr %101, align 4
  %127 = and i16 %126, 64
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 8, i64 1, ptr %0)
  br label %131

131:                                              ; preds = %129, %125
  %132 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %133 = load i8, ptr %132, align 8
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 6, i64 1, ptr %0)
  %138 = load i8, ptr %132, align 8
  br label %139

139:                                              ; preds = %136, %131
  %140 = phi i8 [ %138, %136 ], [ %133, %131 ]
  %141 = and i8 %140, 2
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 19, i64 1, ptr %0)
  %145 = load i8, ptr %132, align 8
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi i8 [ %145, %143 ], [ %140, %139 ]
  %148 = and i8 %147, 4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 10, i64 1, ptr %0)
  %152 = load i8, ptr %132, align 8
  br label %153

153:                                              ; preds = %150, %146
  %154 = phi i8 [ %152, %150 ], [ %147, %146 ]
  %155 = and i8 %154, 16
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 14, i64 1, ptr %0)
  br label %164

159:                                              ; preds = %153
  %160 = and i8 %154, 8
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 10, i64 1, ptr %0)
  br label %164

164:                                              ; preds = %159, %162, %157
  %165 = load i8, ptr %132, align 8
  %166 = and i8 %165, 32
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 24, i64 1, ptr %0)
  br label %170

170:                                              ; preds = %168, %164
  %171 = load ptr, ptr %1, align 8, !tbaa !38
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 4194304
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 12, i64 1, ptr %0)
  br label %177

177:                                              ; preds = %175, %170
  %178 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 14, i64 1, ptr %0)
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !13
  %181 = icmp eq ptr %180, null
  br i1 %181, label %227, label %182

182:                                              ; preds = %177, %223
  %183 = phi ptr [ %225, %223 ], [ %180, %177 ]
  %184 = getelementptr inbounds %struct.cgraph_edge, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !90
  %186 = tail call ptr @cgraph_node_name(ptr noundef %185) #20
  %187 = load ptr, ptr %184, align 8, !tbaa !90
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %187, i64 0, i32 24
  %189 = load i32, ptr %188, align 8, !tbaa !59
  %190 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %186, i32 noundef %189) #20
  %191 = load i64, ptr %183, align 8, !tbaa !106
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %182
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i64 noundef %191) #20
  br label %195

195:                                              ; preds = %193, %182
  %196 = getelementptr inbounds %struct.cgraph_edge, ptr %183, i64 0, i32 11
  %197 = load i32, ptr %196, align 8, !tbaa !107
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = sitofp i32 %197 to double
  %201 = fdiv double %200, 1.000000e+03
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.53, double noundef %201) #20
  br label %203

203:                                              ; preds = %199, %195
  %204 = getelementptr inbounds %struct.cgraph_edge, ptr %183, i64 0, i32 9
  %205 = load i32, ptr %204, align 8, !tbaa !93
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 10, i64 1, ptr %0)
  br label %209

209:                                              ; preds = %207, %203
  %210 = getelementptr inbounds %struct.cgraph_edge, ptr %183, i64 0, i32 14
  %211 = load i8, ptr %210, align 2
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 11, i64 1, ptr %0)
  %216 = load i8, ptr %210, align 2
  br label %217

217:                                              ; preds = %214, %209
  %218 = phi i8 [ %216, %214 ], [ %211, %209 ]
  %219 = and i8 %218, 4
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 21, i64 1, ptr %0)
  br label %223

223:                                              ; preds = %217, %221
  %224 = getelementptr inbounds %struct.cgraph_edge, ptr %183, i64 0, i32 4
  %225 = load ptr, ptr %224, align 8, !tbaa !13
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %182, !llvm.loop !147

227:                                              ; preds = %223, %177
  %228 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 10, i64 1, ptr %0)
  %229 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !13
  %231 = icmp eq ptr %230, null
  br i1 %231, label %283, label %232

232:                                              ; preds = %227, %279
  %233 = phi ptr [ %281, %279 ], [ %230, %227 ]
  %234 = getelementptr inbounds %struct.cgraph_edge, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !100
  %236 = tail call ptr @cgraph_node_name(ptr noundef %235) #20
  %237 = load ptr, ptr %234, align 8, !tbaa !100
  %238 = getelementptr inbounds %struct.cgraph_node, ptr %237, i64 0, i32 24
  %239 = load i32, ptr %238, align 8, !tbaa !59
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %236, i32 noundef %239) #20
  %241 = getelementptr inbounds %struct.cgraph_edge, ptr %233, i64 0, i32 9
  %242 = load i32, ptr %241, align 8, !tbaa !93
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %232
  %245 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 10, i64 1, ptr %0)
  br label %246

246:                                              ; preds = %244, %232
  %247 = getelementptr inbounds %struct.cgraph_edge, ptr %233, i64 0, i32 14
  %248 = load i8, ptr %247, align 2
  %249 = and i8 %248, 1
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  %252 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 11, i64 1, ptr %0)
  br label %253

253:                                              ; preds = %251, %246
  %254 = load i64, ptr %233, align 8, !tbaa !106
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i64 noundef %254) #20
  br label %258

258:                                              ; preds = %256, %253
  %259 = getelementptr inbounds %struct.cgraph_edge, ptr %233, i64 0, i32 11
  %260 = load i32, ptr %259, align 8, !tbaa !107
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = sitofp i32 %260 to double
  %264 = fdiv double %263, 1.000000e+03
  %265 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.53, double noundef %264) #20
  br label %266

266:                                              ; preds = %262, %258
  %267 = getelementptr inbounds %struct.cgraph_edge, ptr %233, i64 0, i32 13
  %268 = load i16, ptr %267, align 8, !tbaa !108
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = zext i16 %268 to i32
  %272 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %271) #20
  br label %273

273:                                              ; preds = %270, %266
  %274 = load i8, ptr %247, align 2
  %275 = and i8 %274, 4
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  %278 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 21, i64 1, ptr %0)
  br label %279

279:                                              ; preds = %273, %277
  %280 = getelementptr inbounds %struct.cgraph_edge, ptr %233, i64 0, i32 6
  %281 = load ptr, ptr %280, align 8, !tbaa !13
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %232, !llvm.loop !148

283:                                              ; preds = %279, %227
  %284 = tail call i32 @fputc(i32 10, ptr %0)
  %285 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 13
  %286 = load ptr, ptr %285, align 8, !tbaa !48
  %287 = icmp eq ptr %286, null
  br i1 %287, label %323, label %288

288:                                              ; preds = %283
  %289 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 19, i64 1, ptr %0)
  %290 = load ptr, ptr %285, align 8, !tbaa !13
  %291 = icmp eq ptr %290, null
  br i1 %291, label %321, label %292

292:                                              ; preds = %288, %317
  %293 = phi ptr [ %319, %317 ], [ %290, %288 ]
  %294 = tail call ptr @cgraph_node_name(ptr noundef nonnull %293) #20
  %295 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 24
  %296 = load i32, ptr %295, align 8, !tbaa !59
  %297 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %294, i32 noundef %296) #20
  %298 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 22, i32 5
  %299 = load i8, ptr %298, align 2, !tbaa !65
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %317, label %301

301:                                              ; preds = %292
  %302 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 22
  %303 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !129
  %304 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 22, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !60
  %306 = tail call ptr %303(ptr noundef %305, i32 noundef 2) #19
  %307 = load i64, ptr %302, align 8, !tbaa !61
  %308 = trunc i64 %307 to i32
  %309 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 22, i32 1
  %310 = load i64, ptr %309, align 8, !tbaa !63
  %311 = trunc i64 %310 to i32
  %312 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 22, i32 4
  %313 = load i8, ptr %312, align 1, !tbaa !64
  %314 = zext i8 %313 to i32
  %315 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %306, i32 noundef %308, i32 noundef %311, i32 noundef %314) #20
  %316 = tail call i32 @fputc(i32 41, ptr %0)
  br label %317

317:                                              ; preds = %292, %301
  %318 = getelementptr inbounds %struct.cgraph_node, ptr %293, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !13
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %292, !llvm.loop !149

321:                                              ; preds = %317, %288
  %322 = tail call i32 @fputc(i32 10, ptr %0)
  br label %323

323:                                              ; preds = %321, %283
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare void @dump_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cgraph_function_body_availability(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !49
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2071, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = and i8 %12, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %19, i64 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !150
  %31 = tail call zeroext i8 %30(ptr noundef nonnull %19) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8, !tbaa !38
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

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_cgraph_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !13
  tail call void @dump_cgraph_node(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cgraph(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 12, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @dump_cgraph_node(ptr noundef %0, ptr noundef nonnull %6) #20
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !162

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_cgraph() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !13
  tail call void @dump_cgraph(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @change_decl_assembler_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1788, ptr noundef nonnull @.str.1) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %8, i64 13
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  br label %38

18:                                               ; preds = %12
  %19 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 67108864
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %0, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %28, i64 11
  %30 = load i8, ptr %29, align 1, !tbaa !49
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef nonnull %0) #19
  br label %38

38:                                               ; preds = %21, %26, %32, %36, %16
  %39 = phi ptr [ %17, %16 ], [ %13, %36 ], [ %13, %32 ], [ %13, %26 ], [ %13, %21 ]
  store ptr %1, ptr %39, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %38, %18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_add_asm_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 24) #19
  %3 = getelementptr inbounds %struct.cgraph_asm_node, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !163
  %4 = load i32, ptr @cgraph_order, align 4, !tbaa !55
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @cgraph_order, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.cgraph_asm_node, ptr %2, i64 0, i32 2
  store i32 %4, ptr %6, align 8, !tbaa !165
  store ptr null, ptr %2, align 8, !tbaa !166
  %7 = load ptr, ptr @cgraph_asm_nodes, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @cgraph_asm_last_node, align 8
  %10 = select i1 %8, ptr @cgraph_asm_nodes, ptr %9
  store ptr %2, ptr %10, align 8, !tbaa !13
  store ptr %2, ptr @cgraph_asm_last_node, align 8, !tbaa !13
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cgraph_function_possibly_inlined_p(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !49
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  br i1 %3, label %6, label %10

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cgraph_clone_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = load i64, ptr %0, align 8, !tbaa !106
  %10 = mul nsw i64 %9, %4
  %11 = sdiv i64 %10, 10000
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !107
  %15 = sext i32 %14 to i64
  %16 = sext i32 %12 to i64
  %17 = mul nsw i64 %15, %16
  %18 = sdiv i64 %17, 1000
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 100000)
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = trunc i64 %19 to i32
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %24 = load i16, ptr %23, align 8, !tbaa !108
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, %6
  %27 = tail call ptr @cgraph_create_edge(ptr noundef %1, ptr noundef %21, ptr noundef %2, i64 noundef %11, i32 noundef %22, i32 noundef %26) #20
  %28 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !93
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %27, i64 0, i32 9
  store i32 %29, ptr %30, align 8, !tbaa !93
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %27, i64 0, i32 14
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, -2
  %37 = or disjoint i8 %36, %33
  store i8 %37, ptr %34, align 2
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %27, i64 0, i32 10
  store i32 %3, ptr %38, align 4, !tbaa !167
  %39 = icmp eq i8 %7, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %8
  %41 = load i64, ptr %27, align 8, !tbaa !106
  %42 = load i64, ptr %0, align 8, !tbaa !106
  %43 = sub nsw i64 %42, %41
  %44 = tail call i64 @llvm.smax.i64(i64 %43, i64 0)
  store i64 %44, ptr %0, align 8
  br label %45

45:                                               ; preds = %40, %8
  tail call fastcc void @cgraph_call_edge_duplication_hooks(ptr noundef nonnull %0, ptr noundef nonnull %27) #20
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_call_edge_duplication_hooks(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @first_cgraph_edge_duplicated_hook, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %11, %5 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.cgraph_2edge_hook_list, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !168

13:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_clone_node(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = tail call fastcc ptr @cgraph_create_node() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %9, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !50
  %13 = icmp eq ptr %11, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 7
  store ptr %16, ptr %17, align 8, !tbaa !52
  store ptr %8, ptr %15, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %14, %6
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 27
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, -33
  %25 = or disjoint i16 %24, %21
  store i16 %25, ptr %22, align 4
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 18
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !169
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 18, i32 2
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, -3
  store i8 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 19
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(40) %32, i64 40, i1 false), !tbaa.struct !170
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 20
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 20
  %35 = load i32, ptr %34, align 8, !tbaa !55
  store i32 %35, ptr %33, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 23
  store i64 %1, ptr %36, align 8, !tbaa !138
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 21
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !72
  store ptr null, ptr %37, align 8, !tbaa !171
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %40 = load i64, ptr %39, align 8, !tbaa !138
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %18
  %43 = icmp slt i64 %40, %1
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = mul nsw i64 %1, 10000
  %46 = sdiv i64 %45, %40
  br label %47

47:                                               ; preds = %18, %42, %44
  %48 = phi i64 [ %46, %44 ], [ 10000, %42 ], [ 0, %18 ]
  %49 = icmp eq i8 %4, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = sub nsw i64 %40, %1
  %52 = tail call i64 @llvm.smax.i64(i64 %51, i64 0)
  store i64 %52, ptr %39, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = call fastcc i32 @VEC_cgraph_edge_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %7) #20, !range !172
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %56
  %57 = phi i32 [ %59, %56 ], [ 0, %53 ]
  %58 = load ptr, ptr %7, align 8, !tbaa !13
  tail call void @cgraph_redirect_edge_callee(ptr noundef %58, ptr noundef nonnull %8) #20
  %59 = add i32 %57, 1
  %60 = call fastcc i32 @VEC_cgraph_edge_p_base_iterate(ptr noundef %5, i32 noundef %59, ptr noundef nonnull %7) #20, !range !172
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %56, !llvm.loop !173

62:                                               ; preds = %56, %53
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %74, %66 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.cgraph_edge, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !85
  %70 = getelementptr inbounds %struct.cgraph_edge, ptr %67, i64 0, i32 10
  %71 = load i32, ptr %70, align 4, !tbaa !167
  %72 = tail call ptr @cgraph_clone_edge(ptr noundef nonnull %67, ptr noundef nonnull %8, ptr noundef %69, i32 noundef %71, i64 noundef %48, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #20
  %73 = getelementptr inbounds %struct.cgraph_edge, ptr %67, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %66, !llvm.loop !174

76:                                               ; preds = %66, %62
  %77 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !71
  %79 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 9
  store ptr %78, ptr %79, align 8, !tbaa !69
  %80 = icmp eq ptr %78, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.cgraph_node, ptr %78, i64 0, i32 10
  store ptr %8, ptr %82, align 8, !tbaa !70
  br label %83

83:                                               ; preds = %81, %76
  store ptr %8, ptr %77, align 8, !tbaa !71
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 12
  store ptr %0, ptr %84, align 8, !tbaa !73
  tail call fastcc void @cgraph_call_node_duplication_hooks(ptr noundef nonnull %0, ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_cgraph_edge_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !175
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !13
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_call_node_duplication_hooks(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @first_cgraph_node_duplicated_hook, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %11, %5 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.cgraph_2node_hook_list, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !177

13:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cgraph_create_virtual_clone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.cgraph_node, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %5) #21
  %7 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %6) #19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1973, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %4, %9
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call ptr @copy_node_stat(ptr noundef %6) #19
  br label %16

14:                                               ; preds = %10
  %15 = tail call ptr @build_function_decl_skip_args(ptr noundef %6, ptr noundef nonnull %3) #19
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !49
  %19 = tail call fastcc ptr @clone_function_name(ptr noundef %6) #20
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 1
  store ptr %19, ptr %21, align 8, !tbaa !49
  tail call void @set_decl_rtl(ptr noundef %17, ptr noundef null) #19
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !138
  %24 = tail call ptr @cgraph_clone_node(ptr noundef nonnull %0, i64 noundef %23, i32 noundef 1000, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %1) #20
  store ptr %17, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, -33554433
  store i64 %27, ptr %25, align 8
  %28 = load ptr, ptr %24, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %28, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !49
  %30 = load ptr, ptr %24, align 8, !tbaa !38
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, -134217729
  store i64 %32, ptr %30, align 8
  %33 = load ptr, ptr %24, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -513
  store i32 %36, ptr %34, align 8
  %37 = load ptr, ptr %24, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -129
  store i32 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 21
  store ptr %2, ptr %41, align 8, !tbaa !171
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 21, i32 1
  store ptr %3, ptr %42, align 8, !tbaa !178
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 21, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !179
  br i1 %11, label %81, label %45

45:                                               ; preds = %16
  %46 = icmp eq ptr %44, null
  br i1 %46, label %81, label %47

47:                                               ; preds = %45
  %48 = tail call ptr @bitmap_gc_alloc_stat() #19
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi ptr [ %0, %47 ], [ %52, %49 ]
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !73
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %49, !llvm.loop !180

54:                                               ; preds = %49
  %55 = load ptr, ptr %50, align 8, !tbaa !38
  %56 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %54, %75
  %60 = phi ptr [ %79, %75 ], [ %57, %54 ]
  %61 = phi i32 [ %76, %75 ], [ 0, %54 ]
  %62 = phi i32 [ %78, %75 ], [ 0, %54 ]
  %63 = load ptr, ptr %43, align 8, !tbaa !179
  %64 = tail call i32 @bitmap_bit_p(ptr noundef %63, i32 noundef %62) #19
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %62) #19
  br label %75

68:                                               ; preds = %59
  %69 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %61) #19
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %62) #19
  br label %73

73:                                               ; preds = %71, %68
  %74 = add nsw i32 %61, 1
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi i32 [ %61, %66 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 1
  %78 = add nuw nsw i32 %62, 1
  %79 = load ptr, ptr %77, align 8, !tbaa !49
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %59, !llvm.loop !181

81:                                               ; preds = %75, %45, %54, %16
  %82 = phi ptr [ %44, %16 ], [ %48, %54 ], [ %3, %45 ], [ %48, %75 ]
  %83 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 21, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !179
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 18, i32 2
  %85 = load i8, ptr %84, align 8
  %86 = and i8 %85, -4
  %87 = or disjoint i8 %86, 1
  store i8 %87, ptr %84, align 8
  %88 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 27
  %89 = load i16, ptr %88, align 4
  %90 = or i16 %89, 24
  store i16 %90, ptr %88, align 4
  store ptr %17, ptr %5, align 8, !tbaa !38
  %91 = load ptr, ptr @cgraph_hash, align 8, !tbaa !13
  %92 = call ptr @htab_find_slot(ptr noundef %91, ptr noundef nonnull %5, i32 noundef 1) #19
  %93 = load ptr, ptr %92, align 8, !tbaa !13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2035, ptr noundef nonnull @.str.1) #19
  br label %96

96:                                               ; preds = %81, %95
  store ptr %24, ptr %92, align 8, !tbaa !13
  %97 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = call ptr @decl_assembler_name(ptr noundef %17) #19
  %101 = load ptr, ptr @assembler_name_hash, align 8, !tbaa !13
  %102 = call i32 @decl_assembler_name_hash(ptr noundef %100) #19
  %103 = call ptr @htab_find_slot_with_hash(ptr noundef %101, ptr noundef %100, i32 noundef %102, i32 noundef 1) #19
  %104 = load ptr, ptr %103, align 8, !tbaa !13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2045, ptr noundef nonnull @.str.1) #19
  br label %107

107:                                              ; preds = %99, %106
  store ptr %24, ptr %103, align 8, !tbaa !13
  br label %108

108:                                              ; preds = %107, %96
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %5) #21
  ret ptr %24
}

; Function Attrs: optsize
declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_decl_skip_args(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @clone_function_name(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @decl_assembler_name(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = zext i32 %5 to i64
  %7 = add nuw nsw i64 %6, 7
  %8 = alloca i8, i64 %7, align 16
  %9 = load ptr, ptr %3, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %8, ptr align 1 %9, i64 %6, i1 false)
  %10 = getelementptr inbounds i8, ptr %8, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %10, ptr noundef nonnull align 1 dereferenceable(7) @.str.66, i64 7, i1 false) #20
  store i8 46, ptr %10, align 1, !tbaa !49
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #20
  %12 = add i64 %11, 32
  %13 = alloca i8, i64 %12, align 16
  %14 = load i32, ptr @clone_fn_id_num, align 4, !tbaa !55
  %15 = add i32 %14, 1
  store i32 %15, ptr @clone_fn_id_num, align 4, !tbaa !55
  %16 = zext i32 %14 to i64
  %17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull %8, i64 noundef %16) #20
  %18 = call ptr @get_identifier(ptr noundef nonnull %13) #19
  ret ptr %18
}

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_unnest_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2057, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  br label %8

8:                                                ; preds = %7, %8
  %9 = phi ptr [ %12, %8 ], [ %4, %7 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, %0
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 7
  br i1 %11, label %13, label %8, !llvm.loop !182

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  store ptr %15, ptr %9, align 8, !tbaa !13
  store ptr null, ptr %2, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_add_new_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @cgraph_state, align 4, !tbaa !55
  switch i32 %3, label %58 [
    i32 0, label %4
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %46
  ]

4:                                                ; preds = %2
  %5 = tail call ptr @cgraph_node(ptr noundef %0) #20
  %6 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 8
  store ptr %6, ptr %7, align 8, !tbaa !128
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 27
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, 16
  store i16 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %4
  store ptr %5, ptr @cgraph_new_nodes, align 8, !tbaa !13
  br label %58

14:                                               ; preds = %2, %2, %2
  %15 = tail call ptr @cgraph_node(ptr noundef %0) #20
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
  br i1 %26, label %27, label %37

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  tail call void @push_cfun(ptr noundef %29) #19
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !13
  tail call void @gimple_register_cfg_hooks() #19
  tail call void @tree_lowering_passes(ptr noundef %0) #19
  tail call void @bitmap_obstack_initialize(ptr noundef null) #19
  %30 = load ptr, ptr %28, align 8, !tbaa !49
  %31 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %30) #20, !range !96
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !183
  tail call void @execute_pass_list(ptr noundef %34) #19
  br label %35

35:                                               ; preds = %27, %33
  tail call void @bitmap_obstack_release(ptr noundef null) #19
  tail call void @pop_cfun() #19
  store ptr null, ptr @current_function_decl, align 8, !tbaa !13
  %36 = load i16, ptr %20, align 4
  br label %38

37:                                               ; preds = %14
  br i1 %23, label %42, label %38

38:                                               ; preds = %35, %37
  %39 = phi i16 [ %36, %35 ], [ %22, %37 ]
  %40 = phi i8 [ 1, %35 ], [ %1, %37 ]
  %41 = or i16 %39, 16
  store i16 %41, ptr %20, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i8 [ %40, %38 ], [ 0, %37 ]
  %44 = load ptr, ptr @cgraph_new_nodes, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !128
  store ptr %15, ptr @cgraph_new_nodes, align 8, !tbaa !13
  br label %58

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  tail call void @push_cfun(ptr noundef %48) #19
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !13
  tail call void @gimple_register_cfg_hooks() #19
  %49 = icmp eq i8 %1, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @tree_lowering_passes(ptr noundef nonnull %0) #19
  br label %51

51:                                               ; preds = %50, %46
  tail call void @bitmap_obstack_initialize(ptr noundef null) #19
  %52 = load ptr, ptr %47, align 8, !tbaa !49
  %53 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %52) #20, !range !96
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !183
  tail call void @execute_pass_list(ptr noundef %56) #19
  br label %57

57:                                               ; preds = %55, %51
  tail call void @bitmap_obstack_release(ptr noundef null) #19
  tail call void @tree_rest_of_compilation(ptr noundef nonnull %0) #19
  tail call void @pop_cfun() #19
  store ptr null, ptr @current_function_decl, align 8, !tbaa !13
  br label %58

58:                                               ; preds = %2, %57, %42, %13
  %59 = phi i8 [ %1, %2 ], [ %1, %57 ], [ %43, %42 ], [ %1, %13 ]
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !49
  %64 = tail call i32 @function_needs_eh_personality(ptr noundef %63) #19
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !186
  %68 = tail call ptr %67() #19
  %69 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !49
  br label %70

70:                                               ; preds = %66, %61, %58
  ret void
}

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @tree_lowering_passes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare void @execute_pass_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tree_rest_of_compilation(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @function_needs_eh_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cgraph_node_can_be_local_p(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !79
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_make_decl_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %16 [
    i16 32, label %4
    i16 29, label %8
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -9
  store i32 %7, ptr %5, align 8
  br label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !49
  %12 = and i32 %10, -641
  store i32 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, -33554433
  store i64 %15, ptr %13, align 8
  br label %18

16:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2212, ptr noundef nonnull @.str.1) #19
  %17 = load i64, ptr %0, align 8
  br label %18

18:                                               ; preds = %8, %16, %4
  %19 = phi i64 [ %2, %8 ], [ %17, %16 ], [ %2, %4 ]
  %20 = and i64 %19, -134217729
  store i64 %20, ptr %0, align 8
  %21 = and i64 %19, 65535
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !49
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %25
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %30 = load ptr, ptr %26, align 8, !tbaa !49
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %33 = load ptr, ptr %26, align 8, !tbaa !49
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %33, %32 ], [ %30, %29 ]
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !49
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

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_make_node_local(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @cgraph_node_can_be_local_p(ptr noundef %0) #20, !range !96
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2235, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11, %5
  tail call void @cgraph_make_decl_local(ptr noundef nonnull %6) #20
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %24, %20 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  tail call void @cgraph_make_decl_local(ptr noundef %22) #20
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %20, !llvm.loop !187

26:                                               ; preds = %20, %16
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, -4
  %30 = or disjoint i8 %29, 1
  store i8 %30, ptr %27, align 8
  %31 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %0) #20, !range !137
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2246, ptr noundef nonnull @.str.1) #19
  br label %34

34:                                               ; preds = %33, %26, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_nothrow_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = load i64, ptr %3, align 8
  %5 = and i8 %1, 1
  %6 = zext nneg i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 25
  %8 = and i64 %4, -33554433
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %2 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -33554433
  %18 = or disjoint i64 %17, %7
  store i64 %18, ptr %15, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !188

22:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_readonly_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = load i64, ptr %3, align 8
  %5 = and i8 %1, 1
  %6 = zext nneg i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 20
  %8 = and i64 %4, -1048577
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %20, %13 ], [ %11, %2 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -1048577
  %18 = or disjoint i64 %17, %7
  store i64 %18, ptr %15, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !189

22:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_pure_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i8 %1, 1
  %7 = zext nneg i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 27
  %9 = and i32 %5, -134217729
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %4, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %2 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -134217729
  %20 = or disjoint i32 %19, %8
  store i32 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !190

24:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cgraph_set_looping_const_or_pure_flag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i8 %1, 1
  %7 = zext nneg i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 28
  %9 = and i32 %5, -268435457
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %4, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %2 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -268435457
  %20 = or disjoint i32 %19, %8
  store i32 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !191

24:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_cgraph_edge(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_cgraph_edge(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_cgraph_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_cgraph_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_cgraph_asm_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_cgraph_asm_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P11cgraph_node4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P11cgraph_node4htab(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"cgraph_edge_hook_list", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!7, !8, i64 16}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !8, i64 0}
!18 = !{!"cgraph_node_hook_list", !8, i64 0, !8, i64 8, !8, i64 16}
!19 = !{!18, !8, i64 8}
!20 = !{!18, !8, i64 16}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!27, !8, i64 0}
!27 = !{!"cgraph_2edge_hook_list", !8, i64 0, !8, i64 8, !8, i64 16}
!28 = !{!27, !8, i64 8}
!29 = !{!27, !8, i64 16}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = !{!33, !8, i64 0}
!33 = !{!"cgraph_2node_hook_list", !8, i64 0, !8, i64 8, !8, i64 16}
!34 = !{!33, !8, i64 8}
!35 = !{!33, !8, i64 16}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = !{!39, !8, i64 0}
!39 = !{!"cgraph_node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !40, i64 144, !44, i64 184, !45, i64 224, !46, i64 232, !47, i64 256, !42, i64 288, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 308, !43, i64 308, !43, i64 308, !43, i64 308, !43, i64 308, !43, i64 308, !43, i64 308, !43, i64 309, !43, i64 309}
!40 = !{!"cgraph_local_info", !8, i64 0, !41, i64 8, !43, i64 32, !43, i64 32, !43, i64 32, !43, i64 32, !43, i64 32, !43, i64 32, !43, i64 32, !43, i64 32}
!41 = !{!"inline_summary", !42, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!42 = !{!"long", !9, i64 0}
!43 = !{!"int", !9, i64 0}
!44 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !8, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !9, i64 36}
!45 = !{!"cgraph_rtl_info", !43, i64 0}
!46 = !{!"cgraph_clone_info", !8, i64 0, !8, i64 8, !8, i64 16}
!47 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !8, i64 16, !9, i64 24, !9, i64 25, !9, i64 26}
!48 = !{!39, !8, i64 104}
!49 = !{!9, !9, i64 0}
!50 = !{!39, !8, i64 40}
!51 = !{!39, !8, i64 48}
!52 = !{!39, !8, i64 56}
!53 = !{!39, !8, i64 24}
!54 = !{!39, !43, i64 304}
!55 = !{!43, !43, i64 0}
!56 = !{!39, !43, i64 300}
!57 = !{!39, !8, i64 32}
!58 = !{!39, !43, i64 216}
!59 = !{!39, !43, i64 296}
!60 = !{!39, !8, i64 272}
!61 = !{!39, !42, i64 256}
!62 = !{!39, !9, i64 280}
!63 = !{!39, !42, i64 264}
!64 = !{!39, !9, i64 281}
!65 = !{!39, !9, i64 282}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = !{!39, !8, i64 72}
!70 = !{!39, !8, i64 80}
!71 = !{!39, !8, i64 88}
!72 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13}
!73 = !{!39, !8, i64 96}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = !{!39, !8, i64 112}
!80 = distinct !{!80, !15}
!81 = !{!39, !8, i64 200}
!82 = !{!39, !8, i64 120}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = !{!86, !8, i64 56}
!86 = !{!"cgraph_edge", !42, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !87, i64 88, !43, i64 90, !43, i64 90, !43, i64 90}
!87 = !{!"short", !9, i64 0}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = !{!86, !8, i64 8}
!91 = distinct !{!91, !15}
!92 = distinct !{!92, !15}
!93 = !{!86, !43, i64 72}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = !{i8 0, i8 2}
!97 = !{!86, !8, i64 24}
!98 = !{!86, !43, i64 84}
!99 = !{!86, !8, i64 64}
!100 = !{!86, !8, i64 16}
!101 = !{!39, !8, i64 16}
!102 = !{!86, !8, i64 32}
!103 = !{!86, !8, i64 40}
!104 = !{!39, !8, i64 8}
!105 = !{!86, !8, i64 48}
!106 = !{!86, !42, i64 0}
!107 = !{!86, !43, i64 80}
!108 = !{!86, !87, i64 88}
!109 = !{i32 0, i32 256}
!110 = distinct !{!110, !15}
!111 = !{!112, !8, i64 48}
!112 = !{!"function", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !8, i64 128, !43, i64 136, !43, i64 137, !43, i64 138, !43, i64 138, !43, i64 138, !43, i64 138, !43, i64 138, !43, i64 138, !43, i64 138, !43, i64 139, !43, i64 139, !43, i64 139, !43, i64 139, !43, i64 139, !43, i64 139, !43, i64 139}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = !{!116, !42, i64 72}
!116 = !{!"basic_block_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 48, !8, i64 56, !9, i64 64, !42, i64 72, !43, i64 80, !43, i64 84, !43, i64 88, !43, i64 92, !43, i64 96}
!117 = !{!116, !43, i64 84}
!118 = !{!42, !42, i64 0}
!119 = distinct !{!119, !15}
!120 = !{!112, !8, i64 24}
!121 = !{!112, !8, i64 0}
!122 = !{!112, !8, i64 8}
!123 = !{!112, !8, i64 40}
!124 = !{!112, !8, i64 32}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = !{!39, !8, i64 64}
!129 = !{!130, !8, i64 176}
!130 = !{!"lang_hooks", !8, i64 0, !42, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !131, i64 240, !132, i64 248, !133, i64 256, !134, i64 272, !135, i64 432, !136, i64 560, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624, !8, i64 632, !8, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !9, i64 672}
!131 = !{!"lang_hooks_for_tree_inlining", !8, i64 0}
!132 = !{!"lang_hooks_for_callgraph", !8, i64 0}
!133 = !{!"lang_hooks_for_tree_dump", !8, i64 0, !8, i64 8}
!134 = !{!"lang_hooks_for_decls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!135 = !{!"lang_hooks_for_types", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !9, i64 120}
!136 = !{!"lang_hooks_for_lto", !8, i64 0, !8, i64 8, !8, i64 16}
!137 = !{i32 1, i32 5}
!138 = !{!39, !42, i64 288}
!139 = !{!39, !43, i64 168}
!140 = !{!39, !43, i64 172}
!141 = !{!39, !43, i64 208}
!142 = !{!39, !43, i64 160}
!143 = !{!39, !43, i64 164}
!144 = !{!39, !43, i64 212}
!145 = !{!39, !42, i64 152}
!146 = !{!39, !42, i64 184}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = !{!151, !8, i64 1112}
!151 = !{!"gcc_target", !152, i64 0, !154, i64 368, !155, i64 664, !43, i64 744, !8, i64 752, !8, i64 760, !8, i64 768, !8, i64 776, !8, i64 784, !8, i64 792, !8, i64 800, !8, i64 808, !8, i64 816, !8, i64 824, !8, i64 832, !8, i64 840, !8, i64 848, !8, i64 856, !8, i64 864, !8, i64 872, !8, i64 880, !8, i64 888, !8, i64 896, !8, i64 904, !8, i64 912, !8, i64 920, !8, i64 928, !8, i64 936, !8, i64 944, !8, i64 952, !8, i64 960, !8, i64 968, !8, i64 976, !8, i64 984, !8, i64 992, !8, i64 1000, !8, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !8, i64 1040, !8, i64 1048, !8, i64 1056, !42, i64 1064, !42, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !156, i64 1176, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !42, i64 1464, !157, i64 1472, !8, i64 1664, !8, i64 1672, !8, i64 1680, !8, i64 1688, !8, i64 1696, !8, i64 1704, !8, i64 1712, !8, i64 1720, !8, i64 1728, !8, i64 1736, !8, i64 1744, !8, i64 1752, !8, i64 1760, !8, i64 1768, !8, i64 1776, !158, i64 1784, !159, i64 1792, !160, i64 1896, !161, i64 1968, !8, i64 2016, !9, i64 2024, !9, i64 2025, !9, i64 2026, !9, i64 2027, !9, i64 2028, !9, i64 2029, !9, i64 2030, !9, i64 2031, !9, i64 2032, !9, i64 2033, !9, i64 2034, !9, i64 2035}
!152 = !{!"asm_out", !8, i64 0, !8, i64 8, !8, i64 16, !153, i64 24, !153, i64 56, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360}
!153 = !{!"asm_int_op", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!154 = !{!"sched", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288}
!155 = !{!"vectorize", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!156 = !{!"addr_space", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!157 = !{!"calls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184}
!158 = !{!"c", !8, i64 0}
!159 = !{!"cxx", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96}
!160 = !{!"emutls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !9, i64 65}
!161 = !{!"target_option_hooks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!162 = distinct !{!162, !15}
!163 = !{!164, !8, i64 8}
!164 = !{!"cgraph_asm_node", !8, i64 0, !8, i64 8, !43, i64 16}
!165 = !{!164, !43, i64 16}
!166 = !{!164, !8, i64 0}
!167 = !{!86, !43, i64 76}
!168 = distinct !{!168, !15}
!169 = !{i64 0, i64 8, !13, i64 8, i64 8, !118, i64 16, i64 4, !55, i64 20, i64 4, !55, i64 24, i64 4, !55, i64 28, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55, i64 32, i64 4, !55}
!170 = !{i64 0, i64 8, !118, i64 8, i64 8, !118, i64 16, i64 8, !13, i64 24, i64 4, !55, i64 28, i64 4, !55, i64 32, i64 4, !55, i64 36, i64 1, !49}
!171 = !{!39, !8, i64 232}
!172 = !{i32 0, i32 2}
!173 = distinct !{!173, !15}
!174 = distinct !{!174, !15}
!175 = !{!176, !43, i64 0}
!176 = !{!"VEC_cgraph_edge_p_base", !43, i64 0, !43, i64 4, !9, i64 8}
!177 = distinct !{!177, !15}
!178 = !{!39, !8, i64 240}
!179 = !{!39, !8, i64 248}
!180 = distinct !{!180, !15}
!181 = distinct !{!181, !15}
!182 = distinct !{!182, !15}
!183 = !{!184, !8, i64 32}
!184 = !{!"simple_ipa_opt_pass", !185, i64 0}
!185 = !{!"opt_pass", !43, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72}
!186 = !{!130, !8, i64 656}
!187 = distinct !{!187, !15}
!188 = distinct !{!188, !15}
!189 = distinct !{!189, !15}
!190 = distinct !{!190, !15}
!191 = distinct !{!191, !15}
