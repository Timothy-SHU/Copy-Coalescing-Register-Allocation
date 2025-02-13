; ModuleID = 'ipa-reference.c'
source_filename = "ipa-reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ipa_reference_vars_info_d = type { ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_ipa_reference_vars_info_t_base = type { i32, i32, [1 x ptr] }
%struct.ipa_reference_global_vars_info_d = type { ptr, ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.ipa_reference_local_vars_info_d = type { ptr, ptr, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node_set_iterator = type { ptr, i32 }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_tree_ref_table = type { ptr, i32 }

@memory_identifier_string = dso_local local_unnamed_addr global ptr null, align 8
@ipa_reference_vars_vector = internal unnamed_addr global ptr null, align 8
@pass_ipa_reference = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_reference, ptr @propagate, ptr null, ptr null, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @generate_summary, ptr @ipa_reference_write_summary, ptr @ipa_reference_read_summary, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"static-var\00", align 1
@flag_ipa_reference = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ipa-reference.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@all_module_statics = internal unnamed_addr global ptr null, align 8
@global_info_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"\0AFunction name:%s/%i:\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A  locals read: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A  locals written: \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0A  next cycle: %s/%i \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\0A    locals read: \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\0A    locals written: \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A  globals read: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0A  globals written: \00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@local_info_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@reference_vars_to_consider = internal global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@module_statics_escape = internal unnamed_addr global ptr null, align 8
@module_statics_written = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"Not TREE_ADDRESSABLE var %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"read-only var %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0APromotable global:%s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\0A  calls read all: \00", align 1
@ipa_init.init_p = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./cgraph.h\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"\0A local analysis of %s\0A\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1
@gt_ggc_r_gt_ipa_reference_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @reference_vars_to_consider, i64 1, i64 8, ptr @gt_ggc_m_IP9tree_node12splay_tree_s, ptr @gt_pch_n_IP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_global_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef nonnull %2) #15
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @VEC_ipa_reference_vars_info_t_base_index(ptr noundef nonnull %2, i32 noundef %7) #15
  br label %11

11:                                               ; preds = %1, %4, %9
  %12 = phi ptr [ %10, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !23
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_reference_vars_info_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_reference() #0 {
  %1 = load i32, ptr @flag_ipa_reference, align 4, !tbaa !29
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !29
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @propagate() #3 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !29
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #16
  %8 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null) #16
  %9 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !25
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %9) #16
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %10) #16
  br label %13

13:                                               ; preds = %12, %0
  %14 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #16
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @ipa_utils_print_order(ptr noundef nonnull %15, ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %14) #16
  br label %18

18:                                               ; preds = %17, %13
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %362

20:                                               ; preds = %18
  %21 = zext nneg i32 %14 to i64
  br label %22

22:                                               ; preds = %20, %185
  %23 = phi i64 [ 0, %20 ], [ %186, %185 ]
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #17
  %25 = getelementptr inbounds ptr, ptr %7, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %26) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !tbaa !25
  tail call void @dump_cgraph_node(ptr noundef %30, ptr noundef %26) #16
  %31 = load ptr, ptr @stderr, align 8, !tbaa !25
  tail call void @dump_cgraph(ptr noundef %31) #16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1245, ptr noundef nonnull @.str.3) #16
  br label %32

32:                                               ; preds = %29, %22
  %33 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1248, ptr noundef nonnull @.str.3) #16
  br label %37

37:                                               ; preds = %32, %36
  %38 = load ptr, ptr %27, align 8, !tbaa !30
  %39 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !31
  store i8 %40, ptr %1, align 1, !tbaa !33
  %41 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !34
  store i8 %42, ptr %2, align 1, !tbaa !33
  %43 = tail call i32 @cgraph_function_body_availability(ptr noundef %26) #16
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load ptr, ptr %26, align 8, !tbaa !35
  call fastcc void @read_write_all_from_decl(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %47, %60
  %52 = phi ptr [ %62, %60 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = tail call i32 @cgraph_function_body_availability(ptr noundef %54) #16
  %56 = icmp ult i32 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load ptr, ptr %53, align 8, !tbaa !36
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  call fastcc void @read_write_all_from_decl(ptr noundef %59, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %60

60:                                               ; preds = %51, %57
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %51, !llvm.loop !39

64:                                               ; preds = %60, %47
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = getelementptr inbounds %struct.ipa_dfs_info, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i8, ptr %1, align 1, !tbaa !33
  br label %111

72:                                               ; preds = %64, %97
  %73 = phi ptr [ %109, %97 ], [ %68, %64 ]
  %74 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %73) #15
  %75 = load ptr, ptr %74, align 8, !tbaa !30
  %76 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %73) #16
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load ptr, ptr %73, align 8, !tbaa !35
  call fastcc void @read_write_all_from_decl(ptr noundef %79, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %80

80:                                               ; preds = %78, %72
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !25
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %80, %93
  %85 = phi ptr [ %95, %93 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !36
  %88 = tail call i32 @cgraph_function_body_availability(ptr noundef %87) #16
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load ptr, ptr %86, align 8, !tbaa !36
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  call fastcc void @read_write_all_from_decl(ptr noundef %92, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %93

93:                                               ; preds = %84, %90
  %94 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !25
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %84, !llvm.loop !44

97:                                               ; preds = %93, %80
  %98 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %75, i64 0, i32 2
  %99 = load i8, ptr %98, align 8, !tbaa !31
  %100 = load i8, ptr %1, align 1, !tbaa !33
  %101 = or i8 %100, %99
  store i8 %101, ptr %1, align 1, !tbaa !33
  %102 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %75, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !34
  %104 = load i8, ptr %2, align 1, !tbaa !33
  %105 = or i8 %104, %103
  store i8 %105, ptr %2, align 1, !tbaa !33
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 16
  %107 = load ptr, ptr %106, align 8, !tbaa !41
  %108 = getelementptr inbounds %struct.ipa_dfs_info, ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !42
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %72, !llvm.loop !45

111:                                              ; preds = %97, %70
  %112 = phi i8 [ %71, %70 ], [ %101, %97 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  store ptr %115, ptr %24, align 8, !tbaa !6
  br label %119

116:                                              ; preds = %111
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %117, ptr %24, align 8, !tbaa !6
  %118 = load ptr, ptr %38, align 8, !tbaa !46
  tail call void @bitmap_copy(ptr noundef %117, ptr noundef %118) #16
  br label %119

119:                                              ; preds = %116, %114
  %120 = load i8, ptr %2, align 1, !tbaa !33
  %121 = icmp eq i8 %120, 0
  %122 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br i1 %121, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  store ptr %124, ptr %122, align 8, !tbaa !26
  br label %129

125:                                              ; preds = %119
  %126 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %126, ptr %122, align 8, !tbaa !26
  %127 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !47
  tail call void @bitmap_copy(ptr noundef %126, ptr noundef %128) #16
  br label %129

129:                                              ; preds = %125, %123
  tail call fastcc void @propagate_bits(ptr noundef nonnull %24, ptr noundef %26) #15
  %130 = load ptr, ptr %65, align 8, !tbaa !41
  %131 = getelementptr inbounds %struct.ipa_dfs_info, ptr %130, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !42
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store ptr %24, ptr %33, align 8, !tbaa !11
  br label %185

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br label %137

137:                                              ; preds = %135, %151
  %138 = phi ptr [ %132, %135 ], [ %155, %151 ]
  %139 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %138) #15
  %140 = load ptr, ptr %139, align 8, !tbaa !30
  br i1 %113, label %141, label %145

141:                                              ; preds = %137
  %142 = load ptr, ptr %24, align 8, !tbaa !6
  %143 = load ptr, ptr %140, align 8, !tbaa !46
  %144 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %142, ptr noundef %143) #16
  br label %145

145:                                              ; preds = %141, %137
  br i1 %121, label %146, label %151

146:                                              ; preds = %145
  %147 = load ptr, ptr %136, align 8, !tbaa !26
  %148 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %140, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !47
  %150 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %147, ptr noundef %149) #16
  br label %151

151:                                              ; preds = %146, %145
  tail call fastcc void @propagate_bits(ptr noundef %24, ptr noundef nonnull %138) #15
  %152 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 16
  %153 = load ptr, ptr %152, align 8, !tbaa !41
  %154 = getelementptr inbounds %struct.ipa_dfs_info, ptr %153, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !42
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %137, !llvm.loop !48

157:                                              ; preds = %151
  %158 = load ptr, ptr %65, align 8, !tbaa !41
  %159 = getelementptr inbounds %struct.ipa_dfs_info, ptr %158, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !42
  store ptr %24, ptr %33, align 8, !tbaa !11
  %161 = icmp eq ptr %160, null
  br i1 %161, label %185, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br label %164

164:                                              ; preds = %162, %171
  %165 = phi ptr [ %160, %162 ], [ %183, %171 ]
  %166 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %165) #15
  %167 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !11
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1339, ptr noundef nonnull @.str.3) #16
  br label %171

171:                                              ; preds = %164, %170
  %172 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  store ptr %172, ptr %167, align 8, !tbaa !11
  %173 = load ptr, ptr %24, align 8, !tbaa !6
  %174 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %173) #15
  %175 = load ptr, ptr %167, align 8, !tbaa !11
  store ptr %174, ptr %175, align 8, !tbaa !6
  %176 = load ptr, ptr %163, align 8, !tbaa !26
  %177 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %176) #15
  %178 = load ptr, ptr %167, align 8, !tbaa !11
  %179 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %178, i64 0, i32 1
  store ptr %177, ptr %179, align 8, !tbaa !26
  %180 = getelementptr inbounds %struct.cgraph_node, ptr %165, i64 0, i32 16
  %181 = load ptr, ptr %180, align 8, !tbaa !41
  %182 = getelementptr inbounds %struct.ipa_dfs_info, ptr %181, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !42
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %164, !llvm.loop !49

185:                                              ; preds = %171, %134, %157
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #17
  %186 = add nuw nsw i64 %23, 1
  %187 = icmp eq i64 %186, %21
  br i1 %187, label %188, label %22, !llvm.loop !50

188:                                              ; preds = %185
  %189 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %190 = icmp ne ptr %189, null
  %191 = and i1 %190, %19
  br i1 %191, label %192, label %330

192:                                              ; preds = %188
  %193 = zext nneg i32 %14 to i64
  br label %194

194:                                              ; preds = %192, %327
  %195 = phi i64 [ 0, %192 ], [ %328, %327 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %196 = getelementptr inbounds ptr, ptr %7, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !25
  %198 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %197) #15
  %199 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !11
  %201 = load ptr, ptr %198, align 8, !tbaa !30
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %203 = tail call ptr @cgraph_node_name(ptr noundef %197) #16
  %204 = getelementptr inbounds %struct.cgraph_node, ptr %197, i64 0, i32 24
  %205 = load i32, ptr %204, align 8, !tbaa !13
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.4, ptr noundef %203, i32 noundef %205) #15
  %207 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %208 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %207)
  %209 = load ptr, ptr %201, align 8, !tbaa !46
  %210 = icmp eq ptr %209, null
  br i1 %210, label %221, label %211

211:                                              ; preds = %194
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %209, ptr noundef nonnull %3) #15
  %212 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %211, %214
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %216 = load i32, ptr %3, align 4, !tbaa !29
  %217 = tail call fastcc ptr @get_static_name(i32 noundef %216) #15
  %218 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.6, ptr noundef %217) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %219 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %214, !llvm.loop !52

221:                                              ; preds = %214, %211, %194
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %223 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %222)
  %224 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %201, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !47
  %226 = icmp eq ptr %225, null
  br i1 %226, label %237, label %227

227:                                              ; preds = %221
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %225, ptr noundef nonnull %3) #15
  %228 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %227, %230
  %231 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %232 = load i32, ptr %3, align 4, !tbaa !29
  %233 = tail call fastcc ptr @get_static_name(i32 noundef %232) #15
  %234 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.6, ptr noundef %233) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %235 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %230, !llvm.loop !53

237:                                              ; preds = %230, %227, %221
  %238 = getelementptr inbounds %struct.cgraph_node, ptr %197, i64 0, i32 16
  %239 = load ptr, ptr %238, align 8, !tbaa !41
  %240 = getelementptr inbounds %struct.ipa_dfs_info, ptr %239, i64 0, i32 4
  %241 = load ptr, ptr %240, align 8, !tbaa !42
  %242 = icmp eq ptr %241, null
  br i1 %242, label %288, label %243

243:                                              ; preds = %237, %282
  %244 = phi ptr [ %286, %282 ], [ %241, %237 ]
  %245 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %244) #15
  %246 = load ptr, ptr %245, align 8, !tbaa !30
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %248 = tail call ptr @cgraph_node_name(ptr noundef nonnull %244) #16
  %249 = getelementptr inbounds %struct.cgraph_node, ptr %244, i64 0, i32 24
  %250 = load i32, ptr %249, align 8, !tbaa !13
  %251 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef nonnull @.str.8, ptr noundef %248, i32 noundef %250) #15
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %253 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %252)
  %254 = load ptr, ptr %246, align 8, !tbaa !46
  %255 = icmp eq ptr %254, null
  br i1 %255, label %266, label %256

256:                                              ; preds = %243
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %254, ptr noundef nonnull %3) #15
  %257 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %256, %259
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %261 = load i32, ptr %3, align 4, !tbaa !29
  %262 = tail call fastcc ptr @get_static_name(i32 noundef %261) #15
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.6, ptr noundef %262) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %264 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %259, !llvm.loop !54

266:                                              ; preds = %259, %256, %243
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %268 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 21, i64 1, ptr %267)
  %269 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %246, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !47
  %271 = icmp eq ptr %270, null
  br i1 %271, label %282, label %272

272:                                              ; preds = %266
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %270, ptr noundef nonnull %3) #15
  %273 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %282, label %275

275:                                              ; preds = %272, %275
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %277 = load i32, ptr %3, align 4, !tbaa !29
  %278 = tail call fastcc ptr @get_static_name(i32 noundef %277) #15
  %279 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef nonnull @.str.6, ptr noundef %278) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %280 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %275, !llvm.loop !55

282:                                              ; preds = %275, %272, %266
  %283 = getelementptr inbounds %struct.cgraph_node, ptr %244, i64 0, i32 16
  %284 = load ptr, ptr %283, align 8, !tbaa !41
  %285 = getelementptr inbounds %struct.ipa_dfs_info, ptr %284, i64 0, i32 4
  %286 = load ptr, ptr %285, align 8, !tbaa !42
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %243, !llvm.loop !56

288:                                              ; preds = %282, %237
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %290 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr %289)
  %291 = load ptr, ptr %200, align 8, !tbaa !6
  %292 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %293 = icmp eq ptr %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %296 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %295)
  br label %307

297:                                              ; preds = %288
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %291, ptr noundef nonnull %3) #15
  %298 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %297, %300
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %302 = load i32, ptr %3, align 4, !tbaa !29
  %303 = tail call fastcc ptr @get_static_name(i32 noundef %302) #15
  %304 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef nonnull @.str.6, ptr noundef %303) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %305 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %300, !llvm.loop !57

307:                                              ; preds = %300, %297, %294
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %309 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %308)
  %310 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %200, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !26
  %312 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %313 = icmp eq ptr %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %307
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %316 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %315)
  br label %327

317:                                              ; preds = %307
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %311, ptr noundef nonnull %3) #15
  %318 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %317, %320
  %321 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %322 = load i32, ptr %3, align 4, !tbaa !29
  %323 = tail call fastcc ptr @get_static_name(i32 noundef %322) #15
  %324 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %321, ptr noundef nonnull @.str.6, ptr noundef %323) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %325 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %320, !llvm.loop !58

327:                                              ; preds = %320, %317, %314
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %328 = add nuw nsw i64 %195, 1
  %329 = icmp eq i64 %328, %193
  br i1 %329, label %330, label %194, !llvm.loop !59

330:                                              ; preds = %327, %188
  br i1 %19, label %331, label %362

331:                                              ; preds = %330
  %332 = zext nneg i32 %14 to i64
  br label %333

333:                                              ; preds = %331, %359
  %334 = phi i64 [ 0, %331 ], [ %360, %359 ]
  %335 = getelementptr inbounds ptr, ptr %7, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !25
  %337 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %336) #15
  %338 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !11
  %340 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  %341 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %339, i64 0, i32 2
  store ptr %340, ptr %341, align 8, !tbaa !27
  %342 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  %343 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %339, i64 0, i32 3
  store ptr %342, ptr %343, align 8, !tbaa !28
  %344 = load ptr, ptr %339, align 8, !tbaa !6
  %345 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %346 = icmp eq ptr %344, %345
  br i1 %346, label %351, label %347

347:                                              ; preds = %333
  %348 = load ptr, ptr %341, align 8, !tbaa !27
  %349 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %348, ptr noundef %345, ptr noundef %344) #16
  %350 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  br label %351

351:                                              ; preds = %347, %333
  %352 = phi ptr [ %350, %347 ], [ %344, %333 ]
  %353 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %339, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !26
  %355 = icmp eq ptr %354, %352
  br i1 %355, label %359, label %356

356:                                              ; preds = %351
  %357 = load ptr, ptr %343, align 8, !tbaa !28
  %358 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %357, ptr noundef %352, ptr noundef %354) #16
  br label %359

359:                                              ; preds = %356, %351
  %360 = add nuw nsw i64 %334, 1
  %361 = icmp eq i64 %360, %332
  br i1 %361, label %362, label %333, !llvm.loop !60

362:                                              ; preds = %359, %18, %330
  tail call void @free(ptr noundef %7) #15
  %363 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !25
  %364 = icmp eq ptr %363, null
  br i1 %364, label %383, label %365

365:                                              ; preds = %362, %379
  %366 = phi ptr [ %381, %379 ], [ %363, %362 ]
  %367 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %366) #15
  %368 = getelementptr inbounds %struct.cgraph_node, ptr %366, i64 0, i32 16
  %369 = load ptr, ptr %368, align 8, !tbaa !41
  %370 = icmp eq ptr %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %365
  tail call void @free(ptr noundef nonnull %369) #15
  store ptr null, ptr %368, align 8, !tbaa !41
  br label %372

372:                                              ; preds = %371, %365
  %373 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %366) #16
  %374 = icmp eq i32 %373, 2
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  tail call fastcc void @clean_function(ptr noundef nonnull %366) #15
  br label %379

376:                                              ; preds = %372
  %377 = icmp eq ptr %367, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %376
  tail call fastcc void @clean_function_local_data(ptr noundef nonnull %366) #15
  br label %379

379:                                              ; preds = %376, %378, %375
  %380 = getelementptr inbounds %struct.cgraph_node, ptr %366, i64 0, i32 3
  %381 = load ptr, ptr %380, align 8, !tbaa !25
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %365, !llvm.loop !61

383:                                              ; preds = %379, %362
  tail call void @bitmap_obstack_release(ptr noundef nonnull @local_info_obstack) #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @generate_summary() #3 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  tail call fastcc void @ipa_init() #15
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  %7 = tail call fastcc ptr @varpool_first_static_initializer() #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %12, %0
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %16

12:                                               ; preds = %0, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %0 ]
  tail call fastcc void @analyze_variable(ptr noundef nonnull %13) #15
  %14 = tail call fastcc ptr @varpool_next_static_initializer(ptr noundef nonnull %13) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %9, label %12, !llvm.loop !62

16:                                               ; preds = %9, %21
  %17 = phi ptr [ %23, %21 ], [ %10, %9 ]
  %18 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %17) #16
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @analyze_function(ptr noundef nonnull %17) #15
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !63

25:                                               ; preds = %21, %9
  %26 = load ptr, ptr @visited_nodes, align 8, !tbaa !25
  tail call void @pointer_set_destroy(ptr noundef %26) #16
  store ptr null, ptr @visited_nodes, align 8, !tbaa !25
  %27 = load ptr, ptr @module_statics_escape, align 8, !tbaa !25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %27, ptr noundef nonnull %1) #15
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25, %30
  %31 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !25
  %32 = load i32, ptr %1, align 4, !tbaa !29
  %33 = zext i32 %32 to i64
  tail call void @splay_tree_remove(ptr noundef %31, i64 noundef %33) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %30, !llvm.loop !64

36:                                               ; preds = %30
  %37 = load ptr, ptr @module_statics_escape, align 8, !tbaa !25
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi ptr [ %37, %36 ], [ %27, %25 ]
  %40 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %41 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %40, ptr noundef %39) #16
  %42 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %43 = load ptr, ptr @module_statics_written, align 8, !tbaa !25
  %44 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %5, ptr noundef %42, ptr noundef %43) #16
  %45 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %45, ptr noundef nonnull %1) #15
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %38, %58
  %49 = load i32, ptr %1, align 4, !tbaa !29
  %50 = tail call fastcc ptr @get_static_decl(i32 noundef %49) #15
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, -262145
  store i64 %52, ptr %50, align 8
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = tail call fastcc ptr @get_static_name(i32 noundef %49) #15
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.14, ptr noundef %56) #15
  br label %58

58:                                               ; preds = %55, %48
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %59 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %48, !llvm.loop !65

61:                                               ; preds = %58
  %62 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  br label %63

63:                                               ; preds = %61, %38
  %64 = phi ptr [ %62, %61 ], [ %45, %38 ]
  %65 = load ptr, ptr @module_statics_written, align 8, !tbaa !25
  %66 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %5, ptr noundef %64, ptr noundef %65) #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %1) #15
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %63, %83
  %70 = load i32, ptr %1, align 4, !tbaa !29
  %71 = tail call fastcc ptr @get_static_decl(i32 noundef %70) #15
  %72 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !33
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i64, ptr %71, align 8
  %77 = or i64 %76, 1048576
  store i64 %77, ptr %71, align 8
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = tail call fastcc ptr @get_static_name(i32 noundef %70) #15
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.15, ptr noundef %81) #15
  br label %83

83:                                               ; preds = %75, %80, %69
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %69, !llvm.loop !66

86:                                               ; preds = %83, %63
  %87 = load ptr, ptr @module_statics_escape, align 8, !tbaa !25
  tail call void @bitmap_obstack_free(ptr noundef %87) #16
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !25
  %88 = load ptr, ptr @module_statics_written, align 8, !tbaa !25
  tail call void @bitmap_obstack_free(ptr noundef %88) #16
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !25
  store ptr null, ptr @module_statics_written, align 8, !tbaa !25
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %92, ptr noundef nonnull %1) #15
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91, %95
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %97 = load i32, ptr %1, align 4, !tbaa !29
  %98 = tail call fastcc ptr @get_static_name(i32 noundef %97) #15
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.16, ptr noundef %98) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %100 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !51
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %95, !llvm.loop !67

102:                                              ; preds = %95, %91, %86
  %103 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !25
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %105

105:                                              ; preds = %102, %122
  %106 = phi ptr [ %124, %122 ], [ %103, %102 ]
  %107 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %106) #16
  %108 = icmp ugt i32 %107, 1
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %106) #15
  %111 = load ptr, ptr %110, align 8, !tbaa !30
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  tail call void @bitmap_and_into(ptr noundef nonnull %112, ptr noundef %115) #16
  br label %116

116:                                              ; preds = %114, %109
  %117 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %111, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  tail call void @bitmap_and_into(ptr noundef nonnull %118, ptr noundef %121) #16
  br label %122

122:                                              ; preds = %116, %120, %105
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %106, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !25
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %105, !llvm.loop !68

126:                                              ; preds = %122, %102
  tail call void @bitmap_obstack_free(ptr noundef %5) #16
  tail call void @bitmap_obstack_free(ptr noundef %6) #16
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %128 = icmp eq ptr %127, null
  %129 = load ptr, ptr @cgraph_nodes, align 8
  %130 = icmp eq ptr %129, null
  %131 = select i1 %128, i1 true, i1 %130
  br i1 %131, label %193, label %132

132:                                              ; preds = %126, %189
  %133 = phi ptr [ %191, %189 ], [ %129, %126 ]
  %134 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %133) #16
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %137 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %133) #15
  %138 = load ptr, ptr %137, align 8, !tbaa !30
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %140 = tail call ptr @cgraph_node_name(ptr noundef nonnull %133) #16
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %133, i64 0, i32 24
  %142 = load i32, ptr %141, align 8, !tbaa !13
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef %140, i32 noundef %142) #15
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %145 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %144)
  %146 = load ptr, ptr %138, align 8, !tbaa !46
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %136
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %146, ptr noundef nonnull %3) #15
  %149 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148, %151
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %153 = load i32, ptr %3, align 4, !tbaa !29
  %154 = tail call fastcc ptr @get_static_name(i32 noundef %153) #15
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.6, ptr noundef %154) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %156 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %151, !llvm.loop !69

158:                                              ; preds = %151, %148, %136
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %160 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %159)
  %161 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !47
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %158
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %162, ptr noundef nonnull %3) #15
  %165 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164, %167
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %169 = load i32, ptr %3, align 4, !tbaa !29
  %170 = tail call fastcc ptr @get_static_name(i32 noundef %169) #15
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.6, ptr noundef %170) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %172 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %167, !llvm.loop !70

174:                                              ; preds = %167, %164, %158
  %175 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !31
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %180 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %179)
  br label %181

181:                                              ; preds = %178, %174
  %182 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 3
  %183 = load i8, ptr %182, align 1, !tbaa !34
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %187 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %186)
  br label %188

188:                                              ; preds = %185, %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %189

189:                                              ; preds = %132, %188
  %190 = getelementptr inbounds %struct.cgraph_node, ptr %133, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !25
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %132, !llvm.loop !71

193:                                              ; preds = %189, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_reference_write_summary(ptr noundef %0) #3 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call ptr @lto_create_simple_output_block(i32 noundef 6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %6 = tail call fastcc ptr @csi_start(ptr noundef %0) #15
  store ptr %6, ptr %2, align 8, !tbaa.struct !72
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %7, align 8, !tbaa.struct !73
  %8 = tail call fastcc zeroext i8 @csi_end_p(ptr %6, i32 0) #15, !range !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1, %10
  %11 = phi i32 [ %19, %10 ], [ 0, %1 ]
  %12 = phi ptr [ %18, %10 ], [ %6, %1 ]
  %13 = phi i32 [ %17, %10 ], [ 0, %1 ]
  %14 = tail call fastcc ptr @csi_node(ptr %12, i32 %11) #15
  %15 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %14) #15, !range !51
  %16 = zext nneg i8 %15 to i32
  %17 = add i32 %13, %16
  call fastcc void @csi_next(ptr noundef nonnull %2) #15
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %7, align 8
  %20 = tail call fastcc zeroext i8 @csi_end_p(ptr %18, i32 %19) #15, !range !51
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !llvm.loop !74

22:                                               ; preds = %10
  %23 = zext i32 %17 to i64
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i64 [ 0, %1 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.lto_simple_output_block, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  tail call void @lto_output_uleb128_stream(ptr noundef %27, i64 noundef %25) #16
  store ptr %6, ptr %2, align 8, !tbaa.struct !72
  store i32 0, ptr %7, align 8, !tbaa.struct !73
  %28 = tail call fastcc zeroext i8 @csi_end_p(ptr %6, i32 0) #15, !range !51
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.lto_simple_output_block, ptr %5, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %86
  %33 = phi i32 [ 0, %30 ], [ %88, %86 ]
  %34 = phi ptr [ %6, %30 ], [ %87, %86 ]
  %35 = tail call fastcc ptr @csi_node(ptr %34, i32 %33) #15
  %36 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %35) #15, !range !51
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %35) #15
  %40 = load ptr, ptr %39, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %41 = load ptr, ptr %31, align 8, !tbaa !77
  %42 = getelementptr inbounds %struct.lto_out_decl_state, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %43, ptr noundef %35) #16
  %45 = load ptr, ptr %26, align 8, !tbaa !75
  %46 = sext i32 %44 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %45, i64 noundef %46) #16
  %47 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !31
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr %26, align 8, !tbaa !75
  br i1 %49, label %52, label %51

51:                                               ; preds = %38
  tail call void @lto_output_sleb128_stream(ptr noundef %50, i64 noundef -1) #16
  br label %65

52:                                               ; preds = %38
  %53 = load ptr, ptr %40, align 8, !tbaa !46
  %54 = tail call i64 @bitmap_count_bits(ptr noundef %53) #16
  tail call void @lto_output_sleb128_stream(ptr noundef %50, i64 noundef %54) #16
  %55 = load ptr, ptr %40, align 8, !tbaa !46
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %55, ptr noundef nonnull %3) #15
  %56 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52, %58
  %59 = load ptr, ptr %31, align 8, !tbaa !77
  %60 = load ptr, ptr %26, align 8, !tbaa !75
  %61 = load i32, ptr %3, align 4, !tbaa !29
  %62 = tail call fastcc ptr @get_static_decl(i32 noundef %61) #15
  tail call void @lto_output_var_decl_index(ptr noundef %59, ptr noundef %60, ptr noundef %62) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %58, !llvm.loop !80

65:                                               ; preds = %58, %52, %51
  %66 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr %26, align 8, !tbaa !75
  br i1 %68, label %71, label %70

70:                                               ; preds = %65
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef -1) #16
  br label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !47
  %74 = tail call i64 @bitmap_count_bits(ptr noundef %73) #16
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef %74) #16
  %75 = load ptr, ptr %72, align 8, !tbaa !47
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %75, ptr noundef nonnull %3) #15
  %76 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71, %78
  %79 = load ptr, ptr %31, align 8, !tbaa !77
  %80 = load ptr, ptr %26, align 8, !tbaa !75
  %81 = load i32, ptr %3, align 4, !tbaa !29
  %82 = tail call fastcc ptr @get_static_decl(i32 noundef %81) #15
  tail call void @lto_output_var_decl_index(ptr noundef %79, ptr noundef %80, ptr noundef %82) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !51
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %78, !llvm.loop !81

85:                                               ; preds = %78, %71, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %86

86:                                               ; preds = %32, %85
  call fastcc void @csi_next(ptr noundef nonnull %2) #15
  %87 = load ptr, ptr %2, align 8
  %88 = load i32, ptr %7, align 8
  %89 = tail call fastcc zeroext i8 @csi_end_p(ptr %87, i32 %88) #15, !range !51
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %32, label %91, !llvm.loop !82

91:                                               ; preds = %86, %24
  tail call void @lto_destroy_simple_output_block(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_reference_read_summary() #3 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #16
  tail call fastcc void @ipa_init() #15
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %0, %63
  %7 = phi ptr [ %67, %63 ], [ %4, %0 ]
  %8 = phi i32 [ %64, %63 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %9 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %7, i32 noundef 6, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %6
  %12 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lto_file_decl_data, ptr %7, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %57
  %18 = phi i32 [ 0, %15 ], [ %58, %57 ]
  %19 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %16, align 8, !tbaa !83
  %22 = call ptr @lto_cgraph_encoder_deref(ptr noundef %21, i32 noundef %20) #16
  %23 = call fastcc ptr @init_function_info(ptr noundef %22) #15
  %24 = call i64 @lto_input_sleb128(ptr noundef nonnull %9) #16
  %25 = trunc i64 %24 to i32
  switch i32 %25, label %28 [
    i32 -1, label %26
    i32 0, label %39
  ]

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %23, i64 0, i32 2
  store i8 1, ptr %27, align 8, !tbaa !31
  br label %39

28:                                               ; preds = %17, %28
  %29 = phi i32 [ %37, %28 ], [ 0, %17 ]
  %30 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %31 = trunc i64 %30 to i32
  %32 = call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef nonnull %7, i32 noundef %31) #15
  call fastcc void @add_static_var(ptr noundef %32) #15
  %33 = load ptr, ptr %23, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %32, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !33
  %36 = call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %35) #16
  %37 = add nuw i32 %29, 1
  %38 = icmp eq i32 %37, %25
  br i1 %38, label %39, label %28, !llvm.loop !85

39:                                               ; preds = %28, %17, %26
  %40 = call i64 @lto_input_sleb128(ptr noundef nonnull %9) #16
  %41 = trunc i64 %40 to i32
  switch i32 %41, label %42 [
    i32 -1, label %44
    i32 0, label %57
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %23, i64 0, i32 1
  br label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %23, i64 0, i32 3
  store i8 1, ptr %45, align 1, !tbaa !34
  br label %57

46:                                               ; preds = %42, %46
  %47 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %48 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %49 = trunc i64 %48 to i32
  %50 = call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef nonnull %7, i32 noundef %49) #15
  call fastcc void @add_static_var(ptr noundef %50) #15
  %51 = load ptr, ptr %43, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %50, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !33
  %54 = call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %53) #16
  %55 = add nuw i32 %47, 1
  %56 = icmp eq i32 %55, %41
  br i1 %56, label %57, label %46, !llvm.loop !86

57:                                               ; preds = %46, %39, %44
  %58 = add nuw i32 %18, 1
  %59 = icmp eq i32 %58, %13
  br i1 %59, label %60, label %17, !llvm.loop !87

60:                                               ; preds = %57, %11
  %61 = load ptr, ptr %1, align 8, !tbaa !25
  %62 = load i64, ptr %2, align 8, !tbaa !88
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 6, ptr noundef nonnull %9, ptr noundef %61, i64 noundef %62) #16
  br label %63

63:                                               ; preds = %60, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %64 = add i32 %8, 1
  %65 = zext i32 %8 to i64
  %66 = getelementptr inbounds ptr, ptr %3, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %6, !llvm.loop !89

69:                                               ; preds = %63, %0
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ipa_utils_reduced_inorder(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_cgraph(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ipa_utils_print_order(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_write_all_from_decl(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = tail call i32 @flags_from_decl_or_type(ptr noundef %0) #16
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = and i32 %4, 2
  %9 = icmp ne i32 %8, 0
  store i8 1, ptr %1, align 1, !tbaa !33
  %10 = and i32 %4, 72
  %11 = icmp eq i32 %10, 72
  %12 = or i1 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store i8 1, ptr %2, align 1, !tbaa !33
  br label %14

14:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %50
  %9 = phi ptr [ %4, %6 ], [ %52, %50 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = tail call i32 @cgraph_function_body_availability(ptr noundef %11) #16
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %11) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !6
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void @bitmap_obstack_free(ptr noundef %22) #16
  %29 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  store ptr %29, ptr %0, align 8, !tbaa !6
  br label %35

30:                                               ; preds = %25
  %31 = icmp eq ptr %22, %26
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef %26) #16
  %34 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %28, %32, %30, %21
  %36 = phi ptr [ %29, %28 ], [ %34, %32 ], [ %23, %30 ], [ %22, %21 ]
  %37 = load ptr, ptr %7, align 8, !tbaa !26
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %19, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = icmp eq ptr %41, %36
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  tail call void @bitmap_obstack_free(ptr noundef %37) #16
  %44 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  store ptr %44, ptr %7, align 8, !tbaa !26
  br label %50

45:                                               ; preds = %39
  %46 = icmp eq ptr %37, %41
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %37, ptr noundef %41) #16
  br label %50

49:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 577, ptr noundef nonnull @.str.3) #16
  br label %50

50:                                               ; preds = %43, %47, %45, %35, %17, %8, %49
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %8, !llvm.loop !90

54:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_global_bitmap(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %3, %1, %6
  %9 = phi ptr [ %7, %6 ], [ null, %1 ], [ %0, %3 ]
  ret ptr %9
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = load ptr, ptr %1, align 8, !tbaa !91
  store ptr %4, ptr %0, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !95
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !93
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !99
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !99
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !29
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !100

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !29
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !93
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !98
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !88
  store i64 %35, ptr %3, align 8, !tbaa !99
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !29
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !29
  %40 = load i32, ptr %23, align 8, !tbaa !98
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !98
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !101

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !102
  store ptr %44, ptr %0, align 8, !tbaa !93
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !96
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !29
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !99
  store i32 %16, ptr %1, align 4, !tbaa !29
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_name(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !25
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = inttoptr i64 %9 to ptr
  %11 = tail call ptr %7(ptr noundef %10, i32 noundef 2) #16
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi ptr [ %11, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !99
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !99
  %6 = load i32, ptr %1, align 4, !tbaa !29
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_function(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  tail call fastcc void @clean_function_local_data(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @all_module_statics, align 8
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef nonnull %7) #16
  store ptr null, ptr %4, align 8, !tbaa !6
  %13 = load ptr, ptr @all_module_statics, align 8
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %9, %6 ]
  %16 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %15
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @bitmap_obstack_free(ptr noundef nonnull %17) #16
  store ptr null, ptr %16, align 8, !tbaa !26
  %22 = load ptr, ptr @all_module_statics, align 8
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi ptr [ %22, %21 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %26, %24
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  tail call void @bitmap_obstack_free(ptr noundef nonnull %26) #16
  store ptr null, ptr %25, align 8, !tbaa !27
  %31 = load ptr, ptr @all_module_statics, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %31, %30 ], [ %24, %23 ]
  %34 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = icmp eq ptr %35, null
  %37 = icmp eq ptr %35, %33
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %35) #16
  br label %40

40:                                               ; preds = %39, %32
  tail call void @free(ptr noundef nonnull %4) #15
  store ptr null, ptr %3, align 8, !tbaa !11
  br label %41

41:                                               ; preds = %40, %1
  %42 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  tail call void @free(ptr noundef %42) #15
  tail call fastcc void @set_reference_vars_info(ptr noundef %0, ptr noundef null) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_function_local_data(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @all_module_statics, align 8
  %9 = icmp eq ptr %6, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @bitmap_obstack_free(ptr noundef nonnull %6) #16
  store ptr null, ptr %3, align 8, !tbaa !46
  %12 = load ptr, ptr @all_module_statics, align 8
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %14
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @bitmap_obstack_free(ptr noundef nonnull %16) #16
  br label %21

21:                                               ; preds = %20, %13
  tail call void @free(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !30
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_reference_vars_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !13
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef nonnull %3) #15
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !13
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %5, %8
  %14 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %16 = add nsw i32 %14, 1
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(i32 noundef %16) #15
  %17 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %18 = load i32, ptr %15, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ %11, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %3, %8 ]
  tail call fastcc void @VEC_ipa_reference_vars_info_t_base_replace(ptr noundef %21, i32 noundef %20, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !25
  %3 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef %2) #15
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(i32 noundef %0) #15
  %4 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !25
  %5 = tail call fastcc ptr @VEC_ipa_reference_vars_info_t_base_address(ptr noundef %4) #15
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !23
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_reserve_exact(i32 noundef %8) #15
  %9 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !25, !nonnull !113, !noundef !113
  store i32 %0, ptr %9, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_reference_vars_info_t_base_address(ptr noundef readnone %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !25
  %3 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(ptr noundef %2, i32 noundef %0) #15, !range !114
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #16
  store ptr %6, ptr @ipa_reference_vars_vector, align 8, !tbaa !25
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !115
  %7 = load i32, ptr %0, align 8, !tbaa !23
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
define internal fastcc void @ipa_init() unnamed_addr #3 {
  %1 = load i1, ptr @ipa_init.init_p, align 1
  br i1 %1, label %12, label %2

2:                                                ; preds = %0
  store i1 true, ptr @ipa_init.init_p, align 1
  %3 = tail call ptr @build_string(i32 noundef 7, ptr noundef nonnull @.str.18) #16
  store ptr %3, ptr @memory_identifier_string, align 8, !tbaa !25
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #16
  store ptr %4, ptr @reference_vars_to_consider, align 8, !tbaa !25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @local_info_obstack) #16
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @global_info_obstack) #16
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %5, ptr @module_statics_escape, align 8, !tbaa !25
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %6, ptr @module_statics_written, align 8, !tbaa !25
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %7, ptr @all_module_statics, align 8, !tbaa !25
  %8 = tail call ptr @pointer_set_create() #16
  store ptr %8, ptr @visited_nodes, align 8, !tbaa !25
  %9 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #16
  store ptr %9, ptr @function_insertion_hook_holder, align 8, !tbaa !25
  %10 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #16
  store ptr %10, ptr @node_removal_hook_holder, align 8, !tbaa !25
  %11 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #16
  store ptr %11, ptr @node_duplication_hook_holder, align 8, !tbaa !25
  br label %12

12:                                               ; preds = %0, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @varpool_first_static_initializer() unnamed_addr #3 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !25
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %0, %16
  %4 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 595, ptr noundef nonnull @.str.3) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !116
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !llvm.loop !118

20:                                               ; preds = %11, %16, %0
  %21 = phi ptr [ null, %0 ], [ null, %16 ], [ %4, %11 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_variable(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr @visited_nodes, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %7 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @scan_initializer_for_static_refs, ptr noundef nonnull %2, ptr noundef %4, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @varpool_next_static_initializer(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %14 ]
  %4 = getelementptr inbounds %struct.varpool_node, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !116
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 608, ptr noundef nonnull @.str.3) #16
  %13 = load ptr, ptr %5, align 8, !tbaa !116
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %8, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = icmp eq ptr %17, null
  br i1 %18, label %2, label %19, !llvm.loop !123

19:                                               ; preds = %2, %14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #16
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef %11) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ %7, %1 ]
  tail call void @push_cfun(ptr noundef %15) #16
  store ptr %5, ptr @current_function_decl, align 8, !tbaa !25
  %16 = tail call fastcc ptr @init_function_info(ptr noundef nonnull %0) #15
  %17 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %62, label %25

25:                                               ; preds = %14, %55
  %26 = phi ptr [ %57, %55 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %26) #16
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !51
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25, %46
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %31 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %30) #15
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29, %42
  %35 = phi ptr [ %43, %42 ], [ %31, %29 ]
  %36 = call fastcc ptr @get_use_from_ptr(ptr noundef %35) #15
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 121
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call ptr @get_base_var(ptr noundef nonnull %36) #16
  call fastcc void @mark_address_taken(ptr noundef %41) #15
  br label %42

42:                                               ; preds = %34, %40
  %43 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #15
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %34, label %46, !llvm.loop !131

46:                                               ; preds = %42, %29
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !51
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %29, label %49, !llvm.loop !132

49:                                               ; preds = %46, %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %26) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !51
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %52
  call fastcc void @scan_stmt_for_static_refs(ptr noundef nonnull %2, ptr noundef nonnull %0) #15
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !51
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %52, label %55, !llvm.loop !134

55:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !128
  %58 = load ptr, ptr %17, align 8, !tbaa !124
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !130
  %61 = icmp eq ptr %57, %60
  br i1 %61, label %62, label %25, !llvm.loop !135

62:                                               ; preds = %55, %14
  %63 = call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %0) #15
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  %65 = call i32 @flags_from_decl_or_type(ptr noundef %5) #16
  %66 = and i32 %65, 72
  %67 = icmp eq i32 %66, 72
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 3
  store i8 0, ptr %69, align 1, !tbaa !34
  %70 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !47
  call void @bitmap_clear(ptr noundef %71) #16
  br label %72

72:                                               ; preds = %68, %62
  %73 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  call void @bitmap_obstack_free(ptr noundef %78) #16
  store ptr null, ptr %77, align 8, !tbaa !47
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 2
  %81 = load i8, ptr %80, align 8, !tbaa !31
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %64, align 8, !tbaa !46
  call void @bitmap_obstack_free(ptr noundef %84) #16
  store ptr null, ptr %64, align 8, !tbaa !46
  br label %85

85:                                               ; preds = %83, %79
  call void @pop_cfun() #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_decl(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !25
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !111
  %9 = inttoptr i64 %8 to ptr
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #4

; Function Attrs: optsize
declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #3 {
  tail call fastcc void @analyze_function(ptr noundef %0) #15
  store ptr null, ptr @visited_nodes, align 8, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @clean_function(ptr noundef %0) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %5 = tail call fastcc ptr @get_local_reference_vars_info(ptr noundef %0) #15
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %4, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @init_function_info(ptr noundef %1) #15
  br i1 %6, label %11, label %25

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @get_local_reference_vars_info(ptr noundef %1) #15
  %13 = load ptr, ptr %5, align 8, !tbaa !46
  %14 = tail call fastcc ptr @copy_local_bitmap(ptr noundef %13) #15
  store ptr %14, ptr %12, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call fastcc ptr @copy_local_bitmap(ptr noundef %16) #15
  %18 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %12, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %12, i64 0, i32 2
  store i8 %20, ptr %21, align 8, !tbaa !31
  %22 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %12, i64 0, i32 3
  store i8 %23, ptr %24, align 1, !tbaa !34
  br label %25

25:                                               ; preds = %11, %9
  br i1 %7, label %26, label %45

26:                                               ; preds = %25
  %27 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  %28 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %1) #15
  %29 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %28, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !11
  %30 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %1) #15
  %31 = load ptr, ptr %4, align 8, !tbaa !6
  %32 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %31) #15
  store ptr %32, ptr %30, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  %35 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %34) #15
  %36 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %30, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !26
  %37 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %39 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %38) #15
  %40 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %30, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %42) #15
  %44 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %30, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !28
  br label %45

45:                                               ; preds = %25, %26, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_local_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !30
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_function_info(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #16
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #16
  tail call fastcc void @set_reference_vars_info(ptr noundef %0, ptr noundef %2) #15
  store ptr %3, ptr %2, align 8, !tbaa !30
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %4, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  %6 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_local_bitmap(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %3, %1, %6
  %9 = phi ptr [ %7, %6 ], [ null, %1 ], [ %0, %3 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @scan_initializer_for_static_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #3 {
  %4 = load ptr, ptr %0, align 8, !tbaa !25
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @get_base_var(ptr noundef nonnull %4) #16
  tail call fastcc void @mark_address_taken(ptr noundef %9) #15
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !29
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %8
  store i32 0, ptr %1, align 4, !tbaa !29
  br label %16

16:                                               ; preds = %15, %10
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_address_taken(ptr noundef %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  %5 = load ptr, ptr @module_statics_escape, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %0) #15, !range !51
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @module_statics_escape, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !33
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %11, %8, %1
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_proper_scope_for_analysis(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 8192
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = and i64 %7, 67108864
  %12 = and i64 %3, 33554432
  %13 = or disjoint i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = and i64 %7, 134217728
  %16 = or disjoint i64 %15, %12
  %17 = icmp eq i64 %16, 0
  %18 = and i1 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !33
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call fastcc void @add_static_var(ptr noundef nonnull %0) #15
  br label %33

33:                                               ; preds = %10, %26, %32, %19, %6, %1
  %34 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %10 ], [ 0, %19 ], [ 1, %32 ], [ 1, %26 ]
  ret i8 %34
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_static_var(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %3) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !25
  %14 = sext i32 %3 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = tail call ptr @splay_tree_insert(ptr noundef %13, i64 noundef %14, i64 noundef %15) #16
  %17 = load ptr, ptr @all_module_statics, align 8, !tbaa !25
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %3) #16
  br label %19

19:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #15
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #15
  store i8 0, ptr %0, align 8, !tbaa !139
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !139
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !141
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !142
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !143
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #15
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i8, ptr %0, align 8, !tbaa !139
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !147
  store ptr %7, ptr %2, align 8, !tbaa !146
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !142
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !149
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #15
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !139
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  store ptr %4, ptr %0, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stmt_for_static_refs(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %4 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %3) #15, !range !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ null, %6 ]
  %13 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %3, ptr noundef %12, ptr noundef nonnull @mark_load, ptr noundef nonnull @mark_store, ptr noundef nonnull @mark_address) #16
  %14 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #15, !range !51
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @check_call(ptr noundef %12, ptr noundef %3) #15
  br label %21

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %3) #15, !range !153
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call fastcc void @check_asm_memory_clobber(ptr noundef %12, ptr noundef %3) #15
  br label %21

21:                                               ; preds = %16, %20, %17, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !33
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !33
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 3103, ptr noundef nonnull @.str.3) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !154
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !155
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !157
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !153
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1) #15, !range !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !33
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %13) #16
  br label %15

15:                                               ; preds = %10, %7, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_store(ptr nocapture readnone %0, ptr noundef %1, ptr noundef readonly %2) #3 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1) #15, !range !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %12, %10
  %19 = load ptr, ptr @module_statics_written, align 8, !tbaa !25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !33
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %19, i32 noundef %23) #16
  br label %25

25:                                               ; preds = %18, %21, %7, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_address(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #3 {
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #15, !range !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %9) #15, !range !51
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !159

12:                                               ; preds = %6, %3
  %13 = phi ptr [ %1, %3 ], [ %9, %6 ]
  tail call fastcc void @mark_address_taken(ptr noundef %13) #15
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !153
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @gimple_call_flags(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = and i32 %3, 2
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 2
  store i8 1, ptr %12, align 8, !tbaa !31
  %13 = and i32 %3, 72
  %14 = icmp eq i32 %13, 72
  %15 = or i1 %11, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %17, align 1, !tbaa !34
  br label %18

18:                                               ; preds = %9, %16, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_asm_memory_clobber(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #15, !range !153
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %10 = trunc i64 %9 to i32
  %11 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %1, i32 noundef %10) #15
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !25
  %15 = tail call i32 @simple_cst_equal(ptr noundef %13, ptr noundef %14) #16
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i8 1, ptr %6, align 8, !tbaa !31
  store i8 1, ptr %7, align 1, !tbaa !34
  br label %18

18:                                               ; preds = %8, %17
  %19 = add nuw nsw i64 %9, 1
  %20 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #15, !range !153
  %21 = zext nneg i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %8, label %23, !llvm.loop !160

23:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !153
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !153
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !29
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !33
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !33
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 2688, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !33
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !33
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #15
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #15
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @write_node_summary_p(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1032, ptr noundef nonnull @.str.3) #16
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %0) #16
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %0) #15
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %14, %11, %6
  %19 = phi i8 [ 0, %11 ], [ 0, %6 ], [ %17, %14 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !164
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !164
  ret void
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lto_output_var_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !166
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @lto_get_file_decl_data() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_var_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !168
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !169
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1044, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !171
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  ret ptr %13
}

; Function Attrs: optsize
declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_ggc_m_IP9tree_node12splay_tree_s(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_pch_n_IP9tree_node12splay_tree_s(ptr noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"ipa_reference_global_vars_info_d", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 8}
!12 = !{!"ipa_reference_vars_info_d", !8, i64 0, !8, i64 8}
!13 = !{!14, !18, i64 296}
!14 = !{!"cgraph_node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !15, i64 144, !19, i64 184, !20, i64 224, !21, i64 232, !22, i64 256, !17, i64 288, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 308, !18, i64 308, !18, i64 308, !18, i64 308, !18, i64 308, !18, i64 308, !18, i64 308, !18, i64 309, !18, i64 309}
!15 = !{!"cgraph_local_info", !8, i64 0, !16, i64 8, !18, i64 32, !18, i64 32, !18, i64 32, !18, i64 32, !18, i64 32, !18, i64 32, !18, i64 32, !18, i64 32}
!16 = !{!"inline_summary", !17, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!17 = !{!"long", !9, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = !{!"cgraph_global_info", !17, i64 0, !17, i64 8, !8, i64 16, !18, i64 24, !18, i64 28, !18, i64 32, !9, i64 36}
!20 = !{!"cgraph_rtl_info", !18, i64 0}
!21 = !{!"cgraph_clone_info", !8, i64 0, !8, i64 8, !8, i64 16}
!22 = !{!"cgraph_thunk_info", !17, i64 0, !17, i64 8, !8, i64 16, !9, i64 24, !9, i64 25, !9, i64 26}
!23 = !{!24, !18, i64 0}
!24 = !{!"VEC_ipa_reference_vars_info_t_base", !18, i64 0, !18, i64 4, !9, i64 8}
!25 = !{!8, !8, i64 0}
!26 = !{!7, !8, i64 8}
!27 = !{!7, !8, i64 16}
!28 = !{!7, !8, i64 24}
!29 = !{!18, !18, i64 0}
!30 = !{!12, !8, i64 0}
!31 = !{!32, !9, i64 16}
!32 = !{!"ipa_reference_local_vars_info_d", !8, i64 0, !8, i64 8, !9, i64 16, !9, i64 17}
!33 = !{!9, !9, i64 0}
!34 = !{!32, !9, i64 17}
!35 = !{!14, !8, i64 0}
!36 = !{!37, !8, i64 16}
!37 = !{!"cgraph_edge", !17, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !18, i64 72, !18, i64 76, !18, i64 80, !18, i64 84, !38, i64 88, !18, i64 90, !18, i64 90, !18, i64 90}
!38 = !{!"short", !9, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!14, !8, i64 128}
!42 = !{!43, !8, i64 16}
!43 = !{!"ipa_dfs_info", !18, i64 0, !18, i64 4, !9, i64 8, !9, i64 9, !8, i64 16, !8, i64 24}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !40}
!46 = !{!32, !8, i64 0}
!47 = !{!32, !8, i64 8}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = !{i8 0, i8 2}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = !{i64 0, i64 8, !25, i64 8, i64 4, !29}
!73 = !{i64 0, i64 4, !29}
!74 = distinct !{!74, !40}
!75 = !{!76, !8, i64 16}
!76 = !{!"lto_simple_output_block", !18, i64 0, !8, i64 8, !8, i64 16}
!77 = !{!76, !8, i64 8}
!78 = !{!79, !8, i64 168}
!79 = !{!"lto_out_decl_state", !9, i64 0, !8, i64 168, !8, i64 176}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = !{!84, !8, i64 16}
!84 = !{!"lto_file_decl_data", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !18, i64 40, !8, i64 48, !8, i64 56}
!85 = distinct !{!85, !40}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !40}
!88 = !{!17, !17, i64 0}
!89 = distinct !{!89, !40}
!90 = distinct !{!90, !40}
!91 = !{!92, !8, i64 0}
!92 = !{!"bitmap_head_def", !8, i64 0, !8, i64 8, !18, i64 16, !8, i64 24}
!93 = !{!94, !8, i64 0}
!94 = !{!"", !8, i64 0, !8, i64 8, !18, i64 16, !17, i64 24}
!95 = !{!94, !8, i64 8}
!96 = !{!97, !18, i64 16}
!97 = !{!"bitmap_element_def", !8, i64 0, !8, i64 8, !18, i64 16, !9, i64 24}
!98 = !{!94, !18, i64 16}
!99 = !{!94, !17, i64 24}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = !{!97, !8, i64 0}
!103 = !{!104, !8, i64 176}
!104 = !{!"lang_hooks", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !105, i64 240, !106, i64 248, !107, i64 256, !108, i64 272, !109, i64 432, !110, i64 560, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624, !8, i64 632, !8, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !9, i64 672}
!105 = !{!"lang_hooks_for_tree_inlining", !8, i64 0}
!106 = !{!"lang_hooks_for_callgraph", !8, i64 0}
!107 = !{!"lang_hooks_for_tree_dump", !8, i64 0, !8, i64 8}
!108 = !{!"lang_hooks_for_decls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!109 = !{!"lang_hooks_for_types", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !9, i64 120}
!110 = !{!"lang_hooks_for_lto", !8, i64 0, !8, i64 8, !8, i64 16}
!111 = !{!112, !17, i64 8}
!112 = !{!"splay_tree_node_s", !17, i64 0, !17, i64 8, !8, i64 16, !8, i64 24}
!113 = !{}
!114 = !{i32 0, i32 2}
!115 = !{!24, !18, i64 4}
!116 = !{!117, !8, i64 0}
!117 = !{!"varpool_node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !18, i64 32, !18, i64 36, !18, i64 36, !18, i64 36, !18, i64 36, !18, i64 36, !18, i64 36, !18, i64 36}
!118 = distinct !{!118, !40}
!119 = !{!120, !8, i64 32}
!120 = !{!"walk_stmt_info", !121, i64 0, !8, i64 24, !8, i64 32, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !8, i64 48}
!121 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!122 = !{!117, !8, i64 16}
!123 = distinct !{!123, !40}
!124 = !{!125, !8, i64 8}
!125 = !{!"function", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !18, i64 104, !18, i64 108, !18, i64 112, !18, i64 116, !18, i64 120, !18, i64 124, !8, i64 128, !18, i64 136, !18, i64 137, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 138, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139, !18, i64 139}
!126 = !{!127, !8, i64 0}
!127 = !{!"control_flow_graph", !8, i64 0, !8, i64 8, !8, i64 16, !18, i64 24, !18, i64 28, !18, i64 32, !8, i64 40, !18, i64 48, !9, i64 52, !9, i64 60, !18, i64 68, !18, i64 72}
!128 = !{!129, !8, i64 56}
!129 = !{!"basic_block_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 48, !8, i64 56, !9, i64 64, !17, i64 72, !18, i64 80, !18, i64 84, !18, i64 88, !18, i64 92, !18, i64 96}
!130 = !{!127, !8, i64 8}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, !40}
!133 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !25}
!134 = distinct !{!134, !40}
!135 = distinct !{!135, !40}
!136 = !{!121, !8, i64 0}
!137 = !{!138, !8, i64 0}
!138 = !{!"gimple_seq_node_d", !8, i64 0, !8, i64 8, !8, i64 16}
!139 = !{!140, !9, i64 0}
!140 = !{!"ssa_operand_iterator_d", !9, i64 0, !18, i64 4, !8, i64 8, !8, i64 16, !18, i64 24, !18, i64 28, !8, i64 32}
!141 = !{!140, !8, i64 32}
!142 = !{!140, !18, i64 28}
!143 = !{!140, !18, i64 4}
!144 = !{!145, !8, i64 24}
!145 = !{!"ssa_use_operand_d", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 24}
!146 = !{!140, !8, i64 16}
!147 = !{!148, !8, i64 0}
!148 = !{!"use_optype_d", !8, i64 0, !145, i64 8}
!149 = !{!140, !18, i64 24}
!150 = !{!138, !8, i64 16}
!151 = !{!121, !8, i64 8}
!152 = !{!121, !8, i64 16}
!153 = !{i32 0, i32 256}
!154 = !{!129, !18, i64 96}
!155 = !{!156, !8, i64 0}
!156 = !{!"gimple_bb_info", !8, i64 0, !8, i64 8}
!157 = !{!158, !8, i64 0}
!158 = !{!"gimple_seq_d", !8, i64 0, !8, i64 8, !8, i64 16}
!159 = distinct !{!159, !40}
!160 = distinct !{!160, !40}
!161 = !{!162, !8, i64 8}
!162 = !{!"cgraph_node_set_def", !8, i64 0, !8, i64 8, !8, i64 16}
!163 = !{!14, !8, i64 200}
!164 = !{!165, !18, i64 8}
!165 = !{!"", !8, i64 0, !18, i64 8}
!166 = !{!167, !18, i64 0}
!167 = !{!"VEC_cgraph_node_ptr_base", !18, i64 0, !18, i64 4, !9, i64 8}
!168 = !{!84, !8, i64 0}
!169 = !{!170, !18, i64 8}
!170 = !{!"lto_tree_ref_table", !8, i64 0, !18, i64 8}
!171 = !{!170, !8, i64 0}
