; ModuleID = 'ipa-reference.c'
source_filename = "ipa-reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
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
%struct.ipa_reference_vars_info_d = type { ptr, ptr }
%struct.ipa_reference_global_vars_info_d = type { ptr, ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.ipa_reference_local_vars_info_d = type { ptr, ptr, i8, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
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
%struct.VEC_ipa_reference_vars_info_t_base = type { i32, i32, [1 x ptr] }
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

@.str = private unnamed_addr constant [11 x i8] c"static-var\00", align 1
@pass_ipa_reference = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_reference, ptr @propagate, ptr null, ptr null, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @generate_summary, ptr @ipa_reference_write_summary, ptr @ipa_reference_read_summary, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@reference_vars_to_consider = internal global ptr null, align 8
@gt_ggc_r_gt_ipa_reference_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @reference_vars_to_consider, i64 1, i64 8, ptr @gt_ggc_m_IP9tree_node12splay_tree_s, ptr @gt_pch_n_IP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16
@memory_identifier_string = dso_local local_unnamed_addr global ptr null, align 8
@ipa_reference_vars_vector = internal unnamed_addr global ptr null, align 8
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !192 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !193
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_global_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !198 !PGOFuncName !199 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !200

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !192 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !192 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !192 {
  %2 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_reference() #0 !prof !206 !PGOFuncName !207 {
  %1 = load i32, ptr @flag_ipa_reference, align 4, !tbaa !208
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !210

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !208
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !212

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !208
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @propagate() #2 !prof !213 !PGOFuncName !214 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !208
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #16
  %8 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null) #16
  %9 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !211
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %9) #16
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !215

12:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %10) #16
  br label %13

13:                                               ; preds = %12, %0
  %14 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #16
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !215

17:                                               ; preds = %13
  tail call void @ipa_utils_print_order(ptr noundef nonnull %15, ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %14) #16
  br label %18

18:                                               ; preds = %17, %13
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %361, !prof !216

20:                                               ; preds = %18
  %21 = zext nneg i32 %14 to i64
  br label %22

22:                                               ; preds = %20, %184
  %23 = phi i64 [ 0, %20 ], [ %185, %184 ]
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #17
  %25 = getelementptr inbounds ptr, ptr %7, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !211
  %27 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %26) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32, !prof !217

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !tbaa !211
  tail call void @dump_cgraph_node(ptr noundef %30, ptr noundef %26) #16
  %31 = load ptr, ptr @stderr, align 8, !tbaa !211
  tail call void @dump_cgraph(ptr noundef %31) #16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1245, ptr noundef nonnull @.str.3) #16
  br label %32

32:                                               ; preds = %29, %22
  %33 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !201
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !218

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1248, ptr noundef nonnull @.str.3) #16
  br label %37

37:                                               ; preds = %32, %36
  %38 = load ptr, ptr %27, align 8, !tbaa !219
  %39 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !220
  store i8 %40, ptr %1, align 1, !tbaa !222
  %41 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !223
  store i8 %42, ptr %2, align 1, !tbaa !222
  %43 = tail call i32 @cgraph_function_body_availability(ptr noundef %26) #16
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %47, !prof !217

45:                                               ; preds = %37
  %46 = load ptr, ptr %26, align 8, !tbaa !224
  call fastcc void @read_write_all_from_decl(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !211
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51, !prof !233

51:                                               ; preds = %47, %60
  %52 = phi ptr [ %62, %60 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !234
  %55 = tail call i32 @cgraph_function_body_availability(ptr noundef %54) #16
  %56 = icmp ult i32 %55, 3
  br i1 %56, label %57, label %60, !prof !237

57:                                               ; preds = %51
  %58 = load ptr, ptr %53, align 8, !tbaa !234
  %59 = load ptr, ptr %58, align 8, !tbaa !224
  call fastcc void @read_write_all_from_decl(ptr noundef %59, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %60

60:                                               ; preds = %51, %57
  %61 = getelementptr inbounds %struct.cgraph_edge, ptr %52, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !211
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %51, !prof !238, !llvm.loop !239

64:                                               ; preds = %60, %47
  %65 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !241
  %67 = getelementptr inbounds %struct.ipa_dfs_info, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !242
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !244

70:                                               ; preds = %64
  %71 = load i8, ptr %1, align 1, !tbaa !222
  br label %111

72:                                               ; preds = %64, %97
  %73 = phi ptr [ %109, %97 ], [ %68, %64 ]
  %74 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %73) #15
  %75 = load ptr, ptr %74, align 8, !tbaa !219
  %76 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %73) #16
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load ptr, ptr %73, align 8, !tbaa !224
  call fastcc void @read_write_all_from_decl(ptr noundef %79, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %80

80:                                               ; preds = %78, %72
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !211
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %80, %93
  %85 = phi ptr [ %95, %93 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !234
  %88 = tail call i32 @cgraph_function_body_availability(ptr noundef %87) #16
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load ptr, ptr %86, align 8, !tbaa !234
  %92 = load ptr, ptr %91, align 8, !tbaa !224
  call fastcc void @read_write_all_from_decl(ptr noundef %92, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %93

93:                                               ; preds = %84, %90
  %94 = getelementptr inbounds %struct.cgraph_edge, ptr %85, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !211
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %84, !llvm.loop !245

97:                                               ; preds = %93, %80
  %98 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %75, i64 0, i32 2
  %99 = load i8, ptr %98, align 8, !tbaa !220
  %100 = load i8, ptr %1, align 1, !tbaa !222
  %101 = or i8 %100, %99
  store i8 %101, ptr %1, align 1, !tbaa !222
  %102 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %75, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !223
  %104 = load i8, ptr %2, align 1, !tbaa !222
  %105 = or i8 %104, %103
  store i8 %105, ptr %2, align 1, !tbaa !222
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %73, i64 0, i32 16
  %107 = load ptr, ptr %106, align 8, !tbaa !241
  %108 = getelementptr inbounds %struct.ipa_dfs_info, ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !242
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %72, !prof !246, !llvm.loop !247

111:                                              ; preds = %97, %70
  %112 = phi i8 [ %71, %70 ], [ %101, %97 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114, !prof !217

114:                                              ; preds = %111
  %115 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  store ptr %115, ptr %24, align 8, !tbaa !193
  br label %119

116:                                              ; preds = %111
  %117 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %117, ptr %24, align 8, !tbaa !193
  %118 = load ptr, ptr %38, align 8, !tbaa !248
  tail call void @bitmap_copy(ptr noundef %117, ptr noundef %118) #16
  br label %119

119:                                              ; preds = %116, %114
  %120 = load i8, ptr %2, align 1, !tbaa !222
  %121 = icmp eq i8 %120, 0
  %122 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br i1 %121, label %125, label %123, !prof !217

123:                                              ; preds = %119
  %124 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  store ptr %124, ptr %122, align 8, !tbaa !203
  br label %129

125:                                              ; preds = %119
  %126 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %126, ptr %122, align 8, !tbaa !203
  %127 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !249
  tail call void @bitmap_copy(ptr noundef %126, ptr noundef %128) #16
  br label %129

129:                                              ; preds = %125, %123
  tail call fastcc void @propagate_bits(ptr noundef nonnull %24, ptr noundef %26) #15
  %130 = load ptr, ptr %65, align 8, !tbaa !241
  %131 = getelementptr inbounds %struct.ipa_dfs_info, ptr %130, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !242
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135, !prof !244

134:                                              ; preds = %129
  store ptr %24, ptr %33, align 8, !tbaa !201
  br label %184

135:                                              ; preds = %129, %150
  %136 = phi ptr [ %154, %150 ], [ %132, %129 ]
  %137 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %136) #15
  %138 = load ptr, ptr %137, align 8, !tbaa !219
  br i1 %113, label %139, label %143

139:                                              ; preds = %135
  %140 = load ptr, ptr %24, align 8, !tbaa !193
  %141 = load ptr, ptr %138, align 8, !tbaa !248
  %142 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %140, ptr noundef %141) #16
  br label %143

143:                                              ; preds = %139, %135
  br i1 %121, label %144, label %150

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !203
  %147 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !249
  %149 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %146, ptr noundef %148) #16
  br label %150

150:                                              ; preds = %144, %143
  tail call fastcc void @propagate_bits(ptr noundef %24, ptr noundef nonnull %136) #15
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %136, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !241
  %153 = getelementptr inbounds %struct.ipa_dfs_info, ptr %152, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !242
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %135, !prof !246, !llvm.loop !250

156:                                              ; preds = %150
  %157 = load ptr, ptr %65, align 8, !tbaa !241
  %158 = getelementptr inbounds %struct.ipa_dfs_info, ptr %157, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !242
  store ptr %24, ptr %33, align 8, !tbaa !201
  %160 = icmp eq ptr %159, null
  br i1 %160, label %184, label %161, !prof !251

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %24, i64 0, i32 1
  br label %163

163:                                              ; preds = %161, %170
  %164 = phi ptr [ %159, %161 ], [ %182, %170 ]
  %165 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %164) #15
  %166 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !201
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1339, ptr noundef nonnull @.str.3) #16
  br label %170

170:                                              ; preds = %163, %169
  %171 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  store ptr %171, ptr %166, align 8, !tbaa !201
  %172 = load ptr, ptr %24, align 8, !tbaa !193
  %173 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %172) #15
  %174 = load ptr, ptr %166, align 8, !tbaa !201
  store ptr %173, ptr %174, align 8, !tbaa !193
  %175 = load ptr, ptr %162, align 8, !tbaa !203
  %176 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %175) #15
  %177 = load ptr, ptr %166, align 8, !tbaa !201
  %178 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %177, i64 0, i32 1
  store ptr %176, ptr %178, align 8, !tbaa !203
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %164, i64 0, i32 16
  %180 = load ptr, ptr %179, align 8, !tbaa !241
  %181 = getelementptr inbounds %struct.ipa_dfs_info, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !242
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %163, !prof !246, !llvm.loop !252

184:                                              ; preds = %170, %134, %156
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #17
  %185 = add nuw nsw i64 %23, 1
  %186 = icmp eq i64 %185, %21
  br i1 %186, label %187, label %22, !prof !253, !llvm.loop !254

187:                                              ; preds = %184
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %189 = icmp ne ptr %188, null
  %190 = and i1 %189, %19
  br i1 %190, label %191, label %329, !prof !255

191:                                              ; preds = %187
  %192 = zext nneg i32 %14 to i64
  br label %193

193:                                              ; preds = %191, %326
  %194 = phi i64 [ 0, %191 ], [ %327, %326 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %195 = getelementptr inbounds ptr, ptr %7, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !211
  %197 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %196) #15
  %198 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !201
  %200 = load ptr, ptr %197, align 8, !tbaa !219
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %202 = tail call ptr @cgraph_node_name(ptr noundef %196) #16
  %203 = getelementptr inbounds %struct.cgraph_node, ptr %196, i64 0, i32 24
  %204 = load i32, ptr %203, align 8, !tbaa !256
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.4, ptr noundef %202, i32 noundef %204) #15
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %207 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %206)
  %208 = load ptr, ptr %200, align 8, !tbaa !248
  %209 = icmp eq ptr %208, null
  br i1 %209, label %220, label %210

210:                                              ; preds = %193
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %208, ptr noundef nonnull %3) #15
  %211 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %210, %213
  %214 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %215 = load i32, ptr %3, align 4, !tbaa !208
  %216 = tail call fastcc ptr @get_static_name(i32 noundef %215) #15
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.6, ptr noundef %216) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %218 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %213, !llvm.loop !258

220:                                              ; preds = %213, %210, %193
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %222 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %221)
  %223 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %200, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !249
  %225 = icmp eq ptr %224, null
  br i1 %225, label %236, label %226

226:                                              ; preds = %220
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %224, ptr noundef nonnull %3) #15
  %227 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226, %229
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %231 = load i32, ptr %3, align 4, !tbaa !208
  %232 = tail call fastcc ptr @get_static_name(i32 noundef %231) #15
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.6, ptr noundef %232) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %234 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %229, !llvm.loop !259

236:                                              ; preds = %229, %226, %220
  %237 = getelementptr inbounds %struct.cgraph_node, ptr %196, i64 0, i32 16
  %238 = load ptr, ptr %237, align 8, !tbaa !241
  %239 = getelementptr inbounds %struct.ipa_dfs_info, ptr %238, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !242
  %241 = icmp eq ptr %240, null
  br i1 %241, label %287, label %242

242:                                              ; preds = %236, %281
  %243 = phi ptr [ %285, %281 ], [ %240, %236 ]
  %244 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %243) #15
  %245 = load ptr, ptr %244, align 8, !tbaa !219
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %247 = tail call ptr @cgraph_node_name(ptr noundef nonnull %243) #16
  %248 = getelementptr inbounds %struct.cgraph_node, ptr %243, i64 0, i32 24
  %249 = load i32, ptr %248, align 8, !tbaa !256
  %250 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.8, ptr noundef %247, i32 noundef %249) #15
  %251 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %252 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %251)
  %253 = load ptr, ptr %245, align 8, !tbaa !248
  %254 = icmp eq ptr %253, null
  br i1 %254, label %265, label %255

255:                                              ; preds = %242
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %253, ptr noundef nonnull %3) #15
  %256 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %255, %258
  %259 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %260 = load i32, ptr %3, align 4, !tbaa !208
  %261 = tail call fastcc ptr @get_static_name(i32 noundef %260) #15
  %262 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.6, ptr noundef %261) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %263 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %258, !llvm.loop !260

265:                                              ; preds = %258, %255, %242
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %267 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 21, i64 1, ptr %266)
  %268 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %245, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !249
  %270 = icmp eq ptr %269, null
  br i1 %270, label %281, label %271

271:                                              ; preds = %265
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %269, ptr noundef nonnull %3) #15
  %272 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %271, %274
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %276 = load i32, ptr %3, align 4, !tbaa !208
  %277 = tail call fastcc ptr @get_static_name(i32 noundef %276) #15
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.6, ptr noundef %277) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %279 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %274, !llvm.loop !261

281:                                              ; preds = %274, %271, %265
  %282 = getelementptr inbounds %struct.cgraph_node, ptr %243, i64 0, i32 16
  %283 = load ptr, ptr %282, align 8, !tbaa !241
  %284 = getelementptr inbounds %struct.ipa_dfs_info, ptr %283, i64 0, i32 4
  %285 = load ptr, ptr %284, align 8, !tbaa !242
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %242, !llvm.loop !262

287:                                              ; preds = %281, %236
  %288 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %289 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr %288)
  %290 = load ptr, ptr %199, align 8, !tbaa !193
  %291 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %292 = icmp eq ptr %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %287
  %294 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %295 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %294)
  br label %306

296:                                              ; preds = %287
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %290, ptr noundef nonnull %3) #15
  %297 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %296, %299
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %301 = load i32, ptr %3, align 4, !tbaa !208
  %302 = tail call fastcc ptr @get_static_name(i32 noundef %301) #15
  %303 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef nonnull @.str.6, ptr noundef %302) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %304 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %299, !llvm.loop !263

306:                                              ; preds = %299, %296, %293
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %308 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %307)
  %309 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %199, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !203
  %311 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %312 = icmp eq ptr %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %306
  %314 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %315 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %314)
  br label %326

316:                                              ; preds = %306
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %310, ptr noundef nonnull %3) #15
  %317 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %316, %319
  %320 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %321 = load i32, ptr %3, align 4, !tbaa !208
  %322 = tail call fastcc ptr @get_static_name(i32 noundef %321) #15
  %323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef nonnull @.str.6, ptr noundef %322) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %324 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %319, !llvm.loop !264

326:                                              ; preds = %319, %316, %313
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %327 = add nuw nsw i64 %194, 1
  %328 = icmp eq i64 %327, %192
  br i1 %328, label %329, label %193, !llvm.loop !265

329:                                              ; preds = %326, %187
  br i1 %19, label %330, label %361, !prof !266

330:                                              ; preds = %329
  %331 = zext nneg i32 %14 to i64
  br label %332

332:                                              ; preds = %330, %358
  %333 = phi i64 [ 0, %330 ], [ %359, %358 ]
  %334 = getelementptr inbounds ptr, ptr %7, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !211
  %336 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %335) #15
  %337 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !201
  %339 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  %340 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %338, i64 0, i32 2
  store ptr %339, ptr %340, align 8, !tbaa !204
  %341 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  %342 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %338, i64 0, i32 3
  store ptr %341, ptr %342, align 8, !tbaa !205
  %343 = load ptr, ptr %338, align 8, !tbaa !193
  %344 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %345 = icmp eq ptr %343, %344
  br i1 %345, label %350, label %346, !prof !218

346:                                              ; preds = %332
  %347 = load ptr, ptr %340, align 8, !tbaa !204
  %348 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %347, ptr noundef %344, ptr noundef %343) #16
  %349 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  br label %350

350:                                              ; preds = %346, %332
  %351 = phi ptr [ %349, %346 ], [ %343, %332 ]
  %352 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %338, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !203
  %354 = icmp eq ptr %353, %351
  br i1 %354, label %358, label %355, !prof !218

355:                                              ; preds = %350
  %356 = load ptr, ptr %342, align 8, !tbaa !205
  %357 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %356, ptr noundef %351, ptr noundef %353) #16
  br label %358

358:                                              ; preds = %355, %350
  %359 = add nuw nsw i64 %333, 1
  %360 = icmp eq i64 %359, %331
  br i1 %360, label %361, label %332, !prof !253, !llvm.loop !267

361:                                              ; preds = %358, %18, %329
  tail call void @free(ptr noundef %7) #15
  %362 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !211
  %363 = icmp eq ptr %362, null
  br i1 %363, label %382, label %364, !prof !268

364:                                              ; preds = %361, %378
  %365 = phi ptr [ %380, %378 ], [ %362, %361 ]
  %366 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %365) #15
  %367 = getelementptr inbounds %struct.cgraph_node, ptr %365, i64 0, i32 16
  %368 = load ptr, ptr %367, align 8, !tbaa !241
  %369 = icmp eq ptr %368, null
  br i1 %369, label %371, label %370, !prof !269

370:                                              ; preds = %364
  tail call void @free(ptr noundef nonnull %368) #15
  store ptr null, ptr %367, align 8, !tbaa !241
  br label %371

371:                                              ; preds = %370, %364
  %372 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %365) #16
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %374, label %375, !prof !270

374:                                              ; preds = %371
  tail call fastcc void @clean_function(ptr noundef nonnull %365) #15
  br label %378

375:                                              ; preds = %371
  %376 = icmp eq ptr %366, null
  br i1 %376, label %378, label %377, !prof !269

377:                                              ; preds = %375
  tail call fastcc void @clean_function_local_data(ptr noundef nonnull %365) #15
  br label %378

378:                                              ; preds = %375, %377, %374
  %379 = getelementptr inbounds %struct.cgraph_node, ptr %365, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !211
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %364, !prof !271, !llvm.loop !272

382:                                              ; preds = %378, %361
  tail call void @bitmap_obstack_release(ptr noundef nonnull @local_info_obstack) #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @generate_summary() #2 !prof !213 !PGOFuncName !273 {
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
  br i1 %8, label %9, label %12, !prof !268

9:                                                ; preds = %12, %0
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !211
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %16, !prof !268

12:                                               ; preds = %0, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %0 ]
  tail call fastcc void @analyze_variable(ptr noundef nonnull %13) #15
  %14 = tail call fastcc ptr @varpool_next_static_initializer(ptr noundef nonnull %13) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %9, label %12, !prof !274, !llvm.loop !275

16:                                               ; preds = %9, %21
  %17 = phi ptr [ %23, %21 ], [ %10, %9 ]
  %18 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %17) #16
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %21, !prof !276

20:                                               ; preds = %16
  tail call fastcc void @analyze_function(ptr noundef nonnull %17) #15
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !211
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !prof !277, !llvm.loop !278

25:                                               ; preds = %21, %9
  %26 = load ptr, ptr @visited_nodes, align 8, !tbaa !211
  tail call void @pointer_set_destroy(ptr noundef %26) #16
  store ptr null, ptr @visited_nodes, align 8, !tbaa !211
  %27 = load ptr, ptr @module_statics_escape, align 8, !tbaa !211
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %27, ptr noundef nonnull %1) #15
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30, !prof !268

30:                                               ; preds = %25, %30
  %31 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !211
  %32 = load i32, ptr %1, align 4, !tbaa !208
  %33 = zext i32 %32 to i64
  tail call void @splay_tree_remove(ptr noundef %31, i64 noundef %33) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %30, !prof !279, !llvm.loop !280

36:                                               ; preds = %30
  %37 = load ptr, ptr @module_statics_escape, align 8, !tbaa !211
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi ptr [ %37, %36 ], [ %27, %25 ]
  %40 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %41 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %40, ptr noundef %39) #16
  %42 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %43 = load ptr, ptr @module_statics_written, align 8, !tbaa !211
  %44 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %5, ptr noundef %42, ptr noundef %43) #16
  %45 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %45, ptr noundef nonnull %1) #15
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %48, !prof !281

48:                                               ; preds = %38, %58
  %49 = load i32, ptr %1, align 4, !tbaa !208
  %50 = tail call fastcc ptr @get_static_decl(i32 noundef %49) #15
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, -262145
  store i64 %52, ptr %50, align 8
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = tail call fastcc ptr @get_static_name(i32 noundef %49) #15
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.14, ptr noundef %56) #15
  br label %58

58:                                               ; preds = %55, %48
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %59 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %48, !prof !246, !llvm.loop !282

61:                                               ; preds = %58
  %62 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  br label %63

63:                                               ; preds = %61, %38
  %64 = phi ptr [ %62, %61 ], [ %45, %38 ]
  %65 = load ptr, ptr @module_statics_written, align 8, !tbaa !211
  %66 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %5, ptr noundef %64, ptr noundef %65) #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %1) #15
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %86, label %69, !prof !281

69:                                               ; preds = %63, %83
  %70 = load i32, ptr %1, align 4, !tbaa !208
  %71 = tail call fastcc ptr @get_static_decl(i32 noundef %70) #15
  %72 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !222
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i64, ptr %71, align 8
  %77 = or i64 %76, 1048576
  store i64 %77, ptr %71, align 8
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = tail call fastcc ptr @get_static_name(i32 noundef %70) #15
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.15, ptr noundef %81) #15
  br label %83

83:                                               ; preds = %75, %80, %69
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %69, !prof !246, !llvm.loop !283

86:                                               ; preds = %83, %63
  %87 = load ptr, ptr @module_statics_escape, align 8, !tbaa !211
  tail call void @bitmap_obstack_free(ptr noundef %87) #16
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !211
  %88 = load ptr, ptr @module_statics_written, align 8, !tbaa !211
  tail call void @bitmap_obstack_free(ptr noundef %88) #16
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !211
  store ptr null, ptr @module_statics_written, align 8, !tbaa !211
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91, !prof !215

91:                                               ; preds = %86
  %92 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %92, ptr noundef nonnull %1) #15
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91, %95
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %97 = load i32, ptr %1, align 4, !tbaa !208
  %98 = tail call fastcc ptr @get_static_name(i32 noundef %97) #15
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.16, ptr noundef %98) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #15
  %100 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #15, !range !257
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %95, !llvm.loop !284

102:                                              ; preds = %95, %91, %86
  %103 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !211
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %105, !prof !268

105:                                              ; preds = %102, %122
  %106 = phi ptr [ %124, %122 ], [ %103, %102 ]
  %107 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %106) #16
  %108 = icmp ugt i32 %107, 1
  br i1 %108, label %109, label %122, !prof !276

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %106) #15
  %111 = load ptr, ptr %110, align 8, !tbaa !219
  %112 = load ptr, ptr %111, align 8, !tbaa !248
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114, !prof !285

114:                                              ; preds = %109
  %115 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  tail call void @bitmap_and_into(ptr noundef nonnull %112, ptr noundef %115) #16
  br label %116

116:                                              ; preds = %114, %109
  %117 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %111, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !249
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120, !prof !285

120:                                              ; preds = %116
  %121 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  tail call void @bitmap_and_into(ptr noundef nonnull %118, ptr noundef %121) #16
  br label %122

122:                                              ; preds = %116, %120, %105
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %106, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !211
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %105, !prof !277, !llvm.loop !286

126:                                              ; preds = %122, %102
  tail call void @bitmap_obstack_free(ptr noundef %5) #16
  tail call void @bitmap_obstack_free(ptr noundef %6) #16
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %128 = icmp eq ptr %127, null
  %129 = load ptr, ptr @cgraph_nodes, align 8
  %130 = icmp eq ptr %129, null
  %131 = select i1 %128, i1 true, i1 %130
  br i1 %131, label %193, label %132, !prof !287

132:                                              ; preds = %126, %189
  %133 = phi ptr [ %191, %189 ], [ %129, %126 ]
  %134 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %133) #16
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %137 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %133) #15
  %138 = load ptr, ptr %137, align 8, !tbaa !219
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %140 = tail call ptr @cgraph_node_name(ptr noundef nonnull %133) #16
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %133, i64 0, i32 24
  %142 = load i32, ptr %141, align 8, !tbaa !256
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef %140, i32 noundef %142) #15
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %145 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %144)
  %146 = load ptr, ptr %138, align 8, !tbaa !248
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %136
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %146, ptr noundef nonnull %3) #15
  %149 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148, %151
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %153 = load i32, ptr %3, align 4, !tbaa !208
  %154 = tail call fastcc ptr @get_static_name(i32 noundef %153) #15
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.6, ptr noundef %154) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %156 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %151, !llvm.loop !288

158:                                              ; preds = %151, %148, %136
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %160 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %159)
  %161 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !249
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %158
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %162, ptr noundef nonnull %3) #15
  %165 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %164, %167
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %169 = load i32, ptr %3, align 4, !tbaa !208
  %170 = tail call fastcc ptr @get_static_name(i32 noundef %169) #15
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.6, ptr noundef %170) #15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %172 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %167, !llvm.loop !289

174:                                              ; preds = %167, %164, %158
  %175 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !220
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %180 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %179)
  br label %181

181:                                              ; preds = %178, %174
  %182 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %138, i64 0, i32 3
  %183 = load i8, ptr %182, align 1, !tbaa !223
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %187 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %186)
  br label %188

188:                                              ; preds = %185, %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %189

189:                                              ; preds = %132, %188
  %190 = getelementptr inbounds %struct.cgraph_node, ptr %133, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !211
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %132, !llvm.loop !290

193:                                              ; preds = %189, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_reference_write_summary(ptr noundef %0) #2 !prof !192 !PGOFuncName !291 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call ptr @lto_create_simple_output_block(i32 noundef 6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %6 = tail call fastcc ptr @csi_start(ptr noundef %0) #15
  store ptr %6, ptr %2, align 8, !tbaa.struct !292
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %7, align 8, !tbaa.struct !293
  %8 = tail call fastcc zeroext i8 @csi_end_p(ptr %6, i32 0) #15, !range !257
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1, %10
  %11 = phi i32 [ %19, %10 ], [ 0, %1 ]
  %12 = phi ptr [ %18, %10 ], [ %6, %1 ]
  %13 = phi i32 [ %17, %10 ], [ 0, %1 ]
  %14 = tail call fastcc ptr @csi_node(ptr %12, i32 %11) #15
  %15 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %14) #15, !range !257
  %16 = zext nneg i8 %15 to i32
  %17 = add i32 %13, %16
  call fastcc void @csi_next(ptr noundef nonnull %2) #15
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %7, align 8
  %20 = tail call fastcc zeroext i8 @csi_end_p(ptr %18, i32 %19) #15, !range !257
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !llvm.loop !294

22:                                               ; preds = %10
  %23 = zext i32 %17 to i64
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i64 [ 0, %1 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.lto_simple_output_block, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !295
  tail call void @lto_output_uleb128_stream(ptr noundef %27, i64 noundef %25) #16
  store ptr %6, ptr %2, align 8, !tbaa.struct !292
  store i32 0, ptr %7, align 8, !tbaa.struct !293
  %28 = tail call fastcc zeroext i8 @csi_end_p(ptr %6, i32 0) #15, !range !257
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.lto_simple_output_block, ptr %5, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %86
  %33 = phi i32 [ 0, %30 ], [ %88, %86 ]
  %34 = phi ptr [ %6, %30 ], [ %87, %86 ]
  %35 = tail call fastcc ptr @csi_node(ptr %34, i32 %33) #15
  %36 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %35) #15, !range !257
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %35) #15
  %40 = load ptr, ptr %39, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %41 = load ptr, ptr %31, align 8, !tbaa !297
  %42 = getelementptr inbounds %struct.lto_out_decl_state, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !298
  %44 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %43, ptr noundef %35) #16
  %45 = load ptr, ptr %26, align 8, !tbaa !295
  %46 = sext i32 %44 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %45, i64 noundef %46) #16
  %47 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !220
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr %26, align 8, !tbaa !295
  br i1 %49, label %52, label %51

51:                                               ; preds = %38
  tail call void @lto_output_sleb128_stream(ptr noundef %50, i64 noundef -1) #16
  br label %65

52:                                               ; preds = %38
  %53 = load ptr, ptr %40, align 8, !tbaa !248
  %54 = tail call i64 @bitmap_count_bits(ptr noundef %53) #16
  tail call void @lto_output_sleb128_stream(ptr noundef %50, i64 noundef %54) #16
  %55 = load ptr, ptr %40, align 8, !tbaa !248
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %55, ptr noundef nonnull %3) #15
  %56 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52, %58
  %59 = load ptr, ptr %31, align 8, !tbaa !297
  %60 = load ptr, ptr %26, align 8, !tbaa !295
  %61 = load i32, ptr %3, align 4, !tbaa !208
  %62 = tail call fastcc ptr @get_static_decl(i32 noundef %61) #15
  tail call void @lto_output_var_decl_index(ptr noundef %59, ptr noundef %60, ptr noundef %62) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %58, !llvm.loop !300

65:                                               ; preds = %58, %52, %51
  %66 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !223
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr %26, align 8, !tbaa !295
  br i1 %68, label %71, label %70

70:                                               ; preds = %65
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef -1) #16
  br label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %40, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !249
  %74 = tail call i64 @bitmap_count_bits(ptr noundef %73) #16
  tail call void @lto_output_sleb128_stream(ptr noundef %69, i64 noundef %74) #16
  %75 = load ptr, ptr %72, align 8, !tbaa !249
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %75, ptr noundef nonnull %3) #15
  %76 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71, %78
  %79 = load ptr, ptr %31, align 8, !tbaa !297
  %80 = load ptr, ptr %26, align 8, !tbaa !295
  %81 = load i32, ptr %3, align 4, !tbaa !208
  %82 = tail call fastcc ptr @get_static_decl(i32 noundef %81) #15
  tail call void @lto_output_var_decl_index(ptr noundef %79, ptr noundef %80, ptr noundef %82) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #15, !range !257
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %78, !llvm.loop !301

85:                                               ; preds = %78, %71, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %86

86:                                               ; preds = %32, %85
  call fastcc void @csi_next(ptr noundef nonnull %2) #15
  %87 = load ptr, ptr %2, align 8
  %88 = load i32, ptr %7, align 8
  %89 = tail call fastcc zeroext i8 @csi_end_p(ptr %87, i32 %88) #15, !range !257
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %32, label %91, !llvm.loop !302

91:                                               ; preds = %86, %24
  tail call void @lto_destroy_simple_output_block(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_reference_read_summary() #2 !prof !192 !PGOFuncName !303 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #16
  tail call fastcc void @ipa_init() #15
  %4 = load ptr, ptr %3, align 8, !tbaa !211
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
  %21 = load ptr, ptr %16, align 8, !tbaa !304
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
  store i8 1, ptr %27, align 8, !tbaa !220
  br label %39

28:                                               ; preds = %17, %28
  %29 = phi i32 [ %37, %28 ], [ 0, %17 ]
  %30 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %31 = trunc i64 %30 to i32
  %32 = call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef nonnull %7, i32 noundef %31) #15
  call fastcc void @add_static_var(ptr noundef %32) #15
  %33 = load ptr, ptr %23, align 8, !tbaa !248
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %32, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !222
  %36 = call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %35) #16
  %37 = add nuw i32 %29, 1
  %38 = icmp eq i32 %37, %25
  br i1 %38, label %39, label %28, !llvm.loop !306

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
  store i8 1, ptr %45, align 1, !tbaa !223
  br label %57

46:                                               ; preds = %42, %46
  %47 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %48 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #16
  %49 = trunc i64 %48 to i32
  %50 = call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef nonnull %7, i32 noundef %49) #15
  call fastcc void @add_static_var(ptr noundef %50) #15
  %51 = load ptr, ptr %43, align 8, !tbaa !249
  %52 = getelementptr inbounds %struct.tree_decl_minimal, ptr %50, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !222
  %54 = call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %53) #16
  %55 = add nuw i32 %47, 1
  %56 = icmp eq i32 %55, %41
  br i1 %56, label %57, label %46, !llvm.loop !307

57:                                               ; preds = %46, %39, %44
  %58 = add nuw i32 %18, 1
  %59 = icmp eq i32 %58, %13
  br i1 %59, label %60, label %17, !llvm.loop !308

60:                                               ; preds = %57, %11
  %61 = load ptr, ptr %1, align 8, !tbaa !211
  %62 = load i64, ptr %2, align 8, !tbaa !309
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 6, ptr noundef nonnull %9, ptr noundef %61, i64 noundef %62) #16
  br label %63

63:                                               ; preds = %60, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %64 = add i32 %8, 1
  %65 = zext i32 %8 to i64
  %66 = getelementptr inbounds ptr, ptr %3, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !211
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %6, !llvm.loop !310

69:                                               ; preds = %63, %0
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_m_IP9tree_node12splay_tree_s(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_n_IP9tree_node12splay_tree_s(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !311 !PGOFuncName !312 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !313

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef nonnull %2) #15
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !256
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %11, !prof !314

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @VEC_ipa_reference_vars_info_t_base_index(ptr noundef nonnull %2, i32 noundef %7) #15
  br label %11

11:                                               ; preds = %1, %4, %9
  %12 = phi ptr [ %10, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !315 !PGOFuncName !316 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !317

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !318
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ipa_reference_vars_info_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !320 !PGOFuncName !321 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ipa_utils_reduced_inorder(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dump_cgraph(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_utils_print_order(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_write_all_from_decl(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !322 !PGOFuncName !323 {
  %4 = tail call i32 @flags_from_decl_or_type(ptr noundef %0) #16
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14, !prof !324

7:                                                ; preds = %3
  %8 = and i32 %4, 2
  %9 = icmp ne i32 %8, 0
  store i8 1, ptr %1, align 1, !tbaa !222
  %10 = and i32 %4, 72
  %11 = icmp eq i32 %10, 72
  %12 = or i1 %9, %11
  br i1 %12, label %14, label %13, !prof !325

13:                                               ; preds = %7
  store i8 1, ptr %2, align 1, !tbaa !222
  br label %14

14:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !326 !PGOFuncName !327 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6, !prof !233

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %50
  %9 = phi ptr [ %4, %6 ], [ %52, %50 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !234
  %12 = tail call i32 @cgraph_function_body_availability(ptr noundef %11) #16
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %50, !prof !328

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %11) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17, !prof !329

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !201
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21, !prof !329

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !193
  %23 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %35, label %25, !prof !330

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !193
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void @bitmap_obstack_free(ptr noundef %22) #16
  %29 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  store ptr %29, ptr %0, align 8, !tbaa !193
  br label %35

30:                                               ; preds = %25
  %31 = icmp eq ptr %22, %26
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef %26) #16
  %34 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  br label %35

35:                                               ; preds = %28, %32, %30, %21
  %36 = phi ptr [ %29, %28 ], [ %34, %32 ], [ %23, %30 ], [ %22, %21 ]
  %37 = load ptr, ptr %7, align 8, !tbaa !203
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %50, label %39, !prof !330

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %19, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !203
  %42 = icmp eq ptr %41, %36
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  tail call void @bitmap_obstack_free(ptr noundef %37) #16
  %44 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  store ptr %44, ptr %7, align 8, !tbaa !203
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
  %52 = load ptr, ptr %51, align 8, !tbaa !211
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %8, !prof !238, !llvm.loop !331

54:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_global_bitmap(ptr noundef %0) unnamed_addr #2 !prof !192 !PGOFuncName !332 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
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
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !333 !PGOFuncName !334 {
  %4 = load ptr, ptr %1, align 8, !tbaa !335
  store ptr %4, ptr %0, align 8, !tbaa !337
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !339
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !340

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !337
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !341
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !343
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !309
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !344
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !208
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !198 !PGOFuncName !345 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !344
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !346

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !347

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !208
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !348, !llvm.loop !349

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !208
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !208
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !343
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !337
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !343
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !350

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !309
  store i64 %35, ptr %3, align 8, !tbaa !344
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !351

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !208
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !208
  %40 = load i32, ptr %23, align 8, !tbaa !343
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !343
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !352, !llvm.loop !353

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !354
  store ptr %44, ptr %0, align 8, !tbaa !337
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !355

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !341
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !208
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !344
  store i32 %16, ptr %1, align 4, !tbaa !208
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_name(i32 noundef %0) unnamed_addr #2 !prof !192 !PGOFuncName !356 {
  %2 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !211
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !357
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !365
  %10 = inttoptr i64 %9 to ptr
  %11 = tail call ptr %7(ptr noundef %10, i32 noundef 2) #16
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi ptr [ %11, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !367 !PGOFuncName !368 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !344
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !344
  %6 = load i32, ptr %1, align 4, !tbaa !208
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !208
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_function(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !369 !PGOFuncName !370 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  tail call fastcc void @clean_function_local_data(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6, !prof !371

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !193
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @all_module_statics, align 8
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %14, label %12, !prof !372

12:                                               ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef nonnull %7) #16
  store ptr null, ptr %4, align 8, !tbaa !193
  %13 = load ptr, ptr @all_module_statics, align 8
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %9, %6 ]
  %16 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !203
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %15
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %23, label %21, !prof !372

21:                                               ; preds = %14
  tail call void @bitmap_obstack_free(ptr noundef nonnull %17) #16
  store ptr null, ptr %16, align 8, !tbaa !203
  %22 = load ptr, ptr @all_module_statics, align 8
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi ptr [ %22, %21 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !204
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %26, %24
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %32, label %30, !prof !373

30:                                               ; preds = %23
  tail call void @bitmap_obstack_free(ptr noundef nonnull %26) #16
  store ptr null, ptr %25, align 8, !tbaa !204
  %31 = load ptr, ptr @all_module_statics, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %31, %30 ], [ %24, %23 ]
  %34 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !205
  %36 = icmp eq ptr %35, null
  %37 = icmp eq ptr %35, %33
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %40, label %39, !prof !373

39:                                               ; preds = %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %35) #16
  br label %40

40:                                               ; preds = %39, %32
  tail call void @free(ptr noundef nonnull %4) #15
  store ptr null, ptr %3, align 8, !tbaa !201
  br label %41

41:                                               ; preds = %40, %1
  %42 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  tail call void @free(ptr noundef %42) #15
  tail call fastcc void @set_reference_vars_info(ptr noundef %0, ptr noundef null) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_function_local_data(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !374 !PGOFuncName !375 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5, !prof !376

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !248
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @all_module_statics, align 8
  %9 = icmp eq ptr %6, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %13, label %11, !prof !377

11:                                               ; preds = %5
  tail call void @bitmap_obstack_free(ptr noundef nonnull %6) #16
  store ptr null, ptr %3, align 8, !tbaa !248
  %12 = load ptr, ptr @all_module_statics, align 8
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !249
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %14
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %21, label %20, !prof !377

20:                                               ; preds = %13
  tail call void @bitmap_obstack_free(ptr noundef nonnull %16) #16
  br label %21

21:                                               ; preds = %20, %13
  tail call void @free(ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !219
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_reference_vars_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 !prof !374 !PGOFuncName !378 {
  %3 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !379

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !256
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef nonnull %3) #15
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !256
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13, !prof !380

13:                                               ; preds = %5, %8
  %14 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %16 = add nsw i32 %14, 1
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(i32 noundef %16) #15
  %17 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %18 = load i32, ptr %15, align 8, !tbaa !256
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ %11, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %3, %8 ]
  tail call fastcc void @VEC_ipa_reference_vars_info_t_base_replace(ptr noundef %21, i32 noundef %20, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #2 !prof !213 !PGOFuncName !381 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !211
  %3 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(ptr noundef %2) #15
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(i32 noundef %0) #15
  %4 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !211
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
define internal fastcc void @VEC_ipa_reference_vars_info_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 !prof !374 !PGOFuncName !382 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !211
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(i32 noundef %0) unnamed_addr #2 !prof !213 !PGOFuncName !383 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !211
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !215

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !318
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_reserve_exact(i32 noundef %8) #15
  %9 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !211, !nonnull !384, !noundef !384
  store i32 %0, ptr %9, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_reference_vars_info_t_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !213 !PGOFuncName !385 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !386
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #2 !prof !213 !PGOFuncName !387 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !211
  %3 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(ptr noundef %2, i32 noundef %0) #15, !range !388
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !215

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #16
  store ptr %6, ptr @ipa_reference_vars_vector, align 8, !tbaa !211
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !213 !PGOFuncName !389 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !215

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !390
  %7 = load i32, ptr %0, align 8, !tbaa !318
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
define internal fastcc void @ipa_init() unnamed_addr #2 !prof !213 !PGOFuncName !391 {
  %1 = load i1, ptr @ipa_init.init_p, align 1
  br i1 %1, label %12, label %2, !prof !386

2:                                                ; preds = %0
  store i1 true, ptr @ipa_init.init_p, align 1
  %3 = tail call ptr @build_string(i32 noundef 7, ptr noundef nonnull @.str.18) #16
  store ptr %3, ptr @memory_identifier_string, align 8, !tbaa !211
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #16
  store ptr %4, ptr @reference_vars_to_consider, align 8, !tbaa !211
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @local_info_obstack) #16
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @global_info_obstack) #16
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %5, ptr @module_statics_escape, align 8, !tbaa !211
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %6, ptr @module_statics_written, align 8, !tbaa !211
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #16
  store ptr %7, ptr @all_module_statics, align 8, !tbaa !211
  %8 = tail call ptr @pointer_set_create() #16
  store ptr %8, ptr @visited_nodes, align 8, !tbaa !211
  %9 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #16
  store ptr %9, ptr @function_insertion_hook_holder, align 8, !tbaa !211
  %10 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #16
  store ptr %10, ptr @node_removal_hook_holder, align 8, !tbaa !211
  %11 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #16
  store ptr %11, ptr @node_duplication_hook_holder, align 8, !tbaa !211
  br label %12

12:                                               ; preds = %0, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @varpool_first_static_initializer() unnamed_addr #2 !prof !213 !PGOFuncName !392 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !211
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3, !prof !268

3:                                                ; preds = %0, %16
  %4 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !393
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %11, label %9, !prof !215

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 595, ptr noundef nonnull @.str.3) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !393
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20, !prof !386

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !211
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !prof !395, !llvm.loop !396

20:                                               ; preds = %11, %16, %0
  %21 = phi ptr [ null, %0 ], [ null, %16 ], [ %4, %11 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_variable(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !397 !PGOFuncName !398 {
  %2 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr @visited_nodes, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !399
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %7 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @scan_initializer_for_static_refs, ptr noundef nonnull %2, ptr noundef %4, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @varpool_next_static_initializer(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !397 !PGOFuncName !402 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %14 ]
  %4 = getelementptr inbounds %struct.varpool_node, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !403
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !404

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !393
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %14, label %12, !prof !405

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 608, ptr noundef nonnull @.str.3) #16
  %13 = load ptr, ptr %5, align 8, !tbaa !393
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %8, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = icmp eq ptr %17, null
  br i1 %18, label %2, label %19, !prof !406, !llvm.loop !407

19:                                               ; preds = %2, %14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #2 !prof !397 !PGOFuncName !408 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !224
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !211
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !409

10:                                               ; preds = %1
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #16
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef %11) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !222
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ %7, %1 ]
  tail call void @push_cfun(ptr noundef %15) #16
  store ptr %5, ptr @current_function_decl, align 8, !tbaa !211
  %16 = tail call fastcc ptr @init_function_info(ptr noundef nonnull %0) #15
  %17 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !410
  %19 = load ptr, ptr %18, align 8, !tbaa !412
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !414
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !416
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %62, label %25, !prof !417

25:                                               ; preds = %14, %55
  %26 = phi ptr [ %57, %55 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %26) #16
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !257
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49, !prof !418

29:                                               ; preds = %25, %46
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %31 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %30) #15
  %32 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %46, !prof !419

34:                                               ; preds = %29, %42
  %35 = phi ptr [ %43, %42 ], [ %31, %29 ]
  %36 = call fastcc ptr @get_use_from_ptr(ptr noundef %35) #15
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 121
  br i1 %39, label %40, label %42, !prof !420

40:                                               ; preds = %34
  %41 = call ptr @get_base_var(ptr noundef nonnull %36) #16
  call fastcc void @mark_address_taken(ptr noundef %41) #15
  br label %42

42:                                               ; preds = %34, %40
  %43 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #15
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %34, label %46, !prof !421, !llvm.loop !422

46:                                               ; preds = %42, %29
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !257
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %29, label %49, !prof !423, !llvm.loop !424

49:                                               ; preds = %46, %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %26) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !425
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !257
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55, !prof !426

52:                                               ; preds = %49, %52
  call fastcc void @scan_stmt_for_static_refs(ptr noundef nonnull %2, ptr noundef nonnull %0) #15
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !257
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %52, label %55, !prof !427, !llvm.loop !428

55:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !414
  %58 = load ptr, ptr %17, align 8, !tbaa !410
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !416
  %61 = icmp eq ptr %57, %60
  br i1 %61, label %62, label %25, !prof !429, !llvm.loop !430

62:                                               ; preds = %55, %14
  %63 = call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %0) #15
  %64 = load ptr, ptr %63, align 8, !tbaa !219
  %65 = call i32 @flags_from_decl_or_type(ptr noundef %5) #16
  %66 = and i32 %65, 72
  %67 = icmp eq i32 %66, 72
  br i1 %67, label %68, label %72, !prof !285

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 3
  store i8 0, ptr %69, align 1, !tbaa !223
  %70 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !249
  call void @bitmap_clear(ptr noundef %71) #16
  br label %72

72:                                               ; preds = %68, %62
  %73 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !223
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76, !prof !409

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !249
  call void @bitmap_obstack_free(ptr noundef %78) #16
  store ptr null, ptr %77, align 8, !tbaa !249
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %64, i64 0, i32 2
  %81 = load i8, ptr %80, align 8, !tbaa !220
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83, !prof !409

83:                                               ; preds = %79
  %84 = load ptr, ptr %64, align 8, !tbaa !248
  call void @bitmap_obstack_free(ptr noundef %84) #16
  store ptr null, ptr %64, align 8, !tbaa !248
  br label %85

85:                                               ; preds = %83, %79
  call void @pop_cfun() #16
  store ptr null, ptr @current_function_decl, align 8, !tbaa !211
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_decl(i32 noundef %0) unnamed_addr #2 !prof !192 !PGOFuncName !431 {
  %2 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !211
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !365
  %9 = inttoptr i64 %8 to ptr
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

; Function Attrs: optsize
declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #2 !prof !192 !PGOFuncName !432 {
  tail call fastcc void @analyze_function(ptr noundef %0) #15
  store ptr null, ptr @visited_nodes, align 8, !tbaa !211
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #2 !prof !369 !PGOFuncName !433 {
  %3 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !371

5:                                                ; preds = %2
  tail call fastcc void @clean_function(ptr noundef %0) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 !prof !198 !PGOFuncName !434 {
  %4 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %0) #15
  %5 = tail call fastcc ptr @get_local_reference_vars_info(ptr noundef %0) #15
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %4, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %45, !prof !435

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @init_function_info(ptr noundef %1) #15
  br i1 %6, label %11, label %25, !prof !436

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @get_local_reference_vars_info(ptr noundef %1) #15
  %13 = load ptr, ptr %5, align 8, !tbaa !248
  %14 = tail call fastcc ptr @copy_local_bitmap(ptr noundef %13) #15
  store ptr %14, ptr %12, align 8, !tbaa !248
  %15 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !249
  %17 = tail call fastcc ptr @copy_local_bitmap(ptr noundef %16) #15
  %18 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %12, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !249
  %19 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !220
  %21 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %12, i64 0, i32 2
  store i8 %20, ptr %21, align 8, !tbaa !220
  %22 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %5, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !223
  %24 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %12, i64 0, i32 3
  store i8 %23, ptr %24, align 1, !tbaa !223
  br label %25

25:                                               ; preds = %11, %9
  br i1 %7, label %26, label %45, !prof !200

26:                                               ; preds = %25
  %27 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16
  %28 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %1) #15
  %29 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %28, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !201
  %30 = tail call fastcc ptr @get_global_reference_vars_info(ptr noundef %1) #15
  %31 = load ptr, ptr %4, align 8, !tbaa !193
  %32 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %31) #15
  store ptr %32, ptr %30, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !203
  %35 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %34) #15
  %36 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %30, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !203
  %37 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !204
  %39 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %38) #15
  %40 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %30, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !204
  %41 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %4, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !205
  %43 = tail call fastcc ptr @copy_global_bitmap(ptr noundef %42) #15
  %44 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %30, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !205
  br label %45

45:                                               ; preds = %25, %26, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_local_reference_vars_info(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %2 = tail call fastcc ptr @get_reference_vars_info(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !439

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !219
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_function_info(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !326 !PGOFuncName !440 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #16
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #16
  tail call fastcc void @set_reference_vars_info(ptr noundef %0, ptr noundef %2) #15
  store ptr %3, ptr %2, align 8, !tbaa !219
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  store ptr %4, ptr %3, align 8, !tbaa !248
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  %6 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !249
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_local_bitmap(ptr noundef %0) unnamed_addr #2 !prof !437 !PGOFuncName !441 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !439

3:                                                ; preds = %1
  %4 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %8, label %6, !prof !439

6:                                                ; preds = %3
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #16
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %3, %1, %6
  %9 = phi ptr [ %7, %6 ], [ null, %1 ], [ %0, %3 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @scan_initializer_for_static_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #2 !prof !397 !PGOFuncName !442 {
  %4 = load ptr, ptr %0, align 8, !tbaa !211
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %10, !prof !285

8:                                                ; preds = %3
  %9 = tail call ptr @get_base_var(ptr noundef nonnull %4) #16
  tail call fastcc void @mark_address_taken(ptr noundef %9) #15
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !208
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16, !prof !443

15:                                               ; preds = %10, %8
  store i32 0, ptr %1, align 4, !tbaa !208
  br label %16

16:                                               ; preds = %15, %10
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_address_taken(ptr noundef %0) unnamed_addr #2 !prof !444 !PGOFuncName !445 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  %5 = load ptr, ptr @module_statics_escape, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %16, !prof !446

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %0) #15, !range !257
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !447

11:                                               ; preds = %8
  %12 = load ptr, ptr @module_statics_escape, align 8, !tbaa !211
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !222
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %11, %8, %1
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_proper_scope_for_analysis(ptr noundef %0) unnamed_addr #2 !prof !448 !PGOFuncName !449 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 8192
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %34, !prof !450

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %34, !prof !450

10:                                               ; preds = %6
  %11 = and i64 %7, 67108864
  %12 = and i64 %3, 33554432
  %13 = icmp ne i64 %12, 0
  %14 = or disjoint i64 %11, %12
  %15 = icmp eq i64 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %34, label %17, !prof !451

17:                                               ; preds = %10
  %18 = and i64 %7, 134217728
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %34, !prof !452

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !222
  %23 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34, !prof !452

27:                                               ; preds = %20
  %28 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !222
  %31 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %30) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !453

33:                                               ; preds = %27
  tail call fastcc void @add_static_var(ptr noundef nonnull %0) #15
  br label %34

34:                                               ; preds = %10, %27, %33, %20, %17, %6, %1
  %35 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %10 ], [ 0, %17 ], [ 0, %20 ], [ 1, %33 ], [ 1, %27 ]
  ret i8 %35
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_static_var(ptr noundef %0) unnamed_addr #2 !prof !367 !PGOFuncName !454 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !222
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %8, label %7, !prof !405

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %3) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !405

12:                                               ; preds = %8
  %13 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !211
  %14 = sext i32 %3 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = tail call ptr @splay_tree_insert(ptr noundef %13, i64 noundef %14, i64 noundef %15) #16
  %17 = load ptr, ptr @all_module_statics, align 8, !tbaa !211
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %3) #16
  br label %19

19:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !455 !PGOFuncName !456 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  %3 = load ptr, ptr %2, align 8, !tbaa !460
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !462 !PGOFuncName !463 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #15
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #15
  store i8 0, ptr %0, align 8, !tbaa !464
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !466

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !464
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !467
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !468
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !469
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #15
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !470 !PGOFuncName !471 {
  %2 = load i8, ptr %0, align 8, !tbaa !464
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !472 !PGOFuncName !473 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !474
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #2 !prof !476 !PGOFuncName !477 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !478
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !479

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !480
  store ptr %7, ptr %2, align 8, !tbaa !478
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !482
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !468
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !483

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !467
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !482
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #15
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !464
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !458 !PGOFuncName !484 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !485
  store ptr %4, ptr %0, align 8, !tbaa !457
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !486 !PGOFuncName !487 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !457
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !488
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !489
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stmt_for_static_refs(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 !prof !490 !PGOFuncName !491 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %4 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %3) #15, !range !257
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21, !prof !492

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8, !prof !493

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @get_reference_vars_info(ptr noundef nonnull %1) #15
  %10 = load ptr, ptr %9, align 8, !tbaa !219
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ null, %6 ]
  %13 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %3, ptr noundef %12, ptr noundef nonnull @mark_load, ptr noundef nonnull @mark_store, ptr noundef nonnull @mark_address) #16
  %14 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #15, !range !257
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !494

16:                                               ; preds = %11
  tail call fastcc void @check_call(ptr noundef %12, ptr noundef %3) #15
  br label %21

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %3) #15, !range !495
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %21, !prof !496

20:                                               ; preds = %17
  tail call fastcc void @check_asm_memory_clobber(ptr noundef %12, ptr noundef %3) #15
  br label %21

21:                                               ; preds = %16, %20, %17, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !462 !PGOFuncName !497 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !462 !PGOFuncName !498 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !464
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !499 !PGOFuncName !500 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !222
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !472 !PGOFuncName !501 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !472 !PGOFuncName !502 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !222
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !420

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 3103, ptr noundef nonnull @.str.3) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !486 !PGOFuncName !503 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !504
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !505

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !506

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !507
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !486 !PGOFuncName !509 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !506

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !510
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !490 !PGOFuncName !512 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !495
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 !prof !513 !PGOFuncName !514 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %15, !prof !515

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1) #15, !range !257
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !516

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !tbaa !248
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !222
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %13) #16
  br label %15

15:                                               ; preds = %10, %7, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_store(ptr nocapture readnone %0, ptr noundef %1, ptr noundef readonly %2) #2 !prof !213 !PGOFuncName !517 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %25, !prof !386

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1) #15, !range !257
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !249
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !222
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %12, %10
  %19 = load ptr, ptr @module_statics_written, align 8, !tbaa !211
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !222
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %19, i32 noundef %23) #16
  br label %25

25:                                               ; preds = %18, %21, %7, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @mark_address(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #2 !prof !444 !PGOFuncName !518 {
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #15, !range !257
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6, !prof !519

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  %10 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %9) #15, !range !257
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %6, !prof !520, !llvm.loop !521

12:                                               ; preds = %6, %3
  %13 = phi ptr [ %1, %3 ], [ %9, %6 ]
  tail call fastcc void @mark_address_taken(ptr noundef %13) #15
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !490 !PGOFuncName !522 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !495
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 !prof !523 !PGOFuncName !524 {
  %3 = tail call i32 @gimple_call_flags(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %18, !prof !525

6:                                                ; preds = %2
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = and i32 %3, 2
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 2
  store i8 1, ptr %12, align 8, !tbaa !220
  %13 = and i32 %3, 72
  %14 = icmp eq i32 %13, 72
  %15 = or i1 %11, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %17, align 1, !tbaa !223
  br label %18

18:                                               ; preds = %9, %6, %16, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !526 !PGOFuncName !527 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_asm_memory_clobber(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 !prof !192 !PGOFuncName !528 {
  %3 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #15, !range !495
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
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  %14 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !211
  %15 = tail call i32 @simple_cst_equal(ptr noundef %13, ptr noundef %14) #16
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i8 1, ptr %6, align 8, !tbaa !220
  store i8 1, ptr %7, align 1, !tbaa !223
  br label %18

18:                                               ; preds = %8, %17
  %19 = add nuw nsw i64 %9, 1
  %20 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #15, !range !495
  %21 = zext nneg i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %8, label %23, !llvm.loop !529

23:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !530 !PGOFuncName !531 {
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
  ], !prof !532

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #2 !prof !523 !PGOFuncName !533 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !534

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #2 !prof !523 !PGOFuncName !535 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !523 !PGOFuncName !536 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !257
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !525

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !537 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !495
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 !prof !523 !PGOFuncName !538 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !309
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !525

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !523 !PGOFuncName !539 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !495
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !523 !PGOFuncName !540 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !208
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !192 !PGOFuncName !541 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !222
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !192 !PGOFuncName !542 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !222
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 2688, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !222
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !222
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #15
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #10 !prof !192 !PGOFuncName !543 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !192 !PGOFuncName !544 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !545
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #15
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @write_node_summary_p(ptr noundef %0) unnamed_addr #2 !prof !192 !PGOFuncName !547 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !548
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
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 !prof !192 !PGOFuncName !549 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !545
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !192 !PGOFuncName !550 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !551
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !551
  ret void
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_output_var_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !192 !PGOFuncName !553 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !554
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !192 !PGOFuncName !556 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_var_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !192 !PGOFuncName !557 {
  %3 = load ptr, ptr %0, align 8, !tbaa !558
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !559
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1044, ptr noundef nonnull @.str.3) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !561
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  ret ptr %13
}

; Function Attrs: optsize
declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!191}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!35 = !{ptr @get_global_reference_vars_info, ptr @get_reference_vars_info, i64 41}
!36 = !{ptr @propagate, ptr @xcalloc, i64 43}
!37 = !{ptr @propagate, ptr @ipa_utils_reduced_inorder, i64 2}
!38 = !{ptr @propagate, ptr @cgraph_remove_function_insertion_hook, i64 1}
!39 = !{ptr @propagate, ptr @get_reference_vars_info, i64 255}
!40 = !{ptr @propagate, ptr @cgraph_function_body_availability, i64 34697}
!41 = !{ptr @propagate, ptr @read_write_all_from_decl, i64 8200}
!42 = !{ptr @propagate, ptr @propagate_bits, i64 42}
!43 = !{ptr @propagate, ptr @copy_global_bitmap, i64 2}
!44 = !{ptr @propagate, ptr @cgraph_node_name, i64 112}
!45 = !{ptr @propagate, ptr @fprintf, i64 3046}
!46 = !{ptr @propagate, ptr @fwrite, i64 238}
!47 = !{ptr @propagate, ptr @bmp_iter_set_init, i64 146}
!48 = !{ptr @propagate, ptr @bmp_iter_set, i64 3080}
!49 = !{ptr @propagate, ptr @get_static_name, i64 2934}
!50 = !{ptr @propagate, ptr @bmp_iter_next, i64 2934}
!51 = !{ptr @propagate, ptr @bitmap_obstack_alloc_stat, i64 82}
!52 = !{ptr @propagate, ptr @free, i64 41}
!53 = !{ptr @propagate, ptr @clean_function_local_data, i64 40}
!54 = !{ptr @propagate, ptr @bitmap_obstack_release, i64 1}
!55 = !{ptr @generate_summary, ptr @ipa_init, i64 1}
!56 = !{ptr @generate_summary, ptr @bitmap_obstack_alloc_stat, i64 2}
!57 = !{ptr @generate_summary, ptr @varpool_first_static_initializer, i64 1}
!58 = !{ptr @generate_summary, ptr @analyze_variable, i64 20}
!59 = !{ptr @generate_summary, ptr @varpool_next_static_initializer, i64 20}
!60 = !{ptr @generate_summary, ptr @cgraph_function_body_availability, i64 81}
!61 = !{ptr @generate_summary, ptr @analyze_function, i64 20}
!62 = !{ptr @generate_summary, ptr @pointer_set_destroy, i64 1}
!63 = !{ptr @generate_summary, ptr @bmp_iter_set_init, i64 7}
!64 = !{ptr @generate_summary, ptr @bmp_iter_set, i64 101}
!65 = !{ptr @generate_summary, ptr @splay_tree_remove, i64 19}
!66 = !{ptr @generate_summary, ptr @bmp_iter_next, i64 94}
!67 = !{ptr @generate_summary, ptr @bitmap_and_compl_into, i64 1}
!68 = !{ptr @generate_summary, ptr @bitmap_and_compl, i64 2}
!69 = !{ptr @generate_summary, ptr @get_static_decl, i64 2}
!70 = !{ptr @generate_summary, ptr @bitmap_obstack_free, i64 4}
!71 = !{ptr @generate_summary, ptr @get_static_name, i64 73}
!72 = !{ptr @generate_summary, ptr @fprintf, i64 76}
!73 = !{ptr @generate_summary, ptr @get_reference_vars_info, i64 23}
!74 = !{ptr @generate_summary, ptr @bitmap_and_into, i64 38}
!75 = !{ptr @generate_summary, ptr @cgraph_node_name, i64 3}
!76 = !{ptr @generate_summary, ptr @fwrite, i64 10}
!77 = !{ptr @get_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_length, i64 461451}
!78 = !{ptr @get_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_index, i64 461415}
!79 = !{ptr @read_write_all_from_decl, ptr @flags_from_decl_or_type, i64 16389}
!80 = !{ptr @propagate_bits, ptr @cgraph_function_body_availability, i64 68320}
!81 = !{ptr @propagate_bits, ptr @get_reference_vars_info, i64 52133}
!82 = !{ptr @propagate_bits, ptr @fancy_abort, i64 1}
!83 = !{ptr @clean_function, ptr @get_reference_vars_info, i64 84}
!84 = !{ptr @clean_function, ptr @clean_function_local_data, i64 42}
!85 = !{ptr @clean_function, ptr @bitmap_obstack_free, i64 80}
!86 = !{ptr @clean_function, ptr @free, i64 83}
!87 = !{ptr @clean_function, ptr @set_reference_vars_info, i64 42}
!88 = !{ptr @clean_function_local_data, ptr @get_reference_vars_info, i64 122}
!89 = !{ptr @clean_function_local_data, ptr @bitmap_obstack_free, i64 156}
!90 = !{ptr @clean_function_local_data, ptr @free, i64 80}
!91 = !{ptr @set_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_length, i64 120}
!92 = !{ptr @set_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, i64 3}
!93 = !{ptr @set_reference_vars_info, ptr @VEC_ipa_reference_vars_info_t_base_replace, i64 122}
!94 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, ptr @VEC_ipa_reference_vars_info_t_base_length, i64 1}
!95 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow, i64 1}
!96 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared, ptr @VEC_ipa_reference_vars_info_t_base_address, i64 1}
!97 = !{ptr @VEC_ipa_reference_vars_info_t_heap_safe_grow, ptr @VEC_ipa_reference_vars_info_t_heap_reserve_exact, i64 1}
!98 = !{ptr @VEC_ipa_reference_vars_info_t_heap_reserve_exact, ptr @VEC_ipa_reference_vars_info_t_base_space, i64 1}
!99 = !{ptr @VEC_ipa_reference_vars_info_t_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 1}
!100 = !{ptr @ipa_init, ptr @build_string, i64 1}
!101 = !{ptr @ipa_init, ptr @splay_tree_new_with_allocator, i64 1}
!102 = !{ptr @ipa_init, ptr @bitmap_obstack_initialize, i64 2}
!103 = !{ptr @ipa_init, ptr @bitmap_obstack_alloc_stat, i64 3}
!104 = !{ptr @ipa_init, ptr @pointer_set_create, i64 1}
!105 = !{ptr @ipa_init, ptr @cgraph_add_function_insertion_hook, i64 1}
!106 = !{ptr @ipa_init, ptr @cgraph_add_node_removal_hook, i64 1}
!107 = !{ptr @ipa_init, ptr @cgraph_add_node_duplication_hook, i64 1}
!108 = !{ptr @analyze_variable, ptr @walk_tree_1, i64 39}
!109 = !{ptr @varpool_next_static_initializer, ptr @fancy_abort, i64 1}
!110 = !{ptr @analyze_function, ptr @cgraph_node_name, i64 1}
!111 = !{ptr @analyze_function, ptr @fprintf, i64 1}
!112 = !{ptr @analyze_function, ptr @push_cfun, i64 39}
!113 = !{ptr @analyze_function, ptr @init_function_info, i64 39}
!114 = !{ptr @analyze_function, ptr @gsi_start_phis, i64 142908}
!115 = !{ptr @analyze_function, ptr @gsi_end_p, i64 672151}
!116 = !{ptr @analyze_function, ptr @gsi_stmt, i64 40053}
!117 = !{ptr @analyze_function, ptr @op_iter_init_phiuse, i64 40053}
!118 = !{ptr @analyze_function, ptr @op_iter_done, i64 100182}
!119 = !{ptr @analyze_function, ptr @get_use_from_ptr, i64 60129}
!120 = !{ptr @analyze_function, ptr @get_base_var, i64 1}
!121 = !{ptr @analyze_function, ptr @mark_address_taken, i64 1}
!122 = !{ptr @analyze_function, ptr @op_iter_next_use, i64 60129}
!123 = !{ptr @analyze_function, ptr @gsi_next, i64 386335}
!124 = !{ptr @analyze_function, ptr @gsi_start_bb, i64 142908}
!125 = !{ptr @analyze_function, ptr @scan_stmt_for_static_refs, i64 346282}
!126 = !{ptr @analyze_function, ptr @get_reference_vars_info, i64 39}
!127 = !{ptr @analyze_function, ptr @flags_from_decl_or_type, i64 39}
!128 = !{ptr @analyze_function, ptr @bitmap_clear, i64 1}
!129 = !{ptr @analyze_function, ptr @bitmap_obstack_free, i64 2}
!130 = !{ptr @analyze_function, ptr @pop_cfun, i64 39}
!131 = !{ptr @remove_node_data, ptr @get_reference_vars_info, i64 42}
!132 = !{ptr @remove_node_data, ptr @clean_function, i64 41}
!133 = !{ptr @duplicate_node_data, ptr @get_global_reference_vars_info, i64 42}
!134 = !{ptr @duplicate_node_data, ptr @get_local_reference_vars_info, i64 81}
!135 = !{ptr @duplicate_node_data, ptr @init_function_info, i64 41}
!136 = !{ptr @duplicate_node_data, ptr @copy_local_bitmap, i64 80}
!137 = !{ptr @duplicate_node_data, ptr @xcalloc, i64 1}
!138 = !{ptr @duplicate_node_data, ptr @get_reference_vars_info, i64 1}
!139 = !{ptr @duplicate_node_data, ptr @copy_global_bitmap, i64 4}
!140 = !{ptr @get_local_reference_vars_info, ptr @get_reference_vars_info, i64 82}
!141 = !{ptr @init_function_info, ptr @xcalloc, i64 160}
!142 = !{ptr @init_function_info, ptr @set_reference_vars_info, i64 80}
!143 = !{ptr @init_function_info, ptr @bitmap_obstack_alloc_stat, i64 160}
!144 = !{ptr @copy_local_bitmap, ptr @bitmap_obstack_alloc_stat, i64 80}
!145 = !{ptr @copy_local_bitmap, ptr @bitmap_copy, i64 80}
!146 = !{ptr @scan_initializer_for_static_refs, ptr @get_base_var, i64 1}
!147 = !{ptr @scan_initializer_for_static_refs, ptr @mark_address_taken, i64 1}
!148 = !{ptr @mark_address_taken, ptr @has_proper_scope_for_analysis, i64 60}
!149 = !{ptr @mark_address_taken, ptr @bitmap_set_bit, i64 59}
!150 = !{ptr @has_proper_scope_for_analysis, ptr @bitmap_bit_p, i64 60}
!151 = !{ptr @has_proper_scope_for_analysis, ptr @add_static_var, i64 37}
!152 = !{ptr @add_static_var, ptr @fancy_abort, i64 1}
!153 = !{ptr @add_static_var, ptr @bitmap_bit_p, i64 38}
!154 = !{ptr @add_static_var, ptr @splay_tree_insert, i64 37}
!155 = !{ptr @add_static_var, ptr @bitmap_set_bit, i64 37}
!156 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 41079}
!157 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 41079}
!158 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 41079}
!159 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 157}
!160 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 157}
!161 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 61668}
!162 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 146571}
!163 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 146571}
!164 = !{ptr @scan_stmt_for_static_refs, ptr @gsi_stmt, i64 355160}
!165 = !{ptr @scan_stmt_for_static_refs, ptr @is_gimple_debug, i64 355160}
!166 = !{ptr @scan_stmt_for_static_refs, ptr @get_reference_vars_info, i64 355158}
!167 = !{ptr @scan_stmt_for_static_refs, ptr @walk_stmt_load_store_addr_ops, i64 355159}
!168 = !{ptr @scan_stmt_for_static_refs, ptr @is_gimple_call, i64 355159}
!169 = !{ptr @scan_stmt_for_static_refs, ptr @check_call, i64 69128}
!170 = !{ptr @scan_stmt_for_static_refs, ptr @gimple_code, i64 286031}
!171 = !{ptr @scan_stmt_for_static_refs, ptr @check_asm_memory_clobber, i64 1}
!172 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 61670}
!173 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!174 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 355160}
!175 = !{ptr @mark_load, ptr @has_proper_scope_for_analysis, i64 91250}
!176 = !{ptr @mark_load, ptr @bitmap_set_bit, i64 1}
!177 = !{ptr @mark_address, ptr @handled_component_p, i64 274}
!178 = !{ptr @mark_address, ptr @mark_address_taken, i64 134}
!179 = !{ptr @is_gimple_call, ptr @gimple_code, i64 355160}
!180 = !{ptr @check_call, ptr @gimple_call_flags, i64 69128}
!181 = !{ptr @check_call, ptr @gimple_call_fndecl, i64 69128}
!182 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 69128}
!183 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 69128}
!184 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 69128}
!185 = !{ptr @gimple_op, ptr @gimple_ops, i64 69127}
!186 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 69128}
!187 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 69128}
!188 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!189 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 69128}
!190 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 69128}
!191 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!192 = !{!"function_entry_count", i64 0}
!193 = !{!194, !195, i64 0}
!194 = !{!"ipa_reference_global_vars_info_d", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24}
!195 = !{!"any pointer", !196, i64 0}
!196 = !{!"omnipotent char", !197, i64 0}
!197 = !{!"Simple C/C++ TBAA"}
!198 = !{!"function_entry_count", i64 41}
!199 = !{!"ipa-reference.c:get_global_reference_vars_info"}
!200 = !{!"branch_weights", i32 1, i32 42}
!201 = !{!202, !195, i64 8}
!202 = !{!"ipa_reference_vars_info_d", !195, i64 0, !195, i64 8}
!203 = !{!194, !195, i64 8}
!204 = !{!194, !195, i64 16}
!205 = !{!194, !195, i64 24}
!206 = !{!"function_entry_count", i64 2}
!207 = !{!"ipa-reference.c:gate_reference"}
!208 = !{!209, !209, i64 0}
!209 = !{!"int", !196, i64 0}
!210 = !{!"branch_weights", i32 1, i32 3}
!211 = !{!195, !195, i64 0}
!212 = !{!"branch_weights", i32 3, i32 1}
!213 = !{!"function_entry_count", i64 1}
!214 = !{!"ipa-reference.c:propagate"}
!215 = !{!"branch_weights", i32 2, i32 1}
!216 = !{!"branch_weights", i32 127, i32 1}
!217 = !{!"branch_weights", i32 1, i32 81}
!218 = !{!"branch_weights", i32 81, i32 1}
!219 = !{!202, !195, i64 0}
!220 = !{!221, !196, i64 16}
!221 = !{!"ipa_reference_local_vars_info_d", !195, i64 0, !195, i64 8, !196, i64 16, !196, i64 17}
!222 = !{!196, !196, i64 0}
!223 = !{!221, !196, i64 17}
!224 = !{!225, !195, i64 0}
!225 = !{!"cgraph_node", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !195, i64 120, !195, i64 128, !195, i64 136, !226, i64 144, !229, i64 184, !230, i64 224, !231, i64 232, !232, i64 256, !228, i64 288, !209, i64 296, !209, i64 300, !209, i64 304, !209, i64 308, !209, i64 308, !209, i64 308, !209, i64 308, !209, i64 308, !209, i64 308, !209, i64 308, !209, i64 308, !209, i64 309, !209, i64 309}
!226 = !{!"cgraph_local_info", !195, i64 0, !227, i64 8, !209, i64 32, !209, i64 32, !209, i64 32, !209, i64 32, !209, i64 32, !209, i64 32, !209, i64 32, !209, i64 32}
!227 = !{!"inline_summary", !228, i64 0, !209, i64 8, !209, i64 12, !209, i64 16, !209, i64 20}
!228 = !{!"long", !196, i64 0}
!229 = !{!"cgraph_global_info", !228, i64 0, !228, i64 8, !195, i64 16, !209, i64 24, !209, i64 28, !209, i64 32, !196, i64 36}
!230 = !{!"cgraph_rtl_info", !209, i64 0}
!231 = !{!"cgraph_clone_info", !195, i64 0, !195, i64 8, !195, i64 16}
!232 = !{!"cgraph_thunk_info", !228, i64 0, !228, i64 8, !195, i64 16, !196, i64 24, !196, i64 25, !196, i64 26}
!233 = !{!"branch_weights", i32 1, i32 161}
!234 = !{!235, !195, i64 16}
!235 = !{!"cgraph_edge", !228, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !209, i64 72, !209, i64 76, !209, i64 80, !209, i64 84, !236, i64 88, !209, i64 90, !209, i64 90, !209, i64 90}
!236 = !{!"short", !196, i64 0}
!237 = !{!"branch_weights", i32 16390, i32 52785}
!238 = !{!"branch_weights", i32 161, i32 138187}
!239 = distinct !{!239, !240}
!240 = !{!"llvm.loop.mustprogress"}
!241 = !{!225, !195, i64 128}
!242 = !{!243, !195, i64 16}
!243 = !{!"ipa_dfs_info", !209, i64 0, !209, i64 4, !196, i64 8, !196, i64 9, !195, i64 16, !195, i64 24}
!244 = !{!"branch_weights", i32 80, i32 1}
!245 = distinct !{!245, !240}
!246 = !{!"branch_weights", i32 1, i32 0}
!247 = distinct !{!247, !240}
!248 = !{!221, !195, i64 0}
!249 = !{!221, !195, i64 8}
!250 = distinct !{!250, !240}
!251 = !{!"branch_weights", i32 0, i32 -2147483648}
!252 = distinct !{!252, !240}
!253 = !{!"branch_weights", i32 127, i32 5057}
!254 = distinct !{!254, !240}
!255 = !{!"branch_weights", i32 360732160, i32 1786751488}
!256 = !{!225, !209, i64 296}
!257 = !{i8 0, i8 2}
!258 = distinct !{!258, !240}
!259 = distinct !{!259, !240}
!260 = distinct !{!260, !240}
!261 = distinct !{!261, !240}
!262 = distinct !{!262, !240}
!263 = distinct !{!263, !240}
!264 = distinct !{!264, !240}
!265 = distinct !{!265, !240}
!266 = !{!"branch_weights", i32 -2147483648, i32 0}
!267 = distinct !{!267, !240}
!268 = !{!"branch_weights", i32 1, i32 127}
!269 = !{!"branch_weights", i32 36, i32 81}
!270 = !{!"branch_weights", i32 1, i32 116}
!271 = !{!"branch_weights", i32 127, i32 7297}
!272 = distinct !{!272, !240}
!273 = !{!"ipa-reference.c:generate_summary"}
!274 = !{!"branch_weights", i32 127, i32 2433}
!275 = distinct !{!275, !240}
!276 = !{!"branch_weights", i32 40, i32 36}
!277 = !{!"branch_weights", i32 127, i32 4673}
!278 = distinct !{!278, !240}
!279 = !{!"branch_weights", i32 127, i32 2369}
!280 = distinct !{!280, !240}
!281 = !{!"branch_weights", i32 1, i32 1}
!282 = distinct !{!282, !240}
!283 = distinct !{!283, !240}
!284 = distinct !{!284, !240}
!285 = !{!"branch_weights", i32 1, i32 40}
!286 = distinct !{!286, !240}
!287 = !{!"branch_weights", i32 5, i32 1}
!288 = distinct !{!288, !240}
!289 = distinct !{!289, !240}
!290 = distinct !{!290, !240}
!291 = !{!"ipa-reference.c:ipa_reference_write_summary"}
!292 = !{i64 0, i64 8, !211, i64 8, i64 4, !208}
!293 = !{i64 0, i64 4, !208}
!294 = distinct !{!294, !240}
!295 = !{!296, !195, i64 16}
!296 = !{!"lto_simple_output_block", !209, i64 0, !195, i64 8, !195, i64 16}
!297 = !{!296, !195, i64 8}
!298 = !{!299, !195, i64 168}
!299 = !{!"lto_out_decl_state", !196, i64 0, !195, i64 168, !195, i64 176}
!300 = distinct !{!300, !240}
!301 = distinct !{!301, !240}
!302 = distinct !{!302, !240}
!303 = !{!"ipa-reference.c:ipa_reference_read_summary"}
!304 = !{!305, !195, i64 16}
!305 = !{!"lto_file_decl_data", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !209, i64 40, !195, i64 48, !195, i64 56}
!306 = distinct !{!306, !240}
!307 = distinct !{!307, !240}
!308 = distinct !{!308, !240}
!309 = !{!228, !228, i64 0}
!310 = distinct !{!310, !240}
!311 = !{!"function_entry_count", i64 461452}
!312 = !{!"ipa-reference.c:get_reference_vars_info"}
!313 = !{!"branch_weights", i32 1, i32 461453}
!314 = !{!"branch_weights", i32 461418, i32 36}
!315 = !{!"function_entry_count", i64 461575}
!316 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_length"}
!317 = !{!"branch_weights", i32 3, i32 461574}
!318 = !{!319, !209, i64 0}
!319 = !{!"VEC_ipa_reference_vars_info_t_base", !209, i64 0, !209, i64 4, !196, i64 8}
!320 = !{!"function_entry_count", i64 461417}
!321 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_index"}
!322 = !{!"function_entry_count", i64 16389}
!323 = !{!"ipa-reference.c:read_write_all_from_decl"}
!324 = !{!"branch_weights", i32 16390, i32 1}
!325 = !{!"branch_weights", i32 32781, i32 268632100}
!326 = !{!"function_entry_count", i64 80}
!327 = !{!"ipa-reference.c:propagate_bits"}
!328 = !{!"branch_weights", i32 52785, i32 16390}
!329 = !{!"branch_weights", i32 1, i32 52785}
!330 = !{!"branch_weights", i32 52785, i32 1}
!331 = distinct !{!331, !240}
!332 = !{!"ipa-reference.c:copy_global_bitmap"}
!333 = !{!"function_entry_count", i64 3}
!334 = !{!"ipa-reference.c:bmp_iter_set_init"}
!335 = !{!336, !195, i64 0}
!336 = !{!"bitmap_head_def", !195, i64 0, !195, i64 8, !209, i64 16, !195, i64 24}
!337 = !{!338, !195, i64 0}
!338 = !{!"", !195, i64 0, !195, i64 8, !209, i64 16, !228, i64 24}
!339 = !{!338, !195, i64 8}
!340 = !{!"branch_weights", i32 3, i32 2}
!341 = !{!342, !209, i64 16}
!342 = !{!"bitmap_element_def", !195, i64 0, !195, i64 8, !209, i64 16, !196, i64 24}
!343 = !{!338, !209, i64 16}
!344 = !{!338, !228, i64 24}
!345 = !{!"ipa-reference.c:bmp_iter_set"}
!346 = !{!"branch_weights", i32 38, i32 5}
!347 = !{!"branch_weights", i32 155, i32 1}
!348 = !{!"branch_weights", i32 4677, i32 155}
!349 = distinct !{!349, !240}
!350 = !{!"branch_weights", i32 1, i32 139}
!351 = !{!"branch_weights", i32 32, i32 35}
!352 = !{!"branch_weights", i32 139, i32 125}
!353 = distinct !{!353, !240}
!354 = !{!342, !195, i64 0}
!355 = !{!"branch_weights", i32 4, i32 32}
!356 = !{!"ipa-reference.c:get_static_name"}
!357 = !{!358, !195, i64 176}
!358 = !{!"lang_hooks", !195, i64 0, !228, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !195, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152, !195, i64 160, !195, i64 168, !195, i64 176, !195, i64 184, !195, i64 192, !195, i64 200, !195, i64 208, !195, i64 216, !195, i64 224, !195, i64 232, !359, i64 240, !360, i64 248, !361, i64 256, !362, i64 272, !363, i64 432, !364, i64 560, !195, i64 584, !195, i64 592, !195, i64 600, !195, i64 608, !195, i64 616, !195, i64 624, !195, i64 632, !195, i64 640, !195, i64 648, !195, i64 656, !195, i64 664, !196, i64 672}
!359 = !{!"lang_hooks_for_tree_inlining", !195, i64 0}
!360 = !{!"lang_hooks_for_callgraph", !195, i64 0}
!361 = !{!"lang_hooks_for_tree_dump", !195, i64 0, !195, i64 8}
!362 = !{!"lang_hooks_for_decls", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !195, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152}
!363 = !{!"lang_hooks_for_types", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !195, i64 104, !195, i64 112, !196, i64 120}
!364 = !{!"lang_hooks_for_lto", !195, i64 0, !195, i64 8, !195, i64 16}
!365 = !{!366, !228, i64 8}
!366 = !{!"splay_tree_node_s", !228, i64 0, !228, i64 8, !195, i64 16, !195, i64 24}
!367 = !{!"function_entry_count", i64 38}
!368 = !{!"ipa-reference.c:bmp_iter_next"}
!369 = !{!"function_entry_count", i64 42}
!370 = !{!"ipa-reference.c:clean_function"}
!371 = !{!"branch_weights", i32 1, i32 43}
!372 = !{!"branch_weights", i32 1893, i32 43}
!373 = !{!"branch_weights", i32 87, i32 1849}
!374 = !{!"function_entry_count", i64 122}
!375 = !{!"ipa-reference.c:clean_function_local_data"}
!376 = !{!"branch_weights", i32 43, i32 81}
!377 = !{!"branch_weights", i32 163, i32 6561}
!378 = !{!"ipa-reference.c:set_reference_vars_info"}
!379 = !{!"branch_weights", i32 2, i32 122}
!380 = !{!"branch_weights", i32 122, i32 1}
!381 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared"}
!382 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_replace"}
!383 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_heap_safe_grow"}
!384 = !{}
!385 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_address"}
!386 = !{!"branch_weights", i32 1, i32 2}
!387 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_heap_reserve_exact"}
!388 = !{i32 0, i32 2}
!389 = !{!"ipa-reference.c:VEC_ipa_reference_vars_info_t_base_space"}
!390 = !{!319, !209, i64 4}
!391 = !{!"ipa-reference.c:ipa_init"}
!392 = !{!"ipa-reference.c:varpool_first_static_initializer"}
!393 = !{!394, !195, i64 0}
!394 = !{!"varpool_node", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !209, i64 32, !209, i64 36, !209, i64 36, !209, i64 36, !209, i64 36, !209, i64 36, !209, i64 36, !209, i64 36}
!395 = !{!"branch_weights", i32 127, i32 129}
!396 = distinct !{!396, !240}
!397 = !{!"function_entry_count", i64 39}
!398 = !{!"ipa-reference.c:analyze_variable"}
!399 = !{!400, !195, i64 32}
!400 = !{!"walk_stmt_info", !401, i64 0, !195, i64 24, !195, i64 32, !196, i64 40, !196, i64 41, !196, i64 42, !196, i64 43, !195, i64 48}
!401 = !{!"", !195, i64 0, !195, i64 8, !195, i64 16}
!402 = !{!"ipa-reference.c:varpool_next_static_initializer"}
!403 = !{!394, !195, i64 16}
!404 = !{!"branch_weights", i32 2, i32 39}
!405 = !{!"branch_weights", i32 39, i32 1}
!406 = !{!"branch_weights", i32 1, i32 39}
!407 = distinct !{!407, !240}
!408 = !{!"ipa-reference.c:analyze_function"}
!409 = !{!"branch_weights", i32 40, i32 1}
!410 = !{!411, !195, i64 8}
!411 = !{!"function", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !195, i64 96, !209, i64 104, !209, i64 108, !209, i64 112, !209, i64 116, !209, i64 120, !209, i64 124, !195, i64 128, !209, i64 136, !209, i64 137, !209, i64 138, !209, i64 138, !209, i64 138, !209, i64 138, !209, i64 138, !209, i64 138, !209, i64 138, !209, i64 139, !209, i64 139, !209, i64 139, !209, i64 139, !209, i64 139, !209, i64 139, !209, i64 139}
!412 = !{!413, !195, i64 0}
!413 = !{!"control_flow_graph", !195, i64 0, !195, i64 8, !195, i64 16, !209, i64 24, !209, i64 28, !209, i64 32, !195, i64 40, !209, i64 48, !196, i64 52, !196, i64 60, !209, i64 68, !209, i64 72}
!414 = !{!415, !195, i64 56}
!415 = !{!"basic_block_def", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !196, i64 32, !195, i64 48, !195, i64 56, !196, i64 64, !228, i64 72, !209, i64 80, !209, i64 84, !209, i64 88, !209, i64 92, !209, i64 96}
!416 = !{!413, !195, i64 8}
!417 = !{!"branch_weights", i32 1, i32 159}
!418 = !{!"branch_weights", i32 41080, i32 105492}
!419 = !{!"branch_weights", i32 41079, i32 1}
!420 = !{!"branch_weights", i32 1, i32 61671}
!421 = !{!"branch_weights", i32 20592, i32 41079}
!422 = distinct !{!422, !240}
!423 = !{!"branch_weights", i32 0, i32 41080}
!424 = distinct !{!424, !240}
!425 = !{i64 0, i64 8, !211, i64 8, i64 8, !211, i64 16, i64 8, !211}
!426 = !{!"branch_weights", i32 146571, i32 1}
!427 = !{!"branch_weights", i32 208590, i32 146571}
!428 = distinct !{!428, !240}
!429 = !{!"branch_weights", i32 159, i32 586129}
!430 = distinct !{!430, !240}
!431 = !{!"ipa-reference.c:get_static_decl"}
!432 = !{!"ipa-reference.c:add_new_function"}
!433 = !{!"ipa-reference.c:remove_node_data"}
!434 = !{!"ipa-reference.c:duplicate_node_data"}
!435 = !{!"branch_weights", i32 85, i32 1}
!436 = !{!"branch_weights", i32 42, i32 1}
!437 = !{!"function_entry_count", i64 82}
!438 = !{!"ipa-reference.c:get_local_reference_vars_info"}
!439 = !{!"branch_weights", i32 1, i32 83}
!440 = !{!"ipa-reference.c:init_function_info"}
!441 = !{!"ipa-reference.c:copy_local_bitmap"}
!442 = !{!"ipa-reference.c:scan_initializer_for_static_refs"}
!443 = !{!"branch_weights", i32 81, i32 1600}
!444 = !{!"function_entry_count", i64 134}
!445 = !{!"ipa-reference.c:mark_address_taken"}
!446 = !{!"branch_weights", i32 3844, i32 4724}
!447 = !{!"branch_weights", i32 1, i32 62}
!448 = !{!"function_entry_count", i64 91312}
!449 = !{!"ipa-reference.c:has_proper_scope_for_analysis"}
!450 = !{!"branch_weights", i32 91313, i32 1}
!451 = !{!"branch_weights", i32 -1394372981, i32 1970749}
!452 = !{!"branch_weights", i32 62, i32 1}
!453 = !{!"branch_weights", i32 39, i32 24}
!454 = !{!"ipa-reference.c:add_static_var"}
!455 = !{!"function_entry_count", i64 689381}
!456 = !{!"ipa-reference.c:gsi_end_p"}
!457 = !{!401, !195, i64 0}
!458 = !{!"function_entry_count", i64 396239}
!459 = !{!"ipa-reference.c:gsi_stmt"}
!460 = !{!461, !195, i64 0}
!461 = !{!"gimple_seq_node_d", !195, i64 0, !195, i64 8, !195, i64 16}
!462 = !{!"function_entry_count", i64 41079}
!463 = !{!"ipa-reference.c:op_iter_init_phiuse"}
!464 = !{!465, !196, i64 0}
!465 = !{!"ssa_operand_iterator_d", !196, i64 0, !209, i64 4, !195, i64 8, !195, i64 16, !209, i64 24, !209, i64 28, !195, i64 32}
!466 = !{!"branch_weights", i32 40924, i32 157}
!467 = !{!465, !195, i64 32}
!468 = !{!465, !209, i64 28}
!469 = !{!465, !209, i64 4}
!470 = !{!"function_entry_count", i64 102749}
!471 = !{!"ipa-reference.c:op_iter_done"}
!472 = !{!"function_entry_count", i64 61670}
!473 = !{!"ipa-reference.c:get_use_from_ptr"}
!474 = !{!475, !195, i64 24}
!475 = !{!"ssa_use_operand_d", !195, i64 0, !195, i64 8, !196, i64 16, !195, i64 24}
!476 = !{!"function_entry_count", i64 61826}
!477 = !{!"ipa-reference.c:op_iter_next_use"}
!478 = !{!465, !195, i64 16}
!479 = !{!"branch_weights", i32 61827, i32 1}
!480 = !{!481, !195, i64 0}
!481 = !{!"use_optype_d", !195, i64 0, !475, i64 8}
!482 = !{!465, !209, i64 24}
!483 = !{!"branch_weights", i32 61671, i32 157}
!484 = !{!"ipa-reference.c:gsi_next"}
!485 = !{!461, !195, i64 16}
!486 = !{!"function_entry_count", i64 146571}
!487 = !{!"ipa-reference.c:gsi_start_bb"}
!488 = !{!401, !195, i64 8}
!489 = !{!401, !195, i64 16}
!490 = !{!"function_entry_count", i64 355160}
!491 = !{!"ipa-reference.c:scan_stmt_for_static_refs"}
!492 = !{!"branch_weights", i32 355161, i32 1}
!493 = !{!"branch_weights", i32 1, i32 355161}
!494 = !{!"branch_weights", i32 286033, i32 69129}
!495 = !{i32 0, i32 256}
!496 = !{!"branch_weights", i32 1, i32 286033}
!497 = !{!"ipa-reference.c:gimple_phi_result"}
!498 = !{!"ipa-reference.c:clear_and_done_ssa_iter"}
!499 = !{!"function_entry_count", i64 156}
!500 = !{!"ipa-reference.c:gimple_phi_num_args"}
!501 = !{!"ipa-reference.c:gimple_phi_arg_imm_use_ptr"}
!502 = !{!"ipa-reference.c:gimple_phi_arg"}
!503 = !{!"ipa-reference.c:bb_seq"}
!504 = !{!415, !209, i64 96}
!505 = !{!"branch_weights", i32 146572, i32 1}
!506 = !{!"branch_weights", i32 1, i32 146572}
!507 = !{!508, !195, i64 0}
!508 = !{!"gimple_bb_info", !195, i64 0, !195, i64 8}
!509 = !{!"ipa-reference.c:gimple_seq_first"}
!510 = !{!511, !195, i64 0}
!511 = !{!"gimple_seq_d", !195, i64 0, !195, i64 8, !195, i64 16}
!512 = !{!"ipa-reference.c:is_gimple_debug"}
!513 = !{!"function_entry_count", i64 91430}
!514 = !{!"ipa-reference.c:mark_load"}
!515 = !{!"branch_weights", i32 91252, i32 180}
!516 = !{!"branch_weights", i32 91252, i32 1}
!517 = !{!"ipa-reference.c:mark_store"}
!518 = !{!"ipa-reference.c:mark_address"}
!519 = !{!"branch_weights", i32 1, i32 134}
!520 = !{!"branch_weights", i32 134, i32 7}
!521 = distinct !{!521, !240}
!522 = !{!"ipa-reference.c:is_gimple_call"}
!523 = !{!"function_entry_count", i64 69128}
!524 = !{!"ipa-reference.c:check_call"}
!525 = !{!"branch_weights", i32 1, i32 69129}
!526 = !{!"function_entry_count", i64 1203736}
!527 = !{!"ipa-reference.c:gimple_code"}
!528 = !{!"ipa-reference.c:check_asm_memory_clobber"}
!529 = distinct !{!529, !240}
!530 = !{!"function_entry_count", i64 274}
!531 = !{!"ipa-reference.c:handled_component_p"}
!532 = !{!"branch_weights", i32 135, i32 1, i32 13, i32 129, i32 1, i32 1, i32 1, i32 1}
!533 = !{!"ipa-reference.c:gimple_call_fndecl"}
!534 = !{!"branch_weights", i32 69129, i32 1}
!535 = !{!"ipa-reference.c:gimple_call_fn"}
!536 = !{!"ipa-reference.c:gimple_op"}
!537 = !{!"ipa-reference.c:gimple_has_ops"}
!538 = !{!"ipa-reference.c:gimple_ops"}
!539 = !{!"ipa-reference.c:gimple_statement_structure"}
!540 = !{!"ipa-reference.c:gss_for_code"}
!541 = !{!"ipa-reference.c:gimple_asm_nclobbers"}
!542 = !{!"ipa-reference.c:gimple_asm_clobber_op"}
!543 = !{!"ipa-reference.c:csi_start"}
!544 = !{!"ipa-reference.c:csi_end_p"}
!545 = !{!546, !195, i64 8}
!546 = !{!"cgraph_node_set_def", !195, i64 0, !195, i64 8, !195, i64 16}
!547 = !{!"ipa-reference.c:write_node_summary_p"}
!548 = !{!225, !195, i64 200}
!549 = !{!"ipa-reference.c:csi_node"}
!550 = !{!"ipa-reference.c:csi_next"}
!551 = !{!552, !209, i64 8}
!552 = !{!"", !195, i64 0, !209, i64 8}
!553 = !{!"ipa-reference.c:VEC_cgraph_node_ptr_base_length"}
!554 = !{!555, !209, i64 0}
!555 = !{!"VEC_cgraph_node_ptr_base", !209, i64 0, !209, i64 4, !196, i64 8}
!556 = !{!"ipa-reference.c:VEC_cgraph_node_ptr_base_index"}
!557 = !{!"ipa-reference.c:lto_file_decl_data_get_var_decl"}
!558 = !{!305, !195, i64 0}
!559 = !{!560, !209, i64 8}
!560 = !{!"lto_tree_ref_table", !195, i64 0, !209, i64 8}
!561 = !{!560, !195, i64 0}
