; ModuleID = 'ipa-cp.c'
source_filename = "ipa-cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.ipcp_lattice = type { i32, ptr }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.ipa_node_params = type { i32, ptr, ptr, ptr, i64, i8 }
%struct.ipa_param_descriptor = type { %struct.ipcp_lattice, ptr, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, ptr }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, ptr, i32 }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@pass_ipa_cp = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @cgraph_gate_cp, ptr @ipcp_driver, ptr null, ptr null, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 385 }, ptr @ipcp_generate_summary, ptr @ipcp_write_summary, ptr @ipcp_read_summary, ptr null, ptr @lto_ipa_fixup_call_notes, i32 0, ptr null, ptr null }, align 8
@flag_ipa_cp = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"\0AIPA structures before propagation:\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\0AProfiling info after insert stage:\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\0AIPA constant propagation end\0A\00", align 1
@n_cloning_candidates = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"\0AIPA iterate stage:\0A\0A\00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"ipa-cp.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\0AIPA lattices after propagation:\0A\00", align 1
@ipa_node_params_vector = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"Not considering %s for cloning; body is overwrittable.\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Not considering %s for cloning; body is not versionable.\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Not considering %s for cloning; no direct calls.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Considering %s for cloning; code would shrink.\0A\00", align 1
@flag_ipa_cp_clone = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [58 x i8] c"Not considering %s for cloning; -fipa-cp-clone disabled.\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Not considering %s for cloning; optimizing it for size.\0A\00", align 1
@max_count = internal unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [54 x i8] c"Considering %s for cloning; usually called directly.\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Not considering %s for cloning; no hot calls.\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Considering %s for cloning.\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"\0ALattice:\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"  Node: %s:\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"    param [%d]: \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"type is CONST \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"type is TOP\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"type is BOTTOM\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"printing scale for %s: \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"value is  %ld  \0A\00", align 1
@ipa_edge_args_vector = external local_unnamed_addr global ptr, align 8
@cgraph_max_uid = external local_unnamed_addr global i32, align 4
@cgraph_edge_max_uid = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"Forcing param \00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c" of node %s to bottom.\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\0AIPA insert stage:\0A\0A\00", align 1
@dead_nodes = internal unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [25 x i8] c"considering function %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Not versioning, cold code would grow\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"versioned function %s with growth %i, overall %i\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"skipping function %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Versioning of %s will save code size\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Cost of versioning %s is %i, (size: %i, freq: %i)\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"  replacing param \00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" with const \00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"\0ANODE COUNTS :\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"\0ACS COUNTS stage:\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"function %s: \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"count is  %ld  \0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%s -> %s \00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\0AIPA constant propagation start:\0A\00", align 1
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_cp() #0 !prof !181 !PGOFuncName !182 {
  %1 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !183
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipcp_driver() #1 !prof !187 !PGOFuncName !188 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %2 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 1, ptr noundef %1) #18
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !191

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 36, i64 1, ptr nonnull %3)
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !183
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @ipa_print_all_params(ptr noundef %11) #18
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @ipa_print_all_jump_functions(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %12, %0
  tail call fastcc void @ipcp_iterate_stage() #19
  tail call fastcc void @ipcp_insert_stage() #19
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17, !prof !191

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !183
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 36, i64 1, ptr nonnull %15)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call fastcc void @ipcp_print_profile_data(ptr noundef %23) #19
  br label %24

24:                                               ; preds = %21, %17, %14
  tail call void @free_all_ipa_structures_after_ipa_cp() #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !191

27:                                               ; preds = %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 30, i64 1, ptr nonnull %25)
  br label %29

29:                                               ; preds = %27, %24
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipcp_generate_summary() #1 !prof !187 !PGOFuncName !192 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !191

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 33, i64 1, ptr nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  tail call fastcc void @ipa_check_create_node_params() #19
  tail call fastcc void @ipa_check_create_edge_args() #19
  tail call void @ipa_register_cgraph_hooks() #18
  tail call fastcc void @ipcp_init_stage() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipcp_write_summary(ptr noundef %0) #1 !prof !193 !PGOFuncName !194 {
  tail call void @ipa_prop_write_jump_functions(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipcp_read_summary() #1 !prof !193 !PGOFuncName !195 {
  tail call void @ipa_prop_read_jump_functions() #18
  ret void
}

; Function Attrs: optsize
declare void @lto_ipa_fixup_call_notes(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_print_all_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_print_all_jump_functions(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_iterate_stage() unnamed_addr #1 !prof !187 !PGOFuncName !196 {
  store i32 0, ptr @n_cloning_candidates, align 4, !tbaa !183
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !191

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8, ptr @in_lto_p, align 1, !tbaa !197
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !191

8:                                                ; preds = %5
  tail call void @ipa_update_after_lto_read() #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !198

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %9 ]
  tail call fastcc void @ipcp_initialize_node_lattices(ptr noundef nonnull %13) #19
  tail call fastcc void @ipcp_compute_node_scale(ptr noundef nonnull %13) #19
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !prof !199, !llvm.loop !200

17:                                               ; preds = %12, %9
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20, !prof !191

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !183
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call fastcc void @ipcp_print_all_lattices(ptr noundef nonnull %18) #19
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call fastcc void @ipcp_function_scale_print(ptr noundef %25) #19
  br label %26

26:                                               ; preds = %24, %20, %17
  tail call fastcc void @ipcp_propagate_stage() #19
  %27 = tail call fastcc zeroext i8 @ipcp_change_tops_to_bottom() #19, !range !202
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29, !prof !191

29:                                               ; preds = %26
  %30 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !183
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 760, ptr noundef nonnull @.str.6) #18
  br label %33

33:                                               ; preds = %29, %32
  tail call fastcc void @ipcp_propagate_stage() #19
  br label %34

34:                                               ; preds = %33, %26
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37, !prof !191

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 33, i64 1, ptr nonnull %35)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call fastcc void @ipcp_print_all_lattices(ptr noundef %39) #19
  %40 = load i32, ptr @dump_flags, align 4, !tbaa !183
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call fastcc void @ipcp_print_profile_data(ptr noundef %44) #19
  br label %45

45:                                               ; preds = %37, %43, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_insert_stage() unnamed_addr #1 !prof !187 !PGOFuncName !203 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  tail call fastcc void @ipa_check_create_node_params() #19
  tail call fastcc void @ipa_check_create_edge_args() #19
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !191

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 20, i64 1, ptr nonnull %3)
  br label %7

7:                                                ; preds = %5, %0
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %8, ptr @dead_nodes, align 8, !tbaa !189
  %9 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11, !prof !198

11:                                               ; preds = %7
  %12 = load i64, ptr @max_count, align 8, !tbaa !204
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi ptr [ %36, %32 ], [ %9, %11 ]
  %15 = phi i64 [ %34, %32 ], [ 0, %11 ]
  %16 = phi i64 [ %33, %32 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 32
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %32, label %21, !prof !206

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !207
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %26, !prof !215

25:                                               ; preds = %21
  store i64 %23, ptr @max_count, align 8, !tbaa !204
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i64 [ %23, %25 ], [ %16, %21 ]
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 18, i32 1, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !216
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %15, %30
  br label %32

32:                                               ; preds = %13, %26
  %33 = phi i64 [ %27, %26 ], [ %16, %13 ]
  %34 = phi i64 [ %31, %26 ], [ %15, %13 ]
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !prof !199, !llvm.loop !217

38:                                               ; preds = %32, %7
  %39 = phi i64 [ 0, %7 ], [ %34, %32 ]
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !189
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 17, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !218
  %43 = sext i32 %42 to i64
  %44 = tail call i64 @llvm.smax.i64(i64 %39, i64 %43)
  %45 = getelementptr inbounds %struct.param_info, ptr %40, i64 19, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !218
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %44, %47
  %49 = sdiv i64 %48, 100
  %50 = add nsw i64 %49, 1
  %51 = tail call ptr @fibheap_new() #18
  %52 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57, !prof !198

54:                                               ; preds = %80, %38
  %55 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %230, !prof !220

57:                                               ; preds = %38, %80
  %58 = phi ptr [ %82, %80 ], [ %52, %38 ]
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 27
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 32
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %80, label %63, !prof !206

63:                                               ; preds = %57
  %64 = tail call fastcc zeroext i8 @ipcp_node_modifiable_p(ptr noundef nonnull %58) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66, !prof !215

66:                                               ; preds = %63
  %67 = load ptr, ptr @ipa_node_params_vector, align 8
  %68 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 24
  %69 = load i32, ptr %68, align 8, !tbaa !221
  %70 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %67, i32 noundef %69) #19
  %71 = tail call fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr noundef nonnull %70) #19, !range !202
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80, !prof !222

73:                                               ; preds = %66
  %74 = tail call fastcc i32 @ipcp_const_param_count(ptr noundef nonnull %58) #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76, !prof !222

76:                                               ; preds = %73
  %77 = tail call fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef nonnull %58) #19, !range !223
  %78 = tail call ptr @fibheap_insert(ptr noundef %51, i64 noundef %77, ptr noundef nonnull %58) #18
  %79 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 16
  store ptr %78, ptr %79, align 8, !tbaa !224
  br label %80

80:                                               ; preds = %73, %76, %66, %57, %63
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !189
  %83 = icmp eq ptr %82, null
  br i1 %83, label %54, label %57, !prof !199, !llvm.loop !225

84:                                               ; preds = %54, %226
  %85 = phi i64 [ %227, %226 ], [ 0, %54 ]
  %86 = tail call ptr @fibheap_extract_min(ptr noundef %51) #18
  %87 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 16
  store ptr null, ptr %87, align 8, !tbaa !224
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = tail call ptr @cgraph_node_name(ptr noundef nonnull %86) #18
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.30, ptr noundef %91) #19
  br label %93

93:                                               ; preds = %90, %84
  %94 = tail call fastcc i64 @ipcp_estimate_growth(ptr noundef nonnull %86) #19, !range !226
  %95 = trunc i64 %94 to i32
  %96 = add nsw i64 %94, %85
  %97 = icmp sgt i64 %96, %50
  br i1 %97, label %230, label %98

98:                                               ; preds = %93
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr %86, align 8, !tbaa !227
  %102 = getelementptr inbounds %struct.tree_function_decl, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !197
  %104 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %103) #18
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %108 = icmp eq ptr %107, null
  br i1 %108, label %226, label %109, !llvm.loop !228

109:                                              ; preds = %106
  %110 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 36, i64 1, ptr nonnull %107)
  br label %226, !llvm.loop !228

111:                                              ; preds = %100, %98
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !189
  %114 = icmp eq ptr %113, null
  br i1 %114, label %127, label %119

115:                                              ; preds = %124
  %116 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !189
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119, !llvm.loop !229

119:                                              ; preds = %111, %115
  %120 = phi ptr [ %117, %115 ], [ %113, %111 ]
  %121 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !230
  %123 = icmp eq ptr %122, %86
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %120) #19
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %115, label %135

127:                                              ; preds = %115, %111
  %128 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %86) #19, !range !202
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @dead_nodes, align 8, !tbaa !189
  %132 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 24
  %133 = load i32, ptr %132, align 8, !tbaa !221
  %134 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %131, i32 noundef %133) #18
  br label %135

135:                                              ; preds = %124, %119, %130, %127
  %136 = load ptr, ptr @ipa_node_params_vector, align 8
  %137 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 24
  %138 = load i32, ptr %137, align 8, !tbaa !221
  %139 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %136, i32 noundef %138) #19
  %140 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %139) #19
  %141 = tail call fastcc ptr @VEC_ipa_replace_map_p_gc_alloc() #19
  store ptr %141, ptr %2, align 8, !tbaa !189
  %142 = tail call ptr @bitmap_gc_alloc_stat() #18
  %143 = icmp sgt i32 %140, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %166, %135
  %145 = load ptr, ptr %112, align 8, !tbaa !189
  %146 = icmp eq ptr %145, null
  br i1 %146, label %176, label %169

147:                                              ; preds = %135, %166
  %148 = phi i32 [ %167, %166 ], [ 0, %135 ]
  %149 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %139, i32 noundef %148) #19
  %150 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %139, i32 noundef %148) #19
  %151 = tail call zeroext i8 @is_gimple_reg(ptr noundef %150) #18
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load ptr, ptr %86, align 8, !tbaa !227
  %155 = getelementptr inbounds %struct.tree_function_decl, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !197
  %157 = tail call ptr @gimple_default_def(ptr noundef %156, ptr noundef %150) #18
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153, %147
  %160 = load i32, ptr %149, align 8, !tbaa !233
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = tail call fastcc ptr @ipcp_create_replace_map(ptr noundef %150, ptr noundef nonnull %149) #19
  call fastcc void @VEC_ipa_replace_map_p_gc_safe_push(ptr noundef nonnull %2, ptr noundef %163) #19
  br label %164

164:                                              ; preds = %153, %162
  %165 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %142, i32 noundef %148) #18
  br label %166

166:                                              ; preds = %164, %159
  %167 = add nuw nsw i32 %148, 1
  %168 = icmp eq i32 %167, %140
  br i1 %168, label %144, label %147, !llvm.loop !235

169:                                              ; preds = %144, %169
  %170 = phi ptr [ %174, %169 ], [ %145, %144 ]
  %171 = phi i32 [ %172, %169 ], [ 0, %144 ]
  %172 = add nuw nsw i32 %171, 1
  %173 = getelementptr inbounds %struct.cgraph_edge, ptr %170, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !189
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %169, !llvm.loop !236

176:                                              ; preds = %169, %144
  %177 = phi i32 [ 0, %144 ], [ %172, %169 ]
  %178 = tail call fastcc ptr @VEC_cgraph_edge_p_heap_alloc(i32 noundef %177) #19
  store ptr %178, ptr %1, align 8, !tbaa !189
  %179 = load ptr, ptr %112, align 8, !tbaa !189
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %176, %181
  %182 = phi ptr [ %184, %181 ], [ %179, %176 ]
  tail call fastcc void @VEC_cgraph_edge_p_base_quick_push(ptr noundef %178, ptr noundef nonnull %182) #19
  %183 = getelementptr inbounds %struct.cgraph_edge, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !189
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %181, !llvm.loop !237

186:                                              ; preds = %181, %176
  %187 = load ptr, ptr %2, align 8, !tbaa !189
  %188 = tail call ptr @cgraph_create_virtual_clone(ptr noundef %86, ptr noundef %178, ptr noundef %187, ptr noundef %142) #18
  call fastcc void @VEC_cgraph_edge_p_heap_free(ptr noundef nonnull %1) #19
  store ptr null, ptr %2, align 8, !tbaa !189
  %189 = icmp eq ptr %188, null
  br i1 %189, label %226, label %190, !llvm.loop !228

190:                                              ; preds = %186
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = tail call ptr @cgraph_node_name(ptr noundef %86) #18
  %195 = trunc i64 %96 to i32
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %191, ptr noundef nonnull @.str.32, ptr noundef %194, i32 noundef %95, i32 noundef %195) #19
  br label %197

197:                                              ; preds = %193, %190
  tail call fastcc void @ipcp_init_cloned_node(ptr noundef %86, ptr noundef nonnull %188) #19
  %198 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %199 = icmp eq ptr %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %188, align 8, !tbaa !227
  %202 = load i32, ptr @dump_flags, align 4, !tbaa !183
  tail call void @dump_function_to_file(ptr noundef %201, ptr noundef nonnull %198, i32 noundef %202) #18
  br label %203

203:                                              ; preds = %200, %197
  %204 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !189
  %206 = icmp eq ptr %205, null
  br i1 %206, label %226, label %207

207:                                              ; preds = %203, %222
  %208 = phi ptr [ %224, %222 ], [ %205, %203 ]
  %209 = getelementptr inbounds %struct.cgraph_edge, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !238
  %211 = getelementptr inbounds %struct.cgraph_node, ptr %210, i64 0, i32 16
  %212 = load ptr, ptr %211, align 8, !tbaa !224
  %213 = icmp eq ptr %212, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %207
  %215 = tail call ptr @fibheap_delete_node(ptr noundef %51, ptr noundef nonnull %212) #18
  %216 = load ptr, ptr %209, align 8, !tbaa !238
  %217 = tail call fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef %216) #19, !range !223
  %218 = load ptr, ptr %209, align 8, !tbaa !238
  %219 = tail call ptr @fibheap_insert(ptr noundef %51, i64 noundef %217, ptr noundef %218) #18
  %220 = load ptr, ptr %209, align 8, !tbaa !238
  %221 = getelementptr inbounds %struct.cgraph_node, ptr %220, i64 0, i32 16
  store ptr %219, ptr %221, align 8, !tbaa !224
  br label %222

222:                                              ; preds = %207, %214
  %223 = getelementptr inbounds %struct.cgraph_edge, ptr %208, i64 0, i32 6
  %224 = load ptr, ptr %223, align 8, !tbaa !189
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %207, !llvm.loop !239

226:                                              ; preds = %222, %203, %186, %106, %109
  %227 = phi i64 [ %85, %109 ], [ %85, %106 ], [ %96, %186 ], [ %96, %203 ], [ %96, %222 ]
  %228 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %84, label %230, !prof !240

230:                                              ; preds = %226, %93, %54
  %231 = phi ptr [ null, %54 ], [ %86, %93 ], [ %86, %226 ]
  %232 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246, !prof !220

234:                                              ; preds = %230, %241
  %235 = phi ptr [ %242, %241 ], [ %231, %230 ]
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = tail call ptr @cgraph_node_name(ptr noundef %235) #18
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.33, ptr noundef %239) #19
  br label %241

241:                                              ; preds = %238, %234
  %242 = tail call ptr @fibheap_extract_min(ptr noundef %51) #18
  %243 = getelementptr inbounds %struct.cgraph_node, ptr %242, i64 0, i32 16
  store ptr null, ptr %243, align 8, !tbaa !224
  %244 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %234, label %246, !prof !240, !llvm.loop !241

246:                                              ; preds = %241, %230
  tail call void @fibheap_delete(ptr noundef %51) #18
  %247 = load ptr, ptr @dead_nodes, align 8, !tbaa !189
  tail call void @bitmap_obstack_free(ptr noundef %247) #18
  store ptr null, ptr @dead_nodes, align 8, !tbaa !189
  tail call fastcc void @ipcp_update_callgraph() #19
  tail call fastcc void @ipcp_update_profiling() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_profile_data(ptr nocapture noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !242 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 15, i64 1, ptr %0)
  tail call fastcc void @ipcp_print_func_profile_counts(ptr noundef %0) #19
  %3 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 18, i64 1, ptr %0)
  tail call fastcc void @ipcp_print_call_profile_counts(ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare void @free_all_ipa_structures_after_ipa_cp() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @ipa_update_after_lto_read() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_initialize_node_lattices(ptr noundef %0) unnamed_addr #1 !prof !243 !PGOFuncName !244 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = tail call fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr noundef nonnull %5) #19, !range !202
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17, !prof !245

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %0) #19, !range !202
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17, !prof !246

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @ipcp_cloning_candidate_p(ptr noundef nonnull %0) #19, !range !202
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !247

14:                                               ; preds = %11
  %15 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !183
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @n_cloning_candidates, align 4, !tbaa !183
  br label %17

17:                                               ; preds = %11, %8, %1, %14
  %18 = phi i32 [ 2, %14 ], [ 0, %1 ], [ 2, %8 ], [ 0, %11 ]
  %19 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #19
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27, !prof !248

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %24, %21 ], [ 0, %17 ]
  %23 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %5, i32 noundef %22) #19
  store i32 %18, ptr %23, align 8, !tbaa !233
  %24 = add nuw nsw i32 %22, 1
  %25 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #19
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %21, label %27, !prof !249, !llvm.loop !250

27:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipcp_compute_node_scale(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !243 !PGOFuncName !251 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !252

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %8 = load i64, ptr %6, align 8, !tbaa !253
  %9 = add nsw i64 %8, %7
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !prof !254, !llvm.loop !255

13:                                               ; preds = %5, %1
  %14 = phi i64 [ 0, %1 ], [ %9, %5 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %16 = load i64, ptr %15, align 8, !tbaa !207
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18, !prof !245

18:                                               ; preds = %13
  %19 = mul nsw i64 %16, 9
  %20 = sdiv i64 %19, 10
  %21 = tail call i64 @llvm.smin.i64(i64 %14, i64 %20)
  %22 = mul nsw i64 %21, 10000
  %23 = sdiv i64 %22, %16
  br label %24

24:                                               ; preds = %13, %18
  %25 = phi i64 [ %23, %18 ], [ 0, %13 ]
  tail call fastcc void @ipcp_set_node_scale(ptr noundef nonnull %0, i64 noundef %25) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_all_lattices(ptr noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !256 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 10, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %39, %37 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 27
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @ipa_node_params_vector, align 8
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 24
  %14 = load i32, ptr %13, align 8, !tbaa !221
  %15 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %12, i32 noundef %14) #19
  %16 = tail call ptr @cgraph_node_name(ptr noundef nonnull %6) #18
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %16) #19
  %18 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %15) #19
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %11, %34
  %21 = phi i32 [ %35, %34 ], [ 0, %11 ]
  %22 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %15, i32 noundef %21) #19
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %21) #19
  %24 = load i32, ptr %22, align 8, !tbaa !233
  switch i32 %24, label %32 [
    i32 1, label %25
    i32 2, label %30
  ]

25:                                               ; preds = %20
  %26 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 14, i64 1, ptr %0)
  %27 = getelementptr inbounds %struct.ipcp_lattice, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !257
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %28, i32 noundef 0) #18
  %29 = tail call i32 @fputc(i32 10, ptr %0)
  br label %34

30:                                               ; preds = %20
  %31 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %0)
  br label %34

32:                                               ; preds = %20
  %33 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 15, i64 1, ptr %0)
  br label %34

34:                                               ; preds = %30, %32, %25
  %35 = add nuw nsw i32 %21, 1
  %36 = icmp eq i32 %35, %18
  br i1 %36, label %37, label %20, !llvm.loop !258

37:                                               ; preds = %34, %11, %5
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !189
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %5, !llvm.loop !259

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_function_scale_print(ptr nocapture noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !260 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %15
  %5 = phi ptr [ %17, %15 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %11) #19
  %13 = tail call fastcc i64 @ipcp_get_node_scale(ptr noundef nonnull %5) #19
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %13) #19
  br label %15

15:                                               ; preds = %4, %10
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !189
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !261

19:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_propagate_stage() unnamed_addr #1 !prof !187 !PGOFuncName !262 {
  %1 = alloca %struct.ipcp_lattice, align 8
  %2 = alloca %struct.ipcp_lattice, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  tail call fastcc void @ipa_check_create_node_params() #19
  tail call fastcc void @ipa_check_create_edge_args() #19
  %4 = tail call ptr @ipa_init_func_list() #18
  store ptr %4, ptr %3, align 8, !tbaa !189
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6, !prof !198

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.ipcp_lattice, ptr %2, i64 0, i32 1
  br label %11

8:                                                ; preds = %56, %11
  %9 = load ptr, ptr %3, align 8, !tbaa !189
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11, !prof !263

11:                                               ; preds = %6, %8
  %12 = call ptr @ipa_pop_func_from_list(ptr noundef nonnull %3) #18
  %13 = load ptr, ptr @ipa_node_params_vector, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !221
  %16 = call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %13, i32 noundef %15) #19
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !189
  %19 = icmp eq ptr %18, null
  br i1 %19, label %8, label %20, !prof !264, !llvm.loop !265

20:                                               ; preds = %11, %56
  %21 = phi ptr [ %58, %56 ], [ %18, %11 ]
  %22 = load ptr, ptr @ipa_node_params_vector, align 8
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !238
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 24
  %26 = load i32, ptr %25, align 8, !tbaa !221
  %27 = call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %22, i32 noundef %26) #19
  %28 = load ptr, ptr @ipa_edge_args_vector, align 8
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !266
  %31 = call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %28, i32 noundef %30) #19
  %32 = call fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr noundef nonnull %27) #19, !range !202
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %56, !prof !267

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 27
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %56, label %39, !prof !268

39:                                               ; preds = %34
  %40 = call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %31) #19
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56, !prof !269

42:                                               ; preds = %39, %53
  %43 = phi i32 [ %54, %53 ], [ 0, %39 ]
  %44 = call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %31, i32 noundef %43) #19
  call fastcc void @ipcp_lattice_from_jfunc(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef %44) #19
  %45 = call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %27, i32 noundef %43) #19
  call fastcc void @ipa_lattice_meet(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %45) #19
  %46 = call fastcc zeroext i8 @ipcp_lattice_changed(ptr noundef nonnull %2, ptr noundef %45) #19, !range !202
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48, !prof !270

48:                                               ; preds = %42
  %49 = load i32, ptr %2, align 8, !tbaa !233
  store i32 %49, ptr %45, align 8, !tbaa !233
  %50 = load ptr, ptr %7, align 8, !tbaa !257
  %51 = getelementptr inbounds %struct.ipcp_lattice, ptr %45, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !257
  %52 = load ptr, ptr %23, align 8, !tbaa !238
  call fastcc void @ipa_push_func_to_list(ptr noundef nonnull %3, ptr noundef %52) #19
  br label %53

53:                                               ; preds = %42, %48
  %54 = add nuw nsw i32 %43, 1
  %55 = icmp eq i32 %54, %40
  br i1 %55, label %56, label %42, !prof !269, !llvm.loop !271

56:                                               ; preds = %53, %39, %20, %34
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !189
  %59 = icmp eq ptr %58, null
  br i1 %59, label %8, label %20, !prof !272, !llvm.loop !273

60:                                               ; preds = %8, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ipcp_change_tops_to_bottom() unnamed_addr #1 !prof !187 !PGOFuncName !274 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %38, label %3, !prof !198

3:                                                ; preds = %0, %33
  %4 = phi ptr [ %36, %33 ], [ %1, %0 ]
  %5 = phi i8 [ %34, %33 ], [ 0, %0 ]
  %6 = load ptr, ptr @ipa_node_params_vector, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !221
  %9 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %6, i32 noundef %8) #19
  %10 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %9) #19
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33, !prof !248

12:                                               ; preds = %3, %29
  %13 = phi i32 [ %31, %29 ], [ 0, %3 ]
  %14 = phi i8 [ %30, %29 ], [ %5, %3 ]
  %15 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %9, i32 noundef %13) #19
  %16 = load i32, ptr %15, align 8, !tbaa !233
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %29, !prof !215

18:                                               ; preds = %12
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %19)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %24 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %9, i32 noundef %13) #19
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %24, i32 noundef 0) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %26 = tail call ptr @cgraph_node_name(ptr noundef nonnull %4) #18
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef %26) #19
  br label %28

28:                                               ; preds = %21, %18
  store i32 0, ptr %15, align 8, !tbaa !233
  br label %29

29:                                               ; preds = %28, %12
  %30 = phi i8 [ 1, %28 ], [ %14, %12 ]
  %31 = add nuw nsw i32 %13, 1
  %32 = icmp eq i32 %31, %10
  br i1 %32, label %33, label %12, !prof !275, !llvm.loop !276

33:                                               ; preds = %29, %3
  %34 = phi i8 [ %5, %3 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %3, !prof !199, !llvm.loop !277

38:                                               ; preds = %33, %0
  %39 = phi i8 [ 0, %0 ], [ %34, %33 ]
  ret i8 %39
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_node_params_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !278 !PGOFuncName !279 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !280 !PGOFuncName !281 {
  %2 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !282 !PGOFuncName !283 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12, !prof !284

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 0, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_cloning_candidate_p(ptr noundef %0) unnamed_addr #1 !prof !285 !PGOFuncName !286 {
  %2 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %0) #19, !range !202
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %110, !prof !287

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 32
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %110, label %9, !prof !288

9:                                                ; preds = %4
  %10 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %0) #18
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %18, !prof !288

12:                                               ; preds = %9
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %14 = icmp eq ptr %13, null
  br i1 %14, label %110, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.8, ptr noundef %16) #19
  br label %110

18:                                               ; preds = %9
  %19 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(ptr noundef nonnull %0) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27, !prof !288

21:                                               ; preds = %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %23 = icmp eq ptr %22, null
  br i1 %23, label %110, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, ptr noundef %25) #19
  br label %110

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !189
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31, !prof !289

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %44, %31 ], [ %29, %27 ]
  %33 = phi i64 [ %37, %31 ], [ 0, %27 ]
  %34 = phi i32 [ %42, %31 ], [ 0, %27 ]
  %35 = phi i32 [ %38, %31 ], [ 0, %27 ]
  %36 = load i64, ptr %32, align 8, !tbaa !253
  %37 = add nsw i64 %36, %33
  %38 = add nuw nsw i32 %35, 1
  %39 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %32) #18
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %34, %41
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !189
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %31, !prof !290, !llvm.loop !291

46:                                               ; preds = %27
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %48 = icmp eq ptr %47, null
  br i1 %48, label %110, label %49, !prof !292

49:                                               ; preds = %46
  %50 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.10, ptr noundef %50) #19
  br label %110

52:                                               ; preds = %31
  %53 = icmp eq i32 %42, 0
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !216
  %56 = icmp sgt i32 %55, %35
  br i1 %56, label %63, label %57, !prof !293

57:                                               ; preds = %52
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %59 = icmp eq ptr %58, null
  br i1 %59, label %110, label %60, !prof !294

60:                                               ; preds = %57
  %61 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.11, ptr noundef %61) #19
  br label %110

63:                                               ; preds = %52
  %64 = load i32, ptr @flag_ipa_cp_clone, align 4, !tbaa !183
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72, !prof !295

66:                                               ; preds = %63
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %68 = icmp eq ptr %67, null
  br i1 %68, label %110, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %67, ptr noundef nonnull @.str.12, ptr noundef %70) #19
  br label %110

72:                                               ; preds = %63
  %73 = load ptr, ptr %0, align 8, !tbaa !227
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !197
  %76 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %75) #18
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %84, !prof !295

78:                                               ; preds = %72
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %80 = icmp eq ptr %79, null
  br i1 %80, label %110, label %81

81:                                               ; preds = %78
  %82 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.13, ptr noundef %82) #19
  br label %110

84:                                               ; preds = %72
  %85 = load i64, ptr @max_count, align 8, !tbaa !204
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %99, label %87, !prof !296

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %89 = load i64, ptr %88, align 8, !tbaa !207
  %90 = mul nsw i64 %89, 90
  %91 = sdiv i64 %90, 100
  %92 = icmp sgt i64 %37, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.14, ptr noundef %97) #19
  br label %110

99:                                               ; preds = %87, %84
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %101 = icmp eq ptr %100, null
  br i1 %53, label %102, label %106, !prof !297

102:                                              ; preds = %99
  br i1 %101, label %110, label %103, !prof !298

103:                                              ; preds = %102
  %104 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.15, ptr noundef %104) #19
  br label %110

106:                                              ; preds = %99
  br i1 %101, label %110, label %107, !prof !299

107:                                              ; preds = %106
  %108 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.16, ptr noundef %108) #19
  br label %110

110:                                              ; preds = %106, %107, %102, %103, %93, %96, %78, %81, %66, %69, %57, %60, %46, %49, %21, %24, %12, %15, %1, %4
  %111 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 0, %15 ], [ 0, %12 ], [ 0, %24 ], [ 0, %21 ], [ 0, %49 ], [ 0, %46 ], [ 1, %60 ], [ 1, %57 ], [ 0, %69 ], [ 0, %66 ], [ 0, %81 ], [ 0, %78 ], [ 1, %96 ], [ 1, %93 ], [ 0, %103 ], [ 0, %102 ], [ 1, %107 ], [ 1, %106 ]
  ret i8 %111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ipa_get_param_count(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !300 !PGOFuncName !301 {
  %2 = load i32, ptr %0, align 8, !tbaa !302
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ipcp_get_lattice(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !304 !PGOFuncName !305 {
  %3 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !306
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_versionable_function_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !307 !PGOFuncName !308 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !227
  %4 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %3) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %54, label %6, !prof !309

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 20
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54, !prof !310

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !311
  %16 = load ptr, ptr %15, align 8, !tbaa !313
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !315
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !317
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %54, label %22, !prof !289

22:                                               ; preds = %13, %45
  %23 = phi ptr [ %47, %45 ], [ %18, %13 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #19
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !202
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %45, !prof !318

26:                                               ; preds = %22, %42
  %27 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %28 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %27) #19, !range !202
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %42, label %30, !prof !319

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %27) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33, !prof !320

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 6144
  %37 = icmp eq i32 %36, 6144
  br i1 %37, label %38, label %42, !prof !320

38:                                               ; preds = %33
  %39 = and i32 %35, 2047
  %40 = icmp eq i32 %39, 417
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %54

42:                                               ; preds = %33, %38, %26, %30
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %43 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !202
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %26, label %45, !prof !321, !llvm.loop !322

45:                                               ; preds = %42, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !315
  %48 = load ptr, ptr %7, align 8, !tbaa !197
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !311
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !317
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %54, label %22, !prof !323, !llvm.loop !324

54:                                               ; preds = %45, %13, %41, %6, %1
  %55 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %41 ], [ 1, %13 ], [ 1, %45 ]
  ret i8 %55
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !325 !PGOFuncName !326 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !329
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !331 !PGOFuncName !332 {
  %2 = load ptr, ptr %0, align 8, !tbaa !327
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !333 !PGOFuncName !334 {
  %2 = load ptr, ptr %0, align 8, !tbaa !327
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !333 !PGOFuncName !337 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !338
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !339 !PGOFuncName !340 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !341

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !333 !PGOFuncName !342 {
  %2 = load ptr, ptr %0, align 8, !tbaa !327
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  store ptr %4, ptr %0, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !325 !PGOFuncName !344 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !345
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !346

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !347

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !348
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !325 !PGOFuncName !350 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !347

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !351
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !353 !PGOFuncName !354 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !339 !PGOFuncName !355 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #1 !prof !339 !PGOFuncName !356 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !202
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !320

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !339 !PGOFuncName !357 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !338
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !339 !PGOFuncName !358 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !204
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !320

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.6) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !339 !PGOFuncName !359 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !338
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !339 !PGOFuncName !360 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !183
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipcp_set_node_scale(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 !prof !243 !PGOFuncName !361 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !221
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 4
  store i64 %1, ptr %7, align 8, !tbaa !362
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @ipcp_get_node_scale(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !193 !PGOFuncName !363 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !362
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #1 !prof !364 !PGOFuncName !365 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !366

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !183
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %4) #19
  store ptr %5, ptr @ipa_node_params_vector, align 8, !tbaa !189
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %7) #19
  %9 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !183
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11, !prof !367

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %12) #19
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #1 !prof !364 !PGOFuncName !368 {
  %1 = load ptr, ptr @ipa_edge_args_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !366

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !183
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %4) #19
  store ptr %5, ptr @ipa_edge_args_vector, align 8, !tbaa !189
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %7) #19
  %9 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !183
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11, !prof !367

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %12) #19
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: optsize
declare ptr @ipa_init_func_list() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ipa_pop_func_from_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_edge_args_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !369 !PGOFuncName !370 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ipa_get_cs_argument_count(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !371 !PGOFuncName !372 {
  %2 = load i32, ptr %0, align 8, !tbaa !373
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ipa_get_ith_jump_func(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !375 !PGOFuncName !376 {
  %3 = getelementptr inbounds %struct.ipa_edge_args, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !377
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_jump_func, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_lattice_from_jfunc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !375 !PGOFuncName !378 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr %2, align 8, !tbaa !379
  switch i32 %5, label %73 [
    i32 1, label %6
    i32 3, label %10
    i32 4, label %42
  ], !prof !381

6:                                                ; preds = %3
  store i32 1, ptr %1, align 8, !tbaa !233
  %7 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !257
  br label %74

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !197
  %14 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef %0, i32 noundef %13) #19
  %15 = load i32, ptr %14, align 8, !tbaa !233
  store i32 %15, ptr %1, align 8, !tbaa !233
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %74, !prof !382

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ipcp_lattice, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !257
  %20 = getelementptr inbounds i8, ptr %2, i64 20
  %21 = load i32, ptr %20, align 4, !tbaa !197
  %22 = icmp eq i32 %21, 116
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !183
  %27 = icmp eq i32 %26, 5
  %28 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %29 = select i1 %27, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), ptr %28
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  %31 = load ptr, ptr %11, align 8, !tbaa !197
  %32 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %21, ptr noundef %30, ptr noundef %19, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %23, %17
  %34 = phi ptr [ %32, %23 ], [ %19, %17 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = tail call zeroext i8 @is_gimple_ip_invariant(ptr noundef nonnull %34) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 0, ptr %1, align 8, !tbaa !233
  br label %40

40:                                               ; preds = %39, %36
  %41 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr %34, ptr %41, align 8, !tbaa !257
  br label %74

42:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %43 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %44 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !197
  %46 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef %0, i32 noundef %45) #19
  %47 = load i32, ptr %46, align 8, !tbaa !233
  store i32 %47, ptr %1, align 8, !tbaa !233
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ipcp_lattice, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !257
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 121
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, ptr %1, align 8, !tbaa !233
  br label %72

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  store ptr %58, ptr %4, align 8, !tbaa !189
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !197
  %61 = load i64, ptr %43, align 8, !tbaa !197
  %62 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !197
  %64 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %60, i64 noundef %61, ptr noundef %63, i8 noundef zeroext 0) #18
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  store i32 0, ptr %1, align 8, !tbaa !233
  %67 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr null, ptr %67, align 8, !tbaa !257
  br label %72

68:                                               ; preds = %56
  %69 = load ptr, ptr %4, align 8, !tbaa !189
  %70 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %69) #18
  %71 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !257
  br label %72

72:                                               ; preds = %66, %68, %42, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %74

73:                                               ; preds = %3
  store i32 0, ptr %1, align 8, !tbaa !233
  br label %74

74:                                               ; preds = %40, %10, %72, %73, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_lattice_meet(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !375 !PGOFuncName !383 {
  %4 = load i32, ptr %1, align 8, !tbaa !233
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !384

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 8, !tbaa !233
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3
  store i32 0, ptr %0, align 8, !tbaa !233
  br label %31

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  store i32 %7, ptr %0, align 8, !tbaa !233
  %13 = getelementptr inbounds %struct.ipcp_lattice, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !257
  %15 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !257
  br label %31

16:                                               ; preds = %10
  %17 = icmp eq i32 %7, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  store i32 %4, ptr %0, align 8, !tbaa !233
  %19 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !257
  %21 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !257
  br label %31

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @ipcp_lats_are_equal(ptr noundef nonnull %1, ptr noundef nonnull %2) #19, !range !202
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, ptr %0, align 8, !tbaa !233
  br label %31

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 8, !tbaa !233
  store i32 %27, ptr %0, align 8, !tbaa !233
  %28 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !257
  %30 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !257
  br label %31

31:                                               ; preds = %26, %25, %18, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_lattice_changed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !375 !PGOFuncName !385 {
  %3 = load i32, ptr %0, align 8, !tbaa !233
  %4 = load i32, ptr %1, align 8, !tbaa !233
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12, !prof !270

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef nonnull %0) #19, !range !202
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !386

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @ipcp_lats_are_equal(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !202
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %13

13:                                               ; preds = %9, %6, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %6 ], [ 0, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_push_func_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !387 !PGOFuncName !388 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !221
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 5
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !389

11:                                               ; preds = %2
  tail call void @ipa_push_func_to_list_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #18
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !390 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !391 !PGOFuncName !392 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !393

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !394
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !396 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !189
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !189
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !397 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !398

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !394
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !189, !nonnull !399, !noundef !399
  store i32 %0, ptr %9, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !187 !PGOFuncName !400 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !398
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !401 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !189
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !402
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !191

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  store ptr %6, ptr @ipa_node_params_vector, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !187 !PGOFuncName !403 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !398

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !404
  %7 = load i32, ptr %0, align 8, !tbaa !394
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
define internal fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !405 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !391 !PGOFuncName !406 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !393

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !407
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !409 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !189
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !189
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ipa_edge_args, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !410 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !398

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !407
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !189, !nonnull !399, !noundef !399
  store i32 %0, ptr %9, align 8, !tbaa !407
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !187 !PGOFuncName !411 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !398
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %0) unnamed_addr #1 !prof !187 !PGOFuncName !412 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !189
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !402
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !191

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  store ptr %6, ptr @ipa_edge_args_vector, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !187 !PGOFuncName !413 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !398

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !414
  %7 = load i32, ptr %0, align 8, !tbaa !407
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
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_ip_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @build_ref_for_offset(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ipcp_lats_are_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !193 !PGOFuncName !415 {
  %3 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %0) #19, !range !202
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %1) #19, !range !202
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 226, ptr noundef nonnull @.str.6) #18
  br label %9

9:                                                ; preds = %5, %8
  %10 = load i32, ptr %0, align 8, !tbaa !233
  %11 = load i32, ptr %1, align 8, !tbaa !233
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !257
  %16 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !257
  %18 = tail call i32 @operand_equal_p(ptr noundef %15, ptr noundef %17, i32 noundef 0) #18
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi i8 [ 0, %9 ], [ %20, %13 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipcp_lat_is_const(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !416 !PGOFuncName !417 {
  %2 = load i32, ptr %0, align 8, !tbaa !233
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_push_func_to_list_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ipa_get_param(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !418 !PGOFuncName !419 {
  %3 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !306
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %4, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !420
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_node_modifiable_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !418 !PGOFuncName !422 {
  %2 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(ptr noundef %0) #19
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ipcp_const_param_count(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !418 !PGOFuncName !423 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #19
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30, !prof !424

8:                                                ; preds = %1, %26
  %9 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %10 = phi i32 [ %28, %26 ], [ 0, %1 ]
  %11 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %5, i32 noundef %10) #19
  %12 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %5, i32 noundef %10) #19
  %13 = tail call fastcc zeroext i8 @ipcp_lat_is_insertable(ptr noundef %11) #19, !range !202
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15, !prof !222

15:                                               ; preds = %8
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %12) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !197
  %22 = tail call ptr @gimple_default_def(ptr noundef %21, ptr noundef %12) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18, %15
  %25 = add nsw i32 %9, 1
  br label %26

26:                                               ; preds = %24, %18, %8
  %27 = phi i32 [ %25, %24 ], [ %9, %18 ], [ %9, %8 ]
  %28 = add nuw nsw i32 %10, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %30, label %8, !prof !424, !llvm.loop !425

30:                                               ; preds = %26, %1
  %31 = phi i32 [ 0, %1 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !426 {
  %2 = tail call fastcc i64 @ipcp_estimate_growth(ptr noundef %0) #19, !range !226
  %3 = trunc i64 %2 to i32
  %4 = mul i32 %3, 1000
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @cgraph_node_name(ptr noundef %0) #18
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.34, ptr noundef %10) #19
  br label %72

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %12, %37
  %17 = phi ptr [ %41, %37 ], [ %14, %12 ]
  %18 = phi i64 [ %39, %37 ], [ 1, %12 ]
  %19 = phi i32 [ %38, %37 ], [ 1, %12 ]
  %20 = load ptr, ptr @dead_nodes, align 8, !tbaa !189
  %21 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !230
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !221
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %24) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %17) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i64, ptr %17, align 8, !tbaa !253
  %32 = add nsw i64 %31, %18
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !427
  %35 = add i32 %19, 1
  %36 = add i32 %35, %34
  br label %37

37:                                               ; preds = %16, %27, %30
  %38 = phi i32 [ %19, %16 ], [ %19, %27 ], [ %36, %30 ]
  %39 = phi i64 [ %18, %16 ], [ %18, %27 ], [ %32, %30 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !189
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !428

43:                                               ; preds = %37
  %44 = mul nsw i64 %39, 1000
  br label %45

45:                                               ; preds = %43, %12
  %46 = phi i32 [ 1, %12 ], [ %38, %43 ]
  %47 = phi i64 [ 1000, %12 ], [ %44, %43 ]
  %48 = load i64, ptr @max_count, align 8, !tbaa !204
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = sdiv i64 %47, %48
  %52 = add nsw i64 %51, 1
  %53 = sext i32 %4 to i64
  %54 = sdiv i64 %53, %52
  %55 = trunc i64 %54 to i32
  br label %60

56:                                               ; preds = %45
  %57 = sdiv i32 %46, 10
  %58 = add nsw i32 %57, 1
  %59 = sdiv i32 %4, %58
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i32 [ %55, %50 ], [ %59, %56 ]
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @cgraph_node_name(ptr noundef %0) #18
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !216
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %62, ptr noundef nonnull @.str.35, ptr noundef %65, i32 noundef %61, i32 noundef %67, i32 noundef %46) #19
  br label %69

69:                                               ; preds = %64, %60
  %70 = add nsw i32 %61, 1
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %6, %9, %69
  %73 = phi i64 [ %71, %69 ], [ 0, %9 ], [ 0, %6 ]
  ret i64 %73
}

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ipcp_estimate_growth(ptr noundef readonly %0) unnamed_addr #1 !prof !193 !PGOFuncName !429 {
  %2 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %0) #19, !range !202
  %3 = xor i8 %2, 1
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %23, %19 ], [ %5, %1 ]
  %9 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %10 = phi i8 [ %20, %19 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !230
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %8) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %7
  %18 = add nsw i32 %9, 1
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi i8 [ %10, %17 ], [ 1, %14 ]
  %21 = phi i32 [ %18, %17 ], [ %9, %14 ]
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %8, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !189
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !430

25:                                               ; preds = %19, %1
  %26 = phi i8 [ %3, %1 ], [ %20, %19 ]
  %27 = phi i32 [ 0, %1 ], [ %21, %19 ]
  %28 = icmp eq i8 %26, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @ipa_node_params_vector, align 8
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %32 = load i32, ptr %31, align 8, !tbaa !221
  %33 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %30, i32 noundef %32) #19
  %34 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %33) #19
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29, %51
  %37 = phi i32 [ %56, %51 ], [ 0, %29 ]
  %38 = phi i32 [ %57, %51 ], [ 0, %29 ]
  %39 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %33, i32 noundef %38) #19
  %40 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %33, i32 noundef %38) #19
  %41 = tail call zeroext i8 @is_gimple_reg(ptr noundef %40) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %0, align 8, !tbaa !227
  %45 = getelementptr inbounds %struct.tree_function_decl, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !197
  %47 = tail call ptr @gimple_default_def(ptr noundef %46, ptr noundef %40) #18
  %48 = icmp eq ptr %47, null
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %37, %49
  br label %51

51:                                               ; preds = %43, %36
  %52 = phi i32 [ %37, %36 ], [ %50, %43 ]
  %53 = load i32, ptr %39, align 8, !tbaa !233
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = add nsw i32 %52, %55
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, %34
  br i1 %58, label %59, label %36, !llvm.loop !431

59:                                               ; preds = %51, %29
  %60 = phi i32 [ 0, %29 ], [ %56, %51 ]
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !216
  %63 = mul nsw i32 %60, %27
  %64 = sub nsw i32 %62, %63
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0)
  %66 = zext nneg i32 %65 to i64
  br label %67

67:                                               ; preds = %59, %25
  %68 = phi i64 [ 0, %25 ], [ %66, %59 ]
  ret i64 %68
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ipcp_need_redirect_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !193 !PGOFuncName !432 {
  %2 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !183
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  %7 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !238
  %12 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef %11) #19
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %11, ptr %12
  %15 = load ptr, ptr @ipa_node_params_vector, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 24
  %17 = load i32, ptr %16, align 8, !tbaa !221
  %18 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %15, i32 noundef %17) #19
  %19 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %18) #19
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %9
  %22 = load ptr, ptr @ipa_edge_args_vector, align 8
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  br label %24

24:                                               ; preds = %21, %35
  %25 = phi i32 [ 0, %21 ], [ %36, %35 ]
  %26 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %18, i32 noundef %25) #19
  %27 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %26) #19, !range !202
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %23, align 4, !tbaa !266
  %31 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %22, i32 noundef %30) #19
  %32 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %31, i32 noundef %25) #19
  %33 = load i32, ptr %32, align 8, !tbaa !379
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %24
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, %19
  br i1 %37, label %38, label %24, !llvm.loop !433

38:                                               ; preds = %29, %35, %9, %4, %1
  %39 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %9 ], [ 1, %29 ], [ 0, %35 ]
  ret i8 %39
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_replace_map_p_gc_alloc() unnamed_addr #1 !prof !193 !PGOFuncName !434 {
  %1 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 1) #18
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ipcp_create_replace_map(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !193 !PGOFuncName !435 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #18
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = tail call fastcc ptr @build_const_val(ptr noundef %1, ptr noundef %5) #19
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 18, i64 1, ptr nonnull %7)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef nonnull %0, i32 noundef 0) #18
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %13 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 12, i64 1, ptr %12)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !189
  tail call void @print_generic_expr(ptr noundef %14, ptr noundef %6, i32 noundef 0) #18
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %9, %2
  store ptr %0, ptr %3, align 8, !tbaa !436
  %18 = getelementptr inbounds %struct.ipa_replace_map, ptr %3, i64 0, i32 1
  store ptr %6, ptr %18, align 8, !tbaa !438
  %19 = getelementptr inbounds %struct.ipa_replace_map, ptr %3, i64 0, i32 2
  store i8 1, ptr %19, align 8, !tbaa !439
  %20 = getelementptr inbounds %struct.ipa_replace_map, ptr %3, i64 0, i32 3
  store i8 0, ptr %20, align 1, !tbaa !440
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_replace_map_p_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !193 !PGOFuncName !441 {
  tail call fastcc void @VEC_ipa_replace_map_p_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !189
  tail call fastcc void @VEC_ipa_replace_map_p_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_cgraph_edge_p_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !442 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_edge_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !193 !PGOFuncName !443 {
  %3 = load i32, ptr %0, align 8, !tbaa !444
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !444
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_create_virtual_clone(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !193 !PGOFuncName !446 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_init_cloned_node(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !193 !PGOFuncName !447 {
  tail call fastcc void @ipa_check_create_node_params() #19
  tail call void @ipa_initialize_node_params(ptr noundef %1) #18
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !221
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 3
  store ptr %0, ptr %7, align 8, !tbaa !448
  ret void
}

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_update_callgraph() unnamed_addr #1 !prof !187 !PGOFuncName !449 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %63, label %3, !prof !198

3:                                                ; preds = %0, %59
  %4 = phi ptr [ %61, %59 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 32
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %59, label %9, !prof !206

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @ipcp_node_is_clone(ptr noundef nonnull %4) #19, !range !202
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %59, label %12, !prof !222

12:                                               ; preds = %9
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %14 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef nonnull %4) #19
  %15 = load ptr, ptr @ipa_node_params_vector, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 24
  %17 = load i32, ptr %16, align 8, !tbaa !221
  %18 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %15, i32 noundef %17) #19
  %19 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %18) #19
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %12, %38
  %22 = phi i32 [ %39, %38 ], [ 0, %12 ]
  %23 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %18, i32 noundef %22) #19
  %24 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %18, i32 noundef %22) #19
  %25 = tail call zeroext i8 @is_gimple_reg(ptr noundef %24) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %14, align 8, !tbaa !227
  %29 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  %31 = tail call ptr @gimple_default_def(ptr noundef %30, ptr noundef %24) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27, %21
  %34 = load i32, ptr %23, align 8, !tbaa !233
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %27
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %22) #18
  br label %38

38:                                               ; preds = %36, %33
  %39 = add nuw nsw i32 %22, 1
  %40 = icmp eq i32 %39, %19
  br i1 %40, label %41, label %21, !llvm.loop !450

41:                                               ; preds = %38, %12
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !451
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %41, %57
  %46 = phi ptr [ %48, %57 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !452
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !230
  %51 = tail call fastcc zeroext i8 @ipcp_node_is_clone(ptr noundef %50) #19, !range !202
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %46) #19
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %46, ptr noundef %14) #18
  br label %57

57:                                               ; preds = %45, %53, %56
  %58 = icmp eq ptr %48, null
  br i1 %58, label %59, label %45, !llvm.loop !453

59:                                               ; preds = %57, %41, %3, %9
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !189
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %3, !prof !199, !llvm.loop !454

63:                                               ; preds = %59, %0
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipcp_update_profiling() unnamed_addr #5 !prof !187 !PGOFuncName !455 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %46, label %3, !prof !198

3:                                                ; preds = %0, %42
  %4 = phi ptr [ %44, %42 ], [ %1, %0 ]
  %5 = tail call fastcc zeroext i8 @ipcp_node_is_clone(ptr noundef nonnull %4) #19, !range !202
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7, !prof !245

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef nonnull %4) #19
  %9 = tail call fastcc i64 @ipcp_get_node_scale(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 23
  %11 = load i64, ptr %10, align 8, !tbaa !207
  %12 = mul nsw i64 %11, %9
  %13 = sdiv i64 %12, 10000
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 23
  store i64 %13, ptr %14, align 8, !tbaa !207
  %15 = sub nsw i64 10000, %9
  %16 = load i64, ptr %10, align 8, !tbaa !207
  %17 = mul nsw i64 %16, %15
  %18 = sdiv i64 %17, 10000
  store i64 %18, ptr %10, align 8, !tbaa !207
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %7, %22
  %23 = phi ptr [ %28, %22 ], [ %20, %7 ]
  %24 = load i64, ptr %23, align 8, !tbaa !253
  %25 = mul nsw i64 %24, %9
  %26 = sdiv i64 %25, 10000
  store i64 %26, ptr %23, align 8, !tbaa !253
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %23, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !189
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !456

30:                                               ; preds = %22, %7
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !189
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %34
  %35 = phi ptr [ %40, %34 ], [ %32, %30 ]
  %36 = load i64, ptr %35, align 8, !tbaa !253
  %37 = mul nsw i64 %36, %15
  %38 = sdiv i64 %37, 10000
  store i64 %38, ptr %35, align 8, !tbaa !253
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !189
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34, !llvm.loop !457

42:                                               ; preds = %34, %30, %3
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !189
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %3, !prof !199, !llvm.loop !458

46:                                               ; preds = %42, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipcp_lat_is_insertable(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !418 !PGOFuncName !459 {
  %2 = load i32, ptr %0, align 8, !tbaa !233
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ipcp_get_orig_node(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !460 !PGOFuncName !461 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !448
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_const_val(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !193 !PGOFuncName !462 {
  %3 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %0) #19, !range !202
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 567, ptr noundef nonnull @.str.6) #18
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !257
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %1, ptr noundef %10) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = tail call zeroext i8 @fold_convertible_p(ptr noundef %1, ptr noundef nonnull %8) #18
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 118, i32 116
  %17 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %16, ptr noundef %1, ptr noundef nonnull %8) #18
  br label %18

18:                                               ; preds = %13, %6
  %19 = phi ptr [ %8, %6 ], [ %17, %13 ]
  ret ptr %19
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_replace_map_p_gc_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !463 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ipa_replace_map_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !193 !PGOFuncName !464 {
  %3 = load i32, ptr %0, align 8, !tbaa !465
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !465
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_space(ptr noundef readonly %0) unnamed_addr #7 !prof !193 !PGOFuncName !467 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !468
  %6 = load i32, ptr %0, align 8, !tbaa !465
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @ipa_initialize_node_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ipcp_node_is_clone(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !460 !PGOFuncName !469 {
  %2 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef %0) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_func_profile_counts(ptr nocapture noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !470 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %12, %4 ], [ %2, %1 ]
  %6 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 23
  %9 = load i64, ptr %8, align 8, !tbaa !207
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %9) #19
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !189
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !471

14:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_call_profile_counts(ptr nocapture noundef %0) unnamed_addr #1 !prof !193 !PGOFuncName !472 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %25, %23 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %21, %9 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !230
  %13 = tail call ptr @cgraph_node_name(ptr noundef %12) #18
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !238
  %16 = tail call ptr @cgraph_node_name(ptr noundef %15) #18
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %13, ptr noundef %16) #19
  %18 = load i64, ptr %10, align 8, !tbaa !253
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %18) #19
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !189
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9, !llvm.loop !473

23:                                               ; preds = %9, %4
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !189
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %4, !llvm.loop !474

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare void @ipa_register_cgraph_hooks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_init_stage() unnamed_addr #1 !prof !187 !PGOFuncName !475 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %2 = icmp eq ptr %1, null
  br i1 %2, label %71, label %6, !prof !198

3:                                                ; preds = %13
  %4 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !189
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %17, !prof !476

6:                                                ; preds = %0, %13
  %7 = phi ptr [ %15, %13 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12, !prof !206

12:                                               ; preds = %6
  tail call fastcc void @ipcp_analyze_node(ptr noundef nonnull %7) #19
  br label %13

13:                                               ; preds = %6, %12
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  %16 = icmp eq ptr %15, null
  br i1 %16, label %3, label %6, !prof !199, !llvm.loop !477

17:                                               ; preds = %3, %67
  %18 = phi ptr [ %69, %67 ], [ %4, %3 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %67, label %23, !prof !206

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !189
  %26 = icmp eq ptr %25, null
  br i1 %26, label %67, label %27, !prof !478

27:                                               ; preds = %23
  %28 = load i32, ptr @flag_lto, align 4
  %29 = load i32, ptr @flag_whopr, align 4
  br label %30

30:                                               ; preds = %27, %61
  %31 = phi i32 [ %62, %61 ], [ %29, %27 ]
  %32 = phi i32 [ %63, %61 ], [ %28, %27 ]
  %33 = phi ptr [ %65, %61 ], [ %25, %27 ]
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !238
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 32
  %39 = icmp ne i16 %38, 0
  %40 = icmp ne i32 %32, 0
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp ne i32 %31, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %61, !prof !479

44:                                               ; preds = %30
  tail call void @ipa_count_arguments(ptr noundef nonnull %33) #18
  %45 = load ptr, ptr @ipa_edge_args_vector, align 8
  %46 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !266
  %48 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %45, i32 noundef %47) #19
  %49 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %48) #19
  %50 = load ptr, ptr @ipa_node_params_vector, align 8
  %51 = load ptr, ptr %34, align 8, !tbaa !238
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %51, i64 0, i32 24
  %53 = load i32, ptr %52, align 8, !tbaa !221
  %54 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %50, i32 noundef %53) #19
  %55 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %54) #19
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %58, label %57, !prof !384

57:                                               ; preds = %44
  tail call fastcc void @ipa_set_called_with_variable_arg(ptr noundef nonnull %54) #19
  br label %58

58:                                               ; preds = %57, %44
  tail call void @ipa_compute_jump_functions(ptr noundef nonnull %33) #18
  %59 = load i32, ptr @flag_lto, align 4
  %60 = load i32, ptr @flag_whopr, align 4
  br label %61

61:                                               ; preds = %30, %58
  %62 = phi i32 [ 0, %30 ], [ %60, %58 ]
  %63 = phi i32 [ 0, %30 ], [ %59, %58 ]
  %64 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !189
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %30, !prof !480, !llvm.loop !481

67:                                               ; preds = %61, %23, %17
  %68 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !189
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %17, !prof !199, !llvm.loop !482

71:                                               ; preds = %67, %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_analyze_node(ptr noundef %0) unnamed_addr #1 !prof !418 !PGOFuncName !483 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 9
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7, !prof !484

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 184, ptr noundef nonnull @.str.6) #18
  br label %7

7:                                                ; preds = %1, %6
  tail call void @ipa_initialize_node_params(ptr noundef nonnull %0) #18
  tail call void @ipa_detect_param_modifications(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare void @ipa_count_arguments(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ipa_set_called_with_variable_arg(ptr nocapture noundef %0) unnamed_addr #13 !prof !193 !PGOFuncName !485 {
  %2 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 1
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: optsize
declare void @ipa_compute_jump_functions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_detect_param_modifications(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_prop_write_jump_functions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_prop_read_jump_functions() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!180}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!35 = !{ptr @ipcp_driver, ptr @cgraph_remove_unreachable_nodes, i64 1}
!36 = !{ptr @ipcp_driver, ptr @ipcp_iterate_stage, i64 1}
!37 = !{ptr @ipcp_driver, ptr @ipcp_insert_stage, i64 1}
!38 = !{ptr @ipcp_driver, ptr @free_all_ipa_structures_after_ipa_cp, i64 1}
!39 = !{ptr @ipcp_generate_summary, ptr @ipa_check_create_node_params, i64 1}
!40 = !{ptr @ipcp_generate_summary, ptr @ipa_check_create_edge_args, i64 1}
!41 = !{ptr @ipcp_generate_summary, ptr @ipa_register_cgraph_hooks, i64 1}
!42 = !{ptr @ipcp_generate_summary, ptr @ipcp_init_stage, i64 1}
!43 = !{ptr @ipcp_iterate_stage, ptr @ipcp_initialize_node_lattices, i64 38}
!44 = !{ptr @ipcp_iterate_stage, ptr @ipcp_compute_node_scale, i64 38}
!45 = !{ptr @ipcp_iterate_stage, ptr @ipcp_propagate_stage, i64 1}
!46 = !{ptr @ipcp_iterate_stage, ptr @ipcp_change_tops_to_bottom, i64 1}
!47 = !{ptr @ipcp_insert_stage, ptr @ipa_check_create_node_params, i64 1}
!48 = !{ptr @ipcp_insert_stage, ptr @ipa_check_create_edge_args, i64 1}
!49 = !{ptr @ipcp_insert_stage, ptr @bitmap_obstack_alloc_stat, i64 1}
!50 = !{ptr @ipcp_insert_stage, ptr @fibheap_new, i64 1}
!51 = !{ptr @ipcp_insert_stage, ptr @fibheap_empty, i64 3}
!52 = !{ptr @ipcp_insert_stage, ptr @ipcp_node_modifiable_p, i64 20}
!53 = !{ptr @ipcp_insert_stage, ptr @VEC_ipa_node_params_t_base_index, i64 19}
!54 = !{ptr @ipcp_insert_stage, ptr @ipa_is_called_with_var_arguments, i64 19}
!55 = !{ptr @ipcp_insert_stage, ptr @ipcp_const_param_count, i64 19}
!56 = !{ptr @ipcp_insert_stage, ptr @fibheap_extract_min, i64 2}
!57 = !{ptr @ipcp_insert_stage, ptr @ipcp_estimate_growth, i64 1}
!58 = !{ptr @ipcp_insert_stage, ptr @ipcp_need_redirect_p, i64 2}
!59 = !{ptr @ipcp_insert_stage, ptr @ipcp_get_lattice, i64 6}
!60 = !{ptr @ipcp_insert_stage, ptr @ipa_get_param, i64 6}
!61 = !{ptr @ipcp_insert_stage, ptr @is_gimple_reg, i64 6}
!62 = !{ptr @ipcp_insert_stage, ptr @gimple_default_def, i64 4}
!63 = !{ptr @ipcp_insert_stage, ptr @ipcp_create_replace_map, i64 2}
!64 = !{ptr @ipcp_insert_stage, ptr @VEC_ipa_replace_map_p_gc_safe_push, i64 2}
!65 = !{ptr @ipcp_insert_stage, ptr @bitmap_set_bit, i64 4}
!66 = !{ptr @ipcp_insert_stage, ptr @VEC_cgraph_edge_p_base_quick_push, i64 6}
!67 = !{ptr @ipcp_insert_stage, ptr @fibheap_delete_node, i64 2}
!68 = !{ptr @ipcp_insert_stage, ptr @ipcp_estimate_cloning_cost, i64 2}
!69 = !{ptr @ipcp_insert_stage, ptr @fibheap_insert, i64 2}
!70 = !{ptr @ipcp_insert_stage, ptr @fibheap_delete, i64 1}
!71 = !{ptr @ipcp_insert_stage, ptr @bitmap_obstack_free, i64 1}
!72 = !{ptr @ipcp_insert_stage, ptr @ipcp_update_callgraph, i64 1}
!73 = !{ptr @ipcp_insert_stage, ptr @ipcp_update_profiling, i64 1}
!74 = !{ptr @ipcp_initialize_node_lattices, ptr @VEC_ipa_node_params_t_base_index, i64 74}
!75 = !{ptr @ipcp_initialize_node_lattices, ptr @ipa_is_called_with_var_arguments, i64 74}
!76 = !{ptr @ipcp_initialize_node_lattices, ptr @cgraph_only_called_directly_p, i64 73}
!77 = !{ptr @ipcp_initialize_node_lattices, ptr @ipcp_cloning_candidate_p, i64 37}
!78 = !{ptr @ipcp_initialize_node_lattices, ptr @ipa_get_param_count, i64 113}
!79 = !{ptr @ipcp_initialize_node_lattices, ptr @ipcp_get_lattice, i64 39}
!80 = !{ptr @ipcp_compute_node_scale, ptr @ipcp_set_node_scale, i64 74}
!81 = !{ptr @ipcp_propagate_stage, ptr @ipa_check_create_node_params, i64 1}
!82 = !{ptr @ipcp_propagate_stage, ptr @ipa_check_create_edge_args, i64 1}
!83 = !{ptr @ipcp_propagate_stage, ptr @ipa_init_func_list, i64 1}
!84 = !{ptr @ipcp_propagate_stage, ptr @ipa_pop_func_from_list, i64 21}
!85 = !{ptr @ipcp_propagate_stage, ptr @VEC_ipa_node_params_t_base_index, i64 34586}
!86 = !{ptr @ipcp_propagate_stage, ptr @VEC_ipa_edge_args_t_base_index, i64 34565}
!87 = !{ptr @ipcp_propagate_stage, ptr @ipa_is_called_with_var_arguments, i64 34565}
!88 = !{ptr @ipcp_propagate_stage, ptr @ipa_get_cs_argument_count, i64 26391}
!89 = !{ptr @ipcp_propagate_stage, ptr @ipa_get_ith_jump_func, i64 26391}
!90 = !{ptr @ipcp_propagate_stage, ptr @ipcp_lattice_from_jfunc, i64 26391}
!91 = !{ptr @ipcp_propagate_stage, ptr @ipcp_get_lattice, i64 26391}
!92 = !{ptr @ipcp_propagate_stage, ptr @ipa_lattice_meet, i64 26391}
!93 = !{ptr @ipcp_propagate_stage, ptr @ipcp_lattice_changed, i64 26391}
!94 = !{ptr @ipcp_propagate_stage, ptr @ipa_push_func_to_list, i64 11}
!95 = !{ptr @ipcp_change_tops_to_bottom, ptr @VEC_ipa_node_params_t_base_index, i64 38}
!96 = !{ptr @ipcp_change_tops_to_bottom, ptr @ipa_get_param_count, i64 38}
!97 = !{ptr @ipcp_change_tops_to_bottom, ptr @ipcp_get_lattice, i64 20}
!98 = !{ptr @ipcp_cloning_candidate_p, ptr @cgraph_only_called_directly_p, i64 38}
!99 = !{ptr @ipcp_cloning_candidate_p, ptr @cgraph_function_body_availability, i64 36}
!100 = !{ptr @ipcp_cloning_candidate_p, ptr @cgraph_node_name, i64 7}
!101 = !{ptr @ipcp_cloning_candidate_p, ptr @fprintf, i64 7}
!102 = !{ptr @ipcp_cloning_candidate_p, ptr @ipcp_versionable_function_p, i64 35}
!103 = !{ptr @ipcp_cloning_candidate_p, ptr @cgraph_maybe_hot_edge_p, i64 46443}
!104 = !{ptr @ipcp_cloning_candidate_p, ptr @optimize_function_for_speed_p, i64 22}
!105 = !{ptr @ipcp_versionable_function_p, ptr @tree_versionable_function_p, i64 77}
!106 = !{ptr @ipcp_versionable_function_p, ptr @gsi_start_bb, i64 281988}
!107 = !{ptr @ipcp_versionable_function_p, ptr @gsi_end_p, i64 965280}
!108 = !{ptr @ipcp_versionable_function_p, ptr @gsi_stmt, i64 683292}
!109 = !{ptr @ipcp_versionable_function_p, ptr @is_gimple_call, i64 683292}
!110 = !{ptr @ipcp_versionable_function_p, ptr @gimple_call_fndecl, i64 132996}
!111 = !{ptr @ipcp_versionable_function_p, ptr @gsi_next, i64 683292}
!112 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 293139}
!113 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 293139}
!114 = !{ptr @is_gimple_call, ptr @gimple_code, i64 710313}
!115 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 138255}
!116 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 138255}
!117 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 138255}
!118 = !{ptr @gimple_op, ptr @gimple_ops, i64 138254}
!119 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 138255}
!120 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 138255}
!121 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!122 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 138255}
!123 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 138255}
!124 = !{ptr @ipcp_set_node_scale, ptr @VEC_ipa_node_params_t_base_index, i64 74}
!125 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_heap_alloc, i64 1}
!126 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_base_length, i64 3}
!127 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_heap_safe_grow_cleared, i64 1}
!128 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_gc_alloc, i64 1}
!129 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_base_length, i64 3}
!130 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, i64 1}
!131 = !{ptr @ipcp_lattice_from_jfunc, ptr @ipcp_get_lattice, i64 52780}
!132 = !{ptr @ipcp_lattice_from_jfunc, ptr @is_gimple_ip_invariant, i64 1}
!133 = !{ptr @ipcp_lattice_changed, ptr @ipcp_lat_is_const, i64 52760}
!134 = !{ptr @ipcp_lattice_changed, ptr @ipcp_lats_are_equal, i64 1}
!135 = !{ptr @ipa_push_func_to_list, ptr @VEC_ipa_node_params_t_base_index, i64 21}
!136 = !{ptr @ipa_push_func_to_list, ptr @ipa_push_func_to_list_1, i64 2}
!137 = !{ptr @VEC_ipa_node_params_t_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 1}
!138 = !{ptr @VEC_ipa_node_params_t_heap_safe_grow_cleared, ptr @VEC_ipa_node_params_t_base_length, i64 1}
!139 = !{ptr @VEC_ipa_node_params_t_heap_safe_grow_cleared, ptr @VEC_ipa_node_params_t_heap_safe_grow, i64 1}
!140 = !{ptr @VEC_ipa_node_params_t_heap_safe_grow_cleared, ptr @VEC_ipa_node_params_t_base_address, i64 1}
!141 = !{ptr @VEC_ipa_node_params_t_heap_safe_grow, ptr @VEC_ipa_node_params_t_heap_reserve_exact, i64 1}
!142 = !{ptr @VEC_ipa_node_params_t_heap_reserve_exact, ptr @VEC_ipa_node_params_t_base_space, i64 1}
!143 = !{ptr @VEC_ipa_node_params_t_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 1}
!144 = !{ptr @VEC_ipa_edge_args_t_gc_alloc, ptr @vec_gc_o_reserve_exact, i64 1}
!145 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, ptr @VEC_ipa_edge_args_t_base_length, i64 1}
!146 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, ptr @VEC_ipa_edge_args_t_gc_safe_grow, i64 1}
!147 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow_cleared, ptr @VEC_ipa_edge_args_t_base_address, i64 1}
!148 = !{ptr @VEC_ipa_edge_args_t_gc_safe_grow, ptr @VEC_ipa_edge_args_t_gc_reserve_exact, i64 1}
!149 = !{ptr @VEC_ipa_edge_args_t_gc_reserve_exact, ptr @VEC_ipa_edge_args_t_base_space, i64 1}
!150 = !{ptr @VEC_ipa_edge_args_t_gc_reserve_exact, ptr @vec_gc_o_reserve_exact, i64 1}
!151 = !{ptr @ipcp_node_modifiable_p, ptr @ipcp_versionable_function_p, i64 39}
!152 = !{ptr @ipcp_const_param_count, ptr @VEC_ipa_node_params_t_base_index, i64 39}
!153 = !{ptr @ipcp_const_param_count, ptr @ipa_get_param_count, i64 39}
!154 = !{ptr @ipcp_const_param_count, ptr @ipcp_get_lattice, i64 39}
!155 = !{ptr @ipcp_const_param_count, ptr @ipa_get_param, i64 39}
!156 = !{ptr @ipcp_const_param_count, ptr @ipcp_lat_is_insertable, i64 39}
!157 = !{ptr @ipcp_const_param_count, ptr @is_gimple_reg, i64 1}
!158 = !{ptr @ipcp_const_param_count, ptr @gimple_default_def, i64 1}
!159 = !{ptr @ipcp_update_callgraph, ptr @ipcp_node_is_clone, i64 30}
!160 = !{ptr @ipcp_update_callgraph, ptr @ipcp_get_lattice, i64 10}
!161 = !{ptr @ipcp_update_callgraph, ptr @ipa_get_param, i64 10}
!162 = !{ptr @ipcp_update_callgraph, ptr @is_gimple_reg, i64 10}
!163 = !{ptr @ipcp_update_callgraph, ptr @gimple_default_def, i64 6}
!164 = !{ptr @ipcp_update_callgraph, ptr @bitmap_set_bit, i64 6}
!165 = !{ptr @ipcp_update_callgraph, ptr @ipcp_need_redirect_p, i64 4}
!166 = !{ptr @ipcp_update_callgraph, ptr @cgraph_redirect_edge_callee, i64 2}
!167 = !{ptr @ipcp_update_profiling, ptr @ipcp_node_is_clone, i64 38}
!168 = !{ptr @ipcp_get_orig_node, ptr @VEC_ipa_node_params_t_base_index, i64 113}
!169 = !{ptr @ipcp_node_is_clone, ptr @ipcp_get_orig_node, i64 113}
!170 = !{ptr @ipcp_init_stage, ptr @ipcp_analyze_node, i64 20}
!171 = !{ptr @ipcp_init_stage, ptr @ipa_count_arguments, i64 26045}
!172 = !{ptr @ipcp_init_stage, ptr @VEC_ipa_edge_args_t_base_index, i64 26045}
!173 = !{ptr @ipcp_init_stage, ptr @ipa_get_cs_argument_count, i64 26045}
!174 = !{ptr @ipcp_init_stage, ptr @VEC_ipa_node_params_t_base_index, i64 26045}
!175 = !{ptr @ipcp_init_stage, ptr @ipa_get_param_count, i64 26045}
!176 = !{ptr @ipcp_init_stage, ptr @ipa_compute_jump_functions, i64 26045}
!177 = !{ptr @ipcp_analyze_node, ptr @fancy_abort, i64 1}
!178 = !{ptr @ipcp_analyze_node, ptr @ipa_initialize_node_params, i64 39}
!179 = !{ptr @ipcp_analyze_node, ptr @ipa_detect_param_modifications, i64 39}
!180 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!181 = !{!"function_entry_count", i64 2}
!182 = !{!"ipa-cp.c:cgraph_gate_cp"}
!183 = !{!184, !184, i64 0}
!184 = !{!"int", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !{!"function_entry_count", i64 1}
!188 = !{!"ipa-cp.c:ipcp_driver"}
!189 = !{!190, !190, i64 0}
!190 = !{!"any pointer", !185, i64 0}
!191 = !{!"branch_weights", i32 2, i32 1}
!192 = !{!"ipa-cp.c:ipcp_generate_summary"}
!193 = !{!"function_entry_count", i64 0}
!194 = !{!"ipa-cp.c:ipcp_write_summary"}
!195 = !{!"ipa-cp.c:ipcp_read_summary"}
!196 = !{!"ipa-cp.c:ipcp_iterate_stage"}
!197 = !{!185, !185, i64 0}
!198 = !{!"branch_weights", i32 1, i32 127}
!199 = !{!"branch_weights", i32 127, i32 4673}
!200 = distinct !{!200, !201}
!201 = !{!"llvm.loop.mustprogress"}
!202 = !{i8 0, i8 2}
!203 = !{!"ipa-cp.c:ipcp_insert_stage"}
!204 = !{!205, !205, i64 0}
!205 = !{!"long", !185, i64 0}
!206 = !{!"branch_weights", i32 36, i32 40}
!207 = !{!208, !205, i64 288}
!208 = !{!"cgraph_node", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !190, i64 120, !190, i64 128, !190, i64 136, !209, i64 144, !211, i64 184, !212, i64 224, !213, i64 232, !214, i64 256, !205, i64 288, !184, i64 296, !184, i64 300, !184, i64 304, !184, i64 308, !184, i64 308, !184, i64 308, !184, i64 308, !184, i64 308, !184, i64 308, !184, i64 308, !184, i64 308, !184, i64 309, !184, i64 309}
!209 = !{!"cgraph_local_info", !190, i64 0, !210, i64 8, !184, i64 32, !184, i64 32, !184, i64 32, !184, i64 32, !184, i64 32, !184, i64 32, !184, i64 32, !184, i64 32}
!210 = !{!"inline_summary", !205, i64 0, !184, i64 8, !184, i64 12, !184, i64 16, !184, i64 20}
!211 = !{!"cgraph_global_info", !205, i64 0, !205, i64 8, !190, i64 16, !184, i64 24, !184, i64 28, !184, i64 32, !185, i64 36}
!212 = !{!"cgraph_rtl_info", !184, i64 0}
!213 = !{!"cgraph_clone_info", !190, i64 0, !190, i64 8, !190, i64 16}
!214 = !{!"cgraph_thunk_info", !205, i64 0, !205, i64 8, !190, i64 16, !185, i64 24, !185, i64 25, !185, i64 26}
!215 = !{!"branch_weights", i32 1, i32 40}
!216 = !{!208, !184, i64 160}
!217 = distinct !{!217, !201}
!218 = !{!219, !184, i64 8}
!219 = !{!"param_info", !190, i64 0, !184, i64 8, !185, i64 12, !184, i64 16, !184, i64 20, !190, i64 24}
!220 = !{!"branch_weights", i32 1, i32 1}
!221 = !{!208, !184, i64 296}
!222 = !{!"branch_weights", i32 40, i32 1}
!223 = !{i64 -2147483648, i64 2147483648}
!224 = !{!208, !190, i64 128}
!225 = distinct !{!225, !201}
!226 = !{i64 0, i64 2147483648}
!227 = !{!208, !190, i64 0}
!228 = distinct !{!228, !201}
!229 = distinct !{!229, !201}
!230 = !{!231, !190, i64 8}
!231 = !{!"cgraph_edge", !205, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !184, i64 72, !184, i64 76, !184, i64 80, !184, i64 84, !232, i64 88, !184, i64 90, !184, i64 90, !184, i64 90}
!232 = !{!"short", !185, i64 0}
!233 = !{!234, !184, i64 0}
!234 = !{!"ipcp_lattice", !184, i64 0, !190, i64 8}
!235 = distinct !{!235, !201}
!236 = distinct !{!236, !201}
!237 = distinct !{!237, !201}
!238 = !{!231, !190, i64 16}
!239 = distinct !{!239, !201}
!240 = !{!"branch_weights", i32 0, i32 1}
!241 = distinct !{!241, !201}
!242 = !{!"ipa-cp.c:ipcp_print_profile_data"}
!243 = !{!"function_entry_count", i64 74}
!244 = !{!"ipa-cp.c:ipcp_initialize_node_lattices"}
!245 = !{!"branch_weights", i32 75, i32 1}
!246 = !{!"branch_weights", i32 39, i32 37}
!247 = !{!"branch_weights", i32 19, i32 21}
!248 = !{!"branch_weights", i32 40, i32 35}
!249 = !{!"branch_weights", i32 0, i32 40}
!250 = distinct !{!250, !201}
!251 = !{!"ipa-cp.c:ipcp_compute_node_scale"}
!252 = !{!"branch_weights", i32 1, i32 149}
!253 = !{!231, !205, i64 0}
!254 = !{!"branch_weights", i32 149, i32 138109}
!255 = distinct !{!255, !201}
!256 = !{!"ipa-cp.c:ipcp_print_all_lattices"}
!257 = !{!234, !190, i64 8}
!258 = distinct !{!258, !201}
!259 = distinct !{!259, !201}
!260 = !{!"ipa-cp.c:ipcp_function_scale_print"}
!261 = distinct !{!261, !201}
!262 = !{!"ipa-cp.c:ipcp_propagate_stage"}
!263 = !{!"branch_weights", i32 127, i32 2497}
!264 = !{!"branch_weights", i32 1, i32 163}
!265 = distinct !{!265, !201}
!266 = !{!231, !184, i64 84}
!267 = !{!"branch_weights", i32 69130, i32 1}
!268 = !{!"branch_weights", i32 16348, i32 52783}
!269 = !{!"branch_weights", i32 52782, i32 1}
!270 = !{!"branch_weights", i32 52762, i32 22}
!271 = distinct !{!271, !201}
!272 = !{!"branch_weights", i32 163, i32 276357}
!273 = distinct !{!273, !201}
!274 = !{!"ipa-cp.c:ipcp_change_tops_to_bottom"}
!275 = !{!"branch_weights", i32 40, i32 0}
!276 = distinct !{!276, !201}
!277 = distinct !{!277, !201}
!278 = !{!"function_entry_count", i64 122385}
!279 = !{!"ipa-cp.c:VEC_ipa_node_params_t_base_index"}
!280 = !{!"function_entry_count", i64 122024}
!281 = !{!"ipa-cp.c:ipa_is_called_with_var_arguments"}
!282 = !{!"function_entry_count", i64 112}
!283 = !{!"ipa-cp.c:cgraph_only_called_directly_p"}
!284 = !{!"branch_weights", i32 37, i32 77}
!285 = !{!"function_entry_count", i64 38}
!286 = !{!"ipa-cp.c:ipcp_cloning_candidate_p"}
!287 = !{!"branch_weights", i32 39, i32 1}
!288 = !{!"branch_weights", i32 1, i32 39}
!289 = !{!"branch_weights", i32 1, i32 155}
!290 = !{!"branch_weights", i32 155, i32 210825}
!291 = distinct !{!291, !201}
!292 = !{!"branch_weights", i32 16, i32 1}
!293 = !{!"branch_weights", i32 17, i32 8}
!294 = !{!"branch_weights", i32 8, i32 1}
!295 = !{!"branch_weights", i32 1, i32 17}
!296 = !{!"branch_weights", i32 17, i32 1}
!297 = !{!"branch_weights", i32 4, i32 14}
!298 = !{!"branch_weights", i32 4, i32 1}
!299 = !{!"branch_weights", i32 14, i32 1}
!300 = !{!"function_entry_count", i64 53008}
!301 = !{!"ipa-cp.c:ipa_get_param_count"}
!302 = !{!303, !184, i64 0}
!303 = !{!"ipa_node_params", !184, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !205, i64 32, !184, i64 40, !184, i64 40, !184, i64 40, !184, i64 40}
!304 = !{!"function_entry_count", i64 105681}
!305 = !{!"ipa-cp.c:ipcp_get_lattice"}
!306 = !{!303, !190, i64 8}
!307 = !{!"function_entry_count", i64 77}
!308 = !{!"ipa-cp.c:ipcp_versionable_function_p"}
!309 = !{!"branch_weights", i32 1, i32 78}
!310 = !{!"branch_weights", i32 78, i32 1}
!311 = !{!312, !190, i64 8}
!312 = !{!"function", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !184, i64 104, !184, i64 108, !184, i64 112, !184, i64 116, !184, i64 120, !184, i64 124, !190, i64 128, !184, i64 136, !184, i64 137, !184, i64 138, !184, i64 138, !184, i64 138, !184, i64 138, !184, i64 138, !184, i64 138, !184, i64 138, !184, i64 139, !184, i64 139, !184, i64 139, !184, i64 139, !184, i64 139, !184, i64 139, !184, i64 139}
!313 = !{!314, !190, i64 0}
!314 = !{!"control_flow_graph", !190, i64 0, !190, i64 8, !190, i64 16, !184, i64 24, !184, i64 28, !184, i64 32, !190, i64 40, !184, i64 48, !185, i64 52, !185, i64 60, !184, i64 68, !184, i64 72}
!315 = !{!316, !190, i64 56}
!316 = !{!"basic_block_def", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !185, i64 32, !190, i64 48, !190, i64 56, !185, i64 64, !205, i64 72, !184, i64 80, !184, i64 84, !184, i64 88, !184, i64 92, !184, i64 96}
!317 = !{!314, !190, i64 8}
!318 = !{!"branch_weights", i32 293139, i32 1}
!319 = !{!"branch_weights", i32 572059, i32 138256}
!320 = !{!"branch_weights", i32 1, i32 138256}
!321 = !{!"branch_weights", i32 417175, i32 293139}
!322 = distinct !{!322, !201}
!323 = !{!"branch_weights", i32 155, i32 586125}
!324 = distinct !{!324, !201}
!325 = !{!"function_entry_count", i64 293139}
!326 = !{!"ipa-cp.c:gsi_start_bb"}
!327 = !{!328, !190, i64 0}
!328 = !{!"", !190, i64 0, !190, i64 8, !190, i64 16}
!329 = !{!328, !190, i64 8}
!330 = !{!328, !190, i64 16}
!331 = !{!"function_entry_count", i64 1003452}
!332 = !{!"ipa-cp.c:gsi_end_p"}
!333 = !{!"function_entry_count", i64 710313}
!334 = !{!"ipa-cp.c:gsi_stmt"}
!335 = !{!336, !190, i64 0}
!336 = !{!"gimple_seq_node_d", !190, i64 0, !190, i64 8, !190, i64 16}
!337 = !{!"ipa-cp.c:is_gimple_call"}
!338 = !{i32 0, i32 256}
!339 = !{!"function_entry_count", i64 138255}
!340 = !{!"ipa-cp.c:gimple_call_fndecl"}
!341 = !{!"branch_weights", i32 138256, i32 1}
!342 = !{!"ipa-cp.c:gsi_next"}
!343 = !{!336, !190, i64 16}
!344 = !{!"ipa-cp.c:bb_seq"}
!345 = !{!316, !184, i64 96}
!346 = !{!"branch_weights", i32 293140, i32 1}
!347 = !{!"branch_weights", i32 1, i32 293140}
!348 = !{!349, !190, i64 0}
!349 = !{!"gimple_bb_info", !190, i64 0, !190, i64 8}
!350 = !{!"ipa-cp.c:gimple_seq_first"}
!351 = !{!352, !190, i64 0}
!352 = !{!"gimple_seq_d", !190, i64 0, !190, i64 8, !190, i64 16}
!353 = !{!"function_entry_count", i64 1125078}
!354 = !{!"ipa-cp.c:gimple_code"}
!355 = !{!"ipa-cp.c:gimple_call_fn"}
!356 = !{!"ipa-cp.c:gimple_op"}
!357 = !{!"ipa-cp.c:gimple_has_ops"}
!358 = !{!"ipa-cp.c:gimple_ops"}
!359 = !{!"ipa-cp.c:gimple_statement_structure"}
!360 = !{!"ipa-cp.c:gss_for_code"}
!361 = !{!"ipa-cp.c:ipcp_set_node_scale"}
!362 = !{!303, !205, i64 32}
!363 = !{!"ipa-cp.c:ipcp_get_node_scale"}
!364 = !{!"function_entry_count", i64 3}
!365 = !{!"ipa-cp.c:ipa_check_create_node_params"}
!366 = !{!"branch_weights", i32 2, i32 3}
!367 = !{!"branch_weights", i32 3, i32 2}
!368 = !{!"ipa-cp.c:ipa_check_create_edge_args"}
!369 = !{!"function_entry_count", i64 121911}
!370 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_base_index"}
!371 = !{!"function_entry_count", i64 105564}
!372 = !{!"ipa-cp.c:ipa_get_cs_argument_count"}
!373 = !{!374, !184, i64 0}
!374 = !{!"ipa_edge_args", !184, i64 0, !190, i64 8}
!375 = !{!"function_entry_count", i64 52782}
!376 = !{!"ipa-cp.c:ipa_get_ith_jump_func"}
!377 = !{!374, !190, i64 8}
!378 = !{!"ipa-cp.c:ipcp_lattice_from_jfunc"}
!379 = !{!380, !184, i64 0}
!380 = !{!"ipa_jump_func", !184, i64 0, !185, i64 8}
!381 = !{!"branch_weights", i32 26391, i32 52784, i32 -1508922207, i32 26391}
!382 = !{!"branch_weights", i32 1, i32 52783}
!383 = !{!"ipa-cp.c:ipa_lattice_meet"}
!384 = !{!"branch_weights", i32 52783, i32 1}
!385 = !{!"ipa-cp.c:ipcp_lattice_changed"}
!386 = !{!"branch_weights", i32 52762, i32 1}
!387 = !{!"function_entry_count", i64 21}
!388 = !{!"ipa-cp.c:ipa_push_func_to_list"}
!389 = !{!"branch_weights", i32 2, i32 21}
!390 = !{!"ipa-cp.c:VEC_ipa_node_params_t_heap_alloc"}
!391 = !{!"function_entry_count", i64 5}
!392 = !{!"ipa-cp.c:VEC_ipa_node_params_t_base_length"}
!393 = !{!"branch_weights", i32 1, i32 6}
!394 = !{!395, !184, i64 0}
!395 = !{!"VEC_ipa_node_params_t_base", !184, i64 0, !184, i64 4, !185, i64 8}
!396 = !{!"ipa-cp.c:VEC_ipa_node_params_t_heap_safe_grow_cleared"}
!397 = !{!"ipa-cp.c:VEC_ipa_node_params_t_heap_safe_grow"}
!398 = !{!"branch_weights", i32 1, i32 2}
!399 = !{}
!400 = !{!"ipa-cp.c:VEC_ipa_node_params_t_base_address"}
!401 = !{!"ipa-cp.c:VEC_ipa_node_params_t_heap_reserve_exact"}
!402 = !{i32 0, i32 2}
!403 = !{!"ipa-cp.c:VEC_ipa_node_params_t_base_space"}
!404 = !{!395, !184, i64 4}
!405 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_gc_alloc"}
!406 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_base_length"}
!407 = !{!408, !184, i64 0}
!408 = !{!"VEC_ipa_edge_args_t_base", !184, i64 0, !184, i64 4, !185, i64 8}
!409 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_gc_safe_grow_cleared"}
!410 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_gc_safe_grow"}
!411 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_base_address"}
!412 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_gc_reserve_exact"}
!413 = !{!"ipa-cp.c:VEC_ipa_edge_args_t_base_space"}
!414 = !{!408, !184, i64 4}
!415 = !{!"ipa-cp.c:ipcp_lats_are_equal"}
!416 = !{!"function_entry_count", i64 52761}
!417 = !{!"ipa-cp.c:ipcp_lat_is_const"}
!418 = !{!"function_entry_count", i64 39}
!419 = !{!"ipa-cp.c:ipa_get_param"}
!420 = !{!421, !190, i64 16}
!421 = !{!"ipa_param_descriptor", !234, i64 0, !190, i64 16, !184, i64 24}
!422 = !{!"ipa-cp.c:ipcp_node_modifiable_p"}
!423 = !{!"ipa-cp.c:ipcp_const_param_count"}
!424 = !{!"branch_weights", i32 159, i32 1}
!425 = distinct !{!425, !201}
!426 = !{!"ipa-cp.c:ipcp_estimate_cloning_cost"}
!427 = !{!231, !184, i64 80}
!428 = distinct !{!428, !201}
!429 = !{!"ipa-cp.c:ipcp_estimate_growth"}
!430 = distinct !{!430, !201}
!431 = distinct !{!431, !201}
!432 = !{!"ipa-cp.c:ipcp_need_redirect_p"}
!433 = distinct !{!433, !201}
!434 = !{!"ipa-cp.c:VEC_ipa_replace_map_p_gc_alloc"}
!435 = !{!"ipa-cp.c:ipcp_create_replace_map"}
!436 = !{!437, !190, i64 0}
!437 = !{!"ipa_replace_map", !190, i64 0, !190, i64 8, !185, i64 16, !185, i64 17}
!438 = !{!437, !190, i64 8}
!439 = !{!437, !185, i64 16}
!440 = !{!437, !185, i64 17}
!441 = !{!"ipa-cp.c:VEC_ipa_replace_map_p_gc_safe_push"}
!442 = !{!"ipa-cp.c:VEC_cgraph_edge_p_heap_alloc"}
!443 = !{!"ipa-cp.c:VEC_cgraph_edge_p_base_quick_push"}
!444 = !{!445, !184, i64 0}
!445 = !{!"VEC_cgraph_edge_p_base", !184, i64 0, !184, i64 4, !185, i64 8}
!446 = !{!"ipa-cp.c:VEC_cgraph_edge_p_heap_free"}
!447 = !{!"ipa-cp.c:ipcp_init_cloned_node"}
!448 = !{!303, !190, i64 24}
!449 = !{!"ipa-cp.c:ipcp_update_callgraph"}
!450 = distinct !{!450, !201}
!451 = !{!208, !190, i64 16}
!452 = !{!231, !190, i64 32}
!453 = distinct !{!453, !201}
!454 = distinct !{!454, !201}
!455 = !{!"ipa-cp.c:ipcp_update_profiling"}
!456 = distinct !{!456, !201}
!457 = distinct !{!457, !201}
!458 = distinct !{!458, !201}
!459 = !{!"ipa-cp.c:ipcp_lat_is_insertable"}
!460 = !{!"function_entry_count", i64 113}
!461 = !{!"ipa-cp.c:ipcp_get_orig_node"}
!462 = !{!"ipa-cp.c:build_const_val"}
!463 = !{!"ipa-cp.c:VEC_ipa_replace_map_p_gc_reserve"}
!464 = !{!"ipa-cp.c:VEC_ipa_replace_map_p_base_quick_push"}
!465 = !{!466, !184, i64 0}
!466 = !{!"VEC_ipa_replace_map_p_base", !184, i64 0, !184, i64 4, !185, i64 8}
!467 = !{!"ipa-cp.c:VEC_ipa_replace_map_p_base_space"}
!468 = !{!466, !184, i64 4}
!469 = !{!"ipa-cp.c:ipcp_node_is_clone"}
!470 = !{!"ipa-cp.c:ipcp_print_func_profile_counts"}
!471 = distinct !{!471, !201}
!472 = !{!"ipa-cp.c:ipcp_print_call_profile_counts"}
!473 = distinct !{!473, !201}
!474 = distinct !{!474, !201}
!475 = !{!"ipa-cp.c:ipcp_init_stage"}
!476 = !{!"branch_weights", i32 0, i32 -2147483648}
!477 = distinct !{!477, !201}
!478 = !{!"branch_weights", i32 1, i32 159}
!479 = !{!"branch_weights", i32 -850834927, i32 1066483743}
!480 = !{!"branch_weights", i32 159, i32 276357}
!481 = distinct !{!481, !201}
!482 = distinct !{!482, !201}
!483 = !{!"ipa-cp.c:ipcp_analyze_node"}
!484 = !{!"branch_weights", i32 2, i32 121}
!485 = !{!"ipa-cp.c:ipa_set_called_with_variable_arg"}
