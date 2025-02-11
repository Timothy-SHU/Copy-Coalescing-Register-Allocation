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

@pass_ipa_cp = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @cgraph_gate_cp, ptr @ipcp_driver, ptr null, ptr null, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 385 }, ptr @ipcp_generate_summary, ptr @ipcp_write_summary, ptr @ipcp_read_summary, ptr null, ptr @lto_ipa_fixup_call_notes, i32 0, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"cp\00", align 1
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
define internal zeroext i8 @cgraph_gate_cp() #0 {
  %1 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !6
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipcp_driver() #1 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %2 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 1, ptr noundef %1) #18
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 36, i64 1, ptr nonnull %3)
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @ipa_print_all_params(ptr noundef %11) #18
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @ipa_print_all_jump_functions(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %12, %0
  tail call fastcc void @ipcp_iterate_stage() #19
  tail call fastcc void @ipcp_insert_stage() #19
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 36, i64 1, ptr nonnull %15)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @ipcp_print_profile_data(ptr noundef %23) #19
  br label %24

24:                                               ; preds = %21, %17, %14
  tail call void @free_all_ipa_structures_after_ipa_cp() #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 30, i64 1, ptr nonnull %25)
  br label %29

29:                                               ; preds = %27, %24
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipcp_generate_summary() #1 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

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
define internal void @ipcp_write_summary(ptr noundef %0) #1 {
  tail call void @ipa_prop_write_jump_functions(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ipcp_read_summary() #1 {
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
define internal fastcc void @ipcp_iterate_stage() unnamed_addr #1 {
  store i32 0, ptr @n_cloning_candidates, align 4, !tbaa !6
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8, ptr @in_lto_p, align 1, !tbaa !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @ipa_update_after_lto_read() #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %9 ]
  tail call fastcc void @ipcp_initialize_node_lattices(ptr noundef nonnull %13) #19
  tail call fastcc void @ipcp_compute_node_scale(ptr noundef nonnull %13) #19
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !13

17:                                               ; preds = %12, %9
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call fastcc void @ipcp_print_all_lattices(ptr noundef nonnull %18) #19
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @ipcp_function_scale_print(ptr noundef %25) #19
  br label %26

26:                                               ; preds = %24, %20, %17
  tail call fastcc void @ipcp_propagate_stage() #19
  %27 = tail call fastcc zeroext i8 @ipcp_change_tops_to_bottom() #19, !range !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 760, ptr noundef nonnull @.str.6) #18
  br label %33

33:                                               ; preds = %29, %32
  tail call fastcc void @ipcp_propagate_stage() #19
  br label %34

34:                                               ; preds = %33, %26
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 33, i64 1, ptr nonnull %35)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @ipcp_print_all_lattices(ptr noundef %39) #19
  %40 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @ipcp_print_profile_data(ptr noundef %44) #19
  br label %45

45:                                               ; preds = %37, %43, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_insert_stage() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  tail call fastcc void @ipa_check_create_node_params() #19
  tail call fastcc void @ipa_check_create_edge_args() #19
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 20, i64 1, ptr nonnull %3)
  br label %7

7:                                                ; preds = %5, %0
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %8, ptr @dead_nodes, align 8, !tbaa !10
  %9 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr @max_count, align 8, !tbaa !16
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi ptr [ %36, %32 ], [ %9, %11 ]
  %15 = phi i64 [ %34, %32 ], [ 0, %11 ]
  %16 = phi i64 [ %33, %32 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 32
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !18
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 %23, ptr @max_count, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i64 [ %23, %25 ], [ %16, %21 ]
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 18, i32 1, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !26
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %15, %30
  br label %32

32:                                               ; preds = %13, %26
  %33 = phi i64 [ %27, %26 ], [ %16, %13 ]
  %34 = phi i64 [ %31, %26 ], [ %15, %13 ]
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !llvm.loop !27

38:                                               ; preds = %32, %7
  %39 = phi i64 [ 0, %7 ], [ %34, %32 ]
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 17, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !28
  %43 = sext i32 %42 to i64
  %44 = tail call i64 @llvm.smax.i64(i64 %39, i64 %43)
  %45 = getelementptr inbounds %struct.param_info, ptr %40, i64 19, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !28
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %44, %47
  %49 = sdiv i64 %48, 100
  %50 = add nsw i64 %49, 1
  %51 = tail call ptr @fibheap_new() #18
  %52 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %80, %38
  %55 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %230

57:                                               ; preds = %38, %80
  %58 = phi ptr [ %82, %80 ], [ %52, %38 ]
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 27
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 32
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %57
  %64 = tail call fastcc zeroext i8 @ipcp_node_modifiable_p(ptr noundef nonnull %58) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @ipa_node_params_vector, align 8
  %68 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 24
  %69 = load i32, ptr %68, align 8, !tbaa !30
  %70 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %67, i32 noundef %69) #19
  %71 = tail call fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr noundef nonnull %70) #19, !range !15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = tail call fastcc i32 @ipcp_const_param_count(ptr noundef nonnull %58) #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = tail call fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef nonnull %58) #19, !range !31
  %78 = tail call ptr @fibheap_insert(ptr noundef %51, i64 noundef %77, ptr noundef nonnull %58) #18
  %79 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 16
  store ptr %78, ptr %79, align 8, !tbaa !32
  br label %80

80:                                               ; preds = %73, %76, %66, %57, %63
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %58, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %54, label %57, !llvm.loop !33

84:                                               ; preds = %54, %226
  %85 = phi i64 [ %227, %226 ], [ 0, %54 ]
  %86 = tail call ptr @fibheap_extract_min(ptr noundef %51) #18
  %87 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 16
  store ptr null, ptr %87, align 8, !tbaa !32
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = tail call ptr @cgraph_node_name(ptr noundef nonnull %86) #18
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.30, ptr noundef %91) #19
  br label %93

93:                                               ; preds = %90, %84
  %94 = tail call fastcc i64 @ipcp_estimate_growth(ptr noundef nonnull %86) #19, !range !34
  %95 = trunc i64 %94 to i32
  %96 = add nsw i64 %94, %85
  %97 = icmp sgt i64 %96, %50
  br i1 %97, label %230, label %98

98:                                               ; preds = %93
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr %86, align 8, !tbaa !35
  %102 = getelementptr inbounds %struct.tree_function_decl, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !12
  %104 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %103) #18
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %226, label %109, !llvm.loop !36

109:                                              ; preds = %106
  %110 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 36, i64 1, ptr nonnull %107)
  br label %226, !llvm.loop !36

111:                                              ; preds = %100, %98
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %127, label %119

115:                                              ; preds = %124
  %116 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119, !llvm.loop !37

119:                                              ; preds = %111, %115
  %120 = phi ptr [ %117, %115 ], [ %113, %111 ]
  %121 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !38
  %123 = icmp eq ptr %122, %86
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %120) #19
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %115, label %135

127:                                              ; preds = %115, %111
  %128 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %86) #19, !range !15
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @dead_nodes, align 8, !tbaa !10
  %132 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 24
  %133 = load i32, ptr %132, align 8, !tbaa !30
  %134 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %131, i32 noundef %133) #18
  br label %135

135:                                              ; preds = %124, %119, %130, %127
  %136 = load ptr, ptr @ipa_node_params_vector, align 8
  %137 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 24
  %138 = load i32, ptr %137, align 8, !tbaa !30
  %139 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %136, i32 noundef %138) #19
  %140 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %139) #19
  %141 = tail call fastcc ptr @VEC_ipa_replace_map_p_gc_alloc() #19
  store ptr %141, ptr %2, align 8, !tbaa !10
  %142 = tail call ptr @bitmap_gc_alloc_stat() #18
  %143 = icmp sgt i32 %140, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %166, %135
  %145 = load ptr, ptr %112, align 8, !tbaa !10
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
  %154 = load ptr, ptr %86, align 8, !tbaa !35
  %155 = getelementptr inbounds %struct.tree_function_decl, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !12
  %157 = tail call ptr @gimple_default_def(ptr noundef %156, ptr noundef %150) #18
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153, %147
  %160 = load i32, ptr %149, align 8, !tbaa !41
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
  br i1 %168, label %144, label %147, !llvm.loop !43

169:                                              ; preds = %144, %169
  %170 = phi ptr [ %174, %169 ], [ %145, %144 ]
  %171 = phi i32 [ %172, %169 ], [ 0, %144 ]
  %172 = add nuw nsw i32 %171, 1
  %173 = getelementptr inbounds %struct.cgraph_edge, ptr %170, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %169, !llvm.loop !44

176:                                              ; preds = %169, %144
  %177 = phi i32 [ 0, %144 ], [ %172, %169 ]
  %178 = tail call fastcc ptr @VEC_cgraph_edge_p_heap_alloc(i32 noundef %177) #19
  store ptr %178, ptr %1, align 8, !tbaa !10
  %179 = load ptr, ptr %112, align 8, !tbaa !10
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %176, %181
  %182 = phi ptr [ %184, %181 ], [ %179, %176 ]
  tail call fastcc void @VEC_cgraph_edge_p_base_quick_push(ptr noundef %178, ptr noundef nonnull %182) #19
  %183 = getelementptr inbounds %struct.cgraph_edge, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !10
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %181, !llvm.loop !45

186:                                              ; preds = %181, %176
  %187 = load ptr, ptr %2, align 8, !tbaa !10
  %188 = tail call ptr @cgraph_create_virtual_clone(ptr noundef %86, ptr noundef %178, ptr noundef %187, ptr noundef %142) #18
  call fastcc void @VEC_cgraph_edge_p_heap_free(ptr noundef nonnull %1) #19
  store ptr null, ptr %2, align 8, !tbaa !10
  %189 = icmp eq ptr %188, null
  br i1 %189, label %226, label %190, !llvm.loop !36

190:                                              ; preds = %186
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = tail call ptr @cgraph_node_name(ptr noundef %86) #18
  %195 = trunc i64 %96 to i32
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %191, ptr noundef nonnull @.str.32, ptr noundef %194, i32 noundef %95, i32 noundef %195) #19
  br label %197

197:                                              ; preds = %193, %190
  tail call fastcc void @ipcp_init_cloned_node(ptr noundef %86, ptr noundef nonnull %188) #19
  %198 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %199 = icmp eq ptr %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %188, align 8, !tbaa !35
  %202 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @dump_function_to_file(ptr noundef %201, ptr noundef nonnull %198, i32 noundef %202) #18
  br label %203

203:                                              ; preds = %200, %197
  %204 = getelementptr inbounds %struct.cgraph_node, ptr %86, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !10
  %206 = icmp eq ptr %205, null
  br i1 %206, label %226, label %207

207:                                              ; preds = %203, %222
  %208 = phi ptr [ %224, %222 ], [ %205, %203 ]
  %209 = getelementptr inbounds %struct.cgraph_edge, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  %211 = getelementptr inbounds %struct.cgraph_node, ptr %210, i64 0, i32 16
  %212 = load ptr, ptr %211, align 8, !tbaa !32
  %213 = icmp eq ptr %212, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %207
  %215 = tail call ptr @fibheap_delete_node(ptr noundef %51, ptr noundef nonnull %212) #18
  %216 = load ptr, ptr %209, align 8, !tbaa !46
  %217 = tail call fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef %216) #19, !range !31
  %218 = load ptr, ptr %209, align 8, !tbaa !46
  %219 = tail call ptr @fibheap_insert(ptr noundef %51, i64 noundef %217, ptr noundef %218) #18
  %220 = load ptr, ptr %209, align 8, !tbaa !46
  %221 = getelementptr inbounds %struct.cgraph_node, ptr %220, i64 0, i32 16
  store ptr %219, ptr %221, align 8, !tbaa !32
  br label %222

222:                                              ; preds = %207, %214
  %223 = getelementptr inbounds %struct.cgraph_edge, ptr %208, i64 0, i32 6
  %224 = load ptr, ptr %223, align 8, !tbaa !10
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %207, !llvm.loop !47

226:                                              ; preds = %222, %203, %186, %106, %109
  %227 = phi i64 [ %85, %109 ], [ %85, %106 ], [ %96, %186 ], [ %96, %203 ], [ %96, %222 ]
  %228 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %84, label %230

230:                                              ; preds = %226, %93, %54
  %231 = phi ptr [ null, %54 ], [ %86, %93 ], [ %86, %226 ]
  %232 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %230, %241
  %235 = phi ptr [ %242, %241 ], [ %231, %230 ]
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = tail call ptr @cgraph_node_name(ptr noundef %235) #18
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %236, ptr noundef nonnull @.str.33, ptr noundef %239) #19
  br label %241

241:                                              ; preds = %238, %234
  %242 = tail call ptr @fibheap_extract_min(ptr noundef %51) #18
  %243 = getelementptr inbounds %struct.cgraph_node, ptr %242, i64 0, i32 16
  store ptr null, ptr %243, align 8, !tbaa !32
  %244 = tail call i32 @fibheap_empty(ptr noundef %51) #18
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %234, label %246, !llvm.loop !48

246:                                              ; preds = %241, %230
  tail call void @fibheap_delete(ptr noundef %51) #18
  %247 = load ptr, ptr @dead_nodes, align 8, !tbaa !10
  tail call void @bitmap_obstack_free(ptr noundef %247) #18
  store ptr null, ptr @dead_nodes, align 8, !tbaa !10
  tail call fastcc void @ipcp_update_callgraph() #19
  tail call fastcc void @ipcp_update_profiling() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_profile_data(ptr nocapture noundef %0) unnamed_addr #1 {
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
define internal fastcc void @ipcp_initialize_node_lattices(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !30
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = tail call fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr noundef nonnull %5) #19, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %0) #19, !range !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @ipcp_cloning_candidate_p(ptr noundef nonnull %0) #19, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !6
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @n_cloning_candidates, align 4, !tbaa !6
  br label %17

17:                                               ; preds = %11, %8, %1, %14
  %18 = phi i32 [ 2, %14 ], [ 0, %1 ], [ 2, %8 ], [ 0, %11 ]
  %19 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #19
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %24, %21 ], [ 0, %17 ]
  %23 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %5, i32 noundef %22) #19
  store i32 %18, ptr %23, align 8, !tbaa !41
  %24 = add nuw nsw i32 %22, 1
  %25 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #19
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %21, label %27, !llvm.loop !49

27:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipcp_compute_node_scale(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %8 = load i64, ptr %6, align 8, !tbaa !50
  %9 = add nsw i64 %8, %7
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !51

13:                                               ; preds = %5, %1
  %14 = phi i64 [ 0, %1 ], [ %9, %5 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %16 = load i64, ptr %15, align 8, !tbaa !18
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

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
define internal fastcc void @ipcp_print_all_lattices(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 10, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
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
  %14 = load i32, ptr %13, align 8, !tbaa !30
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
  %24 = load i32, ptr %22, align 8, !tbaa !41
  switch i32 %24, label %32 [
    i32 1, label %25
    i32 2, label %30
  ]

25:                                               ; preds = %20
  %26 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 14, i64 1, ptr %0)
  %27 = getelementptr inbounds %struct.ipcp_lattice, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !52
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
  br i1 %36, label %37, label %20, !llvm.loop !53

37:                                               ; preds = %34, %11, %5
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %5, !llvm.loop !54

41:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_function_scale_print(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
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
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !55

19:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_propagate_stage() unnamed_addr #1 {
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
  store ptr %4, ptr %3, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.ipcp_lattice, ptr %2, i64 0, i32 1
  br label %11

8:                                                ; preds = %56, %11
  %9 = load ptr, ptr %3, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %6, %8
  %12 = call ptr @ipa_pop_func_from_list(ptr noundef nonnull %3) #18
  %13 = load ptr, ptr @ipa_node_params_vector, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !30
  %16 = call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %13, i32 noundef %15) #19
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %8, label %20, !llvm.loop !56

20:                                               ; preds = %11, %56
  %21 = phi ptr [ %58, %56 ], [ %18, %11 ]
  %22 = load ptr, ptr @ipa_node_params_vector, align 8
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 24
  %26 = load i32, ptr %25, align 8, !tbaa !30
  %27 = call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %22, i32 noundef %26) #19
  %28 = load ptr, ptr @ipa_edge_args_vector, align 8
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !57
  %31 = call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %28, i32 noundef %30) #19
  %32 = call fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr noundef nonnull %27) #19, !range !15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %24, i64 0, i32 27
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %31) #19
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39, %53
  %43 = phi i32 [ %54, %53 ], [ 0, %39 ]
  %44 = call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %31, i32 noundef %43) #19
  call fastcc void @ipcp_lattice_from_jfunc(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef %44) #19
  %45 = call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %27, i32 noundef %43) #19
  call fastcc void @ipa_lattice_meet(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %45) #19
  %46 = call fastcc zeroext i8 @ipcp_lattice_changed(ptr noundef nonnull %2, ptr noundef %45) #19, !range !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %2, align 8, !tbaa !41
  store i32 %49, ptr %45, align 8, !tbaa !41
  %50 = load ptr, ptr %7, align 8, !tbaa !52
  %51 = getelementptr inbounds %struct.ipcp_lattice, ptr %45, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !52
  %52 = load ptr, ptr %23, align 8, !tbaa !46
  call fastcc void @ipa_push_func_to_list(ptr noundef nonnull %3, ptr noundef %52) #19
  br label %53

53:                                               ; preds = %42, %48
  %54 = add nuw nsw i32 %43, 1
  %55 = icmp eq i32 %54, %40
  br i1 %55, label %56, label %42, !llvm.loop !58

56:                                               ; preds = %53, %39, %20, %34
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %21, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %8, label %20, !llvm.loop !59

60:                                               ; preds = %8, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ipcp_change_tops_to_bottom() unnamed_addr #1 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %0, %33
  %4 = phi ptr [ %36, %33 ], [ %1, %0 ]
  %5 = phi i8 [ %34, %33 ], [ 0, %0 ]
  %6 = load ptr, ptr @ipa_node_params_vector, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %6, i32 noundef %8) #19
  %10 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %9) #19
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3, %29
  %13 = phi i32 [ %31, %29 ], [ 0, %3 ]
  %14 = phi i8 [ %30, %29 ], [ %5, %3 ]
  %15 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %9, i32 noundef %13) #19
  %16 = load i32, ptr %15, align 8, !tbaa !41
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %19)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %24 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %9, i32 noundef %13) #19
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %24, i32 noundef 0) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = tail call ptr @cgraph_node_name(ptr noundef nonnull %4) #18
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.28, ptr noundef %26) #19
  br label %28

28:                                               ; preds = %21, %18
  store i32 0, ptr %15, align 8, !tbaa !41
  br label %29

29:                                               ; preds = %28, %12
  %30 = phi i8 [ 1, %28 ], [ %14, %12 ]
  %31 = add nuw nsw i32 %13, 1
  %32 = icmp eq i32 %31, %10
  br i1 %32, label %33, label %12, !llvm.loop !60

33:                                               ; preds = %29, %3
  %34 = phi i8 [ %5, %3 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %3, !llvm.loop !61

38:                                               ; preds = %33, %0
  %39 = phi i8 [ 0, %0 ], [ %34, %33 ]
  ret i8 %39
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ipa_node_params_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipa_is_called_with_var_arguments(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12

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
define internal fastcc noundef zeroext i8 @ipcp_cloning_candidate_p(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %110

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 32
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %110, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %0) #18
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %110, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.8, ptr noundef %16) #19
  br label %110

18:                                               ; preds = %9
  %19 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(ptr noundef nonnull %0) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %110, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, ptr noundef %25) #19
  br label %110

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %44, %31 ], [ %29, %27 ]
  %33 = phi i64 [ %37, %31 ], [ 0, %27 ]
  %34 = phi i32 [ %42, %31 ], [ 0, %27 ]
  %35 = phi i32 [ %38, %31 ], [ 0, %27 ]
  %36 = load i64, ptr %32, align 8, !tbaa !50
  %37 = add nsw i64 %36, %33
  %38 = add nuw nsw i32 %35, 1
  %39 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %32) #18
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %34, %41
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %32, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %31, !llvm.loop !62

46:                                               ; preds = %27
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %110, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.10, ptr noundef %50) #19
  br label %110

52:                                               ; preds = %31
  %53 = icmp eq i32 %42, 0
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !26
  %56 = icmp sgt i32 %55, %35
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %110, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.11, ptr noundef %61) #19
  br label %110

63:                                               ; preds = %52
  %64 = load i32, ptr @flag_ipa_cp_clone, align 4, !tbaa !6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %110, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %67, ptr noundef nonnull @.str.12, ptr noundef %70) #19
  br label %110

72:                                               ; preds = %63
  %73 = load ptr, ptr %0, align 8, !tbaa !35
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !12
  %76 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %75) #18
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %110, label %81

81:                                               ; preds = %78
  %82 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.13, ptr noundef %82) #19
  br label %110

84:                                               ; preds = %72
  %85 = load i64, ptr @max_count, align 8, !tbaa !16
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %89 = load i64, ptr %88, align 8, !tbaa !18
  %90 = mul nsw i64 %89, 90
  %91 = sdiv i64 %90, 100
  %92 = icmp sgt i64 %37, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.14, ptr noundef %97) #19
  br label %110

99:                                               ; preds = %87, %84
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %101 = icmp eq ptr %100, null
  br i1 %53, label %102, label %106

102:                                              ; preds = %99
  br i1 %101, label %110, label %103

103:                                              ; preds = %102
  %104 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.15, ptr noundef %104) #19
  br label %110

106:                                              ; preds = %99
  br i1 %101, label %110, label %107

107:                                              ; preds = %106
  %108 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.16, ptr noundef %108) #19
  br label %110

110:                                              ; preds = %106, %107, %102, %103, %93, %96, %78, %81, %66, %69, %57, %60, %46, %49, %21, %24, %12, %15, %1, %4
  %111 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 0, %15 ], [ 0, %12 ], [ 0, %24 ], [ 0, %21 ], [ 0, %49 ], [ 0, %46 ], [ 1, %60 ], [ 1, %57 ], [ 0, %69 ], [ 0, %66 ], [ 0, %81 ], [ 0, %78 ], [ 1, %96 ], [ 1, %93 ], [ 0, %103 ], [ 0, %102 ], [ 1, %107 ], [ 1, %106 ]
  ret i8 %111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ipa_get_param_count(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ipcp_get_lattice(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_versionable_function_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %3) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 20
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %51, label %22

22:                                               ; preds = %13, %42
  %23 = phi ptr [ %44, %42 ], [ %18, %13 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #19
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22, %39
  %27 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %28 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %27) #19, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %27) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 8191
  %37 = icmp eq i32 %36, 6561
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %51

39:                                               ; preds = %26, %30, %33
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %26, label %42, !llvm.loop !73

42:                                               ; preds = %39, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = load ptr, ptr %7, align 8, !tbaa !12
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %22, !llvm.loop !74

51:                                               ; preds = %42, %13, %38, %6, %1
  %52 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %38 ], [ 1, %13 ], [ 1, %42 ]
  ret i8 %52
}

; Function Attrs: optsize
declare zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !81
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %4, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !83
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !84
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !86
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !81
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !16
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.6) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !81
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipcp_set_node_scale(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !30
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 4
  store i64 %1, ptr %7, align 8, !tbaa !88
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @ipcp_get_node_scale(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !30
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !88
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #1 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !6
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %4) #19
  store ptr %5, ptr @ipa_node_params_vector, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %7) #19
  %9 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !6
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %12) #19
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #1 {
  %1 = load ptr, ptr @ipa_edge_args_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !6
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %4) #19
  store ptr %5, ptr @ipa_edge_args_vector, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %7) #19
  %9 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !6
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11

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
define internal fastcc nonnull ptr @VEC_ipa_edge_args_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ipa_get_cs_argument_count(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !89
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ipa_get_ith_jump_func(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ipa_edge_args, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_jump_func, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_lattice_from_jfunc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr %2, align 8, !tbaa !92
  switch i32 %5, label %73 [
    i32 1, label %6
    i32 3, label %10
    i32 4, label %42
  ]

6:                                                ; preds = %3
  store i32 1, ptr %1, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !52
  br label %74

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef %0, i32 noundef %13) #19
  %15 = load i32, ptr %14, align 8, !tbaa !41
  store i32 %15, ptr %1, align 8, !tbaa !41
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %74

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ipcp_lattice, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds i8, ptr %2, i64 20
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %22 = icmp eq i32 %21, 116
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !6
  %27 = icmp eq i32 %26, 5
  %28 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %29 = select i1 %27, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), ptr %28
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = load ptr, ptr %11, align 8, !tbaa !12
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
  store i32 0, ptr %1, align 8, !tbaa !41
  br label %40

40:                                               ; preds = %39, %36
  %41 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr %34, ptr %41, align 8, !tbaa !52
  br label %74

42:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %43 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1
  %44 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !12
  %46 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef %0, i32 noundef %45) #19
  %47 = load i32, ptr %46, align 8, !tbaa !41
  store i32 %47, ptr %1, align 8, !tbaa !41
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ipcp_lattice, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 121
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, ptr %1, align 8, !tbaa !41
  br label %72

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  store ptr %58, ptr %4, align 8, !tbaa !10
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = load i64, ptr %43, align 8, !tbaa !12
  %62 = getelementptr inbounds %struct.ipa_jump_func, ptr %2, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !12
  %64 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %4, ptr noundef %60, i64 noundef %61, ptr noundef %63, i8 noundef zeroext 0) #18
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  store i32 0, ptr %1, align 8, !tbaa !41
  %67 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr null, ptr %67, align 8, !tbaa !52
  br label %72

68:                                               ; preds = %56
  %69 = load ptr, ptr %4, align 8, !tbaa !10
  %70 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %69) #18
  %71 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !52
  br label %72

72:                                               ; preds = %66, %68, %42, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %74

73:                                               ; preds = %3
  store i32 0, ptr %1, align 8, !tbaa !41
  br label %74

74:                                               ; preds = %40, %10, %72, %73, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_lattice_meet(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = load i32, ptr %1, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 8, !tbaa !41
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3
  store i32 0, ptr %0, align 8, !tbaa !41
  br label %31

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  store i32 %7, ptr %0, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.ipcp_lattice, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !52
  br label %31

16:                                               ; preds = %10
  %17 = icmp eq i32 %7, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  store i32 %4, ptr %0, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !52
  br label %31

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @ipcp_lats_are_equal(ptr noundef nonnull %1, ptr noundef nonnull %2) #19, !range !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, ptr %0, align 8, !tbaa !41
  br label %31

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 8, !tbaa !41
  store i32 %27, ptr %0, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !52
  br label %31

31:                                               ; preds = %26, %25, %18, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_lattice_changed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8, !tbaa !41
  %4 = load i32, ptr %1, align 8, !tbaa !41
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef nonnull %0) #19, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @ipcp_lats_are_equal(ptr noundef nonnull %0, ptr noundef nonnull %1) #19, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %13

13:                                               ; preds = %9, %6, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %6 ], [ 0, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_push_func_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !30
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 5
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @ipa_push_func_to_list_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #18
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !94
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !10
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
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !94
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !10, !nonnull !96, !noundef !96
  store i32 %0, ptr %9, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef readnone %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !97
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  store ptr %6, ptr @ipa_node_params_vector, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !98
  %7 = load i32, ptr %0, align 8, !tbaa !94
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
define internal fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !99
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !10
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
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !99
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !10, !nonnull !96, !noundef !96
  store i32 %0, ptr %9, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef readnone %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !97
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  store ptr %6, ptr @ipa_edge_args_vector, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !101
  %7 = load i32, ptr %0, align 8, !tbaa !99
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
define internal fastcc zeroext i8 @ipcp_lats_are_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %0) #19, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %1) #19, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 226, ptr noundef nonnull @.str.6) #18
  br label %9

9:                                                ; preds = %5, %8
  %10 = load i32, ptr %0, align 8, !tbaa !41
  %11 = load i32, ptr %1, align 8, !tbaa !41
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ipcp_lattice, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = tail call i32 @operand_equal_p(ptr noundef %15, ptr noundef %17, i32 noundef 0) #18
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi i8 [ 0, %9 ], [ %20, %13 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipcp_lat_is_const(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !41
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ipa_push_func_to_list_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ipa_get_param(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %4, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ipcp_node_modifiable_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(ptr noundef %0) #19
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ipcp_const_param_count(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !30
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %5) #19
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1, %26
  %9 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %10 = phi i32 [ %28, %26 ], [ 0, %1 ]
  %11 = tail call fastcc ptr @ipcp_get_lattice(ptr noundef nonnull %5, i32 noundef %10) #19
  %12 = tail call fastcc ptr @ipa_get_param(ptr noundef nonnull %5, i32 noundef %10) #19
  %13 = tail call fastcc zeroext i8 @ipcp_lat_is_insertable(ptr noundef %11) #19, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %8
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %12) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !12
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
  br i1 %29, label %30, label %8, !llvm.loop !104

30:                                               ; preds = %26, %1
  %31 = phi i32 [ 0, %1 ], [ %27, %26 ]
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i64 @ipcp_estimate_growth(ptr noundef %0) #19, !range !34
  %3 = trunc i64 %2 to i32
  %4 = mul i32 %3, 1000
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @cgraph_node_name(ptr noundef %0) #18
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.34, ptr noundef %10) #19
  br label %72

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %12, %37
  %17 = phi ptr [ %41, %37 ], [ %14, %12 ]
  %18 = phi i64 [ %39, %37 ], [ 1, %12 ]
  %19 = phi i32 [ %38, %37 ], [ 1, %12 ]
  %20 = load ptr, ptr @dead_nodes, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !30
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %24) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %17) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i64, ptr %17, align 8, !tbaa !50
  %32 = add nsw i64 %31, %18
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !105
  %35 = add i32 %19, 1
  %36 = add i32 %35, %34
  br label %37

37:                                               ; preds = %16, %27, %30
  %38 = phi i32 [ %19, %16 ], [ %19, %27 ], [ %36, %30 ]
  %39 = phi i64 [ %18, %16 ], [ %18, %27 ], [ %32, %30 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !106

43:                                               ; preds = %37
  %44 = mul nsw i64 %39, 1000
  br label %45

45:                                               ; preds = %43, %12
  %46 = phi i32 [ 1, %12 ], [ %38, %43 ]
  %47 = phi i64 [ 1000, %12 ], [ %44, %43 ]
  %48 = load i64, ptr @max_count, align 8, !tbaa !16
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
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @cgraph_node_name(ptr noundef %0) #18
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !26
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
define internal fastcc i64 @ipcp_estimate_growth(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %0) #19, !range !15
  %3 = xor i8 %2, 1
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %23, %19 ], [ %5, %1 ]
  %9 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %10 = phi i8 [ %20, %19 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !38
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
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !107

25:                                               ; preds = %19, %1
  %26 = phi i8 [ %3, %1 ], [ %20, %19 ]
  %27 = phi i32 [ 0, %1 ], [ %21, %19 ]
  %28 = icmp eq i8 %26, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @ipa_node_params_vector, align 8
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %32 = load i32, ptr %31, align 8, !tbaa !30
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
  %44 = load ptr, ptr %0, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.tree_function_decl, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !12
  %47 = tail call ptr @gimple_default_def(ptr noundef %46, ptr noundef %40) #18
  %48 = icmp eq ptr %47, null
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %37, %49
  br label %51

51:                                               ; preds = %43, %36
  %52 = phi i32 [ %37, %36 ], [ %50, %43 ]
  %53 = load i32, ptr %39, align 8, !tbaa !41
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = add nsw i32 %52, %55
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, %34
  br i1 %58, label %59, label %36, !llvm.loop !108

59:                                               ; preds = %51, %29
  %60 = phi i32 [ 0, %29 ], [ %56, %51 ]
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !26
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
define internal fastcc noundef zeroext i8 @ipcp_need_redirect_p(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef %11) #19
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %11, ptr %12
  %15 = load ptr, ptr @ipa_node_params_vector, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 24
  %17 = load i32, ptr %16, align 8, !tbaa !30
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
  %27 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %26) #19, !range !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %23, align 4, !tbaa !57
  %31 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %22, i32 noundef %30) #19
  %32 = tail call fastcc ptr @ipa_get_ith_jump_func(ptr noundef nonnull %31, i32 noundef %25) #19
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %24
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, %19
  br i1 %37, label %38, label %24, !llvm.loop !109

38:                                               ; preds = %29, %35, %9, %4, %1
  %39 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %9 ], [ 1, %29 ], [ 0, %35 ]
  ret i8 %39
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_replace_map_p_gc_alloc() unnamed_addr #1 {
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
define internal fastcc ptr @ipcp_create_replace_map(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #18
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call fastcc ptr @build_const_val(ptr noundef %1, ptr noundef %5) #19
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 18, i64 1, ptr nonnull %7)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef nonnull %0, i32 noundef 0) #18
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %13 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 12, i64 1, ptr %12)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_generic_expr(ptr noundef %14, ptr noundef %6, i32 noundef 0) #18
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %9, %2
  store ptr %0, ptr %3, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct.ipa_replace_map, ptr %3, i64 0, i32 1
  store ptr %6, ptr %18, align 8, !tbaa !112
  %19 = getelementptr inbounds %struct.ipa_replace_map, ptr %3, i64 0, i32 2
  store i8 1, ptr %19, align 8, !tbaa !113
  %20 = getelementptr inbounds %struct.ipa_replace_map, ptr %3, i64 0, i32 3
  store i8 0, ptr %20, align 1, !tbaa !114
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_replace_map_p_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_ipa_replace_map_p_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @VEC_ipa_replace_map_p_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_cgraph_edge_p_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_cgraph_edge_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 8, !tbaa !115
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !115
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_create_virtual_clone(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_free(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_init_cloned_node(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @ipa_check_create_node_params() #19
  tail call void @ipa_initialize_node_params(ptr noundef %1) #18
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !30
  %6 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %3, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %6, i64 0, i32 3
  store ptr %0, ptr %7, align 8, !tbaa !117
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
define internal fastcc void @ipcp_update_callgraph() unnamed_addr #1 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %63, label %3

3:                                                ; preds = %0, %59
  %4 = phi ptr [ %61, %59 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 32
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @ipcp_node_is_clone(ptr noundef nonnull %4) #19, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %14 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef nonnull %4) #19
  %15 = load ptr, ptr @ipa_node_params_vector, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 24
  %17 = load i32, ptr %16, align 8, !tbaa !30
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
  %28 = load ptr, ptr %14, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = tail call ptr @gimple_default_def(ptr noundef %30, ptr noundef %24) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27, %21
  %34 = load i32, ptr %23, align 8, !tbaa !41
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %27
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %22) #18
  br label %38

38:                                               ; preds = %36, %33
  %39 = add nuw nsw i32 %22, 1
  %40 = icmp eq i32 %39, %19
  br i1 %40, label %41, label %21, !llvm.loop !118

41:                                               ; preds = %38, %12
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !119
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %41, %57
  %46 = phi ptr [ %48, %57 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !120
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = tail call fastcc zeroext i8 @ipcp_node_is_clone(ptr noundef %50) #19, !range !15
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
  br i1 %58, label %59, label %45, !llvm.loop !121

59:                                               ; preds = %57, %41, %3, %9
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %3, !llvm.loop !122

63:                                               ; preds = %59, %0
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ipcp_update_profiling() unnamed_addr #5 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %0, %42
  %4 = phi ptr [ %44, %42 ], [ %1, %0 ]
  %5 = tail call fastcc zeroext i8 @ipcp_node_is_clone(ptr noundef nonnull %4) #19, !range !15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef nonnull %4) #19
  %9 = tail call fastcc i64 @ipcp_get_node_scale(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 23
  %11 = load i64, ptr %10, align 8, !tbaa !18
  %12 = mul nsw i64 %11, %9
  %13 = sdiv i64 %12, 10000
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 23
  store i64 %13, ptr %14, align 8, !tbaa !18
  %15 = sub nsw i64 10000, %9
  %16 = load i64, ptr %10, align 8, !tbaa !18
  %17 = mul nsw i64 %16, %15
  %18 = sdiv i64 %17, 10000
  store i64 %18, ptr %10, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %7, %22
  %23 = phi ptr [ %28, %22 ], [ %20, %7 ]
  %24 = load i64, ptr %23, align 8, !tbaa !50
  %25 = mul nsw i64 %24, %9
  %26 = sdiv i64 %25, 10000
  store i64 %26, ptr %23, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %23, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !123

30:                                               ; preds = %22, %7
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %34
  %35 = phi ptr [ %40, %34 ], [ %32, %30 ]
  %36 = load i64, ptr %35, align 8, !tbaa !50
  %37 = mul nsw i64 %36, %15
  %38 = sdiv i64 %37, 10000
  store i64 %38, ptr %35, align 8, !tbaa !50
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %35, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34, !llvm.loop !124

42:                                               ; preds = %34, %30, %3
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %3, !llvm.loop !125

46:                                               ; preds = %42, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ipcp_lat_is_insertable(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !41
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ipcp_get_orig_node(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !30
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %2, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_const_val(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @ipcp_lat_is_const(ptr noundef %0) #19, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 567, ptr noundef nonnull @.str.6) #18
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.ipcp_lattice, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !12
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
define internal fastcc void @VEC_ipa_replace_map_p_gc_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ipa_replace_map_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 8, !tbaa !126
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !126
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_space(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !128
  %6 = load i32, ptr %0, align 8, !tbaa !126
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
define internal fastcc zeroext i8 @ipcp_node_is_clone(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc ptr @ipcp_get_orig_node(ptr noundef %0) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_func_profile_counts(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %12, %4 ], [ %2, %1 ]
  %6 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 23
  %9 = load i64, ptr %8, align 8, !tbaa !18
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %9) #19
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !129

14:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_print_call_profile_counts(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %25, %23 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %21, %9 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call ptr @cgraph_node_name(ptr noundef %12) #18
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call ptr @cgraph_node_name(ptr noundef %15) #18
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %13, ptr noundef %16) #19
  %18 = load i64, ptr %10, align 8, !tbaa !50
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %18) #19
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9, !llvm.loop !130

23:                                               ; preds = %9, %4
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %4, !llvm.loop !131

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare void @ipa_register_cgraph_hooks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_init_stage() unnamed_addr #1 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %71, label %6

3:                                                ; preds = %13
  %4 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %17

6:                                                ; preds = %0, %13
  %7 = phi ptr [ %15, %13 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 27
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call fastcc void @ipcp_analyze_node(ptr noundef nonnull %7) #19
  br label %13

13:                                               ; preds = %6, %12
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %3, label %6, !llvm.loop !132

17:                                               ; preds = %3, %67
  %18 = phi ptr [ %69, %67 ], [ %4, %3 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %67, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr @flag_lto, align 4
  %29 = load i32, ptr @flag_whopr, align 4
  br label %30

30:                                               ; preds = %27, %61
  %31 = phi i32 [ %62, %61 ], [ %29, %27 ]
  %32 = phi i32 [ %63, %61 ], [ %28, %27 ]
  %33 = phi ptr [ %65, %61 ], [ %25, %27 ]
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 32
  %39 = icmp ne i16 %38, 0
  %40 = icmp ne i32 %32, 0
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp ne i32 %31, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %30
  tail call void @ipa_count_arguments(ptr noundef nonnull %33) #18
  %45 = load ptr, ptr @ipa_edge_args_vector, align 8
  %46 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !57
  %48 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_index(ptr noundef %45, i32 noundef %47) #19
  %49 = tail call fastcc i32 @ipa_get_cs_argument_count(ptr noundef nonnull %48) #19
  %50 = load ptr, ptr @ipa_node_params_vector, align 8
  %51 = load ptr, ptr %34, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %51, i64 0, i32 24
  %53 = load i32, ptr %52, align 8, !tbaa !30
  %54 = tail call fastcc ptr @VEC_ipa_node_params_t_base_index(ptr noundef %50, i32 noundef %53) #19
  %55 = tail call fastcc i32 @ipa_get_param_count(ptr noundef nonnull %54) #19
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %58, label %57

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
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %30, !llvm.loop !133

67:                                               ; preds = %61, %23, %17
  %68 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %17, !llvm.loop !134

71:                                               ; preds = %67, %0, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipcp_analyze_node(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 9
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7

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
define internal fastcc void @ipa_set_called_with_variable_arg(ptr nocapture noundef %0) unnamed_addr #13 {
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i8 0, i8 2}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !17, i64 288}
!19 = !{!"cgraph_node", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !20, i64 144, !22, i64 184, !23, i64 224, !24, i64 232, !25, i64 256, !17, i64 288, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 309, !7, i64 309}
!20 = !{!"cgraph_local_info", !11, i64 0, !21, i64 8, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32}
!21 = !{!"inline_summary", !17, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!22 = !{!"cgraph_global_info", !17, i64 0, !17, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36}
!23 = !{!"cgraph_rtl_info", !7, i64 0}
!24 = !{!"cgraph_clone_info", !11, i64 0, !11, i64 8, !11, i64 16}
!25 = !{!"cgraph_thunk_info", !17, i64 0, !17, i64 8, !11, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!26 = !{!19, !7, i64 160}
!27 = distinct !{!27, !14}
!28 = !{!29, !7, i64 8}
!29 = !{!"param_info", !11, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !11, i64 24}
!30 = !{!19, !7, i64 296}
!31 = !{i64 -2147483648, i64 2147483648}
!32 = !{!19, !11, i64 128}
!33 = distinct !{!33, !14}
!34 = !{i64 0, i64 2147483648}
!35 = !{!19, !11, i64 0}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = !{!39, !11, i64 8}
!39 = !{!"cgraph_edge", !17, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !40, i64 88, !7, i64 90, !7, i64 90, !7, i64 90}
!40 = !{!"short", !8, i64 0}
!41 = !{!42, !7, i64 0}
!42 = !{!"ipcp_lattice", !7, i64 0, !11, i64 8}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = !{!39, !11, i64 16}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = !{!39, !17, i64 0}
!51 = distinct !{!51, !14}
!52 = !{!42, !11, i64 8}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = !{!39, !7, i64 84}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = !{!64, !7, i64 0}
!64 = !{!"ipa_node_params", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !17, i64 32, !7, i64 40, !7, i64 40, !7, i64 40, !7, i64 40}
!65 = !{!64, !11, i64 8}
!66 = !{!67, !11, i64 8}
!67 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!68 = !{!69, !11, i64 0}
!69 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!70 = !{!71, !11, i64 56}
!71 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !17, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!72 = !{!69, !11, i64 8}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = !{!76, !11, i64 0}
!76 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!77 = !{!76, !11, i64 8}
!78 = !{!76, !11, i64 16}
!79 = !{!80, !11, i64 0}
!80 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!81 = !{i32 0, i32 256}
!82 = !{!80, !11, i64 16}
!83 = !{!71, !7, i64 96}
!84 = !{!85, !11, i64 0}
!85 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!86 = !{!87, !11, i64 0}
!87 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!88 = !{!64, !17, i64 32}
!89 = !{!90, !7, i64 0}
!90 = !{!"ipa_edge_args", !7, i64 0, !11, i64 8}
!91 = !{!90, !11, i64 8}
!92 = !{!93, !7, i64 0}
!93 = !{!"ipa_jump_func", !7, i64 0, !8, i64 8}
!94 = !{!95, !7, i64 0}
!95 = !{!"VEC_ipa_node_params_t_base", !7, i64 0, !7, i64 4, !8, i64 8}
!96 = !{}
!97 = !{i32 0, i32 2}
!98 = !{!95, !7, i64 4}
!99 = !{!100, !7, i64 0}
!100 = !{!"VEC_ipa_edge_args_t_base", !7, i64 0, !7, i64 4, !8, i64 8}
!101 = !{!100, !7, i64 4}
!102 = !{!103, !11, i64 16}
!103 = !{!"ipa_param_descriptor", !42, i64 0, !11, i64 16, !7, i64 24}
!104 = distinct !{!104, !14}
!105 = !{!39, !7, i64 80}
!106 = distinct !{!106, !14}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14}
!110 = !{!111, !11, i64 0}
!111 = !{!"ipa_replace_map", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 17}
!112 = !{!111, !11, i64 8}
!113 = !{!111, !8, i64 16}
!114 = !{!111, !8, i64 17}
!115 = !{!116, !7, i64 0}
!116 = !{!"VEC_cgraph_edge_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
!117 = !{!64, !11, i64 24}
!118 = distinct !{!118, !14}
!119 = !{!19, !11, i64 16}
!120 = !{!39, !11, i64 32}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = !{!127, !7, i64 0}
!127 = !{!"VEC_ipa_replace_map_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
!128 = !{!127, !7, i64 4}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14}
