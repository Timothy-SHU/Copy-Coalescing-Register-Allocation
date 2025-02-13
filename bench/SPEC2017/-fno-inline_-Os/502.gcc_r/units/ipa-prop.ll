; ModuleID = 'ipa-prop.c'
source_filename = "ipa-prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ipa_node_params = type { i32, ptr, ptr, ptr, i64, i8 }
%struct.ipa_func_list = type { ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ipa_param_descriptor = type { %struct.ipcp_lattice, ptr, i8 }
%struct.ipcp_lattice = type { i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.ipa_edge_args = type { i32, ptr }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ipa_pass_through_data = type { ptr, i32, i32 }
%struct.ipa_param_call_note = type { i64, ptr, ptr, i32, i32, i32, i16, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.ipa_parm_adjustment = type { ptr, ptr, ptr, ptr, ptr, i64, i32, i8 }
%struct.VEC_ipa_parm_adjustment_t_base = type { i32, i32, [1 x %struct.ipa_parm_adjustment] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.cgraph_node_set_iterator = type { ptr, i32 }
%struct.output_block = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_input_block = type { ptr, i32, i32 }
%struct.lto_function_header = type { %struct.lto_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }

@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@ipa_node_params_vector = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"ipa-prop.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ipa_edge_args_vector = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_edge_max_uid = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"  Jump functions of caller  %s:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"    callsite  %s \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-> %s :: \0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"       param %d: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CONST: \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"CONST MEMBER PTR: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"PASS THROUGH: \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%d, op %s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"ANCESTOR: \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%d, offset %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\0AJump functions:\0A\00", align 1
@flag_wpa = external local_unnamed_addr global i32, align 4
@edge_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@edge_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@flag_indirect_inlining = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"  function  %s Trees :: \0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"    param %d : %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"(unnamed)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c" modified\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0AFunction parameters:\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SYNTH\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"replacing stmt:\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"with stmt:\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"IPA param adjustments: \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"                 \00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"%i. base_index: %i - \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c", base: \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c", reduction: \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c", new_ssa_base: \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c", copy_param\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c", remove_param\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c", offset %li\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c", by_ref\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c", type: \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"ipa-prop: Discovered an indirect call to a known target (\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [10 x i8] c") in %s: \00", align 1
@cgraph_max_uid = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_push_func_to_list_1(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !161 {
  %4 = getelementptr inbounds %struct.ipa_node_params, ptr %2, i64 0, i32 5
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 8
  store i8 %6, ptr %4, align 8
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  store ptr %1, ptr %7, align 8, !tbaa !162
  %8 = load ptr, ptr %0, align 8, !tbaa !167
  %9 = getelementptr inbounds %struct.ipa_func_list, ptr %7, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !168
  store ptr %7, ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ipa_init_func_list() local_unnamed_addr #0 !prof !169 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  store ptr null, ptr %1, align 8, !tbaa !167
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !167
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4, !prof !170

4:                                                ; preds = %0, %19
  %5 = phi ptr [ %21, %19 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10, !prof !171

10:                                               ; preds = %4
  %11 = load ptr, ptr @ipa_node_params_vector, align 8
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 24
  %13 = load i32, ptr %12, align 8, !tbaa !172
  %14 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %11, i32 noundef %13) #21
  %15 = and i16 %7, 9
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18, !prof !182

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #19
  br label %18

18:                                               ; preds = %10, %17
  call void @ipa_push_func_to_list_1(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %14) #21
  br label %19

19:                                               ; preds = %4, %18
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !167
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !prof !183, !llvm.loop !184

23:                                               ; preds = %19
  %24 = load ptr, ptr %1, align 8, !tbaa !167
  br label %25

25:                                               ; preds = %23, %0
  %26 = phi ptr [ %24, %23 ], [ null, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_node_params_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !186 !PGOFuncName !187 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local ptr @ipa_pop_func_from_list(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !161 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = getelementptr inbounds %struct.ipa_func_list, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  store ptr %4, ptr %0, align 8, !tbaa !167
  %5 = load ptr, ptr %2, align 8, !tbaa !162
  tail call void @free(ptr noundef %2) #21
  %6 = load ptr, ptr @ipa_node_params_vector, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !172
  %9 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %6, i32 noundef %8) #21
  %10 = getelementptr inbounds %struct.ipa_node_params, ptr %9, i64 0, i32 5
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, -9
  store i8 %12, ptr %10, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_initialize_node_params(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !188 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !172
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #21
  %6 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13, !prof !191

9:                                                ; preds = %1
  tail call fastcc void @ipa_count_formal_params(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  %10 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #21
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 32) #19
  store ptr %12, ptr %6, align 8, !tbaa !189
  tail call fastcc void @ipa_populate_param_decls(ptr noundef nonnull %0, ptr noundef nonnull %5) #21
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipa_count_formal_params(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !prof !188 !PGOFuncName !192 {
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  %4 = tail call fastcc i32 @count_formal_params_1(ptr noundef %3) #21
  tail call fastcc void @ipa_set_param_count(ptr noundef %1, i32 noundef %4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ipa_get_param_count(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !194 !PGOFuncName !195 {
  %2 = load i32, ptr %0, align 8, !tbaa !196
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipa_populate_param_decls(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !188 !PGOFuncName !197 {
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7, !prof !199

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ipa_node_params, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %14, %10 ]
  %12 = phi ptr [ %5, %7 ], [ %16, %10 ]
  %13 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %9, i64 %11, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !200
  %14 = add nuw i64 %11, 1
  %15 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !198
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !prof !203, !llvm.loop !204

18:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_detect_param_modifications(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !188 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %4 = load ptr, ptr @ipa_node_params_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %4, i32 noundef %6) #21
  %8 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %7) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10, !prof !205

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 5
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %47, !prof !191

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !198
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = load ptr, ptr %19, align 8, !tbaa !208
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !210
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !212
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %44, label %33, !prof !199

26:                                               ; preds = %37, %33
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !210
  %29 = load ptr, ptr %18, align 8, !tbaa !206
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !212
  %32 = icmp eq ptr %28, %31
  br i1 %32, label %42, label %33, !prof !213, !llvm.loop !214

33:                                               ; preds = %15, %26
  %34 = phi ptr [ %28, %26 ], [ %22, %15 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %34) #21
  %35 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !215
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %26, !prof !216

37:                                               ; preds = %33, %37
  %38 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  %39 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %38, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull @visit_store_addr_for_mod_analysis, ptr noundef nonnull @visit_store_addr_for_mod_analysis) #19
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !215
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %37, label %26, !prof !217, !llvm.loop !218

42:                                               ; preds = %26
  %43 = load i8, ptr %11, align 8
  br label %44

44:                                               ; preds = %42, %15
  %45 = phi i8 [ %43, %42 ], [ %12, %15 ]
  %46 = or i8 %45, 2
  store i8 %46, ptr %11, align 8
  br label %47

47:                                               ; preds = %1, %10, %44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !219 !PGOFuncName !220 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #21
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !223
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !225 !PGOFuncName !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !227 !PGOFuncName !228 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @visit_store_addr_for_mod_analysis(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !prof !231 !PGOFuncName !232 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 34
  br i1 %6, label %7, label %18, !prof !233

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @ipa_get_param_decl_index(ptr noundef %2, ptr noundef nonnull %1) #21
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @.str.1) #19
  br label %11

11:                                               ; preds = %7, %10
  %12 = getelementptr inbounds %struct.ipa_node_params, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = sext i32 %8 to i64
  %15 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %13, i64 %14, i32 2
  %16 = load i8, ptr %15, align 8
  %17 = or i8 %16, 1
  store i8 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %11, %3
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !227 !PGOFuncName !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !235
  store ptr %4, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_count_arguments(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !236 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #21, !range !215
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !240

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %3) #21
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8
  %10 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %9) #21
  %11 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !241
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %16, label %13, !prof !242

13:                                               ; preds = %7
  %14 = add nsw i32 %11, 1
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %14) #21
  %15 = load ptr, ptr @ipa_edge_args_vector, align 8
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !243
  %20 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %17, i32 noundef %19) #21
  tail call fastcc void @ipa_set_cs_argument_count(ptr noundef nonnull %20, i32 noundef %8) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !244 !PGOFuncName !245 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !246
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !247 !PGOFuncName !248 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !249 !PGOFuncName !250 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !251

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !252
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !188 !PGOFuncName !254 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %2) #21
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) #21
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef %4) #21
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ipa_edge_args, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ipa_set_cs_argument_count(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !255 !PGOFuncName !256 {
  store i32 %1, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_edge_args_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !259 !PGOFuncName !260 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_print_node_jump_functions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !261 {
  %3 = tail call ptr @cgraph_node_name(ptr noundef %1) #19
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %2, %77
  %9 = phi ptr [ %79, %77 ], [ %6, %2 ]
  %10 = tail call fastcc zeroext i8 @ipa_edge_args_info_available_for_edge_p(ptr noundef nonnull %9) #21, !range !215
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @cgraph_node_name(ptr noundef %1) #19
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %13) #21
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !262
  %17 = tail call ptr @cgraph_node_name(ptr noundef %16) #19
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %17) #21
  %19 = load ptr, ptr @ipa_edge_args_vector, align 8
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !243
  %22 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %19, i32 noundef %21) #21
  %23 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %22) #21
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %12, %74
  %26 = phi i32 [ %75, %74 ], [ 0, %12 ]
  %27 = load ptr, ptr @ipa_edge_args_vector, align 8
  %28 = load i32, ptr %20, align 4, !tbaa !243
  %29 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %27, i32 noundef %28) #21
  %30 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %29, i32 noundef %26) #21
  %31 = load i32, ptr %30, align 8, !tbaa !263
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %26) #21
  switch i32 %31, label %74 [
    i32 0, label %33
    i32 1, label %35
    i32 2, label %40
    i32 3, label %48
    i32 4, label %67
  ]

33:                                               ; preds = %25
  %34 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %0)
  br label %74

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 7, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 0) #19
  %39 = tail call i32 @fputc(i32 10, ptr %0)
  br label %74

40:                                               ; preds = %25
  %41 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %0)
  %42 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !198
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %43, i32 noundef 0) #19
  %44 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  %45 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !198
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %46, i32 noundef 0) #19
  %47 = tail call i32 @fputc(i32 10, ptr %0)
  br label %74

48:                                               ; preds = %25
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 14, i64 1, ptr %0)
  %50 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1, i32 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !198
  %52 = getelementptr inbounds i8, ptr %30, i64 20
  %53 = load i32, ptr %52, align 4, !tbaa !198
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !167
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %51, ptr noundef %56) #21
  %58 = load i32, ptr %52, align 4, !tbaa !198
  %59 = icmp eq i32 %58, 116
  br i1 %59, label %64, label %60

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %63 = load ptr, ptr %61, align 8, !tbaa !198
  tail call void @print_generic_expr(ptr noundef %62, ptr noundef %63, i32 noundef 0) #19
  br label %64

64:                                               ; preds = %60, %48
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %66 = tail call i32 @fputc(i32 10, ptr %65)
  br label %74

67:                                               ; preds = %25
  %68 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr %0)
  %69 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1
  %70 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1, i32 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !198
  %72 = load i64, ptr %69, align 8, !tbaa !198
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %71, i64 noundef %72) #21
  br label %74

74:                                               ; preds = %25, %33, %40, %67, %64, %35
  %75 = add nuw nsw i32 %26, 1
  %76 = icmp eq i32 %75, %23
  br i1 %76, label %77, label %25, !llvm.loop !265

77:                                               ; preds = %74, %12, %8
  %78 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !167
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %8, !llvm.loop !266

81:                                               ; preds = %77, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ipa_edge_args_info_available_for_edge_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !261 !PGOFuncName !267 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !243
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8
  %5 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %4) #21
  %6 = icmp ult i32 %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ipa_get_cs_argument_count(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !268 !PGOFuncName !269 {
  %2 = load i32, ptr %0, align 8, !tbaa !257
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ipa_get_ith_jump_func(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !261 !PGOFuncName !270 {
  %3 = getelementptr inbounds %struct.ipa_edge_args, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !271
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_jump_func, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_print_all_jump_functions(ptr noundef %0) local_unnamed_addr #0 !prof !261 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 17, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !167
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @ipa_print_node_jump_functions(ptr noundef %0, ptr noundef nonnull %6) #21
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !272

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_compute_jump_functions(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !236 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !273
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %6) #21
  %8 = load ptr, ptr @ipa_edge_args_vector, align 8
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !243
  %11 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %8, i32 noundef %10) #21
  %12 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %11) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14, !prof !240

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ipa_edge_args, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !271
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %35, !prof !242

18:                                               ; preds = %14
  %19 = sext i32 %12 to i64
  %20 = shl nsw i64 %19, 5
  %21 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %20) #19
  store ptr %21, ptr %15, align 8, !tbaa !271
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !237
  %24 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %23) #21, !range !215
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28, !prof !240

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 670, ptr noundef nonnull @.str.1) #19
  %27 = load ptr, ptr %15, align 8, !tbaa !271
  br label %28

28:                                               ; preds = %18, %26
  %29 = phi ptr [ %21, %18 ], [ %27, %26 ]
  tail call fastcc void @compute_scalar_jump_functions(ptr noundef nonnull %7, ptr noundef %29, ptr noundef %23) #21
  %30 = load ptr, ptr %15, align 8, !tbaa !271
  %31 = tail call fastcc zeroext i8 @compute_pass_through_member_ptrs(ptr noundef nonnull %7, ptr noundef %30, ptr noundef %23) #21, !range !215
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33, !prof !242

33:                                               ; preds = %28
  %34 = load ptr, ptr %15, align 8, !tbaa !271
  tail call fastcc void @compute_cst_member_ptr_arguments(ptr noundef %34, ptr noundef %23) #21
  br label %35

35:                                               ; preds = %28, %1, %14, %33
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_scalar_jump_functions(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !prof !236 !PGOFuncName !274 {
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6, !prof !275

6:                                                ; preds = %3, %34
  %7 = phi i64 [ %35, %34 ], [ 0, %3 ]
  %8 = trunc i64 %7 to i32
  %9 = tail call fastcc ptr @gimple_call_arg(ptr noundef %2, i32 noundef %8) #21
  %10 = tail call zeroext i8 @is_gimple_ip_invariant(ptr noundef %9) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !242

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7
  store i32 1, ptr %13, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7, i32 1
  store ptr %9, ptr %14, align 8, !tbaa !198
  br label %34

15:                                               ; preds = %6
  %16 = load i64, ptr %9, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %34, !prof !242

19:                                               ; preds = %15
  %20 = and i64 %16, 4294967296
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22, !prof !240

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !198
  %25 = tail call fastcc i32 @ipa_get_param_decl_index(ptr noundef %0, ptr noundef %24) #21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %34, !prof !242

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7
  store i32 3, ptr %28, align 8, !tbaa !263
  %29 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7, i32 1
  %30 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %29, i64 0, i32 1
  store i32 %25, ptr %30, align 8, !tbaa !198
  %31 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %29, i64 0, i32 2
  store i32 116, ptr %31, align 4, !tbaa !198
  br label %34

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7
  tail call fastcc void @compute_complex_pass_through(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %9) #21
  br label %34

34:                                               ; preds = %22, %27, %12, %32, %15
  %35 = add nuw nsw i64 %7, 1
  %36 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #21
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %6, label %39, !prof !275, !llvm.loop !276

39:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @compute_pass_through_member_ptrs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !prof !236 !PGOFuncName !277 {
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6, !prof !275

6:                                                ; preds = %3, %31
  %7 = phi i64 [ %33, %31 ], [ 0, %3 ]
  %8 = phi i8 [ %32, %31 ], [ 0, %3 ]
  %9 = trunc i64 %7 to i32
  %10 = tail call fastcc ptr @gimple_call_arg(ptr noundef %2, i32 noundef %9) #21
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !198
  %13 = tail call fastcc zeroext i8 @type_like_member_ptr_p(ptr noundef %12, ptr noundef null, ptr noundef null) #21, !range !215
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15, !prof !242

15:                                               ; preds = %6
  %16 = load i64, ptr %10, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 34
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @ipa_get_param_decl_index(ptr noundef %0, ptr noundef nonnull %10) #21
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1) #19
  br label %23

23:                                               ; preds = %19, %22
  %24 = tail call fastcc zeroext i8 @ipa_is_param_modified(ptr noundef %0, i32 noundef %20) #21, !range !215
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7
  store i32 3, ptr %27, align 8, !tbaa !263
  %28 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 %7, i32 1
  %29 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %28, i64 0, i32 1
  store i32 %20, ptr %29, align 8, !tbaa !198
  %30 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %28, i64 0, i32 2
  store i32 116, ptr %30, align 4, !tbaa !198
  br label %31

31:                                               ; preds = %15, %26, %23, %6
  %32 = phi i8 [ %8, %6 ], [ %8, %26 ], [ 1, %23 ], [ 1, %15 ]
  %33 = add nuw nsw i64 %7, 1
  %34 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #21
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %6, label %37, !prof !275, !llvm.loop !278

37:                                               ; preds = %31, %3
  %38 = phi i8 [ 0, %3 ], [ %32, %31 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_cst_member_ptr_arguments(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !279 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2, %22
  %8 = phi i64 [ %23, %22 ], [ 0, %2 ]
  %9 = trunc i64 %8 to i32
  %10 = call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %9) #21
  %11 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 %8
  %12 = load i32, ptr %11, align 8, !tbaa !263
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !198
  %17 = call fastcc zeroext i8 @type_like_member_ptr_p(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #21, !range !215
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !tbaa !167
  %21 = load ptr, ptr %4, align 8, !tbaa !167
  call fastcc void @determine_cst_member_ptr(ptr noundef %1, ptr noundef nonnull %10, ptr noundef %20, ptr noundef %21, ptr noundef nonnull %11) #21
  br label %22

22:                                               ; preds = %7, %14, %19
  %23 = add nuw nsw i64 %8, 1
  %24 = call fastcc i32 @gimple_call_num_args(ptr noundef %1) #21
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %7, label %27, !llvm.loop !280

27:                                               ; preds = %22, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_analyze_params_uses(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !188 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %4 = load ptr, ptr @ipa_node_params_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %4, i32 noundef %6) #21
  %8 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %7) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10, !prof !205

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 5
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %46, !prof !191

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !198
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = load ptr, ptr %19, align 8, !tbaa !208
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !210
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !212
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %43, label %33, !prof !199

26:                                               ; preds = %37, %33
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !210
  %29 = load ptr, ptr %18, align 8, !tbaa !206
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !212
  %32 = icmp eq ptr %28, %31
  br i1 %32, label %41, label %33, !prof !213, !llvm.loop !281

33:                                               ; preds = %15, %26
  %34 = phi ptr [ %28, %26 ], [ %22, %15 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %34) #21
  %35 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !215
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %26, !prof !216

37:                                               ; preds = %33, %37
  %38 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21
  tail call fastcc void @ipa_analyze_stmt_uses(ptr noundef nonnull %7, ptr noundef %38) #21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #21
  %39 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #21, !range !215
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %37, label %26, !prof !217, !llvm.loop !282

41:                                               ; preds = %26
  %42 = load i8, ptr %11, align 8
  br label %43

43:                                               ; preds = %41, %15
  %44 = phi i8 [ %42, %41 ], [ %12, %15 ]
  %45 = or i8 %44, 4
  store i8 %45, ptr %11, align 8
  br label %46

46:                                               ; preds = %1, %10, %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_analyze_stmt_uses(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !283 !PGOFuncName !284 {
  %3 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %1) #21, !range !215
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !285

5:                                                ; preds = %2
  tail call fastcc void @ipa_analyze_call_uses(ptr noundef %0, ptr noundef %1) #21
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ipa_propagate_indirect_call_infos(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !286 {
  %3 = load i32, ptr @flag_wpa, align 4, !tbaa !241
  %4 = icmp ne i32 %3, 0
  %5 = load ptr, ptr @ipa_node_params_vector, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %16, label %8, !prof !287

8:                                                ; preds = %2
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !288

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1167, ptr noundef nonnull @.str.1) #19
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !262
  %15 = tail call fastcc zeroext i8 @propagate_info_to_inlined_callees(ptr noundef %0, ptr noundef %14, ptr noundef %1) #21, !range !215
  br label %16

16:                                               ; preds = %2, %12
  %17 = phi i8 [ %15, %12 ], [ 0, %2 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_info_to_inlined_callees(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !289 !PGOFuncName !290 {
  %4 = tail call fastcc zeroext i8 @update_call_notes_after_inlining(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21, !range !215
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8, !prof !291

8:                                                ; preds = %3, %20
  %9 = phi ptr [ %23, %20 ], [ %6, %3 ]
  %10 = phi i8 [ %21, %20 ], [ %4, %3 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !292
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !293

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !262
  %17 = tail call fastcc zeroext i8 @propagate_info_to_inlined_callees(ptr noundef %0, ptr noundef %16, ptr noundef %2) #21, !range !215
  %18 = or i8 %17, %10
  br label %20

19:                                               ; preds = %8
  tail call fastcc void @update_jump_functions_after_inlining(ptr noundef %0, ptr noundef nonnull %9) #21
  br label %20

20:                                               ; preds = %14, %19
  %21 = phi i8 [ %10, %19 ], [ %18, %14 ]
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !prof !294, !llvm.loop !295

25:                                               ; preds = %20, %3
  %26 = phi i8 [ %4, %3 ], [ %21, %20 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_free_edge_args_substructures(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !296 {
  %2 = getelementptr inbounds %struct.ipa_edge_args, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !297

5:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %3) #19
  br label %6

6:                                                ; preds = %5, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_free_all_edge_args() local_unnamed_addr #0 !prof !169 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8
  %3 = call fastcc i32 @VEC_ipa_edge_args_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #21, !range !298
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !170

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !167
  tail call void @ipa_free_edge_args_substructures(ptr noundef %7) #21
  %8 = add nuw nsw i32 %6, 1
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8
  %10 = call fastcc i32 @VEC_ipa_edge_args_t_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %1) #21, !range !298
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !prof !299, !llvm.loop !300

12:                                               ; preds = %5, %0
  tail call fastcc void @VEC_ipa_edge_args_t_gc_free() #21
  store ptr null, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ipa_edge_args_t_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !prof !301 !PGOFuncName !302 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !303

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !252
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !304

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !167
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_free() unnamed_addr #0 !prof !169 !PGOFuncName !305 {
  %1 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !306

3:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_free_node_params_substructures(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !307 {
  %2 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !308

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #21
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !309
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !310

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.ipa_param_call_note, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !311
  store ptr %13, ptr %7, align 8, !tbaa !309
  tail call void @free(ptr noundef nonnull %11) #21
  %14 = load ptr, ptr %7, align 8, !tbaa !309
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !prof !313, !llvm.loop !314

16:                                               ; preds = %10, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_free_all_node_params() local_unnamed_addr #0 !prof !169 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = call fastcc i32 @VEC_ipa_node_params_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #21, !range !298
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !170

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !167
  tail call void @ipa_free_node_params_substructures(ptr noundef %7) #21
  %8 = add nuw nsw i32 %6, 1
  %9 = load ptr, ptr @ipa_node_params_vector, align 8
  %10 = call fastcc i32 @VEC_ipa_node_params_t_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %1) #21, !range !298
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !prof !315, !llvm.loop !316

12:                                               ; preds = %5, %0
  tail call fastcc void @VEC_ipa_node_params_t_heap_free() #21
  store ptr null, ptr @ipa_node_params_vector, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ipa_node_params_t_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !prof !317 !PGOFuncName !318 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !319

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !320
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !322

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !167
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_free() unnamed_addr #4 !prof !169 !PGOFuncName !323 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !167
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !306

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @ipa_node_params_vector, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_register_cgraph_hooks() local_unnamed_addr #0 !prof !324 {
  %1 = load ptr, ptr @edge_removal_hook_holder, align 8, !tbaa !167
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !325

3:                                                ; preds = %0
  %4 = tail call ptr @cgraph_add_edge_removal_hook(ptr noundef nonnull @ipa_edge_removal_hook, ptr noundef null) #19
  store ptr %4, ptr @edge_removal_hook_holder, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !167
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !325

8:                                                ; preds = %5
  %9 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @ipa_node_removal_hook, ptr noundef null) #19
  store ptr %9, ptr @node_removal_hook_holder, align 8, !tbaa !167
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @edge_duplication_hook_holder, align 8, !tbaa !167
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !325

13:                                               ; preds = %10
  %14 = tail call ptr @cgraph_add_edge_duplication_hook(ptr noundef nonnull @ipa_edge_duplication_hook, ptr noundef null) #19
  store ptr %14, ptr @edge_duplication_hook_holder, align 8, !tbaa !167
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !167
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !325

18:                                               ; preds = %15
  %19 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @ipa_node_duplication_hook, ptr noundef null) #19
  store ptr %19, ptr @node_duplication_hook_holder, align 8, !tbaa !167
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_edge_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_edge_removal_hook(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !261 !PGOFuncName !326 {
  %3 = load ptr, ptr @ipa_edge_args_vector, align 8
  %4 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !243
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %3, i32 noundef %6) #21
  tail call void @ipa_free_edge_args_substructures(ptr noundef nonnull %9) #21
  br label %10

10:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_node_removal_hook(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !261 !PGOFuncName !327 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !172
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #21
  tail call void @ipa_free_node_params_substructures(ptr noundef nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_edge_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_edge_duplication_hook(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !prof !328 !PGOFuncName !329 {
  tail call fastcc void @ipa_check_create_edge_args() #21
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !243
  %7 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %4, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !243
  %10 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %4, i32 noundef %9) #21
  %11 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %7) #21
  tail call fastcc void @ipa_set_cs_argument_count(ptr noundef nonnull %10, i32 noundef %11) #21
  %12 = getelementptr inbounds %struct.ipa_edge_args, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !271
  %14 = sext i32 %11 to i64
  %15 = shl nsw i64 %14, 5
  %16 = tail call fastcc ptr @duplicate_ggc_array(ptr noundef %13, i64 noundef %15) #21
  %17 = getelementptr inbounds %struct.ipa_edge_args, ptr %10, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !271
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipa_node_duplication_hook(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !prof !330 !PGOFuncName !331 {
  tail call fastcc void @ipa_check_create_node_params() #21
  %4 = load ptr, ptr @ipa_node_params_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %4, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !172
  %10 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %4, i32 noundef %9) #21
  %11 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %7) #21
  tail call fastcc void @ipa_set_param_count(ptr noundef nonnull %10, i32 noundef %11) #21
  %12 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = sext i32 %11 to i64
  %15 = shl nsw i64 %14, 5
  %16 = tail call fastcc ptr @duplicate_array(ptr noundef %13, i64 noundef %15) #21
  %17 = getelementptr inbounds %struct.ipa_node_params, ptr %10, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !189
  %18 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !332
  %20 = getelementptr inbounds %struct.ipa_node_params, ptr %10, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !332
  %21 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !333
  %23 = getelementptr inbounds %struct.ipa_node_params, ptr %10, i64 0, i32 4
  store i64 %22, ptr %23, align 8, !tbaa !333
  %24 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !167
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27, !prof !334

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ipa_node_params, ptr %10, i64 0, i32 2
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %25, %27 ], [ %35, %29 ]
  %31 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(40) %30, i64 40, i1 false)
  %32 = load ptr, ptr %28, align 8, !tbaa !309
  %33 = getelementptr inbounds %struct.ipa_param_call_note, ptr %31, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !311
  store ptr %31, ptr %28, align 8, !tbaa !309
  %34 = getelementptr inbounds %struct.ipa_param_call_note, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !167
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !313, !llvm.loop !335

37:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_all_ipa_structures_after_ipa_cp() local_unnamed_addr #0 !prof !169 {
  %1 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !241
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !306

3:                                                ; preds = %0
  tail call void @ipa_free_all_edge_args() #21
  tail call void @ipa_free_all_node_params() #21
  tail call fastcc void @ipa_unregister_cgraph_hooks() #21
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_unregister_cgraph_hooks() unnamed_addr #0 !prof !169 !PGOFuncName !336 {
  %1 = load ptr, ptr @edge_removal_hook_holder, align 8, !tbaa !167
  tail call void @cgraph_remove_edge_removal_hook(ptr noundef %1) #19
  store ptr null, ptr @edge_removal_hook_holder, align 8, !tbaa !167
  %2 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !167
  tail call void @cgraph_remove_node_removal_hook(ptr noundef %2) #19
  store ptr null, ptr @node_removal_hook_holder, align 8, !tbaa !167
  %3 = load ptr, ptr @edge_duplication_hook_holder, align 8, !tbaa !167
  tail call void @cgraph_remove_edge_duplication_hook(ptr noundef %3) #19
  store ptr null, ptr @edge_duplication_hook_holder, align 8, !tbaa !167
  %4 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !167
  tail call void @cgraph_remove_node_duplication_hook(ptr noundef %4) #19
  store ptr null, ptr @node_duplication_hook_holder, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_all_ipa_structures_after_iinln() local_unnamed_addr #0 !prof !169 {
  tail call void @ipa_free_all_edge_args() #21
  tail call void @ipa_free_all_node_params() #21
  tail call fastcc void @ipa_unregister_cgraph_hooks() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_print_node_params(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !261 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 32
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @ipa_node_params_vector, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !172
  %11 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %8, i32 noundef %10) #21
  %12 = tail call ptr @cgraph_node_name(ptr noundef nonnull %1) #19
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %12) #21
  %14 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %11) #21
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %7, %37
  %17 = phi i32 [ %39, %37 ], [ 0, %7 ]
  %18 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %11, i32 noundef %17) #21
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 34
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !198
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !337
  %28 = tail call ptr %27(ptr noundef nonnull %18, i32 noundef 2) #19
  br label %29

29:                                               ; preds = %22, %26
  %30 = phi ptr [ %28, %26 ], [ @.str.18, %22 ]
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %17, ptr noundef %30) #21
  br label %32

32:                                               ; preds = %29, %16
  %33 = tail call fastcc zeroext i8 @ipa_is_param_modified(ptr noundef nonnull %11, i32 noundef %17) #21, !range !215
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 9, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = tail call i32 @fputc(i32 10, ptr %0)
  %39 = add nuw nsw i32 %17, 1
  %40 = icmp eq i32 %39, %14
  br i1 %40, label %41, label %16, !llvm.loop !345

41:                                               ; preds = %37, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ipa_get_param(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !236 !PGOFuncName !346 {
  %3 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %4, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ipa_is_param_modified(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !261 !PGOFuncName !347 {
  %3 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %4, i64 %5, i32 2
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_print_all_params(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !261 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 22, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !167
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @ipa_print_node_params(ptr noundef %0, ptr noundef nonnull %6) #21
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !348

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ipa_get_vector_of_formal_parms(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !261 {
  %2 = tail call fastcc i32 @count_formal_params_1(ptr noundef %0) #21
  %3 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %2) #21
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !349

12:                                               ; preds = %7, %1
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_formal_params_1(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !188 !PGOFuncName !350 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !199

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !prof !203, !llvm.loop !351

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !352 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !261 !PGOFuncName !353 {
  %3 = load i32, ptr %0, align 8, !tbaa !354
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !354
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_modify_formal_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !261 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %7 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %1) #21
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.21, ptr %2
  %10 = tail call ptr @ipa_get_vector_of_formal_parms(ptr noundef %0) #21
  store ptr %10, ptr %4, align 8, !tbaa !167
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !198
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  %17 = tail call ptr @tree_last(ptr noundef nonnull %14) #19
  %18 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !198
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !167
  %21 = icmp eq ptr %19, %20
  %22 = tail call fastcc ptr @get_vector_of_formal_parm_types(ptr noundef nonnull %12) #21
  store ptr %22, ptr %5, align 8, !tbaa !167
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %10) #21
  br i1 %21, label %24, label %29

24:                                               ; preds = %16
  %25 = add i32 %23, 1
  %26 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #21
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1514, ptr noundef nonnull @.str.1) #19
  br label %34

29:                                               ; preds = %16
  %30 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #21
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1516, ptr noundef nonnull @.str.1) #19
  br label %34

33:                                               ; preds = %3
  store ptr null, ptr %5, align 8, !tbaa !167
  br label %34

34:                                               ; preds = %32, %29, %28, %24, %33
  %35 = phi i1 [ false, %24 ], [ false, %28 ], [ true, %29 ], [ true, %32 ], [ true, %33 ]
  %36 = icmp sgt i32 %7, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %34, %90
  %38 = phi ptr [ %92, %90 ], [ null, %34 ]
  %39 = phi ptr [ %91, %90 ], [ %6, %34 ]
  %40 = phi i32 [ %93, %90 ], [ 0, %34 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1527, ptr noundef nonnull @.str.1) #19
  br label %43

43:                                               ; preds = %37, %42
  %44 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %1, i32 noundef %40) #21
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %44, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !356
  %48 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %47) #21
  store ptr %48, ptr %44, align 8, !tbaa !358
  %49 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %44, i64 0, i32 7
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  br i1 %15, label %86, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %5, align 8
  %56 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %55, i32 noundef %47) #21
  %57 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %56, ptr noundef %38) #19
  br label %86

58:                                               ; preds = %43
  %59 = and i8 %50, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  %62 = and i8 %50, 4
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %44, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !359
  br i1 %63, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @build_pointer_type(ptr noundef %65) #19
  br label %68

68:                                               ; preds = %61, %66
  %69 = phi ptr [ %67, %66 ], [ %65, %61 ]
  br i1 %15, label %72, label %70

70:                                               ; preds = %68
  %71 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %69, ptr noundef %38) #19
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %71, %70 ], [ %38, %68 ]
  %74 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 34, ptr noundef null, ptr noundef %69) #19
  %75 = tail call ptr @create_tmp_var_name(ptr noundef nonnull %9) #19
  %76 = getelementptr inbounds %struct.tree_decl_minimal, ptr %74, i64 0, i32 3
  store ptr %75, ptr %76, align 8, !tbaa !198
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 5
  store ptr %69, ptr %79, align 8, !tbaa !198
  %80 = getelementptr inbounds %struct.tree_decl_minimal, ptr %74, i64 0, i32 4
  store ptr %0, ptr %80, align 8, !tbaa !198
  %81 = load i64, ptr %74, align 8
  %82 = or i64 %81, 16777216
  store i64 %82, ptr %74, align 8
  %83 = or i64 %78, 5120
  store i64 %83, ptr %77, align 8
  tail call void @layout_decl(ptr noundef nonnull %74, i32 noundef 0) #19
  %84 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %74) #19
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %74) #19
  store ptr %48, ptr %44, align 8, !tbaa !358
  %85 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %44, i64 0, i32 2
  store ptr %74, ptr %85, align 8, !tbaa !360
  br label %86

86:                                               ; preds = %53, %54, %72
  %87 = phi ptr [ %74, %72 ], [ %48, %54 ], [ %48, %53 ]
  %88 = phi ptr [ %73, %72 ], [ %57, %54 ], [ %38, %53 ]
  store ptr %87, ptr %39, align 8, !tbaa !167
  %89 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 1
  br label %90

90:                                               ; preds = %86, %58
  %91 = phi ptr [ %39, %58 ], [ %89, %86 ]
  %92 = phi ptr [ %38, %58 ], [ %88, %86 ]
  %93 = add nuw nsw i32 %40, 1
  %94 = icmp eq i32 %93, %7
  br i1 %94, label %95, label %37, !llvm.loop !361

95:                                               ; preds = %90, %34
  %96 = phi ptr [ %6, %34 ], [ %91, %90 ]
  %97 = phi ptr [ null, %34 ], [ %92, %90 ]
  store ptr null, ptr %96, align 8, !tbaa !167
  br i1 %15, label %105, label %98

98:                                               ; preds = %95
  %99 = tail call ptr @nreverse(ptr noundef %97) #19
  br i1 %35, label %105, label %100

100:                                              ; preds = %98
  %101 = icmp eq ptr %99, null
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !167
  br i1 %101, label %105, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 1
  store ptr %102, ptr %104, align 8, !tbaa !198
  br label %105

105:                                              ; preds = %100, %98, %103, %95
  %106 = phi ptr [ %99, %103 ], [ %99, %98 ], [ null, %95 ], [ %102, %100 ]
  %107 = load i64, ptr %12, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 21
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %1, i32 noundef 0) #21
  %112 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %111, i64 0, i32 7
  %113 = load i8, ptr %112, align 4
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %111, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !356
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %105
  %121 = tail call ptr @copy_node_stat(ptr noundef nonnull %12) #19
  %122 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 1
  store ptr %106, ptr %122, align 8, !tbaa !198
  br label %132

123:                                              ; preds = %116, %110
  %124 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !198
  %126 = tail call ptr @build_function_type(ptr noundef %125, ptr noundef %106) #19
  %127 = tail call ptr @build_distinct_type_copy(ptr noundef %126) #19
  %128 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 18
  %129 = load ptr, ptr %128, align 8, !tbaa !198
  %130 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 18
  store ptr %129, ptr %130, align 8, !tbaa !198
  %131 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 4
  store ptr null, ptr %131, align 8, !tbaa !198
  br label %132

132:                                              ; preds = %123, %120
  %133 = phi ptr [ %121, %120 ], [ %127, %123 ]
  %134 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 16
  %135 = load ptr, ptr %134, align 8, !tbaa !198
  %136 = icmp eq ptr %12, %135
  %137 = getelementptr inbounds %struct.tree_type, ptr %133, i64 0, i32 16
  br i1 %136, label %142, label %138

138:                                              ; preds = %132
  store ptr %135, ptr %137, align 8, !tbaa !198
  %139 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 15
  %140 = load ptr, ptr %139, align 8, !tbaa !198
  %141 = getelementptr inbounds %struct.tree_type, ptr %133, i64 0, i32 15
  store ptr %140, ptr %141, align 8, !tbaa !198
  store ptr %133, ptr %139, align 8, !tbaa !198
  br label %144

142:                                              ; preds = %132
  store ptr %133, ptr %137, align 8, !tbaa !198
  %143 = getelementptr inbounds %struct.tree_type, ptr %133, i64 0, i32 15
  store ptr null, ptr %143, align 8, !tbaa !198
  br label %144

144:                                              ; preds = %142, %138
  store ptr %133, ptr %11, align 8, !tbaa !198
  %145 = load ptr, ptr %5, align 8, !tbaa !167
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %5) #21
  br label %148

148:                                              ; preds = %147, %144
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !363
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @tree_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vector_of_formal_parm_types(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !365 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !366

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %8, %5 ]
  %14 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %13) #21
  %15 = load ptr, ptr %2, align 8, !tbaa !198
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !198
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %14, ptr noundef %20) #21
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !367

24:                                               ; preds = %17, %12
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !368 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !354
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !261 !PGOFuncName !369 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !261 !PGOFuncName !370 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_distinct_type_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !261 !PGOFuncName !371 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_modify_call_arguments(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !261 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %7 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %2) #21
  %8 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %7) #21
  store ptr %8, ptr %4, align 8, !tbaa !167
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #19
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %99

10:                                               ; preds = %3, %96
  %11 = phi i32 [ %97, %96 ], [ 0, %3 ]
  %12 = call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %2, i32 noundef %11) #21
  %13 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 7
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !356
  %20 = call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %19) #21
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %8, ptr noundef %20) #21
  br label %96

21:                                               ; preds = %10
  %22 = and i8 %14, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %96

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %25 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !356
  %27 = call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %26) #21
  store ptr %27, ptr %6, align 8, !tbaa !167
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 121
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !198
  store ptr %33, ptr %6, align 8, !tbaa !167
  br label %34

34:                                               ; preds = %24, %31
  %35 = phi ptr [ %33, %31 ], [ %27, %24 ]
  %36 = phi i8 [ 0, %31 ], [ 1, %24 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !198
  %39 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 5
  %40 = load i64, ptr %39, align 8, !tbaa !372
  %41 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !359
  %43 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %6, ptr noundef %38, i64 noundef %40, ptr noundef %42, i8 noundef zeroext %36) #19
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %34
  %46 = load i8, ptr %13, align 4
  %47 = and i8 %46, 4
  %48 = icmp eq i8 %47, 0
  %49 = load ptr, ptr %6, align 8, !tbaa !167
  br i1 %48, label %83, label %50

50:                                               ; preds = %45
  %51 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %49) #19
  store ptr %51, ptr %6, align 8, !tbaa !167
  br label %83

52:                                               ; preds = %34
  %53 = load ptr, ptr %41, align 8, !tbaa !359
  %54 = call ptr @build_pointer_type(ptr noundef %53) #19
  store ptr %27, ptr %6, align 8, !tbaa !167
  %55 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !198
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %59 [
    i16 10, label %63
    i16 12, label %63
  ]

59:                                               ; preds = %52
  %60 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %27) #19
  store ptr %60, ptr %6, align 8, !tbaa !167
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !198
  br label %63

63:                                               ; preds = %52, %52, %59
  %64 = phi ptr [ %56, %52 ], [ %56, %52 ], [ %62, %59 ]
  %65 = call zeroext i8 @useless_type_conversion_p(ptr noundef %54, ptr noundef %64) #19
  %66 = icmp eq i8 %65, 0
  %67 = load ptr, ptr %6, align 8, !tbaa !167
  br i1 %66, label %68, label %70

68:                                               ; preds = %63
  %69 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef %67) #19
  store ptr %69, ptr %6, align 8, !tbaa !167
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi ptr [ %69, %68 ], [ %67, %63 ]
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !167
  %73 = load i64, ptr %39, align 8, !tbaa !372
  %74 = sdiv i64 %73, 8
  %75 = call ptr @build_int_cst(ptr noundef %72, i64 noundef %74) #19
  %76 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %54, ptr noundef %71, ptr noundef %75) #19
  store ptr %76, ptr %6, align 8, !tbaa !167
  %77 = load i8, ptr %13, align 4
  %78 = and i8 %77, 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load ptr, ptr %41, align 8, !tbaa !359
  %82 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %81, ptr noundef %76) #19
  store ptr %82, ptr %6, align 8, !tbaa !167
  br label %83

83:                                               ; preds = %70, %80, %45, %50
  %84 = phi ptr [ %76, %70 ], [ %82, %80 ], [ %49, %45 ], [ %51, %50 ]
  %85 = load i8, ptr %13, align 4
  %86 = and i8 %85, 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load ptr, ptr %41, align 8, !tbaa !359
  %90 = call zeroext i8 @is_gimple_reg_type(ptr noundef %89) #19
  %91 = icmp ne i8 %90, 0
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi i1 [ true, %83 ], [ %91, %88 ]
  %94 = zext i1 %93 to i8
  %95 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %5, ptr noundef %84, i8 noundef zeroext %94, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  store ptr %95, ptr %6, align 8, !tbaa !167
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %8, ptr noundef %95) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %96

96:                                               ; preds = %21, %92, %17
  %97 = add nuw nsw i32 %11, 1
  %98 = icmp eq i32 %97, %7
  br i1 %98, label %99, label %10, !llvm.loop !373

99:                                               ; preds = %96, %3
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr @dump_flags, align 4, !tbaa !241
  %104 = and i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %100)
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %109 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #21
  call void @print_gimple_stmt(ptr noundef %108, ptr noundef %109, i32 noundef 0, i32 noundef 0) #19
  br label %110

110:                                              ; preds = %106, %102, %99
  %111 = icmp eq ptr %0, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %110
  %113 = call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #21
  br label %118

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !262
  %117 = load ptr, ptr %116, align 8, !tbaa !193
  br label %118

118:                                              ; preds = %114, %112
  %119 = phi ptr [ %113, %112 ], [ %117, %114 ]
  %120 = call ptr @gimple_build_call_vec(ptr noundef %119, ptr noundef %8) #19
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #21
  %121 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #21
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = call fastcc ptr @gimple_call_lhs(ptr noundef %1) #21
  call fastcc void @gimple_call_set_lhs(ptr noundef %120, ptr noundef %124) #21
  br label %125

125:                                              ; preds = %123, %118
  %126 = call fastcc ptr @gimple_block(ptr noundef %1) #21
  call fastcc void @gimple_set_block(ptr noundef %120, ptr noundef %126) #21
  %127 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #21, !range !215
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = call fastcc i32 @gimple_location(ptr noundef %1) #21
  call fastcc void @gimple_set_location(ptr noundef %120, i32 noundef %130) #21
  br label %131

131:                                              ; preds = %129, %125
  call fastcc void @gimple_call_copy_flags(ptr noundef %120, ptr noundef %1) #21
  %132 = call fastcc ptr @gimple_call_chain(ptr noundef %1) #21
  call fastcc void @gimple_call_set_chain(ptr noundef %120, ptr noundef %132) #21
  %133 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr @dump_flags, align 4, !tbaa !241
  %137 = and i32 %136, 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = call i64 @fwrite(ptr nonnull @.str.23, i64 10, i64 1, ptr nonnull %133)
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !167
  call void @print_gimple_stmt(ptr noundef %141, ptr noundef %120, i32 noundef 0, i32 noundef 0) #19
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %143 = call i32 @fputc(i32 10, ptr %142)
  br label %144

144:                                              ; preds = %139, %135, %131
  call void @gsi_replace(ptr noundef nonnull %5, ptr noundef %120, i8 noundef zeroext 1) #19
  br i1 %111, label %146, label %145

145:                                              ; preds = %144
  call void @cgraph_set_call_stmt(ptr noundef nonnull %0, ptr noundef %120) #19
  br label %146

146:                                              ; preds = %145, %144
  call void @update_ssa(i32 noundef 2048) #19
  call void @free_dominance_info(i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !374 !PGOFuncName !375 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #21
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @build_ref_for_offset(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !376 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !377 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !378 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #21
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !198
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #12 !prof !261 !PGOFuncName !379 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !380 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !381 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #21
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !261 !PGOFuncName !382 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !383 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !198
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_copy_flags(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !261 !PGOFuncName !384 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, -65536
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = or disjoint i32 %6, %4
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !385 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !386 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  ret ptr %2
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_set_call_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ipa_combine_adjustments(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !261 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %1) #21
  %5 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %6 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %5) #21
  store ptr %6, ptr %3, align 8, !tbaa !167
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2, %20
  %9 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %10 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %11 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %0, i32 noundef %9) #21
  %12 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %11, i64 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = add nsw i32 %10, 1
  br label %20

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %6, ptr noundef nonnull %11) #21
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %10, %18 ]
  %22 = add nuw nsw i32 %9, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %24, label %8, !llvm.loop !387

24:                                               ; preds = %20, %2
  %25 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %26 = add nsw i32 %25, %4
  %27 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %26) #21
  %28 = icmp sgt i32 %4, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %85, %24
  br i1 %7, label %88, label %100

30:                                               ; preds = %24, %85
  %31 = phi i32 [ %86, %85 ], [ 0, %24 ]
  %32 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %1, i32 noundef %31) #21
  %33 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %32, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !356
  %35 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %6, i32 noundef %34) #21
  %36 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %35, i64 0, i32 7
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1798, ptr noundef nonnull @.str.1) #19
  br label %41

41:                                               ; preds = %30, %40
  %42 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %32, i64 0, i32 7
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %35, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !356
  %49 = tail call fastcc zeroext i8 @index_in_adjustments_multiple_times_p(i32 noundef %48, ptr noundef %6) #21
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %46
  %52 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %27, ptr noundef null) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %52, i8 0, i64 56, i1 false)
  %53 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %52, i64 0, i32 7
  store i8 2, ptr %53, align 4
  br label %85

54:                                               ; preds = %41
  %55 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %27, ptr noundef null) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %55, i8 0, i64 56, i1 false)
  %56 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %35, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !356
  %58 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %55, i64 0, i32 6
  store i32 %57, ptr %58, align 8, !tbaa !356
  %59 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %32, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !359
  %61 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %55, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !359
  %62 = load i8, ptr %36, align 4
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = load i8, ptr %42, align 4
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %64, label %75, label %68

68:                                               ; preds = %54
  br i1 %67, label %71, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %55, i64 0, i32 7
  store i8 1, ptr %70, align 4
  br label %85

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %32, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !372
  %74 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %55, i64 0, i32 5
  store i64 %73, ptr %74, align 8, !tbaa !372
  br label %85

75:                                               ; preds = %54
  %76 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %35, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !372
  br i1 %67, label %80, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %55, i64 0, i32 5
  store i64 %77, ptr %79, align 8, !tbaa !372
  br label %85

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %32, i64 0, i32 5
  %82 = load i64, ptr %81, align 8, !tbaa !372
  %83 = add nsw i64 %82, %77
  %84 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %55, i64 0, i32 5
  store i64 %83, ptr %84, align 8, !tbaa !372
  br label %85

85:                                               ; preds = %69, %78, %80, %71, %46, %51
  %86 = add nuw nsw i32 %31, 1
  %87 = icmp eq i32 %86, %4
  br i1 %87, label %29, label %30, !llvm.loop !388

88:                                               ; preds = %29, %97
  %89 = phi i32 [ %98, %97 ], [ 0, %29 ]
  %90 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %0, i32 noundef %89) #21
  %91 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %90, i64 0, i32 7
  %92 = load i8, ptr %91, align 4
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %27, ptr noundef nonnull %90) #21
  br label %97

97:                                               ; preds = %95, %88
  %98 = add nuw nsw i32 %89, 1
  %99 = icmp eq i32 %98, %5
  br i1 %99, label %100, label %88, !llvm.loop !389

100:                                              ; preds = %97, %29
  call fastcc void @VEC_ipa_parm_adjustment_t_heap_free(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_parm_adjustment_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !390 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 56) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_ipa_parm_adjustment_t_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #15 !prof !261 !PGOFuncName !391 {
  %3 = load i32, ptr %0, align 8, !tbaa !363
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !363
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !392
  br label %9

9:                                                ; preds = %8, %2
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @index_in_adjustments_multiple_times_p(i32 noundef %0, ptr noundef readonly %1) unnamed_addr #16 !prof !261 !PGOFuncName !394 {
  %3 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %1) #21
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2, %14
  %6 = phi i8 [ %15, %14 ], [ 0, %2 ]
  %7 = phi i32 [ %16, %14 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %1, i32 noundef %7) #21
  %9 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !356
  %11 = icmp ne i32 %10, %0
  %12 = icmp eq i8 %6, 0
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = select i1 %11, i8 %6, i8 1
  %16 = add nuw nsw i32 %7, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %5, !llvm.loop !395

18:                                               ; preds = %5, %14, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %14 ], [ 1, %5 ]
  ret i8 %19
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ipa_parm_adjustment_t_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !261 !PGOFuncName !396 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_dump_param_adjustments(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !261 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc i32 @VEC_ipa_parm_adjustment_t_base_length(ptr noundef %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call ptr @ipa_get_vector_of_formal_parms(ptr noundef %2) #21
  store ptr %6, ptr %4, align 8, !tbaa !167
  %7 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 23, i64 1, ptr %0)
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %3, %62
  %10 = phi i32 [ %66, %62 ], [ 0, %3 ]
  %11 = phi i1 [ true, %62 ], [ false, %3 ]
  %12 = tail call fastcc ptr @VEC_ipa_parm_adjustment_t_base_index(ptr noundef %1, i32 noundef %10) #21
  br i1 %11, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 17, i64 1, ptr %0)
  br label %15

15:                                               ; preds = %9, %13
  %16 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !356
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %10, i32 noundef %17) #21
  %19 = load i32, ptr %16, align 8, !tbaa !356
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %6, i32 noundef %19) #21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %20, i32 noundef 0) #19
  %21 = load ptr, ptr %12, align 8, !tbaa !358
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 8, i64 1, ptr %0)
  %25 = load ptr, ptr %12, align 8, !tbaa !358
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %25, i32 noundef 0) #19
  br label %26

26:                                               ; preds = %23, %15
  %27 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !360
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 13, i64 1, ptr %0)
  %32 = load ptr, ptr %27, align 8, !tbaa !360
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %32, i32 noundef 0) #19
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !397
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 16, i64 1, ptr %0)
  %39 = load ptr, ptr %34, align 8, !tbaa !397
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %39, i32 noundef 0) #19
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 7
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr %0)
  br label %56

47:                                               ; preds = %40
  %48 = and i8 %42, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %0)
  br label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 5
  %54 = load i64, ptr %53, align 8, !tbaa !372
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %54) #21
  br label %56

56:                                               ; preds = %50, %52, %45
  %57 = load i8, ptr %41, align 4
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 8, i64 1, ptr %0)
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.ipa_parm_adjustment, ptr %12, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !359
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %64, i32 noundef 0) #19
  %65 = tail call i32 @fputc(i32 10, ptr %0)
  %66 = add nuw nsw i32 %10, 1
  %67 = icmp eq i32 %66, %5
  br i1 %67, label %68, label %9, !llvm.loop !398

68:                                               ; preds = %62, %3
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_prop_write_jump_functions(ptr noundef %0) local_unnamed_addr #0 !prof !261 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = tail call ptr @create_output_block(i32 noundef 4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  %4 = getelementptr inbounds %struct.output_block, ptr %3, i64 0, i32 6
  store ptr null, ptr %4, align 8, !tbaa !399
  %5 = tail call fastcc ptr @csi_start(ptr noundef %0) #21
  store ptr %5, ptr %2, align 8, !tbaa.struct !401
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %6, align 8, !tbaa.struct !402
  %7 = tail call fastcc zeroext i8 @csi_end_p(ptr %5, i32 0) #21, !range !215
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1, %9
  %10 = phi i32 [ %21, %9 ], [ 0, %1 ]
  %11 = phi ptr [ %20, %9 ], [ %5, %1 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %1 ]
  %13 = tail call fastcc ptr @csi_node(ptr %11, i32 %10) #21
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 27
  %15 = load i16, ptr %14, align 4
  %16 = lshr i16 %15, 5
  %17 = and i16 %16, 1
  %18 = zext nneg i16 %17 to i32
  %19 = add i32 %12, %18
  call fastcc void @csi_next(ptr noundef nonnull %2) #21
  %20 = load ptr, ptr %2, align 8
  %21 = load i32, ptr %6, align 8
  %22 = tail call fastcc zeroext i8 @csi_end_p(ptr %20, i32 %21) #21, !range !215
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %9, label %24, !llvm.loop !403

24:                                               ; preds = %9
  %25 = zext i32 %19 to i64
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi i64 [ 0, %1 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.output_block, ptr %3, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !404
  tail call void @lto_output_uleb128_stream(ptr noundef %29, i64 noundef %27) #19
  store ptr %5, ptr %2, align 8, !tbaa.struct !401
  store i32 0, ptr %6, align 8, !tbaa.struct !402
  %30 = tail call fastcc zeroext i8 @csi_end_p(ptr %5, i32 0) #21, !range !215
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26, %41
  %33 = phi i32 [ %43, %41 ], [ 0, %26 ]
  %34 = phi ptr [ %42, %41 ], [ %5, %26 ]
  %35 = tail call fastcc ptr @csi_node(ptr %34, i32 %33) #21
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 32
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call fastcc void @ipa_write_node_info(ptr noundef %3, ptr noundef nonnull %35) #21
  br label %41

41:                                               ; preds = %32, %40
  call fastcc void @csi_next(ptr noundef nonnull %2) #21
  %42 = load ptr, ptr %2, align 8
  %43 = load i32, ptr %6, align 8
  %44 = tail call fastcc zeroext i8 @csi_end_p(ptr %42, i32 %43) #21, !range !215
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %32, label %46, !llvm.loop !405

46:                                               ; preds = %41, %26
  %47 = load ptr, ptr %28, align 8, !tbaa !404
  tail call void @lto_output_1_stream(ptr noundef %47, i8 noundef signext 0) #19
  tail call void @produce_asm(ptr noundef %3, ptr noundef null) #19
  tail call void @destroy_output_block(ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @create_output_block(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #3 !prof !261 !PGOFuncName !406 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #11 !prof !261 !PGOFuncName !407 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !408
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #21
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #11 !prof !261 !PGOFuncName !410 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !408
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #15 !prof !261 !PGOFuncName !411 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !412
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !412
  ret void
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_write_node_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !414 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !172
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !415
  %9 = getelementptr inbounds %struct.lto_out_decl_state, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !416
  %11 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %10, ptr noundef %1) #19
  %12 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !404
  %14 = sext i32 %11 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %13, i64 noundef %14) #19
  %15 = tail call ptr @bitpack_create() #19
  %16 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 5
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 1
  %19 = zext nneg i8 %18 to i64
  tail call void @bp_pack_value(ptr noundef %15, i64 noundef %19, i32 noundef 1) #19
  %20 = load i8, ptr %16, align 8
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 1
  %23 = zext nneg i8 %22 to i64
  tail call void @bp_pack_value(ptr noundef %15, i64 noundef %23, i32 noundef 1) #19
  %24 = load i8, ptr %16, align 8
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %6) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2020, ptr noundef nonnull @.str.1) #19
  %31 = load i8, ptr %16, align 8
  br label %32

32:                                               ; preds = %2, %27, %30
  %33 = phi i8 [ %24, %2 ], [ %24, %27 ], [ %31, %30 ]
  %34 = and i8 %33, 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @.str.1) #19
  br label %37

37:                                               ; preds = %32, %36
  %38 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !332
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2022, ptr noundef nonnull @.str.1) #19
  br label %42

42:                                               ; preds = %37, %41
  %43 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %6) #21
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 1
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %54, %47 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !189
  %50 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %49, i64 %48, i32 2
  %51 = load i8, ptr %50, align 8
  %52 = and i8 %51, 1
  %53 = zext nneg i8 %52 to i64
  tail call void @bp_pack_value(ptr noundef %15, i64 noundef %53, i32 noundef 1) #19
  %54 = add nuw nsw i64 %48, 1
  %55 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %6) #21
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %47, label %58, !llvm.loop !418

58:                                               ; preds = %47, %42
  %59 = load ptr, ptr %12, align 8, !tbaa !404
  tail call void @lto_output_bitpack(ptr noundef %59, ptr noundef %15) #19
  tail call void @bitpack_delete(ptr noundef %15) #19
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !167
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %58, %80
  %64 = phi ptr [ %82, %80 ], [ %61, %58 ]
  %65 = load ptr, ptr @ipa_edge_args_vector, align 8
  %66 = getelementptr inbounds %struct.cgraph_edge, ptr %64, i64 0, i32 12
  %67 = load i32, ptr %66, align 4, !tbaa !243
  %68 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %65, i32 noundef %67) #21
  %69 = load ptr, ptr %12, align 8, !tbaa !404
  %70 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %68) #21
  %71 = sext i32 %70 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %69, i64 noundef %71) #19
  %72 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %68) #21
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63, %74
  %75 = phi i32 [ %77, %74 ], [ 0, %63 ]
  %76 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %68, i32 noundef %75) #21
  tail call fastcc void @ipa_write_jump_function(ptr noundef %0, ptr noundef %76) #21
  %77 = add nuw nsw i32 %75, 1
  %78 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %68) #21
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %74, label %80, !llvm.loop !419

80:                                               ; preds = %74, %63
  %81 = getelementptr inbounds %struct.cgraph_edge, ptr %64, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !167
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %63, !llvm.loop !420

84:                                               ; preds = %80, %58
  %85 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !167
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %84, %88
  %89 = phi ptr [ %93, %88 ], [ %86, %84 ]
  %90 = phi i32 [ %91, %88 ], [ 0, %84 ]
  %91 = add nuw nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.ipa_param_call_note, ptr %89, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !167
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %88, !llvm.loop !421

95:                                               ; preds = %88
  %96 = zext nneg i32 %91 to i64
  br label %97

97:                                               ; preds = %95, %84
  %98 = phi i64 [ 0, %84 ], [ %96, %95 ]
  %99 = load ptr, ptr %12, align 8, !tbaa !404
  tail call void @lto_output_uleb128_stream(ptr noundef %99, i64 noundef %98) #19
  %100 = load ptr, ptr %85, align 8, !tbaa !167
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %97, %102
  %103 = phi ptr [ %105, %102 ], [ %100, %97 ]
  tail call fastcc void @ipa_write_param_call_note(ptr noundef %0, ptr noundef nonnull %103) #21
  %104 = getelementptr inbounds %struct.ipa_param_call_note, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !167
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %102, !llvm.loop !422

107:                                              ; preds = %102, %97
  ret void
}

; Function Attrs: optsize
declare void @lto_output_1_stream(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @produce_asm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @destroy_output_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_prop_read_jump_functions() local_unnamed_addr #0 !prof !261 {
  %1 = alloca i64, align 8
  %2 = tail call ptr @lto_get_file_decl_data() #19
  tail call fastcc void @ipa_check_create_node_params() #21
  tail call fastcc void @ipa_check_create_edge_args() #21
  tail call void @ipa_register_cgraph_hooks() #21
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %0, %12
  %6 = phi ptr [ %16, %12 ], [ %3, %0 ]
  %7 = phi i32 [ %13, %12 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %8 = call ptr @lto_get_section_data(ptr noundef nonnull %6, i32 noundef 4, ptr noundef null, ptr noundef nonnull %1) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !tbaa !393
  call fastcc void @ipa_prop_read_section(ptr noundef nonnull %6, ptr noundef nonnull %8, i64 noundef %11) #21
  br label %12

12:                                               ; preds = %10, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  %13 = add i32 %7, 1
  %14 = zext i32 %7 to i64
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !423

18:                                               ; preds = %12, %0
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_file_decl_data() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #0 !prof !330 !PGOFuncName !424 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !425

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !241
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %4) #21
  store ptr %5, ptr @ipa_node_params_vector, align 8, !tbaa !167
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %7) #21
  %9 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !241
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11, !prof !426

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %12) #21
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #0 !prof !328 !PGOFuncName !427 {
  %1 = load ptr, ptr @ipa_edge_args_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !428

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !241
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %4) #21
  store ptr %5, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %7) #21
  %9 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !241
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11, !prof !429

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %12) #21
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: optsize
declare ptr @lto_get_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_prop_read_section(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !261 !PGOFuncName !430 {
  %4 = alloca %struct.lto_input_block, align 8
  %5 = getelementptr inbounds %struct.lto_function_header, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !431
  %7 = add nsw i32 %6, 36
  %8 = getelementptr inbounds %struct.lto_function_header, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !434
  %10 = add nsw i32 %7, %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  store ptr %12, ptr %4, align 8, !tbaa !435
  %13 = getelementptr inbounds %struct.lto_input_block, ptr %4, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !437
  %14 = getelementptr inbounds %struct.lto_input_block, ptr %4, i64 0, i32 2
  store i32 %9, ptr %14, align 4, !tbaa !438
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = getelementptr inbounds %struct.lto_function_header, ptr %1, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !439
  %19 = tail call ptr @lto_data_in_create(ptr noundef %0, ptr noundef %16, i32 noundef %18, ptr noundef null) #19
  %20 = call i64 @lto_input_uleb128(ptr noundef nonnull %4) #19
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 2
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i32 [ 0, %23 ], [ %31, %25 ]
  %27 = call i64 @lto_input_uleb128(ptr noundef nonnull %4) #19
  %28 = trunc i64 %27 to i32
  %29 = load ptr, ptr %24, align 8, !tbaa !440
  %30 = call ptr @lto_cgraph_encoder_deref(ptr noundef %29, i32 noundef %28) #19
  call fastcc void @ipa_read_node_info(ptr noundef nonnull %4, ptr noundef %30, ptr noundef %19) #21
  %31 = add nuw i32 %26, 1
  %32 = icmp eq i32 %31, %21
  br i1 %32, label %33, label %25, !llvm.loop !442

33:                                               ; preds = %25, %3
  call void @lto_free_section_data(ptr noundef %0, i32 noundef 4, ptr noundef null, ptr noundef %1, i64 noundef %2) #19
  call void @lto_data_in_delete(ptr noundef %19) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_update_after_lto_read() local_unnamed_addr #0 !prof !261 {
  tail call fastcc void @ipa_check_create_node_params() #21
  tail call fastcc void @ipa_check_create_edge_args() #21
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !167
  %2 = icmp eq ptr %1, null
  br i1 %2, label %58, label %6

3:                                                ; preds = %13
  %4 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !167
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %17

6:                                                ; preds = %0, %13
  %7 = phi ptr [ %15, %13 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @ipa_initialize_node_params(ptr noundef nonnull %7) #21
  br label %13

13:                                               ; preds = %6, %12
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !167
  %16 = icmp eq ptr %15, null
  br i1 %16, label %3, label %6, !llvm.loop !443

17:                                               ; preds = %3, %54
  %18 = phi ptr [ %56, %54 ], [ %4, %3 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !167
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @ipa_edge_args_vector, align 8
  %29 = load ptr, ptr @ipa_node_params_vector, align 8
  br label %30

30:                                               ; preds = %27, %48
  %31 = phi ptr [ %49, %48 ], [ %29, %27 ]
  %32 = phi ptr [ %50, %48 ], [ %28, %27 ]
  %33 = phi ptr [ %52, %48 ], [ %25, %27 ]
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 12
  %35 = load i32, ptr %34, align 4, !tbaa !243
  %36 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %32, i32 noundef %35) #21
  %37 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %36) #21
  %38 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !262
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %39, i64 0, i32 24
  %41 = load i32, ptr %40, align 8, !tbaa !172
  %42 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %31, i32 noundef %41) #21
  %43 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %42) #21
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  tail call fastcc void @ipa_set_called_with_variable_arg(ptr noundef nonnull %42) #21
  %46 = load ptr, ptr @ipa_edge_args_vector, align 8
  %47 = load ptr, ptr @ipa_node_params_vector, align 8
  br label %48

48:                                               ; preds = %30, %45
  %49 = phi ptr [ %31, %30 ], [ %47, %45 ]
  %50 = phi ptr [ %32, %30 ], [ %46, %45 ]
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !167
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %30, !llvm.loop !444

54:                                               ; preds = %48, %23, %17
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !167
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %17, !llvm.loop !445

58:                                               ; preds = %54, %0, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ipa_set_called_with_variable_arg(ptr nocapture noundef %0) unnamed_addr #15 !prof !261 !PGOFuncName !446 {
  %2 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 1
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_ipa_fixup_call_notes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !261 {
  tail call fastcc void @ipa_check_create_node_params() #21
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !172
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !309
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ipa_param_call_note, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !447
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %23, %14 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.ipa_param_call_note, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !448
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !167
  %21 = getelementptr inbounds %struct.ipa_param_call_note, ptr %15, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !447
  %22 = getelementptr inbounds %struct.ipa_param_call_note, ptr %15, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !311
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14, !llvm.loop !449

25:                                               ; preds = %14, %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ipa_set_param_count(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !450 !PGOFuncName !451 {
  store i32 %1, ptr %0, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !219 !PGOFuncName !452 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !453
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !454

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !455

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !456
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !219 !PGOFuncName !458 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !455

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !459
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ipa_get_param_decl_index(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #16 !prof !236 !PGOFuncName !461 {
  %3 = tail call fastcc i32 @ipa_get_param_count(ptr noundef %0) #21
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12, !prof !462

5:                                                ; preds = %2, %9
  %6 = phi i32 [ %10, %9 ], [ 0, %2 ]
  %7 = tail call fastcc ptr @ipa_get_param(ptr noundef %0, i32 noundef %6) #21
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !242

9:                                                ; preds = %5
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %5, !prof !463, !llvm.loop !464

12:                                               ; preds = %5, %9, %2
  %13 = phi i32 [ -1, %2 ], [ -1, %9 ], [ %6, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !465 !PGOFuncName !466 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !247 !PGOFuncName !467 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !198
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !188 !PGOFuncName !468 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !205

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !252
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167, !nonnull !469, !noundef !469
  store i32 %0, ptr %9, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !188 !PGOFuncName !470 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !205
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !188 !PGOFuncName !471 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef %2, i32 noundef %0) #21, !range !298
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !191

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #19
  store ptr %6, ptr @ipa_edge_args_vector, align 8, !tbaa !167
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !188 !PGOFuncName !472 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !205

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !473
  %7 = load i32, ptr %0, align 8, !tbaa !252
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
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_ip_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_complex_pass_through(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !261 !PGOFuncName !474 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %8) #21, !range !215
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #21
  %13 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %8) #21
  %14 = icmp eq ptr %13, null
  %15 = load i64, ptr %12, align 8
  br i1 %14, label %45, label %16

16:                                               ; preds = %11
  %17 = and i64 %15, 4295032831
  %18 = icmp eq i64 %17, 4294967437
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @gimple_expr_code(ptr noundef %8) #21, !range !475
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !241
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  %28 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !198
  %30 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %27, ptr noundef %29) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %25, %19
  %33 = tail call zeroext i8 @is_gimple_ip_invariant(ptr noundef nonnull %13) #19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = tail call fastcc i32 @ipa_get_param_decl_index(ptr noundef %0, ptr noundef %37) #21
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %79

40:                                               ; preds = %35
  store i32 3, ptr %1, align 8, !tbaa !263
  %41 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  %42 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  store i32 %38, ptr %42, align 8, !tbaa !198
  %43 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %8) #21, !range !475
  %44 = getelementptr inbounds i8, ptr %1, i64 20
  store i32 %43, ptr %44, align 4, !tbaa !198
  store ptr %13, ptr %41, align 8, !tbaa !198
  br label %79

45:                                               ; preds = %11
  %46 = and i64 %15, 65535
  %47 = icmp eq i64 %46, 121
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !198
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !198
  %53 = call ptr @get_ref_base_and_extent(ptr noundef %50, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 47
  %57 = load i64, ptr %6, align 8
  %58 = icmp ne i64 %57, -1
  %59 = select i1 %56, i1 %58, i1 false
  %60 = load i64, ptr %5, align 8
  %61 = icmp eq i64 %57, %60
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %79

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !198
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 4295032831
  %68 = icmp eq i64 %67, 4294967437
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !198
  %72 = call fastcc i32 @ipa_get_param_decl_index(ptr noundef %0, ptr noundef %71) #21
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  store i32 4, ptr %1, align 8, !tbaa !263
  %75 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  %76 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 2
  store i32 %72, ptr %76, align 8, !tbaa !198
  %77 = load i64, ptr %4, align 8, !tbaa !393
  store i64 %77, ptr %75, align 8, !tbaa !198
  %78 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  store ptr %52, ptr %78, align 8, !tbaa !198
  br label %79

79:                                               ; preds = %69, %74, %63, %48, %45, %35, %40, %16, %25, %32, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !476 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !246
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !477 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !478 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !479 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !246
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1446, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !480 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #21, !range !475
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #21, !range !246
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !481 !PGOFuncName !482 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !215
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !483

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !481 !PGOFuncName !484 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !246
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !481 !PGOFuncName !485 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #21
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !393
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !483

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !481 !PGOFuncName !486 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #21, !range !246
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #3 !prof !481 !PGOFuncName !487 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !241
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #3 !prof !261 !PGOFuncName !488 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !198
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @type_like_member_ptr_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #9 !prof !236 !PGOFuncName !489 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %7, label %43, !prof !240

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %43 [
    i16 10, label %16
    i16 12, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !198
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 21
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = icmp eq ptr %1, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store ptr %9, ptr %1, align 8, !tbaa !167
  br label %25

25:                                               ; preds = %24, %22
  %26 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -6
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %2, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  store ptr %27, ptr %2, align 8, !tbaa !167
  br label %38

38:                                               ; preds = %37, %35
  %39 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !198
  %41 = icmp eq ptr %40, null
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %29, %38, %25, %7, %16, %11, %3
  %44 = phi i8 [ 0, %3 ], [ 0, %11 ], [ 0, %16 ], [ 0, %7 ], [ 0, %29 ], [ 0, %25 ], [ %42, %38 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_cst_member_ptr(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr noundef readnone %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !261 !PGOFuncName !490 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #19
  call fastcc void @gsi_prev(ptr noundef nonnull %6) #21
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21, !range !215
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %5, %65
  %10 = phi ptr [ %67, %65 ], [ null, %5 ]
  %11 = phi ptr [ %66, %65 ], [ null, %5 ]
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21
  %13 = call zeroext i8 @gimple_assign_single_p(ptr noundef %12) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %70, label %15

15:                                               ; preds = %9
  %16 = call fastcc ptr @gimple_assign_lhs(ptr noundef %12) #21
  %17 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #21
  %18 = load i64, ptr %16, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 41
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  %28 = icmp eq ptr %10, null
  %29 = icmp eq ptr %27, %2
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = call fastcc ptr @get_ssa_def_if_simple_copy(ptr noundef %17) #21
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 121
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !198
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 29
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !198
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 21
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = icmp eq ptr %11, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  call fastcc void @fill_member_ptr_cst_jump_function(ptr noundef %4, ptr noundef nonnull %32, ptr noundef nonnull %11) #21
  br label %70

51:                                               ; preds = %25
  %52 = icmp eq ptr %11, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %48, %51
  %54 = phi ptr [ %10, %51 ], [ %38, %48 ]
  %55 = phi ptr [ %17, %51 ], [ %32, %48 ]
  %56 = icmp eq ptr %27, %3
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = call fastcc ptr @get_ssa_def_if_simple_copy(ptr noundef %55) #21
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = icmp eq ptr %54, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  call fastcc void @fill_member_ptr_cst_jump_function(ptr noundef %4, ptr noundef nonnull %58, ptr noundef nonnull %58) #21
  br label %70

65:                                               ; preds = %21, %15, %62, %53, %51
  %66 = phi ptr [ %11, %21 ], [ %11, %15 ], [ %11, %51 ], [ %58, %62 ], [ null, %53 ]
  %67 = phi ptr [ %10, %21 ], [ %10, %15 ], [ %10, %51 ], [ null, %62 ], [ %54, %53 ]
  call fastcc void @gsi_prev(ptr noundef nonnull %6) #21
  %68 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #21, !range !215
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %9, label %70, !llvm.loop !491

70:                                               ; preds = %65, %9, %42, %36, %31, %57, %5, %50, %64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #9 !prof !261 !PGOFuncName !492 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !493
  store ptr %4, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !494 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_ssa_def_if_simple_copy(ptr noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !495 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 4295032831
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %16

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %8) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #21
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 4295032831
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %5, label %16

16:                                               ; preds = %11, %5, %1
  %17 = phi ptr [ %0, %1 ], [ %6, %5 ], [ %12, %11 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fill_member_ptr_cst_jump_function(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 !prof !261 !PGOFuncName !496 {
  store i32 2, ptr %0, align 8, !tbaa !263
  %4 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct.ipa_jump_func, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !198
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_analyze_call_uses(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !497 !PGOFuncName !498 {
  %3 = tail call fastcc ptr @gimple_call_fn(ptr noundef %1) #21
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %134, !prof !499

7:                                                ; preds = %2
  %8 = and i64 %4, 4294967296
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !198
  %13 = tail call fastcc i32 @ipa_get_param_decl_index(ptr noundef %0, ptr noundef %12) #21
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %132, label %134

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !198
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %134 [
    i16 10, label %20
    i16 12, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 21
  br i1 %25, label %26, label %134

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !198
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %28) #21, !range !246
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %134

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %28) #21
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %134

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %28, i32 noundef 0) #21
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %35) #21
  %37 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %28, i32 noundef 1) #21
  %38 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %37) #21
  %39 = tail call fastcc zeroext i8 @ipa_is_ssa_with_stmt_def(ptr noundef %36) #21, !range !215
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %134, label %41

41:                                               ; preds = %34
  %42 = tail call fastcc zeroext i8 @ipa_is_ssa_with_stmt_def(ptr noundef %38) #21, !range !215
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %134, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !198
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !198
  %49 = tail call fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %46) #21
  %50 = icmp eq ptr %49, null
  %51 = tail call fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %48) #21
  %52 = icmp eq ptr %51, null
  br i1 %50, label %54, label %53

53:                                               ; preds = %44
  br i1 %52, label %55, label %134

54:                                               ; preds = %44
  br i1 %52, label %134, label %55

55:                                               ; preds = %54, %53
  %56 = phi ptr [ %46, %53 ], [ %48, %54 ]
  %57 = phi ptr [ %48, %53 ], [ %46, %54 ]
  %58 = phi ptr [ %49, %53 ], [ %51, %54 ]
  %59 = tail call fastcc ptr @gimple_bb(ptr noundef %56) #21
  %60 = tail call fastcc ptr @gimple_bb(ptr noundef %57) #21
  %61 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #21
  %62 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %60) #21, !range !215
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %134, label %64

64:                                               ; preds = %55
  %65 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %60) #21, !range !215
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %134, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @single_pred(ptr noundef %60) #21
  %69 = icmp eq ptr %68, %59
  br i1 %69, label %70, label %134

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @single_succ(ptr noundef %60) #21
  %72 = icmp eq ptr %71, %61
  br i1 %72, label %73, label %134

73:                                               ; preds = %70
  %74 = tail call ptr @last_stmt(ptr noundef %59) #19
  %75 = tail call fastcc i32 @gimple_code(ptr noundef %74) #21, !range !246
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %134

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @gimple_cond_code(ptr noundef %74) #21, !range !475
  %79 = icmp eq i32 %78, 102
  br i1 %79, label %80, label %134

80:                                               ; preds = %77
  %81 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %74) #21
  %82 = tail call i32 @integer_zerop(ptr noundef %81) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %134, label %84

84:                                               ; preds = %80
  %85 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %74) #21
  %86 = tail call fastcc zeroext i8 @ipa_is_ssa_with_stmt_def(ptr noundef %85) #21, !range !215
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %134, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !198
  %91 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %90) #21, !range !215
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %134, label %93

93:                                               ; preds = %88
  %94 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %90) #21, !range !475
  %95 = icmp eq i32 %94, 89
  br i1 %95, label %96, label %134

96:                                               ; preds = %93
  %97 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %90) #21
  %98 = tail call i32 @integer_onep(ptr noundef %97) #19
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %134, label %100

100:                                              ; preds = %96
  %101 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %90) #21
  %102 = tail call fastcc zeroext i8 @ipa_is_ssa_with_stmt_def(ptr noundef %101) #21, !range !215
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tree_ssa_name, ptr %101, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !198
  %107 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %106) #21, !range !215
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %104
  %110 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %106) #21, !range !475
  %111 = icmp eq i32 %110, 116
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %106) #21, !range !475
  %114 = icmp eq i32 %113, 113
  br i1 %114, label %115, label %122

115:                                              ; preds = %112, %109
  %116 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %106) #21
  %117 = tail call fastcc zeroext i8 @ipa_is_ssa_with_stmt_def(ptr noundef %116) #21, !range !215
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tree_ssa_name, ptr %116, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !198
  br label %122

122:                                              ; preds = %119, %112, %104
  %123 = phi ptr [ %121, %119 ], [ %106, %112 ], [ %106, %104 ]
  %124 = tail call fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %123) #21
  %125 = icmp eq ptr %58, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = tail call fastcc i32 @ipa_get_param_decl_index(ptr noundef %0, ptr noundef nonnull %58) #21
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = tail call fastcc zeroext i8 @ipa_is_param_modified(ptr noundef %0, i32 noundef %127) #21, !range !215
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129, %10
  %133 = phi i32 [ %13, %10 ], [ %127, %129 ]
  tail call fastcc void @ipa_note_param_call(ptr noundef %0, i32 noundef %133, ptr noundef %1) #21
  br label %134

134:                                              ; preds = %132, %126, %129, %122, %115, %100, %88, %93, %96, %84, %77, %80, %73, %55, %64, %67, %70, %54, %53, %34, %41, %31, %26, %20, %15, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !497 !PGOFuncName !500 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_note_param_call(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !261 !PGOFuncName !501 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #21
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #19
  %6 = getelementptr inbounds %struct.ipa_param_call_note, ptr %5, i64 0, i32 4
  store i32 %1, ptr %6, align 4, !tbaa !502
  %7 = getelementptr inbounds %struct.ipa_param_call_note, ptr %5, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !447
  %8 = tail call fastcc i32 @gimple_uid(ptr noundef %2) #21
  %9 = getelementptr inbounds %struct.ipa_param_call_note, ptr %5, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !448
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !503
  store i64 %11, ptr %5, align 8, !tbaa !504
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !167
  %13 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %12, ptr noundef %4) #19
  %14 = getelementptr inbounds %struct.ipa_param_call_note, ptr %5, i64 0, i32 5
  store i32 %13, ptr %14, align 8, !tbaa !505
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !506
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.ipa_param_call_note, ptr %5, i64 0, i32 6
  store i16 %17, ptr %18, align 4, !tbaa !507
  %19 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !309
  %21 = getelementptr inbounds %struct.ipa_param_call_note, ptr %5, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !311
  store ptr %5, ptr %19, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !508 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !198
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !261 !PGOFuncName !509 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !510
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !512 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipa_is_ssa_with_stmt_def(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !513 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 4295032831
  %4 = icmp eq i64 %3, 141
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !514 {
  %2 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #21
  %6 = tail call fastcc ptr @ipa_get_member_ptr_load_param(ptr noundef %5) #21
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !515 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !261 !PGOFuncName !516 {
  %2 = load ptr, ptr %0, align 8, !tbaa !517
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !261 !PGOFuncName !518 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !519
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !520 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #21
  %3 = load ptr, ptr %2, align 8, !tbaa !521
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !523 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !524
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !525 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !526 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !527 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !528 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !198
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !529 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !198
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @ipa_get_member_ptr_load_param(ptr nocapture noundef readonly %0) unnamed_addr #17 !prof !261 !PGOFuncName !530 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 41
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 34
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !198
  %16 = call fastcc zeroext i8 @type_like_member_ptr_p(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !215
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !198
  %21 = load ptr, ptr %2, align 8, !tbaa !167
  %22 = icmp eq ptr %20, %21
  %23 = select i1 %22, ptr %9, ptr null
  br label %24

24:                                               ; preds = %18, %7, %13, %1
  %25 = phi ptr [ null, %1 ], [ null, %13 ], [ null, %7 ], [ %23, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !531 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !532
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !534 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #21, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !517
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #21
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !535 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !261 !PGOFuncName !536 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #21, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !519
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @update_call_notes_after_inlining(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !289 !PGOFuncName !537 {
  %4 = load ptr, ptr @ipa_node_params_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %4, i32 noundef %6) #21
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !167
  %11 = icmp eq ptr %10, null
  br i1 %11, label %93, label %12, !prof !426

12:                                               ; preds = %3
  %13 = load ptr, ptr @ipa_edge_args_vector, align 8
  %14 = load i32, ptr %8, align 4, !tbaa !243
  %15 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %13, i32 noundef %14) #21
  br label %16

16:                                               ; preds = %12, %87
  %17 = phi ptr [ %10, %12 ], [ %91, %87 ]
  %18 = phi ptr [ %15, %12 ], [ %89, %87 ]
  %19 = phi i8 [ 0, %12 ], [ %88, %87 ]
  %20 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 7
  %21 = load i8, ptr %20, align 2, !tbaa !538
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !502
  %26 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef %18) #21
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i8 1, ptr %20, align 2, !tbaa !538
  br label %87

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef %18, i32 noundef %25) #21
  %31 = load i32, ptr %30, align 8, !tbaa !263
  switch i32 %31, label %85 [
    i32 3, label %32
    i32 1, label %39
    i32 2, label %39
    i32 0, label %86
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %30, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa !198
  %35 = icmp eq i32 %34, 116
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1, i32 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !198
  store i32 %38, ptr %24, align 4, !tbaa !502
  br label %87

39:                                               ; preds = %29, %29
  store i8 1, ptr %20, align 2, !tbaa !538
  %40 = getelementptr inbounds %struct.ipa_jump_func, ptr %30, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !198
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 121
  br i1 %44, label %45, label %87

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !198
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 29
  br i1 %50, label %51, label %87

51:                                               ; preds = %45
  %52 = tail call ptr @cgraph_node(ptr noundef nonnull %47) #19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 18, i32 2
  %56 = load i8, ptr %55, align 8
  %57 = and i8 %56, 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !167
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call fastcc void @print_edge_addition_message(ptr noundef nonnull %60, ptr noundef nonnull %17, ptr noundef nonnull %30, ptr noundef %1) #21
  br label %63

63:                                               ; preds = %62, %59
  %64 = icmp eq ptr %2, null
  %65 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !447
  %67 = load i64, ptr %17, align 8, !tbaa !504
  %68 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !505
  %70 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 6
  %71 = load i16, ptr %70, align 4, !tbaa !507
  %72 = zext i16 %71 to i32
  %73 = tail call ptr @cgraph_create_edge(ptr noundef %1, ptr noundef nonnull %52, ptr noundef %66, i64 noundef %67, i32 noundef %69, i32 noundef %72) #19
  %74 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !448
  %76 = getelementptr inbounds %struct.cgraph_edge, ptr %73, i64 0, i32 10
  store i32 %75, ptr %76, align 4, !tbaa !539
  %77 = getelementptr inbounds %struct.cgraph_edge, ptr %73, i64 0, i32 14
  %78 = load i8, ptr %77, align 2
  %79 = or i8 %78, 1
  store i8 %79, ptr %77, align 2
  tail call fastcc void @ipa_check_create_edge_args() #21
  br i1 %64, label %81, label %80

80:                                               ; preds = %63
  tail call fastcc void @VEC_cgraph_edge_p_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %73) #21
  br label %81

81:                                               ; preds = %80, %63
  %82 = load ptr, ptr @ipa_edge_args_vector, align 8
  %83 = load i32, ptr %8, align 4, !tbaa !243
  %84 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %82, i32 noundef %83) #21
  br label %87

85:                                               ; preds = %29, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.1) #19
  br label %86

86:                                               ; preds = %29, %85
  store i8 1, ptr %20, align 2, !tbaa !538
  br label %87

87:                                               ; preds = %81, %39, %45, %54, %51, %36, %86, %16, %28
  %88 = phi i8 [ %19, %28 ], [ %19, %16 ], [ %19, %36 ], [ %19, %86 ], [ 1, %81 ], [ %19, %39 ], [ %19, %45 ], [ %19, %54 ], [ %19, %51 ]
  %89 = phi ptr [ %18, %28 ], [ %18, %16 ], [ %18, %36 ], [ %18, %86 ], [ %84, %81 ], [ %18, %39 ], [ %18, %45 ], [ %18, %54 ], [ %18, %51 ]
  %90 = getelementptr inbounds %struct.ipa_param_call_note, ptr %17, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !167
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %16, !prof !313, !llvm.loop !540

93:                                               ; preds = %87, %3
  %94 = phi i8 [ 0, %3 ], [ %88, %87 ]
  ret i8 %94
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_jump_functions_after_inlining(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !541 !PGOFuncName !542 {
  %3 = load ptr, ptr @ipa_edge_args_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !243
  %6 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %3, i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !243
  %9 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %3, i32 noundef %8) #21
  %10 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %9) #21
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %32, !prof !543

12:                                               ; preds = %2, %29
  %13 = phi i32 [ %30, %29 ], [ 0, %2 ]
  %14 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %9, i32 noundef %13) #21
  %15 = load i32, ptr %14, align 8, !tbaa !263
  switch i32 %15, label %29 [
    i32 4, label %16
    i32 3, label %17
  ]

16:                                               ; preds = %12
  store i32 0, ptr %14, align 8, !tbaa !263
  br label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %14, i64 20
  %19 = load i32, ptr %18, align 4, !tbaa !198
  %20 = icmp eq i32 %19, 116
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ipa_jump_func, ptr %14, i64 0, i32 1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !198
  %24 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %6) #21
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %17
  store i32 0, ptr %14, align 8, !tbaa !263
  br label %29

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %6, i32 noundef %23) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !544
  br label %29

29:                                               ; preds = %12, %27, %26, %16
  %30 = add nuw nsw i32 %13, 1
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %32, label %12, !prof !313, !llvm.loop !545

32:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_edge_addition_message(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !261 !PGOFuncName !546 {
  %5 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 57, i64 1, ptr %0)
  %6 = load i32, ptr %2, align 8, !tbaa !263
  %7 = icmp eq i32 %6, 2
  %8 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %9, i32 noundef 0) #19
  br i1 %7, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !198
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %12, i32 noundef 0) #19
  br label %13

13:                                               ; preds = %4, %10
  %14 = tail call ptr @cgraph_node_name(ptr noundef %3) #19
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %14) #21
  %16 = getelementptr inbounds %struct.ipa_param_call_note, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !447
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %17, i32 noundef 2, i32 noundef 2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !547 {
  tail call fastcc void @VEC_cgraph_edge_p_heap_reserve(ptr noundef %0) #21
  %3 = load ptr, ptr %0, align 8, !tbaa !167
  tail call fastcc void @VEC_cgraph_edge_p_base_quick_push(ptr noundef %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !548 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = tail call fastcc i32 @VEC_cgraph_edge_p_base_space(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !167
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_edge_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !261 !PGOFuncName !549 {
  %3 = load i32, ptr %0, align 8, !tbaa !550
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !550
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_edge_p_base_space(ptr noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !552 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !553
  %6 = load i32, ptr %0, align 8, !tbaa !550
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @duplicate_ggc_array(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !328 !PGOFuncName !554 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !555

4:                                                ; preds = %2
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @duplicate_array(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !330 !PGOFuncName !556 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !425

4:                                                ; preds = %2
  %5 = tail call ptr @xmalloc(i64 noundef %1) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_edge_removal_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_node_removal_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_edge_duplication_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_node_duplication_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !261 !PGOFuncName !557 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #21, !range !215
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #21
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #21
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !167
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !261 !PGOFuncName !558 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !559
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !261 !PGOFuncName !561 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitpack_create() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_bitpack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitpack_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_write_jump_function(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !261 !PGOFuncName !562 {
  %3 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = load i32, ptr %1, align 8, !tbaa !263
  %6 = zext i32 %5 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %4, i64 noundef %6) #19
  %7 = load i32, ptr %1, align 8, !tbaa !263
  switch i32 %7, label %37 [
    i32 2, label %32
    i32 1, label %8
    i32 3, label %11
    i32 4, label %22
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  tail call void @lto_output_tree(ptr noundef nonnull %0, ptr noundef %10, i8 noundef zeroext 1) #19
  br label %37

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  tail call void @lto_output_tree(ptr noundef nonnull %0, ptr noundef %13, i8 noundef zeroext 1) #19
  %14 = load ptr, ptr %3, align 8, !tbaa !404
  %15 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !198
  %17 = sext i32 %16 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %14, i64 noundef %17) #19
  %18 = load ptr, ptr %3, align 8, !tbaa !404
  %19 = getelementptr inbounds i8, ptr %1, i64 20
  %20 = load i32, ptr %19, align 4, !tbaa !198
  %21 = zext i32 %20 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %18, i64 noundef %21) #19
  br label %37

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8, !tbaa !404
  %24 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !198
  tail call void @lto_output_uleb128_stream(ptr noundef %23, i64 noundef %25) #19
  %26 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  tail call void @lto_output_tree(ptr noundef nonnull %0, ptr noundef %27, i8 noundef zeroext 1) #19
  %28 = load ptr, ptr %3, align 8, !tbaa !404
  %29 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !198
  %31 = sext i32 %30 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %28, i64 noundef %31) #19
  br label %37

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !198
  tail call void @lto_output_tree(ptr noundef nonnull %0, ptr noundef %34, i8 noundef zeroext 1) #19
  %35 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !198
  tail call void @lto_output_tree(ptr noundef nonnull %0, ptr noundef %36, i8 noundef zeroext 0) #19
  br label %37

37:                                               ; preds = %2, %32, %22, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_write_param_call_note(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !261 !PGOFuncName !563 {
  %3 = getelementptr inbounds %struct.ipa_param_call_note, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 2, !tbaa !538
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1970, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.output_block, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.ipa_param_call_note, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !447
  %12 = tail call fastcc i32 @gimple_uid(ptr noundef %11) #21
  %13 = zext i32 %12 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %9, i64 noundef %13) #19
  %14 = load ptr, ptr %8, align 8, !tbaa !404
  %15 = getelementptr inbounds %struct.ipa_param_call_note, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !502
  %17 = sext i32 %16 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %14, i64 noundef %17) #19
  %18 = load ptr, ptr %8, align 8, !tbaa !404
  %19 = load i64, ptr %1, align 8, !tbaa !504
  tail call void @lto_output_sleb128_stream(ptr noundef %18, i64 noundef %19) #19
  %20 = load ptr, ptr %8, align 8, !tbaa !404
  %21 = getelementptr inbounds %struct.ipa_param_call_note, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !505
  %23 = sext i32 %22 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %20, i64 noundef %23) #19
  %24 = load ptr, ptr %8, align 8, !tbaa !404
  %25 = getelementptr inbounds %struct.ipa_param_call_note, ptr %1, i64 0, i32 6
  %26 = load i16, ptr %25, align 4, !tbaa !507
  %27 = zext i16 %26 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %24, i64 noundef %27) #19
  ret void
}

; Function Attrs: optsize
declare void @lto_output_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !564 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 48) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !330 !PGOFuncName !565 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !425

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !320
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !566 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !167
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %2) #21
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) #21
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !167
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef %4) #21
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !567 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !167
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !320
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !167, !nonnull !469, !noundef !469
  store i32 %0, ptr %9, align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !261 !PGOFuncName !568 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !569 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !167
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef %2, i32 noundef %0) #21, !range !298
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 48) #19
  store ptr %6, ptr @ipa_node_params_vector, align 8, !tbaa !167
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !261 !PGOFuncName !570 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !571
  %7 = load i32, ptr %0, align 8, !tbaa !320
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %0) unnamed_addr #0 !prof !261 !PGOFuncName !572 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @lto_data_in_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_read_node_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !261 !PGOFuncName !573 {
  %4 = load ptr, ptr @ipa_node_params_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %4, i32 noundef %6) #21
  tail call void @ipa_initialize_node_params(ptr noundef %1) #21
  %8 = tail call ptr @lto_input_bitpack(ptr noundef %0) #19
  %9 = tail call i64 @bp_unpack_value(ptr noundef %8, i32 noundef 1) #19
  %10 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 5
  %11 = trunc i64 %9 to i8
  %12 = load i8, ptr %10, align 8
  %13 = and i8 %11, 1
  %14 = and i8 %12, -2
  %15 = or disjoint i8 %14, %13
  store i8 %15, ptr %10, align 8
  %16 = tail call i64 @bp_unpack_value(ptr noundef %8, i32 noundef 1) #19
  %17 = trunc i64 %16 to i8
  %18 = load i8, ptr %10, align 8
  %19 = shl i8 %17, 2
  %20 = and i8 %19, 4
  %21 = and i8 %18, -5
  %22 = or disjoint i8 %20, %21
  store i8 %22, ptr %10, align 8
  %23 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %7) #21
  %24 = icmp eq i32 %23, 0
  %25 = or i8 %18, 6
  %26 = select i1 %24, i8 %22, i8 %25
  %27 = and i8 %26, -9
  store i8 %27, ptr %10, align 8
  %28 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %7) #21
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ipa_node_params, ptr %7, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %42, %32 ]
  %34 = tail call i64 @bp_unpack_value(ptr noundef %8, i32 noundef 1) #19
  %35 = load ptr, ptr %31, align 8, !tbaa !189
  %36 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %35, i64 %33, i32 2
  %37 = trunc i64 %34 to i8
  %38 = load i8, ptr %36, align 8
  %39 = and i8 %37, 1
  %40 = and i8 %38, -2
  %41 = or disjoint i8 %40, %39
  store i8 %41, ptr %36, align 8
  %42 = add nuw nsw i64 %33, 1
  %43 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %7) #21
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %32, label %46, !llvm.loop !574

46:                                               ; preds = %32, %3
  tail call void @bitpack_delete(ptr noundef %8) #19
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !167
  %49 = icmp eq ptr %48, null
  br i1 %49, label %77, label %50

50:                                               ; preds = %46, %73
  %51 = phi ptr [ %75, %73 ], [ %48, %46 ]
  %52 = load ptr, ptr @ipa_edge_args_vector, align 8
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %51, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !243
  %55 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %52, i32 noundef %54) #21
  %56 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %57 = trunc i64 %56 to i32
  tail call fastcc void @ipa_set_cs_argument_count(ptr noundef nonnull %55, i32 noundef %57) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %50
  %60 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %55) #21
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 5
  %63 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %62) #19
  %64 = getelementptr inbounds %struct.ipa_edge_args, ptr %55, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !271
  %65 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %55) #21
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59, %67
  %68 = phi i32 [ %70, %67 ], [ 0, %59 ]
  %69 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %55, i32 noundef %68) #21
  tail call fastcc void @ipa_read_jump_function(ptr noundef %0, ptr noundef %69, ptr noundef %2) #21
  %70 = add nuw nsw i32 %68, 1
  %71 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %55) #21
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %67, label %73, !llvm.loop !575

73:                                               ; preds = %67, %59, %50
  %74 = getelementptr inbounds %struct.cgraph_edge, ptr %51, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !167
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %50, !llvm.loop !576

77:                                               ; preds = %73, %46
  %78 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %79 = trunc i64 %78 to i32
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %81
  %82 = phi i32 [ %83, %81 ], [ 0, %77 ]
  tail call fastcc void @ipa_read_param_call_note(ptr noundef %0, ptr noundef nonnull %7) #21
  %83 = add nuw nsw i32 %82, 1
  %84 = icmp eq i32 %83, %79
  br i1 %84, label %85, label %81, !llvm.loop !577

85:                                               ; preds = %81, %77
  ret void
}

; Function Attrs: optsize
declare void @lto_free_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_data_in_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_input_bitpack(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_read_jump_function(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !prof !261 !PGOFuncName !578 {
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr %1, align 8, !tbaa !263
  switch i32 %5, label %31 [
    i32 2, label %26
    i32 1, label %6
    i32 3, label %9
    i32 4, label %18
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %2) #19
  %8 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !198
  br label %31

9:                                                ; preds = %3
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %2) #19
  %11 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !198
  %12 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !198
  %15 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds i8, ptr %1, i64 20
  store i32 %16, ptr %17, align 4, !tbaa !198
  br label %31

18:                                               ; preds = %3
  %19 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %20 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !198
  %21 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %2) #19
  %22 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !198
  %23 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 2
  store i32 %24, ptr %25, align 8, !tbaa !198
  br label %31

26:                                               ; preds = %3
  %27 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %2) #19
  %28 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !198
  %29 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %2) #19
  %30 = getelementptr inbounds %struct.ipa_jump_func, ptr %1, i64 0, i32 1, i32 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !198
  br label %31

31:                                               ; preds = %3, %26, %18, %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_read_param_call_note(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !261 !PGOFuncName !579 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #19
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.ipa_param_call_note, ptr %3, i64 0, i32 3
  store i32 %5, ptr %6, align 8, !tbaa !448
  %7 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.ipa_param_call_note, ptr %3, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !502
  %10 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  store i64 %10, ptr %3, align 8, !tbaa !504
  %11 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.ipa_param_call_note, ptr %3, i64 0, i32 5
  store i32 %12, ptr %13, align 8, !tbaa !505
  %14 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %15 = trunc i64 %14 to i16
  %16 = getelementptr inbounds %struct.ipa_param_call_note, ptr %3, i64 0, i32 6
  store i16 %15, ptr %16, align 4, !tbaa !507
  %17 = getelementptr inbounds %struct.ipa_node_params, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  %19 = getelementptr inbounds %struct.ipa_param_call_note, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !311
  store ptr %3, ptr %17, align 8, !tbaa !309
  ret void
}

; Function Attrs: optsize
declare ptr @lto_input_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!160}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!35 = !{ptr @ipa_push_func_to_list_1, ptr @xcalloc, i64 40}
!36 = !{ptr @ipa_init_func_list, ptr @VEC_ipa_node_params_t_base_index, i64 20}
!37 = !{ptr @ipa_init_func_list, ptr @ipa_push_func_to_list_1, i64 20}
!38 = !{ptr @ipa_pop_func_from_list, ptr @free, i64 40}
!39 = !{ptr @ipa_pop_func_from_list, ptr @VEC_ipa_node_params_t_base_index, i64 40}
!40 = !{ptr @ipa_initialize_node_params, ptr @VEC_ipa_node_params_t_base_index, i64 39}
!41 = !{ptr @ipa_initialize_node_params, ptr @ipa_count_formal_params, i64 38}
!42 = !{ptr @ipa_initialize_node_params, ptr @ipa_get_param_count, i64 38}
!43 = !{ptr @ipa_initialize_node_params, ptr @xcalloc, i64 38}
!44 = !{ptr @ipa_initialize_node_params, ptr @ipa_populate_param_decls, i64 38}
!45 = !{ptr @ipa_count_formal_params, ptr @count_formal_params_1, i64 39}
!46 = !{ptr @ipa_count_formal_params, ptr @ipa_set_param_count, i64 39}
!47 = !{ptr @ipa_detect_param_modifications, ptr @VEC_ipa_node_params_t_base_index, i64 39}
!48 = !{ptr @ipa_detect_param_modifications, ptr @ipa_get_param_count, i64 39}
!49 = !{ptr @ipa_detect_param_modifications, ptr @gsi_start_bb, i64 136022}
!50 = !{ptr @ipa_detect_param_modifications, ptr @gsi_end_p, i64 465618}
!51 = !{ptr @ipa_detect_param_modifications, ptr @gsi_stmt, i64 329596}
!52 = !{ptr @ipa_detect_param_modifications, ptr @walk_stmt_load_store_addr_ops, i64 329596}
!53 = !{ptr @ipa_detect_param_modifications, ptr @gsi_next, i64 329596}
!54 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 293142}
!55 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 293142}
!56 = !{ptr @visit_store_addr_for_mod_analysis, ptr @ipa_get_param_decl_index, i64 1}
!57 = !{ptr @ipa_count_arguments, ptr @is_gimple_call, i64 52782}
!58 = !{ptr @ipa_count_arguments, ptr @fancy_abort, i64 1}
!59 = !{ptr @ipa_count_arguments, ptr @gimple_call_num_args, i64 52782}
!60 = !{ptr @ipa_count_arguments, ptr @VEC_ipa_edge_args_t_base_length, i64 52782}
!61 = !{ptr @ipa_count_arguments, ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, i64 1}
!62 = !{ptr @ipa_count_arguments, ptr @VEC_ipa_edge_args_t_base_index, i64 52782}
!63 = !{ptr @ipa_count_arguments, ptr @ipa_set_cs_argument_count, i64 52782}
!64 = !{ptr @is_gimple_call, ptr @gimple_code, i64 460724}
!65 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 263910}
!66 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, ptr @VEC_ipa_edge_args_t_base_length, i64 39}
!67 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, ptr @VEC_ipa_edge_args_t_gc_safe_grow, i64 39}
!68 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, ptr @VEC_ipa_edge_args_t_base_address, i64 39}
!69 = !{ptr @ipa_compute_jump_functions, ptr @VEC_ipa_node_params_t_base_index, i64 52782}
!70 = !{ptr @ipa_compute_jump_functions, ptr @VEC_ipa_edge_args_t_base_index, i64 52782}
!71 = !{ptr @ipa_compute_jump_functions, ptr @ipa_get_cs_argument_count, i64 52782}
!72 = !{ptr @ipa_compute_jump_functions, ptr @ggc_alloc_cleared_stat, i64 52780}
!73 = !{ptr @ipa_compute_jump_functions, ptr @is_gimple_call, i64 52780}
!74 = !{ptr @ipa_compute_jump_functions, ptr @fancy_abort, i64 1}
!75 = !{ptr @ipa_compute_jump_functions, ptr @compute_scalar_jump_functions, i64 52780}
!76 = !{ptr @ipa_compute_jump_functions, ptr @compute_pass_through_member_ptrs, i64 52780}
!77 = !{ptr @ipa_compute_jump_functions, ptr @compute_cst_member_ptr_arguments, i64 1}
!78 = !{ptr @compute_scalar_jump_functions, ptr @gimple_call_num_args, i64 105564}
!79 = !{ptr @compute_scalar_jump_functions, ptr @gimple_call_arg, i64 52782}
!80 = !{ptr @compute_scalar_jump_functions, ptr @is_gimple_ip_invariant, i64 52782}
!81 = !{ptr @compute_scalar_jump_functions, ptr @ipa_get_param_decl_index, i64 52779}
!82 = !{ptr @compute_scalar_jump_functions, ptr @compute_complex_pass_through, i64 1}
!83 = !{ptr @compute_pass_through_member_ptrs, ptr @gimple_call_num_args, i64 105564}
!84 = !{ptr @compute_pass_through_member_ptrs, ptr @gimple_call_arg, i64 52782}
!85 = !{ptr @compute_pass_through_member_ptrs, ptr @type_like_member_ptr_p, i64 52782}
!86 = !{ptr @ipa_analyze_params_uses, ptr @VEC_ipa_node_params_t_base_index, i64 39}
!87 = !{ptr @ipa_analyze_params_uses, ptr @ipa_get_param_count, i64 39}
!88 = !{ptr @ipa_analyze_params_uses, ptr @gsi_start_bb, i64 136022}
!89 = !{ptr @ipa_analyze_params_uses, ptr @gsi_end_p, i64 465618}
!90 = !{ptr @ipa_analyze_params_uses, ptr @gsi_stmt, i64 329596}
!91 = !{ptr @ipa_analyze_params_uses, ptr @ipa_analyze_stmt_uses, i64 329596}
!92 = !{ptr @ipa_analyze_params_uses, ptr @gsi_next, i64 329596}
!93 = !{ptr @ipa_analyze_stmt_uses, ptr @is_gimple_call, i64 355160}
!94 = !{ptr @ipa_analyze_stmt_uses, ptr @ipa_analyze_call_uses, i64 69129}
!95 = !{ptr @ipa_propagate_indirect_call_infos, ptr @fancy_abort, i64 1}
!96 = !{ptr @ipa_propagate_indirect_call_infos, ptr @propagate_info_to_inlined_callees, i64 38}
!97 = !{ptr @propagate_info_to_inlined_callees, ptr @update_call_notes_after_inlining, i64 42}
!98 = !{ptr @propagate_info_to_inlined_callees, ptr @propagate_info_to_inlined_callees, i64 3}
!99 = !{ptr @propagate_info_to_inlined_callees, ptr @update_jump_functions_after_inlining, i64 43}
!100 = !{ptr @ipa_free_edge_args_substructures, ptr @ggc_free, i64 52783}
!101 = !{ptr @ipa_free_all_edge_args, ptr @VEC_ipa_edge_args_t_base_iterate, i64 34589}
!102 = !{ptr @ipa_free_all_edge_args, ptr @ipa_free_edge_args_substructures, i64 34588}
!103 = !{ptr @ipa_free_all_edge_args, ptr @VEC_ipa_edge_args_t_gc_free, i64 1}
!104 = !{ptr @VEC_ipa_edge_args_t_gc_free, ptr @ggc_free, i64 1}
!105 = !{ptr @ipa_free_node_params_substructures, ptr @free, i64 82}
!106 = !{ptr @ipa_free_all_node_params, ptr @VEC_ipa_node_params_t_base_iterate, i64 347}
!107 = !{ptr @ipa_free_all_node_params, ptr @ipa_free_node_params_substructures, i64 346}
!108 = !{ptr @ipa_free_all_node_params, ptr @VEC_ipa_node_params_t_heap_free, i64 1}
!109 = !{ptr @VEC_ipa_node_params_t_heap_free, ptr @free, i64 1}
!110 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_edge_removal_hook, i64 1}
!111 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_node_removal_hook, i64 1}
!112 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_edge_duplication_hook, i64 1}
!113 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_node_duplication_hook, i64 1}
!114 = !{ptr @ipa_edge_duplication_hook, ptr @ipa_check_create_edge_args, i64 45}
!115 = !{ptr @ipa_edge_duplication_hook, ptr @VEC_ipa_edge_args_t_base_index, i64 90}
!116 = !{ptr @ipa_edge_duplication_hook, ptr @ipa_get_cs_argument_count, i64 45}
!117 = !{ptr @ipa_edge_duplication_hook, ptr @ipa_set_cs_argument_count, i64 45}
!118 = !{ptr @ipa_edge_duplication_hook, ptr @duplicate_ggc_array, i64 45}
!119 = !{ptr @ipa_node_duplication_hook, ptr @ipa_check_create_node_params, i64 41}
!120 = !{ptr @ipa_node_duplication_hook, ptr @VEC_ipa_node_params_t_base_index, i64 82}
!121 = !{ptr @ipa_node_duplication_hook, ptr @ipa_get_param_count, i64 41}
!122 = !{ptr @ipa_node_duplication_hook, ptr @ipa_set_param_count, i64 41}
!123 = !{ptr @ipa_node_duplication_hook, ptr @duplicate_array, i64 41}
!124 = !{ptr @ipa_node_duplication_hook, ptr @xcalloc, i64 1}
!125 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_edge_removal_hook, i64 1}
!126 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_node_removal_hook, i64 1}
!127 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_edge_duplication_hook, i64 1}
!128 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_node_duplication_hook, i64 1}
!129 = !{ptr @free_all_ipa_structures_after_iinln, ptr @ipa_free_all_edge_args, i64 1}
!130 = !{ptr @free_all_ipa_structures_after_iinln, ptr @ipa_free_all_node_params, i64 1}
!131 = !{ptr @free_all_ipa_structures_after_iinln, ptr @ipa_unregister_cgraph_hooks, i64 1}
!132 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 105564}
!133 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_heap_alloc, i64 1}
!134 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_base_length, i64 41}
!135 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_heap_safe_grow_cleared, i64 1}
!136 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_gc_alloc, i64 1}
!137 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_base_length, i64 45}
!138 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, i64 38}
!139 = !{ptr @ipa_get_param_decl_index, ptr @ipa_get_param_count, i64 52782}
!140 = !{ptr @ipa_get_param_decl_index, ptr @ipa_get_param, i64 52371}
!141 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow, ptr @VEC_ipa_edge_args_t_gc_reserve_exact, i64 39}
!142 = !{ptr @VEC_ipa_edge_args_t_gc_reserve_exact, ptr @VEC_ipa_edge_args_t_base_space, i64 39}
!143 = !{ptr @VEC_ipa_edge_args_t_gc_reserve_exact, ptr @vec_gc_o_reserve_exact, i64 38}
!144 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 174692}
!145 = !{ptr @gimple_op, ptr @gimple_ops, i64 174691}
!146 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 174692}
!147 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 174692}
!148 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!149 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 174692}
!150 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 174692}
!151 = !{ptr @ipa_analyze_call_uses, ptr @gimple_call_fn, i64 69128}
!152 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 69128}
!153 = !{ptr @update_call_notes_after_inlining, ptr @VEC_ipa_node_params_t_base_index, i64 42}
!154 = !{ptr @update_call_notes_after_inlining, ptr @VEC_ipa_edge_args_t_base_index, i64 1}
!155 = !{ptr @update_jump_functions_after_inlining, ptr @VEC_ipa_edge_args_t_base_index, i64 88}
!156 = !{ptr @update_jump_functions_after_inlining, ptr @ipa_get_cs_argument_count, i64 44}
!157 = !{ptr @update_jump_functions_after_inlining, ptr @ipa_get_ith_jump_func, i64 1}
!158 = !{ptr @duplicate_ggc_array, ptr @ggc_alloc_stat, i64 3}
!159 = !{ptr @duplicate_array, ptr @xmalloc, i64 40}
!160 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!161 = !{!"function_entry_count", i64 40}
!162 = !{!163, !164, i64 0}
!163 = !{!"ipa_func_list", !164, i64 0, !164, i64 8}
!164 = !{!"any pointer", !165, i64 0}
!165 = !{!"omnipotent char", !166, i64 0}
!166 = !{!"Simple C/C++ TBAA"}
!167 = !{!164, !164, i64 0}
!168 = !{!163, !164, i64 8}
!169 = !{!"function_entry_count", i64 1}
!170 = !{!"branch_weights", i32 1, i32 127}
!171 = !{!"branch_weights", i32 36, i32 40}
!172 = !{!173, !177, i64 296}
!173 = !{!"cgraph_node", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !164, i64 72, !164, i64 80, !164, i64 88, !164, i64 96, !164, i64 104, !164, i64 112, !164, i64 120, !164, i64 128, !164, i64 136, !174, i64 144, !178, i64 184, !179, i64 224, !180, i64 232, !181, i64 256, !176, i64 288, !177, i64 296, !177, i64 300, !177, i64 304, !177, i64 308, !177, i64 308, !177, i64 308, !177, i64 308, !177, i64 308, !177, i64 308, !177, i64 308, !177, i64 308, !177, i64 309, !177, i64 309}
!174 = !{!"cgraph_local_info", !164, i64 0, !175, i64 8, !177, i64 32, !177, i64 32, !177, i64 32, !177, i64 32, !177, i64 32, !177, i64 32, !177, i64 32, !177, i64 32}
!175 = !{!"inline_summary", !176, i64 0, !177, i64 8, !177, i64 12, !177, i64 16, !177, i64 20}
!176 = !{!"long", !165, i64 0}
!177 = !{!"int", !165, i64 0}
!178 = !{!"cgraph_global_info", !176, i64 0, !176, i64 8, !164, i64 16, !177, i64 24, !177, i64 28, !177, i64 32, !165, i64 36}
!179 = !{!"cgraph_rtl_info", !177, i64 0}
!180 = !{!"cgraph_clone_info", !164, i64 0, !164, i64 8, !164, i64 16}
!181 = !{!"cgraph_thunk_info", !176, i64 0, !176, i64 8, !164, i64 16, !165, i64 24, !165, i64 25, !165, i64 26}
!182 = !{!"branch_weights", i32 2, i32 121}
!183 = !{!"branch_weights", i32 127, i32 4673}
!184 = distinct !{!184, !185}
!185 = !{!"llvm.loop.mustprogress"}
!186 = !{!"function_entry_count", i64 53102}
!187 = !{!"ipa-prop.c:VEC_ipa_node_params_t_base_index"}
!188 = !{!"function_entry_count", i64 39}
!189 = !{!190, !164, i64 8}
!190 = !{!"ipa_node_params", !177, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !176, i64 32, !177, i64 40, !177, i64 40, !177, i64 40, !177, i64 40}
!191 = !{!"branch_weights", i32 40, i32 1}
!192 = !{!"ipa-prop.c:ipa_count_formal_params"}
!193 = !{!173, !164, i64 0}
!194 = !{!"function_entry_count", i64 52940}
!195 = !{!"ipa-prop.c:ipa_get_param_count"}
!196 = !{!190, !177, i64 0}
!197 = !{!"ipa-prop.c:ipa_populate_param_decls"}
!198 = !{!165, !165, i64 0}
!199 = !{!"branch_weights", i32 1, i32 159}
!200 = !{!201, !164, i64 16}
!201 = !{!"ipa_param_descriptor", !202, i64 0, !164, i64 16, !177, i64 24}
!202 = !{!"ipcp_lattice", !177, i64 0, !164, i64 8}
!203 = !{!"branch_weights", i32 159, i32 1}
!204 = distinct !{!204, !185}
!205 = !{!"branch_weights", i32 1, i32 40}
!206 = !{!207, !164, i64 8}
!207 = !{!"function", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !164, i64 72, !164, i64 80, !164, i64 88, !164, i64 96, !177, i64 104, !177, i64 108, !177, i64 112, !177, i64 116, !177, i64 120, !177, i64 124, !164, i64 128, !177, i64 136, !177, i64 137, !177, i64 138, !177, i64 138, !177, i64 138, !177, i64 138, !177, i64 138, !177, i64 138, !177, i64 138, !177, i64 139, !177, i64 139, !177, i64 139, !177, i64 139, !177, i64 139, !177, i64 139, !177, i64 139}
!208 = !{!209, !164, i64 0}
!209 = !{!"control_flow_graph", !164, i64 0, !164, i64 8, !164, i64 16, !177, i64 24, !177, i64 28, !177, i64 32, !164, i64 40, !177, i64 48, !165, i64 52, !165, i64 60, !177, i64 68, !177, i64 72}
!210 = !{!211, !164, i64 56}
!211 = !{!"basic_block_def", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !165, i64 32, !164, i64 48, !164, i64 56, !165, i64 64, !176, i64 72, !177, i64 80, !177, i64 84, !177, i64 88, !177, i64 92, !177, i64 96}
!212 = !{!209, !164, i64 8}
!213 = !{!"branch_weights", i32 159, i32 586129}
!214 = distinct !{!214, !185}
!215 = !{i8 0, i8 2}
!216 = !{!"branch_weights", i32 146571, i32 1}
!217 = !{!"branch_weights", i32 208590, i32 146571}
!218 = distinct !{!218, !185}
!219 = !{!"function_entry_count", i64 293142}
!220 = !{!"ipa-prop.c:gsi_start_bb"}
!221 = !{!222, !164, i64 0}
!222 = !{!"", !164, i64 0, !164, i64 8, !164, i64 16}
!223 = !{!222, !164, i64 8}
!224 = !{!222, !164, i64 16}
!225 = !{!"function_entry_count", i64 1003462}
!226 = !{!"ipa-prop.c:gsi_end_p"}
!227 = !{!"function_entry_count", i64 710320}
!228 = !{!"ipa-prop.c:gsi_stmt"}
!229 = !{!230, !164, i64 0}
!230 = !{!"gimple_seq_node_d", !164, i64 0, !164, i64 8, !164, i64 16}
!231 = !{!"function_entry_count", i64 135}
!232 = !{!"ipa-prop.c:visit_store_addr_for_mod_analysis"}
!233 = !{!"branch_weights", i32 1, i32 136}
!234 = !{!"ipa-prop.c:gsi_next"}
!235 = !{!230, !164, i64 16}
!236 = !{!"function_entry_count", i64 52782}
!237 = !{!238, !164, i64 56}
!238 = !{!"cgraph_edge", !176, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !177, i64 72, !177, i64 76, !177, i64 80, !177, i64 84, !239, i64 88, !177, i64 90, !177, i64 90, !177, i64 90}
!239 = !{!"short", !165, i64 0}
!240 = !{!"branch_weights", i32 1, i32 52783}
!241 = !{!177, !177, i64 0}
!242 = !{!"branch_weights", i32 52783, i32 1}
!243 = !{!238, !177, i64 84}
!244 = !{!"function_entry_count", i64 460724}
!245 = !{!"ipa-prop.c:is_gimple_call"}
!246 = !{i32 0, i32 256}
!247 = !{!"function_entry_count", i64 263910}
!248 = !{!"ipa-prop.c:gimple_call_num_args"}
!249 = !{!"function_entry_count", i64 52905}
!250 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_base_length"}
!251 = !{!"branch_weights", i32 1, i32 52906}
!252 = !{!253, !177, i64 0}
!253 = !{!"VEC_ipa_edge_args_t_base", !177, i64 0, !177, i64 4, !165, i64 8}
!254 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_gc_safe_grow_cleared"}
!255 = !{!"function_entry_count", i64 52827}
!256 = !{!"ipa-prop.c:ipa_set_cs_argument_count"}
!257 = !{!258, !177, i64 0}
!258 = !{!"ipa_edge_args", !177, i64 0, !164, i64 8}
!259 = !{!"function_entry_count", i64 105784}
!260 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_base_index"}
!261 = !{!"function_entry_count", i64 0}
!262 = !{!238, !164, i64 16}
!263 = !{!264, !177, i64 0}
!264 = !{!"ipa_jump_func", !177, i64 0, !165, i64 8}
!265 = distinct !{!265, !185}
!266 = distinct !{!266, !185}
!267 = !{!"ipa-prop.c:ipa_edge_args_info_available_for_edge_p"}
!268 = !{!"function_entry_count", i64 105653}
!269 = !{!"ipa-prop.c:ipa_get_cs_argument_count"}
!270 = !{!"ipa-prop.c:ipa_get_ith_jump_func"}
!271 = !{!258, !164, i64 8}
!272 = distinct !{!272, !185}
!273 = !{!238, !164, i64 8}
!274 = !{!"ipa-prop.c:compute_scalar_jump_functions"}
!275 = !{!"branch_weights", i32 1, i32 52782}
!276 = distinct !{!276, !185}
!277 = !{!"ipa-prop.c:compute_pass_through_member_ptrs"}
!278 = distinct !{!278, !185}
!279 = !{!"ipa-prop.c:compute_cst_member_ptr_arguments"}
!280 = distinct !{!280, !185}
!281 = distinct !{!281, !185}
!282 = distinct !{!282, !185}
!283 = !{!"function_entry_count", i64 355160}
!284 = !{!"ipa-prop.c:ipa_analyze_stmt_uses"}
!285 = !{!"branch_weights", i32 286033, i32 69129}
!286 = !{!"function_entry_count", i64 46}
!287 = !{!"branch_weights", i32 377, i32 1927}
!288 = !{!"branch_weights", i32 1, i32 41}
!289 = !{!"function_entry_count", i64 42}
!290 = !{!"ipa-prop.c:propagate_info_to_inlined_callees"}
!291 = !{!"branch_weights", i32 1, i32 171}
!292 = !{!238, !177, i64 72}
!293 = !{!"branch_weights", i32 3, i32 45}
!294 = !{!"branch_weights", i32 171, i32 17}
!295 = distinct !{!295, !185}
!296 = !{!"function_entry_count", i64 69174}
!297 = !{!"branch_weights", i32 16391, i32 52785}
!298 = !{i32 0, i32 2}
!299 = !{!"branch_weights", i32 127, i32 4427073}
!300 = distinct !{!300, !185}
!301 = !{!"function_entry_count", i64 69175}
!302 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_base_iterate"}
!303 = !{!"branch_weights", i32 1, i32 69176}
!304 = !{!"branch_weights", i32 69175, i32 2}
!305 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_gc_free"}
!306 = !{!"branch_weights", i32 1, i32 2}
!307 = !{!"function_entry_count", i64 691}
!308 = !{!"branch_weights", i32 612, i32 81}
!309 = !{!190, !164, i64 16}
!310 = !{!"branch_weights", i32 691, i32 1}
!311 = !{!312, !164, i64 8}
!312 = !{!"ipa_param_call_note", !176, i64 0, !164, i64 8, !164, i64 16, !177, i64 24, !177, i64 28, !177, i64 32, !239, i64 36, !165, i64 38}
!313 = !{!"branch_weights", i32 1, i32 0}
!314 = distinct !{!314, !185}
!315 = !{!"branch_weights", i32 127, i32 44161}
!316 = distinct !{!316, !185}
!317 = !{!"function_entry_count", i64 692}
!318 = !{!"ipa-prop.c:VEC_ipa_node_params_t_base_iterate"}
!319 = !{!"branch_weights", i32 1, i32 693}
!320 = !{!321, !177, i64 0}
!321 = !{!"VEC_ipa_node_params_t_base", !177, i64 0, !177, i64 4, !165, i64 8}
!322 = !{!"branch_weights", i32 692, i32 2}
!323 = !{!"ipa-prop.c:VEC_ipa_node_params_t_heap_free"}
!324 = !{!"function_entry_count", i64 2}
!325 = !{!"branch_weights", i32 2, i32 2}
!326 = !{!"ipa-prop.c:ipa_edge_removal_hook"}
!327 = !{!"ipa-prop.c:ipa_node_removal_hook"}
!328 = !{!"function_entry_count", i64 45}
!329 = !{!"ipa-prop.c:ipa_edge_duplication_hook"}
!330 = !{!"function_entry_count", i64 41}
!331 = !{!"ipa-prop.c:ipa_node_duplication_hook"}
!332 = !{!190, !164, i64 24}
!333 = !{!190, !176, i64 32}
!334 = !{!"branch_weights", i32 41, i32 1}
!335 = distinct !{!335, !185}
!336 = !{!"ipa-prop.c:ipa_unregister_cgraph_hooks"}
!337 = !{!338, !164, i64 176}
!338 = !{!"lang_hooks", !164, i64 0, !176, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !164, i64 72, !164, i64 80, !164, i64 88, !164, i64 96, !164, i64 104, !164, i64 112, !164, i64 120, !164, i64 128, !164, i64 136, !164, i64 144, !164, i64 152, !164, i64 160, !164, i64 168, !164, i64 176, !164, i64 184, !164, i64 192, !164, i64 200, !164, i64 208, !164, i64 216, !164, i64 224, !164, i64 232, !339, i64 240, !340, i64 248, !341, i64 256, !342, i64 272, !343, i64 432, !344, i64 560, !164, i64 584, !164, i64 592, !164, i64 600, !164, i64 608, !164, i64 616, !164, i64 624, !164, i64 632, !164, i64 640, !164, i64 648, !164, i64 656, !164, i64 664, !165, i64 672}
!339 = !{!"lang_hooks_for_tree_inlining", !164, i64 0}
!340 = !{!"lang_hooks_for_callgraph", !164, i64 0}
!341 = !{!"lang_hooks_for_tree_dump", !164, i64 0, !164, i64 8}
!342 = !{!"lang_hooks_for_decls", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !164, i64 72, !164, i64 80, !164, i64 88, !164, i64 96, !164, i64 104, !164, i64 112, !164, i64 120, !164, i64 128, !164, i64 136, !164, i64 144, !164, i64 152}
!343 = !{!"lang_hooks_for_types", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !164, i64 64, !164, i64 72, !164, i64 80, !164, i64 88, !164, i64 96, !164, i64 104, !164, i64 112, !165, i64 120}
!344 = !{!"lang_hooks_for_lto", !164, i64 0, !164, i64 8, !164, i64 16}
!345 = distinct !{!345, !185}
!346 = !{!"ipa-prop.c:ipa_get_param"}
!347 = !{!"ipa-prop.c:ipa_is_param_modified"}
!348 = distinct !{!348, !185}
!349 = distinct !{!349, !185}
!350 = !{!"ipa-prop.c:count_formal_params_1"}
!351 = distinct !{!351, !185}
!352 = !{!"ipa-prop.c:VEC_tree_heap_alloc"}
!353 = !{!"ipa-prop.c:VEC_tree_base_quick_push"}
!354 = !{!355, !177, i64 0}
!355 = !{!"VEC_tree_base", !177, i64 0, !177, i64 4, !165, i64 8}
!356 = !{!357, !177, i64 48}
!357 = !{!"ipa_parm_adjustment", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !176, i64 40, !177, i64 48, !177, i64 52, !177, i64 52, !177, i64 52}
!358 = !{!357, !164, i64 0}
!359 = !{!357, !164, i64 8}
!360 = !{!357, !164, i64 16}
!361 = distinct !{!361, !185}
!362 = !{!"ipa-prop.c:VEC_ipa_parm_adjustment_t_base_length"}
!363 = !{!364, !177, i64 0}
!364 = !{!"VEC_ipa_parm_adjustment_t_base", !177, i64 0, !177, i64 4, !165, i64 8}
!365 = !{!"ipa-prop.c:get_vector_of_formal_parm_types"}
!366 = distinct !{!366, !185}
!367 = distinct !{!367, !185}
!368 = !{!"ipa-prop.c:VEC_tree_base_length"}
!369 = !{!"ipa-prop.c:VEC_ipa_parm_adjustment_t_base_index"}
!370 = !{!"ipa-prop.c:VEC_tree_base_index"}
!371 = !{!"ipa-prop.c:VEC_tree_heap_free"}
!372 = !{!357, !176, i64 40}
!373 = distinct !{!373, !185}
!374 = !{!"function_entry_count", i64 105564}
!375 = !{!"ipa-prop.c:gimple_call_arg"}
!376 = !{!"ipa-prop.c:gimple_call_fndecl"}
!377 = !{!"ipa-prop.c:gimple_call_lhs"}
!378 = !{!"ipa-prop.c:gimple_call_set_lhs"}
!379 = !{!"ipa-prop.c:gimple_set_block"}
!380 = !{!"ipa-prop.c:gimple_block"}
!381 = !{!"ipa-prop.c:gimple_has_location"}
!382 = !{!"ipa-prop.c:gimple_set_location"}
!383 = !{!"ipa-prop.c:gimple_location"}
!384 = !{!"ipa-prop.c:gimple_call_copy_flags"}
!385 = !{!"ipa-prop.c:gimple_call_set_chain"}
!386 = !{!"ipa-prop.c:gimple_call_chain"}
!387 = distinct !{!387, !185}
!388 = distinct !{!388, !185}
!389 = distinct !{!389, !185}
!390 = !{!"ipa-prop.c:VEC_ipa_parm_adjustment_t_heap_alloc"}
!391 = !{!"ipa-prop.c:VEC_ipa_parm_adjustment_t_base_quick_push"}
!392 = !{i64 0, i64 8, !167, i64 8, i64 8, !167, i64 16, i64 8, !167, i64 24, i64 8, !167, i64 32, i64 8, !167, i64 40, i64 8, !393, i64 48, i64 4, !241, i64 52, i64 4, !241, i64 52, i64 4, !241, i64 52, i64 4, !241}
!393 = !{!176, !176, i64 0}
!394 = !{!"ipa-prop.c:index_in_adjustments_multiple_times_p"}
!395 = distinct !{!395, !185}
!396 = !{!"ipa-prop.c:VEC_ipa_parm_adjustment_t_heap_free"}
!397 = !{!357, !164, i64 24}
!398 = distinct !{!398, !185}
!399 = !{!400, !164, i64 48}
!400 = !{!"output_block", !177, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !164, i64 40, !164, i64 48, !164, i64 56, !177, i64 64, !177, i64 68, !165, i64 72, !164, i64 80}
!401 = !{i64 0, i64 8, !167, i64 8, i64 4, !241}
!402 = !{i64 0, i64 4, !241}
!403 = distinct !{!403, !185}
!404 = !{!400, !164, i64 16}
!405 = distinct !{!405, !185}
!406 = !{!"ipa-prop.c:csi_start"}
!407 = !{!"ipa-prop.c:csi_end_p"}
!408 = !{!409, !164, i64 8}
!409 = !{!"cgraph_node_set_def", !164, i64 0, !164, i64 8, !164, i64 16}
!410 = !{!"ipa-prop.c:csi_node"}
!411 = !{!"ipa-prop.c:csi_next"}
!412 = !{!413, !177, i64 8}
!413 = !{!"", !164, i64 0, !177, i64 8}
!414 = !{!"ipa-prop.c:ipa_write_node_info"}
!415 = !{!400, !164, i64 8}
!416 = !{!417, !164, i64 168}
!417 = !{!"lto_out_decl_state", !165, i64 0, !164, i64 168, !164, i64 176}
!418 = distinct !{!418, !185}
!419 = distinct !{!419, !185}
!420 = distinct !{!420, !185}
!421 = distinct !{!421, !185}
!422 = distinct !{!422, !185}
!423 = distinct !{!423, !185}
!424 = !{!"ipa-prop.c:ipa_check_create_node_params"}
!425 = !{!"branch_weights", i32 1, i32 42}
!426 = !{!"branch_weights", i32 42, i32 1}
!427 = !{!"ipa-prop.c:ipa_check_create_edge_args"}
!428 = !{!"branch_weights", i32 1, i32 46}
!429 = !{!"branch_weights", i32 7, i32 40}
!430 = !{!"ipa-prop.c:ipa_prop_read_section"}
!431 = !{!432, !177, i64 24}
!432 = !{!"lto_function_header", !433, i64 0, !177, i64 8, !177, i64 12, !177, i64 16, !177, i64 20, !177, i64 24, !177, i64 28, !177, i64 32}
!433 = !{!"lto_header", !239, i64 0, !239, i64 2, !177, i64 4}
!434 = !{!432, !177, i64 28}
!435 = !{!436, !164, i64 0}
!436 = !{!"lto_input_block", !164, i64 0, !177, i64 8, !177, i64 12}
!437 = !{!436, !177, i64 8}
!438 = !{!436, !177, i64 12}
!439 = !{!432, !177, i64 32}
!440 = !{!441, !164, i64 16}
!441 = !{!"lto_file_decl_data", !164, i64 0, !164, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !177, i64 40, !164, i64 48, !164, i64 56}
!442 = distinct !{!442, !185}
!443 = distinct !{!443, !185}
!444 = distinct !{!444, !185}
!445 = distinct !{!445, !185}
!446 = !{!"ipa-prop.c:ipa_set_called_with_variable_arg"}
!447 = !{!312, !164, i64 16}
!448 = !{!312, !177, i64 24}
!449 = distinct !{!449, !185}
!450 = !{!"function_entry_count", i64 80}
!451 = !{!"ipa-prop.c:ipa_set_param_count"}
!452 = !{!"ipa-prop.c:bb_seq"}
!453 = !{!211, !177, i64 96}
!454 = !{!"branch_weights", i32 293143, i32 1}
!455 = !{!"branch_weights", i32 1, i32 293143}
!456 = !{!457, !164, i64 0}
!457 = !{!"gimple_bb_info", !164, i64 0, !164, i64 8}
!458 = !{!"ipa-prop.c:gimple_seq_first"}
!459 = !{!460, !164, i64 0}
!460 = !{!"gimple_seq_d", !164, i64 0, !164, i64 8, !164, i64 16}
!461 = !{!"ipa-prop.c:ipa_get_param_decl_index"}
!462 = !{!"branch_weights", i32 127, i32 1}
!463 = !{!"branch_weights", i32 127, i32 6756097}
!464 = distinct !{!464, !185}
!465 = !{!"function_entry_count", i64 984800}
!466 = !{!"ipa-prop.c:gimple_code"}
!467 = !{!"ipa-prop.c:gimple_num_ops"}
!468 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_gc_safe_grow"}
!469 = !{}
!470 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_base_address"}
!471 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_gc_reserve_exact"}
!472 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_base_space"}
!473 = !{!253, !177, i64 4}
!474 = !{!"ipa-prop.c:compute_complex_pass_through"}
!475 = !{i32 0, i32 65536}
!476 = !{!"ipa-prop.c:is_gimple_assign"}
!477 = !{!"ipa-prop.c:gimple_assign_rhs1"}
!478 = !{!"ipa-prop.c:gimple_assign_rhs2"}
!479 = !{!"ipa-prop.c:gimple_expr_code"}
!480 = !{!"ipa-prop.c:gimple_assign_rhs_code"}
!481 = !{!"function_entry_count", i64 174692}
!482 = !{!"ipa-prop.c:gimple_op"}
!483 = !{!"branch_weights", i32 1, i32 174693}
!484 = !{!"ipa-prop.c:gimple_has_ops"}
!485 = !{!"ipa-prop.c:gimple_ops"}
!486 = !{!"ipa-prop.c:gimple_statement_structure"}
!487 = !{!"ipa-prop.c:gss_for_code"}
!488 = !{!"ipa-prop.c:get_gimple_rhs_class"}
!489 = !{!"ipa-prop.c:type_like_member_ptr_p"}
!490 = !{!"ipa-prop.c:determine_cst_member_ptr"}
!491 = distinct !{!491, !185}
!492 = !{!"ipa-prop.c:gsi_prev"}
!493 = !{!230, !164, i64 8}
!494 = !{!"ipa-prop.c:gimple_assign_lhs"}
!495 = !{!"ipa-prop.c:get_ssa_def_if_simple_copy"}
!496 = !{!"ipa-prop.c:fill_member_ptr_cst_jump_function"}
!497 = !{!"function_entry_count", i64 69128}
!498 = !{!"ipa-prop.c:ipa_analyze_call_uses"}
!499 = !{!"branch_weights", i32 1, i32 69129}
!500 = !{!"ipa-prop.c:gimple_call_fn"}
!501 = !{!"ipa-prop.c:ipa_note_param_call"}
!502 = !{!312, !177, i64 28}
!503 = !{!211, !176, i64 72}
!504 = !{!312, !176, i64 0}
!505 = !{!312, !177, i64 32}
!506 = !{!211, !177, i64 84}
!507 = !{!312, !239, i64 36}
!508 = !{!"ipa-prop.c:gimple_phi_num_args"}
!509 = !{!"ipa-prop.c:get_use_from_ptr"}
!510 = !{!511, !164, i64 24}
!511 = !{!"ssa_use_operand_d", !164, i64 0, !164, i64 8, !165, i64 16, !164, i64 24}
!512 = !{!"ipa-prop.c:gimple_phi_arg_imm_use_ptr"}
!513 = !{!"ipa-prop.c:ipa_is_ssa_with_stmt_def"}
!514 = !{!"ipa-prop.c:ipa_get_stmt_member_ptr_load_param"}
!515 = !{!"ipa-prop.c:gimple_bb"}
!516 = !{!"ipa-prop.c:single_pred_p"}
!517 = !{!211, !164, i64 0}
!518 = !{!"ipa-prop.c:single_succ_p"}
!519 = !{!211, !164, i64 8}
!520 = !{!"ipa-prop.c:single_pred"}
!521 = !{!522, !164, i64 0}
!522 = !{!"edge_def", !164, i64 0, !164, i64 8, !165, i64 16, !164, i64 24, !164, i64 32, !177, i64 40, !177, i64 44, !177, i64 48, !177, i64 52, !176, i64 56}
!523 = !{!"ipa-prop.c:single_succ"}
!524 = !{!522, !164, i64 8}
!525 = !{!"ipa-prop.c:gimple_cond_code"}
!526 = !{!"ipa-prop.c:gimple_cond_rhs"}
!527 = !{!"ipa-prop.c:gimple_cond_lhs"}
!528 = !{!"ipa-prop.c:gimple_uid"}
!529 = !{!"ipa-prop.c:gimple_phi_arg"}
!530 = !{!"ipa-prop.c:ipa_get_member_ptr_load_param"}
!531 = !{!"ipa-prop.c:VEC_edge_base_length"}
!532 = !{!533, !177, i64 0}
!533 = !{!"VEC_edge_base", !177, i64 0, !177, i64 4, !165, i64 8}
!534 = !{!"ipa-prop.c:single_pred_edge"}
!535 = !{!"ipa-prop.c:VEC_edge_base_index"}
!536 = !{!"ipa-prop.c:single_succ_edge"}
!537 = !{!"ipa-prop.c:update_call_notes_after_inlining"}
!538 = !{!312, !165, i64 38}
!539 = !{!238, !177, i64 76}
!540 = distinct !{!540, !185}
!541 = !{!"function_entry_count", i64 44}
!542 = !{!"ipa-prop.c:update_jump_functions_after_inlining"}
!543 = !{!"branch_weights", i32 1, i32 44}
!544 = !{i64 0, i64 4, !241, i64 8, i64 8, !167, i64 8, i64 8, !167, i64 16, i64 4, !241, i64 20, i64 4, !241, i64 8, i64 8, !393, i64 16, i64 8, !167, i64 24, i64 4, !241, i64 8, i64 8, !167, i64 16, i64 8, !167}
!545 = distinct !{!545, !185}
!546 = !{!"ipa-prop.c:print_edge_addition_message"}
!547 = !{!"ipa-prop.c:VEC_cgraph_edge_p_heap_safe_push"}
!548 = !{!"ipa-prop.c:VEC_cgraph_edge_p_heap_reserve"}
!549 = !{!"ipa-prop.c:VEC_cgraph_edge_p_base_quick_push"}
!550 = !{!551, !177, i64 0}
!551 = !{!"VEC_cgraph_edge_p_base", !177, i64 0, !177, i64 4, !165, i64 8}
!552 = !{!"ipa-prop.c:VEC_cgraph_edge_p_base_space"}
!553 = !{!551, !177, i64 4}
!554 = !{!"ipa-prop.c:duplicate_ggc_array"}
!555 = !{!"branch_weights", i32 44, i32 3}
!556 = !{!"ipa-prop.c:duplicate_array"}
!557 = !{!"ipa-prop.c:gimple_set_op"}
!558 = !{!"ipa-prop.c:VEC_cgraph_node_ptr_base_length"}
!559 = !{!560, !177, i64 0}
!560 = !{!"VEC_cgraph_node_ptr_base", !177, i64 0, !177, i64 4, !165, i64 8}
!561 = !{!"ipa-prop.c:VEC_cgraph_node_ptr_base_index"}
!562 = !{!"ipa-prop.c:ipa_write_jump_function"}
!563 = !{!"ipa-prop.c:ipa_write_param_call_note"}
!564 = !{!"ipa-prop.c:VEC_ipa_node_params_t_heap_alloc"}
!565 = !{!"ipa-prop.c:VEC_ipa_node_params_t_base_length"}
!566 = !{!"ipa-prop.c:VEC_ipa_node_params_t_heap_safe_grow_cleared"}
!567 = !{!"ipa-prop.c:VEC_ipa_node_params_t_heap_safe_grow"}
!568 = !{!"ipa-prop.c:VEC_ipa_node_params_t_base_address"}
!569 = !{!"ipa-prop.c:VEC_ipa_node_params_t_heap_reserve_exact"}
!570 = !{!"ipa-prop.c:VEC_ipa_node_params_t_base_space"}
!571 = !{!321, !177, i64 4}
!572 = !{!"ipa-prop.c:VEC_ipa_edge_args_t_gc_alloc"}
!573 = !{!"ipa-prop.c:ipa_read_node_info"}
!574 = distinct !{!574, !185}
!575 = distinct !{!575, !185}
!576 = distinct !{!576, !185}
!577 = distinct !{!577, !185}
!578 = !{!"ipa-prop.c:ipa_read_jump_function"}
!579 = !{!"ipa-prop.c:ipa_read_param_call_note"}
