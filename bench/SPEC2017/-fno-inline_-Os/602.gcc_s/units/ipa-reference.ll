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
define dso_local ptr @ipa_reference_get_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !205 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !206
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_global_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !211 !PGOFuncName !212 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !213

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !216 !PGOFuncName !217 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !218

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef nonnull %2) #15
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !219
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %11, !prof !229

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @VEC_ipa_reference_vars_info_t_base_index(ptr noundef nonnull %2, i32 noundef %7) #15
  br label %11

11:                                               ; preds = %1, %4, %9
  %12 = phi ptr [ %10, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !230 !PGOFuncName !231 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !232

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !233
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_reference_vars_info_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !235 !PGOFuncName !236 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !205 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !238
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !239 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !240

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !242 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !243

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_reference() #0 !prof !245 !PGOFuncName !246 {
  %1 = load i32, ptr @flag_ipa_reference, align 4, !tbaa !247
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !248

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !237
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !247
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !249

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !247
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @propagate() #3 !prof !250 !PGOFuncName !251 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !247
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #16
  %8 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null) #16
  %9 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !237
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %9) #16
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !252

12:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %10) #16
  br label %13

13:                                               ; preds = %12, %0
  %14 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #16
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !252

17:                                               ; preds = %13
  tail call void @ipa_utils_print_order(ptr noundef nonnull %15, ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %14) #16
  br label %18

18:                                               ; preds = %17, %13
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %361, !prof !253

20:                                               ; preds = %18
  %21 = zext nneg i32 %14 to i64
  br label %22

22:                                               ; preds = %20, %184
  %23 = phi i64 [ 0, %20 ], [ %185, %184 ]
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #17
  %25 = getelementptr inbounds ptr, ptr %7, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !237
  %27 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %26) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32, !prof !254

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !tbaa !237
  tail call void @dump_cgraph_node(ptr noundef %30, ptr noundef %26) #16
  %31 = load ptr, ptr @stderr, align 8, !tbaa !237
  tail call void @dump_cgraph(ptr noundef %31) #16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1245, ptr noundef nonnull @.str.3) #16
  br label %32

32:                                               ; preds = %29, %22
  %33 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !214
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !255

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1248, ptr noundef nonnull @.str.3) #16
  br label %37

37:                                               ; preds = %32, %36
  %38 = load ptr, ptr %27, align 8, !tbaa !256
  %39 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !257
  store i8 %40, ptr %1, align 1, !tbaa !259
  %41 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !260
  store i8 %42, ptr %2, align 1, !tbaa !259
  %43 = tail call i32 @cgraph_function_body_availability(ptr noundef %26) #16
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %47, !prof !254

45:                                               ; preds = %37
  %46 = load ptr, ptr %26, align 8, !tbaa !261
  call fastcc void @read_write_all_from_decl(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !237
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51, !prof !262

51:                                               ; preds = %47, %60
  %52 = phi ptr [ %62, %60 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !263
  %55 = tail call i32 @cgraph_function_body_availability(ptr noundef %54) #16
  %56 = icmp ult i32 %55, 3
  br i1 %56, label %57, label %60, !prof !266

57:                                               ; preds = %51
  %58 = load ptr, ptr %53, align 8, !tbaa !263
  %59 = load ptr, ptr %58, align 8, !tbaa !261
  call fastcc void @read_write_all_from_decl(ptr noundef %59, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %60

60:                                               ; preds = %51, %57
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !237
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %51, !prof !267, !llvm.loop !268

64:                                               ; preds = %60, %47
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !270
  %67 = getelementptr inbounds %struct.ipa_dfs_info, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !271
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !273

70:                                               ; preds = %64
  %71 = load i8, ptr %1, align 1, !tbaa !259
  br label %111

72:                                               ; preds = %64, %97
  %73 = phi ptr [ %109, %97 ], [ %68, %64 ]
  %74 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %73) #15
  %75 = load ptr, ptr %74, align 8, !tbaa !256
  %76 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %73) #16
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %78, label %80, !prof !274

78:                                               ; preds = %72
  %79 = load ptr, ptr %73, align 8, !tbaa !261
  call fastcc void @read_write_all_from_decl(ptr noundef %79, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %80

80:                                               ; preds = %78, %72
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !237
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84, !prof !275

84:                                               ; preds = %80, %93
  %85 = phi ptr [ %95, %93 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !263
  %88 = tail call i32 @cgraph_function_body_availability(ptr noundef %87) #16
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %93, !prof !276

90:                                               ; preds = %84
  %91 = load ptr, ptr %86, align 8, !tbaa !263
  %92 = load ptr, ptr %91, align 8, !tbaa !261
  call fastcc void @read_write_all_from_decl(ptr noundef %92, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %93

93:                                               ; preds = %84, %90
  %94 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !237
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %84, !prof !277, !llvm.loop !278

97:                                               ; preds = %93, %80
  %98 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %75, i64 0, i32 2
  %99 = load i8, ptr %98, align 8, !tbaa !257
  %100 = load i8, ptr %1, align 1, !tbaa !259
  %101 = or i8 %100, %99
  store i8 %101, ptr %1, align 1, !tbaa !259
  %102 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %75, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !260
  %104 = load i8, ptr %2, align 1, !tbaa !259
  %105 = or i8 %104, %103
  store i8 %105, ptr %2, align 1, !tbaa !259
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 16
  %107 = load ptr, ptr %106, align 8, !tbaa !270
  %108 = getelementptr inbounds %struct.ipa_dfs_info, ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !271
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %72, !prof !279, !llvm.loop !280

111:                                              ; preds = %97, %70
  %112 = phi i8 [ %71, %70 ], [ %101, %97 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114, !prof !281

114:                                              ; preds = %111
  %115 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  store ptr %115, ptr %24, align 8, !tbaa !206
  br label %119

116:                                              ; preds = %111
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %117, ptr %24, align 8, !tbaa !206
  %118 = load ptr, ptr %38, align 8, !tbaa !282
  tail call void @bitmap_copy(ptr noundef %117, ptr noundef %118) #16
  br label %119

119:                                              ; preds = %116, %114
  %120 = load i8, ptr %2, align 1, !tbaa !259
  %121 = icmp eq i8 %120, 0
  %122 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br i1 %121, label %125, label %123, !prof !283

123:                                              ; preds = %119
  %124 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  store ptr %124, ptr %122, align 8, !tbaa !238
  br label %129

125:                                              ; preds = %119
  %126 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %126, ptr %122, align 8, !tbaa !238
  %127 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !284
  tail call void @bitmap_copy(ptr noundef %126, ptr noundef %128) #16
  br label %129

129:                                              ; preds = %125, %123
  tail call fastcc void @propagate_bits(ptr noundef nonnull %24, ptr noundef %26) #15
  %130 = load ptr, ptr %65, align 8, !tbaa !270
  %131 = getelementptr inbounds %struct.ipa_dfs_info, ptr %130, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !271
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135, !prof !273

134:                                              ; preds = %129
  store ptr %24, ptr %33, align 8, !tbaa !214
  br label %184

135:                                              ; preds = %129, %150
  %136 = phi ptr [ %154, %150 ], [ %132, %129 ]
  %137 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %136) #15
  %138 = load ptr, ptr %137, align 8, !tbaa !256
  br i1 %113, label %139, label %143, !prof !285

139:                                              ; preds = %135
  %140 = load ptr, ptr %24, align 8, !tbaa !206
  %141 = load ptr, ptr %138, align 8, !tbaa !282
  %142 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %140, ptr noundef %141) #16
  br label %143

143:                                              ; preds = %139, %135
  br i1 %121, label %144, label %150, !prof !286

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !238
  %147 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !284
  %149 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %146, ptr noundef %148) #16
  br label %150

150:                                              ; preds = %144, %143
  tail call fastcc void @propagate_bits(ptr noundef %24, ptr noundef nonnull %136) #15
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !270
  %153 = getelementptr inbounds %struct.ipa_dfs_info, ptr %152, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !271
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %135, !prof !279, !llvm.loop !287

156:                                              ; preds = %150
  %157 = load ptr, ptr %65, align 8, !tbaa !270
  %158 = getelementptr inbounds %struct.ipa_dfs_info, ptr %157, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !271
  store ptr %24, ptr %33, align 8, !tbaa !214
  %160 = icmp eq ptr %159, null
  br i1 %160, label %184, label %161, !prof !288

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br label %163

163:                                              ; preds = %161, %170
  %164 = phi ptr [ %159, %161 ], [ %182, %170 ]
  %165 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %164) #15
  %166 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !214
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169, !prof !289

169:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1339, ptr noundef nonnull @.str.3) #16
  br label %170

170:                                              ; preds = %163, %169
  %171 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  store ptr %171, ptr %166, align 8, !tbaa !214
  %172 = load ptr, ptr %24, align 8, !tbaa !206
  %173 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %172) #15
  %174 = load ptr, ptr %166, align 8, !tbaa !214
  store ptr %173, ptr %174, align 8, !tbaa !206
  %175 = load ptr, ptr %162, align 8, !tbaa !238
  %176 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %175) #15
  %177 = load ptr, ptr %166, align 8, !tbaa !214
  %178 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %177, i64 0, i32 1
  store ptr %176, ptr %178, align 8, !tbaa !238
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %164, i64 0, i32 16
  %180 = load ptr, ptr %179, align 8, !tbaa !270
  %181 = getelementptr inbounds %struct.ipa_dfs_info, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !271
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %163, !prof !279, !llvm.loop !290

184:                                              ; preds = %170, %134, %156
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #17
  %185 = add nuw nsw i64 %23, 1
  %186 = icmp eq i64 %185, %21
  br i1 %186, label %187, label %22, !prof !291, !llvm.loop !292

187:                                              ; preds = %184
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %189 = icmp ne ptr %188, null
  %190 = and i1 %189, %19
  br i1 %190, label %191, label %329, !prof !293

191:                                              ; preds = %187
  %192 = zext nneg i32 %14 to i64
  br label %193

193:                                              ; preds = %191, %326
  %194 = phi i64 [ 0, %191 ], [ %327, %326 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %195 = getelementptr inbounds ptr, ptr %7, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !237
  %197 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %196) #15
  %198 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !214
  %200 = load ptr, ptr %197, align 8, !tbaa !256
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %202 = tail call ptr @cgraph_node_name(ptr noundef %196) #16
  %203 = getelementptr inbounds %struct.cgraph_node, ptr %196, i64 0, i32 24
  %204 = load i32, ptr %203, align 8, !tbaa !219
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.4, ptr noundef %202, i32 noundef %204) #15
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %207 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %206)
  %208 = load ptr, ptr %200, align 8, !tbaa !282
  %209 = icmp eq ptr %208, null
  br i1 %209, label %220, label %210

210:                                              ; preds = %193
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %208, ptr noundef nonnull %3) #15
  %211 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %210, %213
  %214 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %215 = load i32, ptr %3, align 4, !tbaa !247
  %216 = tail call fastcc ptr @get_static_name(i32 noundef %215) #15
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.6, ptr noundef %216) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %218 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %213, !llvm.loop !295

220:                                              ; preds = %213, %210, %193
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %222 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %221)
  %223 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %200, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !284
  %225 = icmp eq ptr %224, null
  br i1 %225, label %236, label %226

226:                                              ; preds = %220
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %224, ptr noundef nonnull %3) #15
  %227 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226, %229
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %231 = load i32, ptr %3, align 4, !tbaa !247
  %232 = tail call fastcc ptr @get_static_name(i32 noundef %231) #15
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.6, ptr noundef %232) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %234 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %229, !llvm.loop !296

236:                                              ; preds = %229, %226, %220
  %237 = getelementptr inbounds %struct.cgraph_node, ptr %196, i64 0, i32 16
  %238 = load ptr, ptr %237, align 8, !tbaa !270
  %239 = getelementptr inbounds %struct.ipa_dfs_info, ptr %238, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !271
  %241 = icmp eq ptr %240, null
  br i1 %241, label %287, label %242

242:                                              ; preds = %236, %281
  %243 = phi ptr [ %285, %281 ], [ %240, %236 ]
  %244 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %243) #15
  %245 = load ptr, ptr %244, align 8, !tbaa !256
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %247 = tail call ptr @cgraph_node_name(ptr noundef nonnull %243) #16
  %248 = getelementptr inbounds %struct.cgraph_node, ptr %243, i64 0, i32 24
  %249 = load i32, ptr %248, align 8, !tbaa !219
  %250 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.8, ptr noundef %247, i32 noundef %249) #15
  %251 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %252 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %251)
  %253 = load ptr, ptr %245, align 8, !tbaa !282
  %254 = icmp eq ptr %253, null
  br i1 %254, label %265, label %255

255:                                              ; preds = %242
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %253, ptr noundef nonnull %3) #15
  %256 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %255, %258
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %260 = load i32, ptr %3, align 4, !tbaa !247
  %261 = tail call fastcc ptr @get_static_name(i32 noundef %260) #15
  %262 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.6, ptr noundef %261) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %263 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %258, !llvm.loop !297

265:                                              ; preds = %258, %255, %242
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %267 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 21, i64 1, ptr %266)
  %268 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %245, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !284
  %270 = icmp eq ptr %269, null
  br i1 %270, label %281, label %271

271:                                              ; preds = %265
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %269, ptr noundef nonnull %3) #15
  %272 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %271, %274
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %276 = load i32, ptr %3, align 4, !tbaa !247
  %277 = tail call fastcc ptr @get_static_name(i32 noundef %276) #15
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.6, ptr noundef %277) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %279 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %274, !llvm.loop !298

281:                                              ; preds = %274, %271, %265
  %282 = getelementptr inbounds %struct.cgraph_node, ptr %243, i64 0, i32 16
  %283 = load ptr, ptr %282, align 8, !tbaa !270
  %284 = getelementptr inbounds %struct.ipa_dfs_info, ptr %283, i64 0, i32 4
  %285 = load ptr, ptr %284, align 8, !tbaa !271
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %242, !llvm.loop !299

287:                                              ; preds = %281, %236
  %288 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %289 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr %288)
  %290 = load ptr, ptr %199, align 8, !tbaa !206
  %291 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %292 = icmp eq ptr %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %287
  %294 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %295 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %294)
  br label %306

296:                                              ; preds = %287
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %290, ptr noundef nonnull %3) #15
  %297 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %296, %299
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %301 = load i32, ptr %3, align 4, !tbaa !247
  %302 = tail call fastcc ptr @get_static_name(i32 noundef %301) #15
  %303 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef nonnull @.str.6, ptr noundef %302) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %304 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %299, !llvm.loop !300

306:                                              ; preds = %299, %296, %293
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %308 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %307)
  %309 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %199, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !238
  %311 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %312 = icmp eq ptr %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %306
  %314 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %315 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %314)
  br label %326

316:                                              ; preds = %306
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %310, ptr noundef nonnull %3) #15
  %317 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %316, %319
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %321 = load i32, ptr %3, align 4, !tbaa !247
  %322 = tail call fastcc ptr @get_static_name(i32 noundef %321) #15
  %323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef nonnull @.str.6, ptr noundef %322) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %324 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %319, !llvm.loop !301

326:                                              ; preds = %319, %316, %313
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %327 = add nuw nsw i64 %194, 1
  %328 = icmp eq i64 %327, %192
  br i1 %328, label %329, label %193, !llvm.loop !302

329:                                              ; preds = %326, %187
  br i1 %19, label %330, label %361, !prof !303

330:                                              ; preds = %329
  %331 = zext nneg i32 %14 to i64
  br label %332

332:                                              ; preds = %330, %358
  %333 = phi i64 [ 0, %330 ], [ %359, %358 ]
  %334 = getelementptr inbounds ptr, ptr %7, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !237
  %336 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %335) #15
  %337 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !214
  %339 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  %340 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %338, i64 0, i32 2
  store ptr %339, ptr %340, align 8, !tbaa !241
  %341 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  %342 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %338, i64 0, i32 3
  store ptr %341, ptr %342, align 8, !tbaa !244
  %343 = load ptr, ptr %338, align 8, !tbaa !206
  %344 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %345 = icmp eq ptr %343, %344
  br i1 %345, label %350, label %346, !prof !304

346:                                              ; preds = %332
  %347 = load ptr, ptr %340, align 8, !tbaa !241
  %348 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %347, ptr noundef %344, ptr noundef %343) #16
  %349 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  br label %350

350:                                              ; preds = %346, %332
  %351 = phi ptr [ %349, %346 ], [ %343, %332 ]
  %352 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %338, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !238
  %354 = icmp eq ptr %353, %351
  br i1 %354, label %358, label %355, !prof !305

355:                                              ; preds = %350
  %356 = load ptr, ptr %342, align 8, !tbaa !244
  %357 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %356, ptr noundef %351, ptr noundef %353) #16
  br label %358

358:                                              ; preds = %355, %350
  %359 = add nuw nsw i64 %333, 1
  %360 = icmp eq i64 %359, %331
  br i1 %360, label %361, label %332, !prof !291, !llvm.loop !306

361:                                              ; preds = %358, %18, %329
  tail call void @free(ptr noundef %7) #15
  %362 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !237
  %363 = icmp eq ptr %362, null
  br i1 %363, label %382, label %364, !prof !307

364:                                              ; preds = %361, %378
  %365 = phi ptr [ %380, %378 ], [ %362, %361 ]
  %366 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %365) #15
  %367 = getelementptr inbounds %struct.cgraph_node, ptr %365, i64 0, i32 16
  %368 = load ptr, ptr %367, align 8, !tbaa !270
  %369 = icmp eq ptr %368, null
  br i1 %369, label %371, label %370, !prof !308

370:                                              ; preds = %364
  tail call void @free(ptr noundef nonnull %368) #15
  store ptr null, ptr %367, align 8, !tbaa !270
  br label %371

371:                                              ; preds = %370, %364
  %372 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %365) #16
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %374, label %375, !prof !309

374:                                              ; preds = %371
  tail call fastcc void @clean_function(ptr noundef nonnull %365) #15
  br label %378

375:                                              ; preds = %371
  %376 = icmp eq ptr %366, null
  br i1 %376, label %378, label %377, !prof !310

377:                                              ; preds = %375
  tail call fastcc void @clean_function_local_data(ptr noundef nonnull %365) #15
  br label %378

378:                                              ; preds = %375, %377, %374
  %379 = getelementptr inbounds %struct.cgraph_node, ptr %365, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !237
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %364, !prof !311, !llvm.loop !312

382:                                              ; preds = %378, %361
  tail call void @bitmap_obstack_release(ptr noundef nonnull @local_info_obstack) #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @generate_summary() #3 !prof !250 !PGOFuncName !313 {
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
  br i1 %8, label %9, label %12, !prof !307

9:                                                ; preds = %12, %0
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !237
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %16, !prof !307

12:                                               ; preds = %0, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %0 ]
  tail call fastcc void @analyze_variable(ptr noundef nonnull %13) #15
  %14 = tail call fastcc ptr @varpool_next_static_initializer(ptr noundef nonnull %13) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %9, label %12, !prof !314, !llvm.loop !315

16:                                               ; preds = %9, %21
  %17 = phi ptr [ %23, %21 ], [ %10, %9 ]
  %18 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %17) #16
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %21, !prof !316

20:                                               ; preds = %16
  tail call fastcc void @analyze_function(ptr noundef nonnull %17) #15
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !237
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !prof !317, !llvm.loop !318

25:                                               ; preds = %21, %9
  %26 = load ptr, ptr @visited_nodes, align 8, !tbaa !237
  tail call void @pointer_set_destroy(ptr noundef %26) #16
  store ptr null, ptr @visited_nodes, align 8, !tbaa !237
  %27 = load ptr, ptr @module_statics_escape, align 8, !tbaa !237
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %27, ptr noundef nonnull %1) #15
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30, !prof !307

30:                                               ; preds = %25, %30
  %31 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !237
  %32 = load i32, ptr %1, align 4, !tbaa !247
  %33 = zext i32 %32 to i64
  tail call void @splay_tree_remove(ptr noundef %31, i64 noundef %33) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %30, !prof !319, !llvm.loop !320

36:                                               ; preds = %30
  %37 = load ptr, ptr @module_statics_escape, align 8, !tbaa !237
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi ptr [ %37, %36 ], [ %27, %25 ]
  %40 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %41 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %40, ptr noundef %39) #16
  %42 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %43 = load ptr, ptr @module_statics_written, align 8, !tbaa !237
  %44 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %5, ptr noundef %42, ptr noundef %43) #16
  %45 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %45, ptr noundef nonnull %1) #15
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %48, !prof !307

48:                                               ; preds = %38, %58
  %49 = load i32, ptr %1, align 4, !tbaa !247
  %50 = tail call fastcc ptr @get_static_decl(i32 noundef %49) #15
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, -262145
  store i64 %52, ptr %50, align 8
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55, !prof !321

55:                                               ; preds = %48
  %56 = tail call fastcc ptr @get_static_name(i32 noundef %49) #15
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.14, ptr noundef %56) #15
  br label %58

58:                                               ; preds = %55, %48
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %59 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %48, !prof !322, !llvm.loop !323

61:                                               ; preds = %58
  %62 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  br label %63

63:                                               ; preds = %61, %38
  %64 = phi ptr [ %62, %61 ], [ %45, %38 ]
  %65 = load ptr, ptr @module_statics_written, align 8, !tbaa !237
  %66 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %5, ptr noundef %64, ptr noundef %65) #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %1) #15
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %86, label %69, !prof !307

69:                                               ; preds = %63, %83
  %70 = load i32, ptr %1, align 4, !tbaa !247
  %71 = tail call fastcc ptr @get_static_decl(i32 noundef %70) #15
  %72 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !259
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %83, !prof !324

75:                                               ; preds = %69
  %76 = load i64, ptr %71, align 8
  %77 = or i64 %76, 1048576
  store i64 %77, ptr %71, align 8
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80, !prof !324

80:                                               ; preds = %75
  %81 = tail call fastcc ptr @get_static_name(i32 noundef %70) #15
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.15, ptr noundef %81) #15
  br label %83

83:                                               ; preds = %75, %80, %69
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %69, !prof !325, !llvm.loop !326

86:                                               ; preds = %83, %63
  %87 = load ptr, ptr @module_statics_escape, align 8, !tbaa !237
  tail call void @bitmap_obstack_free(ptr noundef %87) #16
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !237
  %88 = load ptr, ptr @module_statics_written, align 8, !tbaa !237
  tail call void @bitmap_obstack_free(ptr noundef %88) #16
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !237
  store ptr null, ptr @module_statics_written, align 8, !tbaa !237
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91, !prof !252

91:                                               ; preds = %86
  %92 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %92, ptr noundef nonnull %1) #15
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91, %95
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %97 = load i32, ptr %1, align 4, !tbaa !247
  %98 = tail call fastcc ptr @get_static_name(i32 noundef %97) #15
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.16, ptr noundef %98) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %100 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !294
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %95, !llvm.loop !327

102:                                              ; preds = %95, %91, %86
  %103 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !237
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %105, !prof !307

105:                                              ; preds = %102, %122
  %106 = phi ptr [ %124, %122 ], [ %103, %102 ]
  %107 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %106) #16
  %108 = icmp ugt i32 %107, 1
  br i1 %108, label %109, label %122, !prof !316

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %106) #15
  %111 = load ptr, ptr %110, align 8, !tbaa !256
  %112 = load ptr, ptr %111, align 8, !tbaa !282
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !328

114:                                              ; preds = %109
  %115 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  tail call void @bitmap_and_into(ptr noundef nonnull %112, ptr noundef %115) #16
  br label %116

116:                                              ; preds = %114, %109
  %117 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %111, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !284
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120, !prof !329

120:                                              ; preds = %116
  %121 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  tail call void @bitmap_and_into(ptr noundef nonnull %118, ptr noundef %121) #16
  br label %122

122:                                              ; preds = %116, %120, %105
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %106, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !237
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %105, !prof !317, !llvm.loop !330

126:                                              ; preds = %122, %102
  tail call void @bitmap_obstack_free(ptr noundef %5) #16
  tail call void @bitmap_obstack_free(ptr noundef %6) #16
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %128 = icmp eq ptr %127, null
  %129 = load ptr, ptr @cgraph_nodes, align 8
  %130 = icmp eq ptr %129, null
  %131 = select i1 %128, i1 true, i1 %130
  br i1 %131, label %193, label %132, !prof !331

132:                                              ; preds = %126, %189
  %133 = phi ptr [ %191, %189 ], [ %129, %126 ]
  %134 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %133) #16
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %137 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %133) #15
  %138 = load ptr, ptr %137, align 8, !tbaa !256
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %140 = tail call ptr @cgraph_node_name(ptr noundef nonnull %133) #16
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %133, i64 0, i32 24
  %142 = load i32, ptr %141, align 8, !tbaa !219
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef %140, i32 noundef %142) #15
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %145 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %144)
  %146 = load ptr, ptr %138, align 8, !tbaa !282
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %136
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %146, ptr noundef nonnull %3) #15
  %149 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148, %151
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %153 = load i32, ptr %3, align 4, !tbaa !247
  %154 = tail call fastcc ptr @get_static_name(i32 noundef %153) #15
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.6, ptr noundef %154) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %156 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %151, !llvm.loop !332

158:                                              ; preds = %151, %148, %136
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %160 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %159)
  %161 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !284
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %158
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %162, ptr noundef nonnull %3) #15
  %165 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164, %167
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %169 = load i32, ptr %3, align 4, !tbaa !247
  %170 = tail call fastcc ptr @get_static_name(i32 noundef %169) #15
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.6, ptr noundef %170) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %172 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %167, !llvm.loop !333

174:                                              ; preds = %167, %164, %158
  %175 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !257
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %180 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %179)
  br label %181

181:                                              ; preds = %178, %174
  %182 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 3
  %183 = load i8, ptr %182, align 1, !tbaa !260
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %187 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %186)
  br label %188

188:                                              ; preds = %185, %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %189

189:                                              ; preds = %132, %188
  %190 = getelementptr inbounds %struct.cgraph_node, ptr %133, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !237
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %132, !llvm.loop !334

193:                                              ; preds = %189, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_reference_write_summary(ptr noundef %0) #3 !prof !205 !PGOFuncName !335 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call ptr @lto_create_simple_output_block(i32 noundef 6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %6 = tail call fastcc ptr @csi_start(ptr noundef %0) #15
  store ptr %6, ptr %2, align 8, !tbaa.struct !336
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %7, align 8, !tbaa.struct !337
  %8 = tail call fastcc zeroext i8 @csi_end_p(ptr %6, i32 0) #15, !range !294
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1, %10
  %11 = phi i32 [ %19, %10 ], [ 0, %1 ]
  %12 = phi ptr [ %18, %10 ], [ %6, %1 ]
  %13 = phi i32 [ %17, %10 ], [ 0, %1 ]
  %14 = tail call fastcc ptr @csi_node(ptr %12, i32 %11) #15
  %15 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %14) #15, !range !294
  %16 = zext nneg i8 %15 to i32
  %17 = add i32 %13, %16
  call fastcc void @csi_next(ptr noundef nonnull %2) #15
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %7, align 8
  %20 = tail call fastcc zeroext i8 @csi_end_p(ptr %18, i32 %19) #15, !range !294
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !llvm.loop !338

22:                                               ; preds = %10
  %23 = zext i32 %17 to i64
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i64 [ 0, %1 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.lto_simple_output_block, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !339
  tail call void @lto_output_uleb128_stream(ptr noundef %27, i64 noundef %25) #16
  store ptr %6, ptr %2, align 8, !tbaa.struct !336
  store i32 0, ptr %7, align 8, !tbaa.struct !337
  %28 = tail call fastcc zeroext i8 @csi_end_p(ptr %6, i32 0) #15, !range !294
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.lto_simple_output_block, ptr %5, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %86
  %33 = phi i32 [ 0, %30 ], [ %88, %86 ]
  %34 = phi ptr [ %6, %30 ], [ %87, %86 ]
  %35 = tail call fastcc ptr @csi_node(ptr %34, i32 %33) #15
  %36 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %35) #15, !range !294
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %35) #15
  %40 = load ptr, ptr %39, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %41 = load ptr, ptr %31, align 8, !tbaa !341
  %42 = getelementptr inbounds %struct.lto_out_decl_state, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !342
  %44 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %43, ptr noundef %35) #16
  %45 = load ptr, ptr %26, align 8, !tbaa !339
  %46 = sext i32 %44 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %45, i64 noundef %46) #16
  %47 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !257
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr %26, align 8, !tbaa !339
  br i1 %49, label %52, label %51

51:                                               ; preds = %38
  tail call void @lto_output_sleb128_stream(ptr noundef %50, i64 noundef -1) #16
  br label %65

52:                                               ; preds = %38
  %53 = load ptr, ptr %40, align 8, !tbaa !282
  %54 = tail call i64 @bitmap_count_bits(ptr noundef %53) #16
  tail call void @lto_output_sleb128_stream(ptr noundef %50, i64 noundef %54) #16
  %55 = load ptr, ptr %40, align 8, !tbaa !282
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %55, ptr noundef nonnull %3) #15
  %56 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52, %58
  %59 = load ptr, ptr %31, align 8, !tbaa !341
  %60 = load ptr, ptr %26, align 8, !tbaa !339
  %61 = load i32, ptr %3, align 4, !tbaa !247
  %62 = tail call fastcc ptr @get_static_decl(i32 noundef %61) #15
  tail call void @lto_output_var_decl_index(ptr noundef %59, ptr noundef %60, ptr noundef %62) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %58, !llvm.loop !344

65:                                               ; preds = %58, %52, %51
  %66 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !260
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr %26, align 8, !tbaa !339
  br i1 %68, label %71, label %70

70:                                               ; preds = %65
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef -1) #16
  br label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !284
  %74 = tail call i64 @bitmap_count_bits(ptr noundef %73) #16
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef %74) #16
  %75 = load ptr, ptr %72, align 8, !tbaa !284
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %75, ptr noundef nonnull %3) #15
  %76 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71, %78
  %79 = load ptr, ptr %31, align 8, !tbaa !341
  %80 = load ptr, ptr %26, align 8, !tbaa !339
  %81 = load i32, ptr %3, align 4, !tbaa !247
  %82 = tail call fastcc ptr @get_static_decl(i32 noundef %81) #15
  tail call void @lto_output_var_decl_index(ptr noundef %79, ptr noundef %80, ptr noundef %82) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !294
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %78, !llvm.loop !345

85:                                               ; preds = %78, %71, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %86

86:                                               ; preds = %32, %85
  call fastcc void @csi_next(ptr noundef nonnull %2) #15
  %87 = load ptr, ptr %2, align 8
  %88 = load i32, ptr %7, align 8
  %89 = tail call fastcc zeroext i8 @csi_end_p(ptr %87, i32 %88) #15, !range !294
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %32, label %91, !llvm.loop !346

91:                                               ; preds = %86, %24
  tail call void @lto_destroy_simple_output_block(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_reference_read_summary() #3 !prof !205 !PGOFuncName !347 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #16
  tail call fastcc void @ipa_init() #15
  %4 = load ptr, ptr %3, align 8, !tbaa !237
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
  %21 = load ptr, ptr %16, align 8, !tbaa !348
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
  store i8 1, ptr %27, align 8, !tbaa !257
  br label %39

28:                                               ; preds = %17, %28
  %29 = phi i32 [ %37, %28 ], [ 0, %17 ]
  %30 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %31 = trunc i64 %30 to i32
  %32 = call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef nonnull %7, i32 noundef %31) #15
  call fastcc void @add_static_var(ptr noundef %32) #15
  %33 = load ptr, ptr %23, align 8, !tbaa !282
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %32, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !259
  %36 = call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %35) #16
  %37 = add nuw i32 %29, 1
  %38 = icmp eq i32 %37, %25
  br i1 %38, label %39, label %28, !llvm.loop !350

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
  store i8 1, ptr %45, align 1, !tbaa !260
  br label %57

46:                                               ; preds = %42, %46
  %47 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %48 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %49 = trunc i64 %48 to i32
  %50 = call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef nonnull %7, i32 noundef %49) #15
  call fastcc void @add_static_var(ptr noundef %50) #15
  %51 = load ptr, ptr %43, align 8, !tbaa !284
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %50, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !259
  %54 = call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %53) #16
  %55 = add nuw i32 %47, 1
  %56 = icmp eq i32 %55, %41
  br i1 %56, label %57, label %46, !llvm.loop !351

57:                                               ; preds = %46, %39, %44
  %58 = add nuw i32 %18, 1
  %59 = icmp eq i32 %58, %13
  br i1 %59, label %60, label %17, !llvm.loop !352

60:                                               ; preds = %57, %11
  %61 = load ptr, ptr %1, align 8, !tbaa !237
  %62 = load i64, ptr %2, align 8, !tbaa !353
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 6, ptr noundef nonnull %9, ptr noundef %61, i64 noundef %62) #16
  br label %63

63:                                               ; preds = %60, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %64 = add i32 %8, 1
  %65 = zext i32 %8 to i64
  %66 = getelementptr inbounds ptr, ptr %3, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !237
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %6, !llvm.loop !354

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
define internal fastcc void @read_write_all_from_decl(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !prof !355 !PGOFuncName !356 {
  %4 = tail call i32 @flags_from_decl_or_type(ptr noundef %0) #16
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !357

7:                                                ; preds = %3
  %8 = and i32 %4, 2
  %9 = icmp ne i32 %8, 0
  store i8 1, ptr %1, align 1, !tbaa !259
  %10 = and i32 %4, 72
  %11 = icmp eq i32 %10, 72
  %12 = or i1 %9, %11
  br i1 %12, label %14, label %13, !prof !358

13:                                               ; preds = %7
  store i8 1, ptr %2, align 1, !tbaa !259
  br label %14

14:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !359 !PGOFuncName !360 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6, !prof !361

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %50
  %9 = phi ptr [ %4, %6 ], [ %52, %50 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !263
  %12 = tail call i32 @cgraph_function_body_availability(ptr noundef %11) #16
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %50, !prof !362

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %11) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17, !prof !363

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !214
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21, !prof !364

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !206
  %23 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %35, label %25, !prof !365

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !206
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %28, label %30, !prof !366

28:                                               ; preds = %25
  tail call void @bitmap_obstack_free(ptr noundef %22) #16
  %29 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  store ptr %29, ptr %0, align 8, !tbaa !206
  br label %35

30:                                               ; preds = %25
  %31 = icmp eq ptr %22, %26
  br i1 %31, label %35, label %32, !prof !367

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef %26) #16
  %34 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  br label %35

35:                                               ; preds = %28, %32, %30, %21
  %36 = phi ptr [ %29, %28 ], [ %34, %32 ], [ %23, %30 ], [ %22, %21 ]
  %37 = load ptr, ptr %7, align 8, !tbaa !238
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %50, label %39, !prof !368

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %19, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !238
  %42 = icmp eq ptr %41, %36
  br i1 %42, label %43, label %45, !prof !369

43:                                               ; preds = %39
  tail call void @bitmap_obstack_free(ptr noundef %37) #16
  %44 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  store ptr %44, ptr %7, align 8, !tbaa !238
  br label %50

45:                                               ; preds = %39
  %46 = icmp eq ptr %37, %41
  br i1 %46, label %50, label %47, !prof !370

47:                                               ; preds = %45
  %48 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %37, ptr noundef %41) #16
  br label %50

49:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 577, ptr noundef nonnull @.str.3) #16
  br label %50

50:                                               ; preds = %43, %47, %45, %35, %17, %8, %49
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !237
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %8, !prof !371, !llvm.loop !372

54:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_global_bitmap(ptr noundef %0) unnamed_addr #3 !prof !373 !PGOFuncName !374 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !375

3:                                                ; preds = %1
  %4 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %8, label %6, !prof !376

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !377 !PGOFuncName !378 {
  %4 = load ptr, ptr %1, align 8, !tbaa !379
  store ptr %4, ptr %0, align 8, !tbaa !381
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !383
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !384

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !381
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !385
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !387
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !353
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !388
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !247
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !389 !PGOFuncName !390 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !388
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !391

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !392

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !247
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !393, !llvm.loop !394

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !247
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !247
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !387
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !381
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !387
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !395

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !353
  store i64 %35, ptr %3, align 8, !tbaa !388
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !396

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !247
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !247
  %40 = load i32, ptr %23, align 8, !tbaa !387
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !387
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !397, !llvm.loop !398

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !399
  store ptr %44, ptr %0, align 8, !tbaa !381
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !400

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !385
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !247
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !388
  store i32 %16, ptr %1, align 4, !tbaa !247
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_name(i32 noundef %0) unnamed_addr #3 !prof !205 !PGOFuncName !401 {
  %2 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !237
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !402
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !410
  %10 = inttoptr i64 %9 to ptr
  %11 = tail call ptr %7(ptr noundef %10, i32 noundef 2) #16
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi ptr [ %11, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !412 !PGOFuncName !413 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !388
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !388
  %6 = load i32, ptr %1, align 4, !tbaa !247
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !247
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_function(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !414 !PGOFuncName !415 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  tail call fastcc void @clean_function_local_data(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6, !prof !416

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !206
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @all_module_statics, align 8
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %14, label %12, !prof !417

12:                                               ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef nonnull %7) #16
  store ptr null, ptr %4, align 8, !tbaa !206
  %13 = load ptr, ptr @all_module_statics, align 8
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %9, %6 ]
  %16 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !238
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %15
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %23, label %21, !prof !418

21:                                               ; preds = %14
  tail call void @bitmap_obstack_free(ptr noundef nonnull %17) #16
  store ptr null, ptr %16, align 8, !tbaa !238
  %22 = load ptr, ptr @all_module_statics, align 8
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi ptr [ %22, %21 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !241
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %26, %24
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %32, label %30, !prof !419

30:                                               ; preds = %23
  tail call void @bitmap_obstack_free(ptr noundef nonnull %26) #16
  store ptr null, ptr %25, align 8, !tbaa !241
  %31 = load ptr, ptr @all_module_statics, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %31, %30 ], [ %24, %23 ]
  %34 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !244
  %36 = icmp eq ptr %35, null
  %37 = icmp eq ptr %35, %33
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %40, label %39, !prof !419

39:                                               ; preds = %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %35) #16
  br label %40

40:                                               ; preds = %39, %32
  tail call void @free(ptr noundef nonnull %4) #15
  store ptr null, ptr %3, align 8, !tbaa !214
  br label %41

41:                                               ; preds = %40, %1
  %42 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  tail call void @free(ptr noundef %42) #15
  tail call fastcc void @set_reference_vars_info(ptr noundef %0, ptr noundef null) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_function_local_data(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !420 !PGOFuncName !421 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !422

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !282
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @all_module_statics, align 8
  %9 = icmp eq ptr %6, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %13, label %11, !prof !423

11:                                               ; preds = %5
  tail call void @bitmap_obstack_free(ptr noundef nonnull %6) #16
  store ptr null, ptr %3, align 8, !tbaa !282
  %12 = load ptr, ptr @all_module_statics, align 8
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !284
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %14
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %21, label %20, !prof !424

20:                                               ; preds = %13
  tail call void @bitmap_obstack_free(ptr noundef nonnull %16) #16
  br label %21

21:                                               ; preds = %20, %13
  tail call void @free(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !256
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
define internal fastcc void @set_reference_vars_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 !prof !425 !PGOFuncName !426 {
  %3 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !427

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !219
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef nonnull %3) #15
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !219
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13, !prof !428

13:                                               ; preds = %5, %8
  %14 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %16 = add nsw i32 %14, 1
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(i32 noundef %16) #15
  %17 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %18 = load i32, ptr %15, align 8, !tbaa !219
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ %11, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %3, %8 ]
  tail call fastcc void @VEC_ipa_reference_vars_info_t_base_replace(ptr noundef %21, i32 noundef %20, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #3 !prof !429 !PGOFuncName !430 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !237
  %3 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef %2) #15
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(i32 noundef %0) #15
  %4 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !237
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
define internal fastcc void @VEC_ipa_reference_vars_info_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 !prof !425 !PGOFuncName !431 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !237
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(i32 noundef %0) unnamed_addr #3 !prof !429 !PGOFuncName !432 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !237
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !433

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !233
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_reserve_exact(i32 noundef %8) #15
  %9 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !237, !nonnull !434, !noundef !434
  store i32 %0, ptr %9, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_reference_vars_info_t_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !429 !PGOFuncName !435 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !436
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #3 !prof !429 !PGOFuncName !437 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !237
  %3 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(ptr noundef %2, i32 noundef %0) #15, !range !438
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !439

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #16
  store ptr %6, ptr @ipa_reference_vars_vector, align 8, !tbaa !237
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !429 !PGOFuncName !440 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !433

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !441
  %7 = load i32, ptr %0, align 8, !tbaa !233
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
define internal fastcc void @ipa_init() unnamed_addr #3 !prof !250 !PGOFuncName !442 {
  %1 = load i1, ptr @ipa_init.init_p, align 1
  br i1 %1, label %12, label %2, !prof !443

2:                                                ; preds = %0
  store i1 true, ptr @ipa_init.init_p, align 1
  %3 = tail call ptr @build_string(i32 noundef 7, ptr noundef nonnull @.str.18) #16
  store ptr %3, ptr @memory_identifier_string, align 8, !tbaa !237
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #16
  store ptr %4, ptr @reference_vars_to_consider, align 8, !tbaa !237
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @local_info_obstack) #16
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @global_info_obstack) #16
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %5, ptr @module_statics_escape, align 8, !tbaa !237
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %6, ptr @module_statics_written, align 8, !tbaa !237
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %7, ptr @all_module_statics, align 8, !tbaa !237
  %8 = tail call ptr @pointer_set_create() #16
  store ptr %8, ptr @visited_nodes, align 8, !tbaa !237
  %9 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #16
  store ptr %9, ptr @function_insertion_hook_holder, align 8, !tbaa !237
  %10 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #16
  store ptr %10, ptr @node_removal_hook_holder, align 8, !tbaa !237
  %11 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #16
  store ptr %11, ptr @node_duplication_hook_holder, align 8, !tbaa !237
  br label %12

12:                                               ; preds = %0, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @varpool_first_static_initializer() unnamed_addr #3 !prof !250 !PGOFuncName !444 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !237
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3, !prof !307

3:                                                ; preds = %0, %16
  %4 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !445
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %11, label %9, !prof !252

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 595, ptr noundef nonnull @.str.3) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !445
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !259
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20, !prof !443

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !237
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !prof !447, !llvm.loop !448

20:                                               ; preds = %11, %16, %0
  %21 = phi ptr [ null, %0 ], [ null, %16 ], [ %4, %11 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_variable(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !449 !PGOFuncName !450 {
  %2 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr @visited_nodes, align 8, !tbaa !237
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !451
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %7 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @scan_initializer_for_static_refs, ptr noundef nonnull %2, ptr noundef %4, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @varpool_next_static_initializer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !449 !PGOFuncName !454 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %14 ]
  %4 = getelementptr inbounds %struct.varpool_node, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !455
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !456

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !445
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %14, label %12, !prof !457

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 608, ptr noundef nonnull @.str.3) #16
  %13 = load ptr, ptr %5, align 8, !tbaa !445
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %8, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !259
  %18 = icmp eq ptr %17, null
  br i1 %18, label %2, label %19, !prof !458, !llvm.loop !459

19:                                               ; preds = %2, %14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #3 !prof !460 !PGOFuncName !461 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !261
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !259
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !237
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !462

10:                                               ; preds = %1
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #16
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef %11) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !259
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ %7, %1 ]
  tail call void @push_cfun(ptr noundef %15) #16
  store ptr %5, ptr @current_function_decl, align 8, !tbaa !237
  %16 = tail call fastcc ptr @init_function_info(ptr noundef nonnull %0) #15
  %17 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !463
  %19 = load ptr, ptr %18, align 8, !tbaa !465
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !467
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !469
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %62, label %25, !prof !470

25:                                               ; preds = %14, %55
  %26 = phi ptr [ %57, %55 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %26) #16
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !294
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49, !prof !471

29:                                               ; preds = %25, %46
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %31 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %30) #15
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %46, !prof !472

34:                                               ; preds = %29, %42
  %35 = phi ptr [ %43, %42 ], [ %31, %29 ]
  %36 = call fastcc ptr @get_use_from_ptr(ptr noundef %35) #15
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 121
  br i1 %39, label %40, label %42, !prof !473

40:                                               ; preds = %34
  %41 = call ptr @get_base_var(ptr noundef nonnull %36) #16
  call fastcc void @mark_address_taken(ptr noundef %41) #15
  br label %42

42:                                               ; preds = %34, %40
  %43 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #15
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %34, label %46, !prof !474, !llvm.loop !475

46:                                               ; preds = %42, %29
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !294
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %29, label %49, !prof !476, !llvm.loop !477

49:                                               ; preds = %46, %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %26) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !478
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !294
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55, !prof !479

52:                                               ; preds = %49, %52
  call fastcc void @scan_stmt_for_static_refs(ptr noundef nonnull %2, ptr noundef nonnull %0) #15
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !294
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %52, label %55, !prof !480, !llvm.loop !481

55:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !467
  %58 = load ptr, ptr %17, align 8, !tbaa !463
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !469
  %61 = icmp eq ptr %57, %60
  br i1 %61, label %62, label %25, !prof !482, !llvm.loop !483

62:                                               ; preds = %55, %14
  %63 = call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %0) #15
  %64 = load ptr, ptr %63, align 8, !tbaa !256
  %65 = call i32 @flags_from_decl_or_type(ptr noundef %5) #16
  %66 = and i32 %65, 72
  %67 = icmp eq i32 %66, 72
  br i1 %67, label %68, label %72, !prof !484

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 3
  store i8 0, ptr %69, align 1, !tbaa !260
  %70 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !284
  call void @bitmap_clear(ptr noundef %71) #16
  br label %72

72:                                               ; preds = %68, %62
  %73 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !260
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76, !prof !485

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !284
  call void @bitmap_obstack_free(ptr noundef %78) #16
  store ptr null, ptr %77, align 8, !tbaa !284
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 2
  %81 = load i8, ptr %80, align 8, !tbaa !257
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83, !prof !486

83:                                               ; preds = %79
  %84 = load ptr, ptr %64, align 8, !tbaa !282
  call void @bitmap_obstack_free(ptr noundef %84) #16
  store ptr null, ptr %64, align 8, !tbaa !282
  br label %85

85:                                               ; preds = %83, %79
  call void @pop_cfun() #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !237
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_decl(i32 noundef %0) unnamed_addr #3 !prof !487 !PGOFuncName !488 {
  %2 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !237
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !489

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !410
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
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #3 !prof !205 !PGOFuncName !490 {
  tail call fastcc void @analyze_function(ptr noundef %0) #15
  store ptr null, ptr @visited_nodes, align 8, !tbaa !237
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !prof !414 !PGOFuncName !491 {
  %3 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !492

5:                                                ; preds = %2
  tail call fastcc void @clean_function(ptr noundef %0) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 !prof !493 !PGOFuncName !494 {
  %4 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %5 = tail call fastcc ptr @get_local_reference_vars_info(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !495

7:                                                ; preds = %3
  %8 = icmp eq ptr %4, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @init_function_info(ptr noundef %1) #15
  br label %27

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @init_function_info(ptr noundef %1) #15
  %13 = tail call fastcc ptr @get_local_reference_vars_info(ptr noundef %1) #15
  %14 = load ptr, ptr %5, align 8, !tbaa !282
  %15 = tail call fastcc ptr @copy_local_bitmap(ptr noundef %14) #15
  store ptr %15, ptr %13, align 8, !tbaa !282
  %16 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !284
  %18 = tail call fastcc ptr @copy_local_bitmap(ptr noundef %17) #15
  %19 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %13, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !284
  %20 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !257
  %22 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %13, i64 0, i32 2
  store i8 %21, ptr %22, align 8, !tbaa !257
  %23 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !260
  %25 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %13, i64 0, i32 3
  store i8 %24, ptr %25, align 1, !tbaa !260
  %26 = icmp eq ptr %4, null
  br i1 %26, label %46, label %27, !prof !496

27:                                               ; preds = %9, %11
  %28 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  %29 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %1) #15
  %30 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %29, i64 0, i32 1
  store ptr %28, ptr %30, align 8, !tbaa !214
  %31 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %1) #15
  %32 = load ptr, ptr %4, align 8, !tbaa !206
  %33 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %32) #15
  store ptr %33, ptr %31, align 8, !tbaa !206
  %34 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !238
  %36 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %35) #15
  %37 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %31, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !238
  %38 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !241
  %40 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %39) #15
  %41 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %31, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !241
  %42 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !244
  %44 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %43) #15
  %45 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %31, i64 0, i32 3
  store ptr %44, ptr %45, align 8, !tbaa !244
  br label %46

46:                                               ; preds = %11, %27, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_local_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !497 !PGOFuncName !498 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !499

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !256
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_function_info(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !500 !PGOFuncName !501 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #16
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #16
  tail call fastcc void @set_reference_vars_info(ptr noundef %0, ptr noundef %2) #15
  store ptr %3, ptr %2, align 8, !tbaa !256
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %4, ptr %3, align 8, !tbaa !282
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  %6 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !284
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_local_bitmap(ptr noundef %0) unnamed_addr #3 !prof !497 !PGOFuncName !502 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !503

3:                                                ; preds = %1
  %4 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %8, label %6, !prof !504

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
define internal noalias noundef ptr @scan_initializer_for_static_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #3 !prof !505 !PGOFuncName !506 {
  %4 = load ptr, ptr %0, align 8, !tbaa !237
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %10, !prof !507

8:                                                ; preds = %3
  %9 = tail call ptr @get_base_var(ptr noundef nonnull %4) #16
  tail call fastcc void @mark_address_taken(ptr noundef %9) #15
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !247
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16, !prof !508

15:                                               ; preds = %10, %8
  store i32 0, ptr %1, align 4, !tbaa !247
  br label %16

16:                                               ; preds = %15, %10
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_address_taken(ptr noundef %0) unnamed_addr #3 !prof !509 !PGOFuncName !510 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  %5 = load ptr, ptr @module_statics_escape, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %16, !prof !511

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %0) #15, !range !294
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !512

11:                                               ; preds = %8
  %12 = load ptr, ptr @module_statics_escape, align 8, !tbaa !237
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !259
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %11, %8, %1
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_proper_scope_for_analysis(ptr noundef %0) unnamed_addr #3 !prof !513 !PGOFuncName !514 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 8192
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %33, !prof !515

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %33, !prof !516

10:                                               ; preds = %6
  %11 = and i64 %7, 67108864
  %12 = and i64 %3, 33554432
  %13 = or disjoint i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = and i64 %7, 134217728
  %16 = or disjoint i64 %15, %12
  %17 = icmp eq i64 %16, 0
  %18 = and i1 %14, %17
  br i1 %18, label %19, label %33, !prof !517

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !259
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33, !prof !518

26:                                               ; preds = %19
  %27 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !259
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33, !prof !519

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
define internal fastcc void @add_static_var(ptr noundef %0) unnamed_addr #3 !prof !520 !PGOFuncName !521 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !259
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %8, label %7, !prof !522

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %3) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !522

12:                                               ; preds = %8
  %13 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !237
  %14 = sext i32 %3 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = tail call ptr @splay_tree_insert(ptr noundef %13, i64 noundef %14, i64 noundef %15) #16
  %17 = load ptr, ptr @all_module_statics, align 8, !tbaa !237
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
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !523 !PGOFuncName !524 {
  %2 = load ptr, ptr %0, align 8, !tbaa !525
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !526 !PGOFuncName !527 {
  %2 = load ptr, ptr %0, align 8, !tbaa !525
  %3 = load ptr, ptr %2, align 8, !tbaa !528
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !530 !PGOFuncName !531 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #15
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #15
  store i8 0, ptr %0, align 8, !tbaa !532
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !534

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !532
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !535
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !536
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !537
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #15
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !538 !PGOFuncName !539 {
  %2 = load i8, ptr %0, align 8, !tbaa !532
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !540 !PGOFuncName !541 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !542
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #3 !prof !544 !PGOFuncName !545 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !546
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !547

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !548
  store ptr %7, ptr %2, align 8, !tbaa !546
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !550
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !536
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !551

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !535
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !550
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #15
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !532
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !526 !PGOFuncName !552 {
  %2 = load ptr, ptr %0, align 8, !tbaa !525
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !553
  store ptr %4, ptr %0, align 8, !tbaa !525
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !554 !PGOFuncName !555 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !525
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !556
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !557
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stmt_for_static_refs(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #3 !prof !558 !PGOFuncName !559 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %4 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %3) #15, !range !294
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21, !prof !560

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8, !prof !561

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !256
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ null, %6 ]
  %13 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %3, ptr noundef %12, ptr noundef nonnull @mark_load, ptr noundef nonnull @mark_store, ptr noundef nonnull @mark_address) #16
  %14 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #15, !range !294
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !562

16:                                               ; preds = %11
  tail call fastcc void @check_call(ptr noundef %12, ptr noundef %3) #15
  br label %21

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %3) #15, !range !563
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %21, !prof !564

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !530 !PGOFuncName !565 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !530 !PGOFuncName !566 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !532
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !567 !PGOFuncName !568 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !259
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !540 !PGOFuncName !569 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !540 !PGOFuncName !570 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !259
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !571

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 3103, ptr noundef nonnull @.str.3) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !554 !PGOFuncName !572 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !573
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !574

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !259
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !575

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !576
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #2 !prof !554 !PGOFuncName !578 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !575

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !579
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !558 !PGOFuncName !581 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !563
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 !prof !582 !PGOFuncName !583 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %15, !prof !584

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1) #15, !range !294
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !585

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !tbaa !282
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !259
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %13) #16
  br label %15

15:                                               ; preds = %10, %7, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_store(ptr nocapture readnone %0, ptr noundef %1, ptr noundef readonly %2) #3 !prof !586 !PGOFuncName !587 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %25, !prof !588

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1) #15, !range !294
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10, !prof !589

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %18, label %12, !prof !590

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !284
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !259
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %12, %10
  %19 = load ptr, ptr @module_statics_written, align 8, !tbaa !237
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !590

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !259
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %19, i32 noundef %23) #16
  br label %25

25:                                               ; preds = %18, %21, %7, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_address(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #3 !prof !591 !PGOFuncName !592 {
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #15, !range !294
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6, !prof !593

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !259
  %10 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %9) #15, !range !294
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %6, !prof !594, !llvm.loop !595

12:                                               ; preds = %6, %3
  %13 = phi ptr [ %1, %3 ], [ %9, %6 ]
  tail call fastcc void @mark_address_taken(ptr noundef %13) #15
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !558 !PGOFuncName !596 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !563
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 !prof !597 !PGOFuncName !598 {
  %3 = tail call i32 @gimple_call_flags(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %18, !prof !599

9:                                                ; preds = %2
  %10 = and i32 %3, 2
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 2
  store i8 1, ptr %12, align 8, !tbaa !257
  %13 = and i32 %3, 72
  %14 = icmp eq i32 %13, 72
  %15 = or i1 %11, %14
  br i1 %15, label %18, label %16, !prof !600

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %17, align 1, !tbaa !260
  br label %18

18:                                               ; preds = %9, %16, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !601 !PGOFuncName !602 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_asm_memory_clobber(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #3 !prof !205 !PGOFuncName !603 {
  %3 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #15, !range !563
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
  %13 = load ptr, ptr %12, align 8, !tbaa !259
  %14 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !237
  %15 = tail call i32 @simple_cst_equal(ptr noundef %13, ptr noundef %14) #16
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i8 1, ptr %6, align 8, !tbaa !257
  store i8 1, ptr %7, align 1, !tbaa !260
  br label %18

18:                                               ; preds = %8, %17
  %19 = add nuw nsw i64 %9, 1
  %20 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #15, !range !563
  %21 = zext nneg i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %8, label %23, !llvm.loop !604

23:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !605 !PGOFuncName !606 {
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
  ], !prof !607

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #3 !prof !597 !PGOFuncName !608 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !609

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !259
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #3 !prof !597 !PGOFuncName !610 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !597 !PGOFuncName !611 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !294
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !612

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !597 !PGOFuncName !613 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !563
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #3 !prof !597 !PGOFuncName !614 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !353
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !612

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !597 !PGOFuncName !615 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !563
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !597 !PGOFuncName !616 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !247
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !205 !PGOFuncName !617 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !259
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !205 !PGOFuncName !618 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !259
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 2688, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !259
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !259
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
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #10 !prof !205 !PGOFuncName !619 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !205 !PGOFuncName !620 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !621
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #15
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @write_node_summary_p(ptr noundef %0) unnamed_addr #3 !prof !205 !PGOFuncName !623 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !624
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
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !205 !PGOFuncName !625 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !621
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !205 !PGOFuncName !626 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !627
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !627
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
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !205 !PGOFuncName !629 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !630
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !205 !PGOFuncName !632 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !237
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
define internal fastcc ptr @lto_file_decl_data_get_var_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !205 !PGOFuncName !633 {
  %3 = load ptr, ptr %0, align 8, !tbaa !634
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !635
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1044, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !637
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !237
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!204}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!36 = !{ptr @get_global_reference_vars_info, ptr @get_reference_vars_info, i64 1025334}
!37 = !{ptr @get_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_length, i64 1861710}
!38 = !{ptr @get_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_index, i64 1861709}
!39 = !{ptr @ipa_reference_get_not_read_global, ptr @get_global_reference_vars_info, i64 6448}
!40 = !{ptr @ipa_reference_get_not_written_global, ptr @get_global_reference_vars_info, i64 999136}
!41 = !{ptr @propagate, ptr @xcalloc, i64 13309}
!42 = !{ptr @propagate, ptr @ipa_utils_reduced_inorder, i64 2}
!43 = !{ptr @propagate, ptr @cgraph_remove_function_insertion_hook, i64 1}
!44 = !{ptr @propagate, ptr @get_reference_vars_info, i64 41743}
!45 = !{ptr @propagate, ptr @cgraph_function_body_availability, i64 81705}
!46 = !{ptr @propagate, ptr @read_write_all_from_decl, i64 6430}
!47 = !{ptr @propagate, ptr @bitmap_obstack_alloc_stat, i64 40487}
!48 = !{ptr @propagate, ptr @bitmap_copy, i64 17117}
!49 = !{ptr @propagate, ptr @propagate_bits, i64 13308}
!50 = !{ptr @propagate, ptr @bitmap_ior_into, i64 1642}
!51 = !{ptr @propagate, ptr @copy_global_bitmap, i64 3246}
!52 = !{ptr @propagate, ptr @cgraph_node_name, i64 112}
!53 = !{ptr @propagate, ptr @fprintf, i64 3046}
!54 = !{ptr @propagate, ptr @fwrite, i64 238}
!55 = !{ptr @propagate, ptr @bmp_iter_set_init, i64 146}
!56 = !{ptr @propagate, ptr @bmp_iter_set, i64 3080}
!57 = !{ptr @propagate, ptr @get_static_name, i64 2934}
!58 = !{ptr @propagate, ptr @bmp_iter_next, i64 2934}
!59 = !{ptr @propagate, ptr @bitmap_and_compl, i64 3836}
!60 = !{ptr @propagate, ptr @free, i64 13308}
!61 = !{ptr @propagate, ptr @clean_function_local_data, i64 13325}
!62 = !{ptr @propagate, ptr @bitmap_obstack_release, i64 1}
!63 = !{ptr @generate_summary, ptr @ipa_init, i64 1}
!64 = !{ptr @generate_summary, ptr @bitmap_obstack_alloc_stat, i64 2}
!65 = !{ptr @generate_summary, ptr @varpool_first_static_initializer, i64 1}
!66 = !{ptr @generate_summary, ptr @analyze_variable, i64 705}
!67 = !{ptr @generate_summary, ptr @varpool_next_static_initializer, i64 705}
!68 = !{ptr @generate_summary, ptr @cgraph_function_body_availability, i64 7345}
!69 = !{ptr @generate_summary, ptr @analyze_function, i64 3603}
!70 = !{ptr @generate_summary, ptr @pointer_set_destroy, i64 1}
!71 = !{ptr @generate_summary, ptr @bmp_iter_set_init, i64 7}
!72 = !{ptr @generate_summary, ptr @bmp_iter_set, i64 1160}
!73 = !{ptr @generate_summary, ptr @splay_tree_remove, i64 523}
!74 = !{ptr @generate_summary, ptr @bmp_iter_next, i64 1153}
!75 = !{ptr @generate_summary, ptr @bitmap_and_compl_into, i64 1}
!76 = !{ptr @generate_summary, ptr @bitmap_and_compl, i64 2}
!77 = !{ptr @generate_summary, ptr @get_static_decl, i64 557}
!78 = !{ptr @generate_summary, ptr @bitmap_obstack_free, i64 4}
!79 = !{ptr @generate_summary, ptr @get_static_name, i64 73}
!80 = !{ptr @generate_summary, ptr @fprintf, i64 76}
!81 = !{ptr @generate_summary, ptr @get_reference_vars_info, i64 3606}
!82 = !{ptr @generate_summary, ptr @bitmap_and_into, i64 6646}
!83 = !{ptr @generate_summary, ptr @cgraph_node_name, i64 3}
!84 = !{ptr @generate_summary, ptr @fwrite, i64 10}
!85 = !{ptr @read_write_all_from_decl, ptr @flags_from_decl_or_type, i64 12859}
!86 = !{ptr @propagate_bits, ptr @cgraph_function_body_availability, i64 110004}
!87 = !{ptr @propagate_bits, ptr @get_reference_vars_info, i64 97144}
!88 = !{ptr @propagate_bits, ptr @bitmap_obstack_free, i64 26561}
!89 = !{ptr @propagate_bits, ptr @bitmap_ior_into, i64 5995}
!90 = !{ptr @propagate_bits, ptr @fancy_abort, i64 1}
!91 = !{ptr @copy_global_bitmap, ptr @bitmap_obstack_alloc_stat, i64 1465}
!92 = !{ptr @copy_global_bitmap, ptr @bitmap_copy, i64 1465}
!93 = !{ptr @clean_function, ptr @get_reference_vars_info, i64 40606}
!94 = !{ptr @clean_function, ptr @clean_function_local_data, i64 20303}
!95 = !{ptr @clean_function, ptr @bitmap_obstack_free, i64 41163}
!96 = !{ptr @clean_function, ptr @free, i64 40264}
!97 = !{ptr @clean_function, ptr @set_reference_vars_info, i64 20303}
!98 = !{ptr @clean_function_local_data, ptr @get_reference_vars_info, i64 46953}
!99 = !{ptr @clean_function_local_data, ptr @bitmap_obstack_free, i64 50692}
!100 = !{ptr @clean_function_local_data, ptr @free, i64 26955}
!101 = !{ptr @set_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_length, i64 47256}
!102 = !{ptr @set_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, i64 17609}
!103 = !{ptr @set_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_replace, i64 47258}
!104 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, ptr @VEC_ipa_reference_vars_info_t_base_length, i64 17608}
!105 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow, i64 17608}
!106 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, ptr @VEC_ipa_reference_vars_info_t_base_address, i64 17608}
!107 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow, ptr @VEC_ipa_reference_vars_info_t_heap_reserve_exact, i64 17608}
!108 = !{ptr @VEC_ipa_reference_vars_info_t_heap_reserve_exact, ptr @VEC_ipa_reference_vars_info_t_base_space, i64 17608}
!109 = !{ptr @VEC_ipa_reference_vars_info_t_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 17607}
!110 = !{ptr @ipa_init, ptr @build_string, i64 1}
!111 = !{ptr @ipa_init, ptr @splay_tree_new_with_allocator, i64 1}
!112 = !{ptr @ipa_init, ptr @bitmap_obstack_initialize, i64 2}
!113 = !{ptr @ipa_init, ptr @bitmap_obstack_alloc_stat, i64 3}
!114 = !{ptr @ipa_init, ptr @pointer_set_create, i64 1}
!115 = !{ptr @ipa_init, ptr @cgraph_add_function_insertion_hook, i64 1}
!116 = !{ptr @ipa_init, ptr @cgraph_add_node_removal_hook, i64 1}
!117 = !{ptr @ipa_init, ptr @cgraph_add_node_duplication_hook, i64 1}
!118 = !{ptr @analyze_variable, ptr @walk_tree_1, i64 1409}
!119 = !{ptr @varpool_next_static_initializer, ptr @fancy_abort, i64 1}
!120 = !{ptr @analyze_function, ptr @cgraph_node_name, i64 1}
!121 = !{ptr @analyze_function, ptr @fprintf, i64 1}
!122 = !{ptr @analyze_function, ptr @push_cfun, i64 7205}
!123 = !{ptr @analyze_function, ptr @init_function_info, i64 7205}
!124 = !{ptr @analyze_function, ptr @gsi_start_phis, i64 177190}
!125 = !{ptr @analyze_function, ptr @gsi_end_p, i64 942958}
!126 = !{ptr @analyze_function, ptr @gsi_stmt, i64 62529}
!127 = !{ptr @analyze_function, ptr @op_iter_init_phiuse, i64 62529}
!128 = !{ptr @analyze_function, ptr @op_iter_done, i64 177062}
!129 = !{ptr @analyze_function, ptr @get_use_from_ptr, i64 114533}
!130 = !{ptr @analyze_function, ptr @get_base_var, i64 1468}
!131 = !{ptr @analyze_function, ptr @mark_address_taken, i64 1468}
!132 = !{ptr @analyze_function, ptr @op_iter_next_use, i64 114533}
!133 = !{ptr @analyze_function, ptr @gsi_next, i64 588578}
!134 = !{ptr @analyze_function, ptr @gsi_start_bb, i64 177190}
!135 = !{ptr @analyze_function, ptr @scan_stmt_for_static_refs, i64 526049}
!136 = !{ptr @analyze_function, ptr @get_reference_vars_info, i64 7205}
!137 = !{ptr @analyze_function, ptr @flags_from_decl_or_type, i64 7205}
!138 = !{ptr @analyze_function, ptr @bitmap_clear, i64 8}
!139 = !{ptr @analyze_function, ptr @bitmap_obstack_free, i64 1119}
!140 = !{ptr @analyze_function, ptr @pop_cfun, i64 7205}
!141 = !{ptr @get_static_decl, ptr @splay_tree_lookup, i64 1112}
!142 = !{ptr @remove_node_data, ptr @get_reference_vars_info, i64 20303}
!143 = !{ptr @remove_node_data, ptr @clean_function, i64 20302}
!144 = !{ptr @duplicate_node_data, ptr @get_global_reference_vars_info, i64 19751}
!145 = !{ptr @duplicate_node_data, ptr @get_local_reference_vars_info, i64 39499}
!146 = !{ptr @duplicate_node_data, ptr @init_function_info, i64 19750}
!147 = !{ptr @duplicate_node_data, ptr @copy_local_bitmap, i64 39498}
!148 = !{ptr @duplicate_node_data, ptr @xcalloc, i64 1}
!149 = !{ptr @duplicate_node_data, ptr @get_reference_vars_info, i64 1}
!150 = !{ptr @duplicate_node_data, ptr @copy_global_bitmap, i64 4}
!151 = !{ptr @get_local_reference_vars_info, ptr @get_reference_vars_info, i64 39500}
!152 = !{ptr @init_function_info, ptr @xcalloc, i64 53910}
!153 = !{ptr @init_function_info, ptr @set_reference_vars_info, i64 26955}
!154 = !{ptr @init_function_info, ptr @bitmap_obstack_alloc_stat, i64 53910}
!155 = !{ptr @copy_local_bitmap, ptr @bitmap_obstack_alloc_stat, i64 37401}
!156 = !{ptr @copy_local_bitmap, ptr @bitmap_copy, i64 37401}
!157 = !{ptr @scan_initializer_for_static_refs, ptr @get_base_var, i64 17125}
!158 = !{ptr @scan_initializer_for_static_refs, ptr @mark_address_taken, i64 17125}
!159 = !{ptr @mark_address_taken, ptr @has_proper_scope_for_analysis, i64 7859}
!160 = !{ptr @mark_address_taken, ptr @bitmap_set_bit, i64 3284}
!161 = !{ptr @has_proper_scope_for_analysis, ptr @bitmap_bit_p, i64 16325}
!162 = !{ptr @has_proper_scope_for_analysis, ptr @add_static_var, i64 1978}
!163 = !{ptr @add_static_var, ptr @fancy_abort, i64 1}
!164 = !{ptr @add_static_var, ptr @bitmap_bit_p, i64 1977}
!165 = !{ptr @add_static_var, ptr @splay_tree_insert, i64 1976}
!166 = !{ptr @add_static_var, ptr @bitmap_set_bit, i64 1976}
!167 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 62537}
!168 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 62537}
!169 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 62537}
!170 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 34412}
!171 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 34412}
!172 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 114547}
!173 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 177214}
!174 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 177214}
!175 = !{ptr @scan_stmt_for_static_refs, ptr @gsi_stmt, i64 526121}
!176 = !{ptr @scan_stmt_for_static_refs, ptr @is_gimple_debug, i64 526121}
!177 = !{ptr @scan_stmt_for_static_refs, ptr @get_reference_vars_info, i64 526119}
!178 = !{ptr @scan_stmt_for_static_refs, ptr @walk_stmt_load_store_addr_ops, i64 526120}
!179 = !{ptr @scan_stmt_for_static_refs, ptr @is_gimple_call, i64 526120}
!180 = !{ptr @scan_stmt_for_static_refs, ptr @check_call, i64 72261}
!181 = !{ptr @scan_stmt_for_static_refs, ptr @gimple_code, i64 453859}
!182 = !{ptr @scan_stmt_for_static_refs, ptr @check_asm_memory_clobber, i64 1}
!183 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 114548}
!184 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!185 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 526121}
!186 = !{ptr @mark_load, ptr @has_proper_scope_for_analysis, i64 59970}
!187 = !{ptr @mark_load, ptr @bitmap_set_bit, i64 9873}
!188 = !{ptr @mark_store, ptr @has_proper_scope_for_analysis, i64 14211}
!189 = !{ptr @mark_store, ptr @bitmap_set_bit, i64 6340}
!190 = !{ptr @mark_address, ptr @handled_component_p, i64 38559}
!191 = !{ptr @mark_address, ptr @mark_address_taken, i64 18143}
!192 = !{ptr @is_gimple_call, ptr @gimple_code, i64 526121}
!193 = !{ptr @check_call, ptr @gimple_call_flags, i64 72260}
!194 = !{ptr @check_call, ptr @gimple_call_fndecl, i64 72260}
!195 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 72260}
!196 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 72260}
!197 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 72260}
!198 = !{ptr @gimple_op, ptr @gimple_ops, i64 72259}
!199 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 72260}
!200 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 72260}
!201 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!202 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 72260}
!203 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 72260}
!204 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!205 = !{!"function_entry_count", i64 0}
!206 = !{!207, !208, i64 0}
!207 = !{!"ipa_reference_global_vars_info_d", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24}
!208 = !{!"any pointer", !209, i64 0}
!209 = !{!"omnipotent char", !210, i64 0}
!210 = !{!"Simple C/C++ TBAA"}
!211 = !{!"function_entry_count", i64 1025334}
!212 = !{!"ipa-reference.c:get_global_reference_vars_info"}
!213 = !{!"branch_weights", i32 299338, i32 725998}
!214 = !{!215, !208, i64 8}
!215 = !{!"ipa_reference_vars_info_d", !208, i64 0, !208, i64 8}
!216 = !{!"function_entry_count", i64 1990780}
!217 = !{!"ipa-reference.c:get_reference_vars_info"}
!218 = !{!"branch_weights", i32 129070, i32 1861712}
!219 = !{!220, !224, i64 296}
!220 = !{!"cgraph_node", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !208, i64 72, !208, i64 80, !208, i64 88, !208, i64 96, !208, i64 104, !208, i64 112, !208, i64 120, !208, i64 128, !208, i64 136, !221, i64 144, !225, i64 184, !226, i64 224, !227, i64 232, !228, i64 256, !223, i64 288, !224, i64 296, !224, i64 300, !224, i64 304, !224, i64 308, !224, i64 308, !224, i64 308, !224, i64 308, !224, i64 308, !224, i64 308, !224, i64 308, !224, i64 308, !224, i64 309, !224, i64 309}
!221 = !{!"cgraph_local_info", !208, i64 0, !222, i64 8, !224, i64 32, !224, i64 32, !224, i64 32, !224, i64 32, !224, i64 32, !224, i64 32, !224, i64 32, !224, i64 32}
!222 = !{!"inline_summary", !223, i64 0, !224, i64 8, !224, i64 12, !224, i64 16, !224, i64 20}
!223 = !{!"long", !209, i64 0}
!224 = !{!"int", !209, i64 0}
!225 = !{!"cgraph_global_info", !223, i64 0, !223, i64 8, !208, i64 16, !224, i64 24, !224, i64 28, !224, i64 32, !209, i64 36}
!226 = !{!"cgraph_rtl_info", !224, i64 0}
!227 = !{!"cgraph_clone_info", !208, i64 0, !208, i64 8, !208, i64 16}
!228 = !{!"cgraph_thunk_info", !223, i64 0, !223, i64 8, !208, i64 16, !209, i64 24, !209, i64 25, !209, i64 26}
!229 = !{!"branch_weights", i32 1861712, i32 1}
!230 = !{!"function_entry_count", i64 1944184}
!231 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_length"}
!232 = !{!"branch_weights", i32 3, i32 1944183}
!233 = !{!234, !224, i64 0}
!234 = !{!"VEC_ipa_reference_vars_info_t_base", !224, i64 0, !224, i64 4, !209, i64 8}
!235 = !{!"function_entry_count", i64 1861711}
!236 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_index"}
!237 = !{!208, !208, i64 0}
!238 = !{!207, !208, i64 8}
!239 = !{!"function_entry_count", i64 6448}
!240 = !{!"branch_weights", i32 1647, i32 4803}
!241 = !{!207, !208, i64 16}
!242 = !{!"function_entry_count", i64 999136}
!243 = !{!"branch_weights", i32 297692, i32 701446}
!244 = !{!207, !208, i64 24}
!245 = !{!"function_entry_count", i64 2}
!246 = !{!"ipa-reference.c:gate_reference"}
!247 = !{!224, !224, i64 0}
!248 = !{!"branch_weights", i32 1, i32 3}
!249 = !{!"branch_weights", i32 3, i32 1}
!250 = !{!"function_entry_count", i64 1}
!251 = !{!"ipa-reference.c:propagate"}
!252 = !{!"branch_weights", i32 2, i32 1}
!253 = !{!"branch_weights", i32 127, i32 1}
!254 = !{!"branch_weights", i32 1, i32 23370}
!255 = !{!"branch_weights", i32 23370, i32 1}
!256 = !{!215, !208, i64 0}
!257 = !{!258, !209, i64 16}
!258 = !{!"ipa_reference_local_vars_info_d", !208, i64 0, !208, i64 8, !209, i64 16, !209, i64 17}
!259 = !{!209, !209, i64 0}
!260 = !{!258, !209, i64 17}
!261 = !{!220, !208, i64 0}
!262 = !{!"branch_weights", i32 1, i32 23369}
!263 = !{!264, !208, i64 16}
!264 = !{!"cgraph_edge", !223, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !224, i64 72, !224, i64 76, !224, i64 80, !224, i64 84, !265, i64 88, !224, i64 90, !224, i64 90, !224, i64 90}
!265 = !{!"short", !209, i64 0}
!266 = !{!"branch_weights", i32 11852, i32 76151}
!267 = !{!"branch_weights", i32 23369, i32 64633}
!268 = distinct !{!268, !269}
!269 = !{!"llvm.loop.mustprogress"}
!270 = !{!220, !208, i64 128}
!271 = !{!272, !208, i64 16}
!272 = !{!"ipa_dfs_info", !224, i64 0, !224, i64 4, !209, i64 8, !209, i64 9, !208, i64 16, !208, i64 24}
!273 = !{!"branch_weights", i32 20124, i32 3246}
!274 = !{!"branch_weights", i32 1, i32 3246}
!275 = !{!"branch_weights", i32 1, i32 3245}
!276 = !{!"branch_weights", i32 1009, i32 20999}
!277 = !{!"branch_weights", i32 3245, i32 18762}
!278 = distinct !{!278, !269}
!279 = !{!"branch_weights", i32 3246, i32 0}
!280 = distinct !{!280, !269}
!281 = !{!"branch_weights", i32 16348, i32 7023}
!282 = !{!258, !208, i64 0}
!283 = !{!"branch_weights", i32 17887, i32 5484}
!284 = !{!258, !208, i64 8}
!285 = !{!"branch_weights", i32 1604, i32 1643}
!286 = !{!"branch_weights", i32 1680, i32 1567}
!287 = distinct !{!287, !269}
!288 = !{!"branch_weights", i32 0, i32 -2147483648}
!289 = !{!"branch_weights", i32 3246, i32 1}
!290 = distinct !{!290, !269}
!291 = !{!"branch_weights", i32 127, i32 1495553}
!292 = distinct !{!292, !269}
!293 = !{!"branch_weights", i32 360732161, i32 1786751487}
!294 = !{i8 0, i8 2}
!295 = distinct !{!295, !269}
!296 = distinct !{!296, !269}
!297 = distinct !{!297, !269}
!298 = distinct !{!298, !269}
!299 = distinct !{!299, !269}
!300 = distinct !{!300, !269}
!301 = distinct !{!301, !269}
!302 = distinct !{!302, !269}
!303 = !{!"branch_weights", i32 -2147483648, i32 0}
!304 = !{!"branch_weights", i32 20155, i32 3216}
!305 = !{!"branch_weights", i32 18915, i32 4456}
!306 = distinct !{!306, !269}
!307 = !{!"branch_weights", i32 1, i32 127}
!308 = !{!"branch_weights", i32 171, i32 26615}
!309 = !{!"branch_weights", i32 1, i32 26785}
!310 = !{!"branch_weights", i32 135, i32 26651}
!311 = !{!"branch_weights", i32 127, i32 1714113}
!312 = distinct !{!312, !269}
!313 = !{!"ipa-reference.c:generate_summary"}
!314 = !{!"branch_weights", i32 127, i32 90113}
!315 = distinct !{!315, !269}
!316 = !{!"branch_weights", i32 7206, i32 135}
!317 = !{!"branch_weights", i32 127, i32 469633}
!318 = distinct !{!318, !269}
!319 = !{!"branch_weights", i32 127, i32 66753}
!320 = distinct !{!320, !269}
!321 = !{!"branch_weights", i32 934, i32 1}
!322 = !{!"branch_weights", i32 127, i32 59649}
!323 = distinct !{!323, !269}
!324 = !{!"branch_weights", i32 180, i32 1}
!325 = !{!"branch_weights", i32 127, i32 11393}
!326 = distinct !{!326, !269}
!327 = distinct !{!327, !269}
!328 = !{!"branch_weights", i32 560, i32 6647}
!329 = !{!"branch_weights", i32 559, i32 6648}
!330 = distinct !{!330, !269}
!331 = !{!"branch_weights", i32 5, i32 1}
!332 = distinct !{!332, !269}
!333 = distinct !{!333, !269}
!334 = distinct !{!334, !269}
!335 = !{!"ipa-reference.c:ipa_reference_write_summary"}
!336 = !{i64 0, i64 8, !237, i64 8, i64 4, !247}
!337 = !{i64 0, i64 4, !247}
!338 = distinct !{!338, !269}
!339 = !{!340, !208, i64 16}
!340 = !{!"lto_simple_output_block", !224, i64 0, !208, i64 8, !208, i64 16}
!341 = !{!340, !208, i64 8}
!342 = !{!343, !208, i64 168}
!343 = !{!"lto_out_decl_state", !209, i64 0, !208, i64 168, !208, i64 176}
!344 = distinct !{!344, !269}
!345 = distinct !{!345, !269}
!346 = distinct !{!346, !269}
!347 = !{!"ipa-reference.c:ipa_reference_read_summary"}
!348 = !{!349, !208, i64 16}
!349 = !{!"lto_file_decl_data", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !224, i64 40, !208, i64 48, !208, i64 56}
!350 = distinct !{!350, !269}
!351 = distinct !{!351, !269}
!352 = distinct !{!352, !269}
!353 = !{!223, !223, i64 0}
!354 = distinct !{!354, !269}
!355 = !{!"function_entry_count", i64 12859}
!356 = !{!"ipa-reference.c:read_write_all_from_decl"}
!357 = !{!"branch_weights", i32 12656, i32 205}
!358 = !{!"branch_weights", i32 38923313, i32 107708032}
!359 = !{!"function_entry_count", i64 26614}
!360 = !{!"ipa-reference.c:propagate_bits"}
!361 = !{!"branch_weights", i32 1, i32 26614}
!362 = !{!"branch_weights", i32 97149, i32 12860}
!363 = !{!"branch_weights", i32 1, i32 97149}
!364 = !{!"branch_weights", i32 12702, i32 84448}
!365 = !{!"branch_weights", i32 69014, i32 15435}
!366 = !{!"branch_weights", i32 13133, i32 2303}
!367 = !{!"branch_weights", i32 1, i32 2303}
!368 = !{!"branch_weights", i32 67323, i32 17126}
!369 = !{!"branch_weights", i32 13432, i32 3695}
!370 = !{!"branch_weights", i32 1, i32 3695}
!371 = !{!"branch_weights", i32 26614, i32 83394}
!372 = distinct !{!372, !269}
!373 = !{!"function_entry_count", i64 6490}
!374 = !{!"ipa-reference.c:copy_global_bitmap"}
!375 = !{!"branch_weights", i32 1, i32 6491}
!376 = !{!"branch_weights", i32 5026, i32 1466}
!377 = !{!"function_entry_count", i64 3}
!378 = !{!"ipa-reference.c:bmp_iter_set_init"}
!379 = !{!380, !208, i64 0}
!380 = !{!"bitmap_head_def", !208, i64 0, !208, i64 8, !224, i64 16, !208, i64 24}
!381 = !{!382, !208, i64 0}
!382 = !{!"", !208, i64 0, !208, i64 8, !224, i64 16, !223, i64 24}
!383 = !{!382, !208, i64 8}
!384 = !{!"branch_weights", i32 1, i32 4}
!385 = !{!386, !224, i64 16}
!386 = !{!"bitmap_element_def", !208, i64 0, !208, i64 8, !224, i64 16, !209, i64 24}
!387 = !{!382, !224, i64 16}
!388 = !{!382, !223, i64 24}
!389 = !{!"function_entry_count", i64 2159}
!390 = !{!"ipa-reference.c:bmp_iter_set"}
!391 = !{!"branch_weights", i32 837, i32 1324}
!392 = !{!"branch_weights", i32 2156, i32 1}
!393 = !{!"branch_weights", i32 25863, i32 2156}
!394 = distinct !{!394, !269}
!395 = !{!"branch_weights", i32 1, i32 681}
!396 = !{!"branch_weights", i32 527, i32 834}
!397 = !{!"branch_weights", i32 681, i32 679}
!398 = distinct !{!398, !269}
!399 = !{!386, !208, i64 0}
!400 = !{!"branch_weights", i32 4, i32 679}
!401 = !{!"ipa-reference.c:get_static_name"}
!402 = !{!403, !208, i64 176}
!403 = !{!"lang_hooks", !208, i64 0, !223, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !208, i64 72, !208, i64 80, !208, i64 88, !208, i64 96, !208, i64 104, !208, i64 112, !208, i64 120, !208, i64 128, !208, i64 136, !208, i64 144, !208, i64 152, !208, i64 160, !208, i64 168, !208, i64 176, !208, i64 184, !208, i64 192, !208, i64 200, !208, i64 208, !208, i64 216, !208, i64 224, !208, i64 232, !404, i64 240, !405, i64 248, !406, i64 256, !407, i64 272, !408, i64 432, !409, i64 560, !208, i64 584, !208, i64 592, !208, i64 600, !208, i64 608, !208, i64 616, !208, i64 624, !208, i64 632, !208, i64 640, !208, i64 648, !208, i64 656, !208, i64 664, !209, i64 672}
!404 = !{!"lang_hooks_for_tree_inlining", !208, i64 0}
!405 = !{!"lang_hooks_for_callgraph", !208, i64 0}
!406 = !{!"lang_hooks_for_tree_dump", !208, i64 0, !208, i64 8}
!407 = !{!"lang_hooks_for_decls", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !208, i64 72, !208, i64 80, !208, i64 88, !208, i64 96, !208, i64 104, !208, i64 112, !208, i64 120, !208, i64 128, !208, i64 136, !208, i64 144, !208, i64 152}
!408 = !{!"lang_hooks_for_types", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !208, i64 72, !208, i64 80, !208, i64 88, !208, i64 96, !208, i64 104, !208, i64 112, !209, i64 120}
!409 = !{!"lang_hooks_for_lto", !208, i64 0, !208, i64 8, !208, i64 16}
!410 = !{!411, !223, i64 8}
!411 = !{!"splay_tree_node_s", !223, i64 0, !223, i64 8, !208, i64 16, !208, i64 24}
!412 = !{!"function_entry_count", i64 2156}
!413 = !{!"ipa-reference.c:bmp_iter_next"}
!414 = !{!"function_entry_count", i64 20303}
!415 = !{!"ipa-reference.c:clean_function"}
!416 = !{!"branch_weights", i32 342, i32 19963}
!417 = !{!"branch_weights", i32 343503342, i32 55057954}
!418 = !{!"branch_weights", i32 322841637, i32 75719659}
!419 = !{!"branch_weights", i32 45946047, i32 299670721}
!420 = !{!"function_entry_count", i64 46953}
!421 = !{!"ipa-reference.c:clean_function_local_data"}
!422 = !{!"branch_weights", i32 19999, i32 26956}
!423 = !{!"branch_weights", i32 40811889, i32 642521104}
!424 = !{!"branch_weights", i32 40764407, i32 642622500}
!425 = !{!"function_entry_count", i64 47258}
!426 = !{!"ipa-reference.c:set_reference_vars_info"}
!427 = !{!"branch_weights", i32 2, i32 47258}
!428 = !{!"branch_weights", i32 29651, i32 17608}
!429 = !{!"function_entry_count", i64 17608}
!430 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared"}
!431 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_replace"}
!432 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_heap_safe_grow"}
!433 = !{!"branch_weights", i32 2, i32 17608}
!434 = !{}
!435 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_address"}
!436 = !{!"branch_weights", i32 1, i32 17609}
!437 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_heap_reserve_exact"}
!438 = !{i32 0, i32 2}
!439 = !{!"branch_weights", i32 17609, i32 1}
!440 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_space"}
!441 = !{!234, !224, i64 4}
!442 = !{!"ipa-reference.c:ipa_init"}
!443 = !{!"branch_weights", i32 1, i32 2}
!444 = !{!"ipa-reference.c:varpool_first_static_initializer"}
!445 = !{!446, !208, i64 0}
!446 = !{!"varpool_node", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !224, i64 32, !224, i64 36, !224, i64 36, !224, i64 36, !224, i64 36, !224, i64 36, !224, i64 36, !224, i64 36}
!447 = !{!"branch_weights", i32 127, i32 129}
!448 = distinct !{!448, !269}
!449 = !{!"function_entry_count", i64 1409}
!450 = !{!"ipa-reference.c:analyze_variable"}
!451 = !{!452, !208, i64 32}
!452 = !{!"walk_stmt_info", !453, i64 0, !208, i64 24, !208, i64 32, !209, i64 40, !209, i64 41, !209, i64 42, !209, i64 43, !208, i64 48}
!453 = !{!"", !208, i64 0, !208, i64 8, !208, i64 16}
!454 = !{!"ipa-reference.c:varpool_next_static_initializer"}
!455 = !{!446, !208, i64 16}
!456 = !{!"branch_weights", i32 2, i32 2926}
!457 = !{!"branch_weights", i32 2926, i32 1}
!458 = !{!"branch_weights", i32 1518, i32 1409}
!459 = distinct !{!459, !269}
!460 = !{!"function_entry_count", i64 7205}
!461 = !{!"ipa-reference.c:analyze_function"}
!462 = !{!"branch_weights", i32 7206, i32 1}
!463 = !{!464, !208, i64 8}
!464 = !{!"function", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !208, i64 72, !208, i64 80, !208, i64 88, !208, i64 96, !224, i64 104, !224, i64 108, !224, i64 112, !224, i64 116, !224, i64 120, !224, i64 124, !208, i64 128, !224, i64 136, !224, i64 137, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 138, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139, !224, i64 139}
!465 = !{!466, !208, i64 0}
!466 = !{!"control_flow_graph", !208, i64 0, !208, i64 8, !208, i64 16, !224, i64 24, !224, i64 28, !224, i64 32, !208, i64 40, !224, i64 48, !209, i64 52, !209, i64 60, !224, i64 68, !224, i64 72}
!467 = !{!468, !208, i64 56}
!468 = !{!"basic_block_def", !208, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !209, i64 32, !208, i64 48, !208, i64 56, !209, i64 64, !223, i64 72, !224, i64 80, !224, i64 84, !224, i64 88, !224, i64 92, !224, i64 96}
!469 = !{!466, !208, i64 8}
!470 = !{!"branch_weights", i32 1, i32 7205}
!471 = !{!"branch_weights", i32 62538, i32 114677}
!472 = !{!"branch_weights", i32 62537, i32 1}
!473 = !{!"branch_weights", i32 1468, i32 113082}
!474 = !{!"branch_weights", i32 52012, i32 62537}
!475 = distinct !{!475, !269}
!476 = !{!"branch_weights", i32 0, i32 62538}
!477 = distinct !{!477, !269}
!478 = !{i64 0, i64 8, !237, i64 8, i64 8, !237, i64 16, i64 8, !237}
!479 = !{!"branch_weights", i32 177214, i32 1}
!480 = !{!"branch_weights", i32 348908, i32 177214}
!481 = distinct !{!481, !269}
!482 = !{!"branch_weights", i32 7205, i32 170010}
!483 = distinct !{!483, !269}
!484 = !{!"branch_weights", i32 8, i32 7199}
!485 = !{!"branch_weights", i32 6648, i32 559}
!486 = !{!"branch_weights", i32 6647, i32 560}
!487 = !{!"function_entry_count", i64 1112}
!488 = !{!"ipa-reference.c:get_static_decl"}
!489 = !{!"branch_weights", i32 1, i32 1113}
!490 = !{!"ipa-reference.c:add_new_function"}
!491 = !{!"ipa-reference.c:remove_node_data"}
!492 = !{!"branch_weights", i32 1, i32 20304}
!493 = !{!"function_entry_count", i64 19750}
!494 = !{!"ipa-reference.c:duplicate_node_data"}
!495 = !{!"branch_weights", i32 1, i32 19751}
!496 = !{!"branch_weights", i32 2147442878, i32 40770}
!497 = !{!"function_entry_count", i64 39500}
!498 = !{!"ipa-reference.c:get_local_reference_vars_info"}
!499 = !{!"branch_weights", i32 1, i32 39501}
!500 = !{!"function_entry_count", i64 26955}
!501 = !{!"ipa-reference.c:init_function_info"}
!502 = !{!"ipa-reference.c:copy_local_bitmap"}
!503 = !{!"branch_weights", i32 2098, i32 37404}
!504 = !{!"branch_weights", i32 1, i32 37404}
!505 = !{!"function_entry_count", i64 48052}
!506 = !{!"ipa-reference.c:scan_initializer_for_static_refs"}
!507 = !{!"branch_weights", i32 17126, i32 30928}
!508 = !{!"branch_weights", i32 61857, i32 956541184}
!509 = !{!"function_entry_count", i64 36735}
!510 = !{!"ipa-reference.c:mark_address_taken"}
!511 = !{!"branch_weights", i32 61779600, i32 227009957}
!512 = !{!"branch_weights", i32 4576, i32 3285}
!513 = !{!"function_entry_count", i64 82040}
!514 = !{!"ipa-reference.c:has_proper_scope_for_analysis"}
!515 = !{!"branch_weights", i32 82041, i32 1}
!516 = !{!"branch_weights", i32 82033, i32 9}
!517 = !{!"branch_weights", i32 1001560601, i32 -264173136}
!518 = !{!"branch_weights", i32 16327, i32 1}
!519 = !{!"branch_weights", i32 1978, i32 14350}
!520 = !{!"function_entry_count", i64 1977}
!521 = !{!"ipa-reference.c:add_static_var"}
!522 = !{!"branch_weights", i32 1978, i32 1}
!523 = !{!"function_entry_count", i64 943086}
!524 = !{!"ipa-reference.c:gsi_end_p"}
!525 = !{!453, !208, i64 0}
!526 = !{!"function_entry_count", i64 588658}
!527 = !{!"ipa-reference.c:gsi_stmt"}
!528 = !{!529, !208, i64 0}
!529 = !{!"gimple_seq_node_d", !208, i64 0, !208, i64 8, !208, i64 16}
!530 = !{!"function_entry_count", i64 62537}
!531 = !{!"ipa-reference.c:op_iter_init_phiuse"}
!532 = !{!533, !209, i64 0}
!533 = !{!"ssa_operand_iterator_d", !209, i64 0, !224, i64 4, !208, i64 8, !208, i64 16, !224, i64 24, !224, i64 28, !208, i64 32}
!534 = !{!"branch_weights", i32 28126, i32 34413}
!535 = !{!533, !208, i64 32}
!536 = !{!533, !224, i64 28}
!537 = !{!533, !224, i64 4}
!538 = !{!"function_entry_count", i64 177085}
!539 = !{!"ipa-reference.c:op_iter_done"}
!540 = !{!"function_entry_count", i64 114548}
!541 = !{!"ipa-reference.c:get_use_from_ptr"}
!542 = !{!543, !208, i64 24}
!543 = !{!"ssa_use_operand_d", !208, i64 0, !208, i64 8, !209, i64 16, !208, i64 24}
!544 = !{!"function_entry_count", i64 148960}
!545 = !{!"ipa-reference.c:op_iter_next_use"}
!546 = !{!533, !208, i64 16}
!547 = !{!"branch_weights", i32 148961, i32 1}
!548 = !{!549, !208, i64 0}
!549 = !{!"use_optype_d", !208, i64 0, !543, i64 8}
!550 = !{!533, !224, i64 24}
!551 = !{!"branch_weights", i32 114549, i32 34413}
!552 = !{!"ipa-reference.c:gsi_next"}
!553 = !{!529, !208, i64 16}
!554 = !{!"function_entry_count", i64 177214}
!555 = !{!"ipa-reference.c:gsi_start_bb"}
!556 = !{!453, !208, i64 8}
!557 = !{!453, !208, i64 16}
!558 = !{!"function_entry_count", i64 526121}
!559 = !{!"ipa-reference.c:scan_stmt_for_static_refs"}
!560 = !{!"branch_weights", i32 526122, i32 1}
!561 = !{!"branch_weights", i32 1, i32 526122}
!562 = !{!"branch_weights", i32 453862, i32 72261}
!563 = !{i32 0, i32 256}
!564 = !{!"branch_weights", i32 1, i32 453862}
!565 = !{!"ipa-reference.c:gimple_phi_result"}
!566 = !{!"ipa-reference.c:clear_and_done_ssa_iter"}
!567 = !{!"function_entry_count", i64 34412}
!568 = !{!"ipa-reference.c:gimple_phi_num_args"}
!569 = !{!"ipa-reference.c:gimple_phi_arg_imm_use_ptr"}
!570 = !{!"ipa-reference.c:gimple_phi_arg"}
!571 = !{!"branch_weights", i32 1, i32 114549}
!572 = !{!"ipa-reference.c:bb_seq"}
!573 = !{!468, !224, i64 96}
!574 = !{!"branch_weights", i32 177215, i32 1}
!575 = !{!"branch_weights", i32 1, i32 177215}
!576 = !{!577, !208, i64 0}
!577 = !{!"gimple_bb_info", !208, i64 0, !208, i64 8}
!578 = !{!"ipa-reference.c:gimple_seq_first"}
!579 = !{!580, !208, i64 0}
!580 = !{!"gimple_seq_d", !208, i64 0, !208, i64 8, !208, i64 16}
!581 = !{!"ipa-reference.c:is_gimple_debug"}
!582 = !{!"function_entry_count", i64 187783}
!583 = !{!"ipa-reference.c:mark_load"}
!584 = !{!"branch_weights", i32 59971, i32 127814}
!585 = !{!"branch_weights", i32 50099, i32 9873}
!586 = !{!"function_entry_count", i64 31010}
!587 = !{!"ipa-reference.c:mark_store"}
!588 = !{!"branch_weights", i32 14212, i32 16800}
!589 = !{!"branch_weights", i32 11042, i32 3171}
!590 = !{!"branch_weights", i32 1, i32 3171}
!591 = !{!"function_entry_count", i64 18143}
!592 = !{!"ipa-reference.c:mark_address"}
!593 = !{!"branch_weights", i32 1, i32 18143}
!594 = !{!"branch_weights", i32 18143, i32 2274}
!595 = distinct !{!595, !269}
!596 = !{!"ipa-reference.c:is_gimple_call"}
!597 = !{!"function_entry_count", i64 72260}
!598 = !{!"ipa-reference.c:check_call"}
!599 = !{!"branch_weights", i32 3467044, i32 131157062}
!600 = !{!"branch_weights", i32 3725, i32 3467044}
!601 = !{!"function_entry_count", i64 1722883}
!602 = !{!"ipa-reference.c:gimple_code"}
!603 = !{!"ipa-reference.c:check_asm_memory_clobber"}
!604 = distinct !{!604, !269}
!605 = !{!"function_entry_count", i64 38559}
!606 = !{!"ipa-reference.c:handled_component_p"}
!607 = !{!"branch_weights", i32 18144, i32 1, i32 8551, i32 11867, i32 1, i32 1, i32 1, i32 1}
!608 = !{!"ipa-reference.c:gimple_call_fndecl"}
!609 = !{!"branch_weights", i32 70400, i32 1862}
!610 = !{!"ipa-reference.c:gimple_call_fn"}
!611 = !{!"ipa-reference.c:gimple_op"}
!612 = !{!"branch_weights", i32 1, i32 72261}
!613 = !{!"ipa-reference.c:gimple_has_ops"}
!614 = !{!"ipa-reference.c:gimple_ops"}
!615 = !{!"ipa-reference.c:gimple_statement_structure"}
!616 = !{!"ipa-reference.c:gss_for_code"}
!617 = !{!"ipa-reference.c:gimple_asm_nclobbers"}
!618 = !{!"ipa-reference.c:gimple_asm_clobber_op"}
!619 = !{!"ipa-reference.c:csi_start"}
!620 = !{!"ipa-reference.c:csi_end_p"}
!621 = !{!622, !208, i64 8}
!622 = !{!"cgraph_node_set_def", !208, i64 0, !208, i64 8, !208, i64 16}
!623 = !{!"ipa-reference.c:write_node_summary_p"}
!624 = !{!220, !208, i64 200}
!625 = !{!"ipa-reference.c:csi_node"}
!626 = !{!"ipa-reference.c:csi_next"}
!627 = !{!628, !224, i64 8}
!628 = !{!"", !208, i64 0, !224, i64 8}
!629 = !{!"ipa-reference.c:VEC_cgraph_node_ptr_base_length"}
!630 = !{!631, !224, i64 0}
!631 = !{!"VEC_cgraph_node_ptr_base", !224, i64 0, !224, i64 4, !209, i64 8}
!632 = !{!"ipa-reference.c:VEC_cgraph_node_ptr_base_index"}
!633 = !{!"ipa-reference.c:lto_file_decl_data_get_var_decl"}
!634 = !{!349, !208, i64 0}
!635 = !{!636, !224, i64 8}
!636 = !{!"lto_tree_ref_table", !208, i64 0, !224, i64 8}
!637 = !{!636, !208, i64 0}
