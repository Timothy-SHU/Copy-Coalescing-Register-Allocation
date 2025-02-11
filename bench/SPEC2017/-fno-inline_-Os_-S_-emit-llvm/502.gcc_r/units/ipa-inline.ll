; ModuleID = 'ipa-inline.c'
source_filename = "ipa-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.ipa_node_params = type { i32, ptr, ptr, ptr, i64, i8 }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.ipa_edge_args = type { i32, ptr }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }

@cgraph_new_nodes = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"ipa-inline.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@overall_size = internal unnamed_addr global i32 0, align 4
@nfunctions_inlined = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"einline\00", align 1
@pass_early_inline = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @cgraph_gate_early_inlining, ptr @cgraph_early_inlining, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"einline_ipa\00", align 1
@pass_ipa_early_inline = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.3, ptr @cgraph_gate_ipa_early_inlining, ptr null, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 128 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"inline_param\00", align 1
@pass_inline_parameters = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @compute_inline_parameters_for_current, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@pass_ipa_inline = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.5, ptr null, ptr @cgraph_decide_inlining, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 256, i32 385 }, ptr @inline_generate_summary, ptr @inline_write_summary, ptr @inline_read_summary, ptr null, ptr @lto_ipa_fixup_call_notes, i32 0, ptr @inline_transform, ptr null }, align 8
@order = internal global ptr null, align 8
@gt_ggc_r_gt_ipa_inline_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @order, i64 1, i64 8, ptr @gt_ggc_ma_order, ptr @gt_pch_na_order }, %struct.ggc_root_tab zeroinitializer], align 16
@flag_early_inlining = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Iterations: %i\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"flatten\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Flattening %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Considering to always inline inline candidate %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Not inlining: recursive call.\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Not inlining: %s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Not inlining: SSA form does not match.\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Not inlining: Function body no longer available.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Considering inline candidate %s.\0A\00", align 1
@flag_inline_functions = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"Not inlining: code size would grow by %i.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Not inlining: %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Not inlining: %s.\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Hit cycle in %s, switching to always inline only.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Not inlining %s into %s to avoid cycle.\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c" Inlining %s into %s.\0A\00", align 1
@ncalls_inlined = internal unnamed_addr global i32 0, align 4
@flag_indirect_inlining = external local_unnamed_addr global i32, align 4
@flag_inline_small_functions = external local_unnamed_addr global i32, align 4
@in_lto_p = external local_unnamed_addr global i8, align 1
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"Analyzing function body size: %s\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@eni_time_weights = external global %struct.eni_weights_d, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"  freq:%6i size:%3i time:%3i \00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    Likely eliminated\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Overall function body time: %i-%i size: %i-%i\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"With function call overhead time: %i-%i size: %i-%i\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@max_count = internal unnamed_addr global i64 0, align 8
@max_benefit = internal unnamed_addr global i64 0, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [48 x i8] c"\0ADeciding on inlining.  Starting with size %i.\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\0AInlining always_inline functions:\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\0AConsidering %s size:%i (always inline)\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c" Inlined into %s which now has size %i.\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c" Inlined for a net change of %+i size.\0A\00", align 1
@flag_inline_functions_called_once = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [37 x i8] c"\0ADeciding on functions called once:\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"\0AConsidering %s size %i.\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c" Called once from %s %i insns.\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c" Inlined into %s which now has %i size for a net change of %+i size.\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c" Not inlining: %s.\0A\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"\0AInlined %i calls, eliminated %i functions, size %i turned to %i size.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"\0ADeciding on smaller functions:\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"\0AConsidering %s with %i size\0A\00", align 1
@.str.40 = private unnamed_addr constant [138 x i8] c" to be inlined into %s in %s:%i\0A Estimated growth after inlined into all callees is %+i insns.\0A Estimated badness is %i, frequency %.2f.\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c" Called %ldx\0A\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c" inline_failed:Recursive inlining performed only for function itself.\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c" inline_failed:%s.\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c" Not inlining into %s:%s.\0A\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c" Inlined into %s which now has size %i and self time %i,net change of %+i.\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"New minimal size reached: %i\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Inlining failed: %s\0A\00", align 1
@flag_guess_branch_prob = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [39 x i8] c"  Performing recursive inlining on %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"   maximal depth reached\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"   Not inlining cold call\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"   Probability of edge is too small\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"   Inlining call of depth %i\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c" called approx. %.2f times per call\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"    Recursive inlining growth limit met.\0A\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"\0A   Inlined %i times, body grown from size %i to %i, time %i to %i\0A\00", align 1
@lookup_recursive_calls.priority = internal unnamed_addr global i32 0, align 4
@ipa_node_params_vector = external local_unnamed_addr global ptr, align 8
@cgraph_max_uid = external local_unnamed_addr global i32, align 4
@ipa_edge_args_vector = external local_unnamed_addr global ptr, align 8
@cgraph_edge_max_uid = external local_unnamed_addr global i32, align 4
@flag_ipa_cp = external local_unnamed_addr global i32, align 4
@warn_inline = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_clone_inlined_nodes(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %60, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %5
  %14 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %7) #17, !range !22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = icmp ne ptr %18, null
  %20 = load ptr, ptr @cgraph_new_nodes, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %52, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 19, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 257, ptr noundef nonnull @.str.1) #18
  %28 = load ptr, ptr %6, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %7, %23 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 27
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 32
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 19, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !25
  %38 = load i32, ptr @overall_size, align 4, !tbaa !26
  %39 = sub nsw i32 %38, %37
  store i32 %39, ptr @overall_size, align 4, !tbaa !26
  %40 = load i32, ptr @nfunctions_inlined, align 4, !tbaa !26
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @nfunctions_inlined, align 4, !tbaa !26
  br label %42

42:                                               ; preds = %35, %29
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 18, i32 2
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, -3
  store i8 %45, ptr %43, align 8
  %46 = load ptr, ptr %6, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %50 = load i16, ptr %49, align 8, !tbaa !28
  %51 = zext i16 %50 to i32
  tail call fastcc void @update_noncloned_frequencies(ptr noundef %46, i32 noundef %48, i32 noundef %51) #17
  br label %60

52:                                               ; preds = %16, %13, %5
  %53 = load i64, ptr %0, align 8, !tbaa !29
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !27
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %57 = load i16, ptr %56, align 8, !tbaa !28
  %58 = zext i16 %57 to i32
  %59 = tail call ptr @cgraph_clone_node(ptr noundef nonnull %7, i64 noundef %53, i32 noundef %55, i32 noundef %58, i8 noundef zeroext %2, ptr noundef null) #18
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %0, ptr noundef %59) #18
  br label %60

60:                                               ; preds = %42, %52, %3
  %61 = phi i8 [ %1, %52 ], [ 0, %42 ], [ 0, %3 ]
  %62 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %63, i64 0, i32 19, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !24
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 19, i32 2
  %70 = select i1 %66, ptr %63, ptr %65
  store ptr %70, ptr %69, align 8, !tbaa !24
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %63, i64 0, i32 19, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !31
  %73 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %63) #17
  %74 = load i64, ptr %73, align 8, !tbaa !32
  %75 = add nsw i64 %74, %72
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 19, i32 1
  store i64 %75, ptr %76, align 8, !tbaa !31
  %77 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %68) #17
  %78 = load i64, ptr %77, align 8, !tbaa !32
  %79 = add nsw i64 %78, %75
  %80 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 19
  %81 = load i64, ptr %80, align 8, !tbaa !33
  %82 = icmp slt i64 %81, %79
  br i1 %82, label %83, label %84

83:                                               ; preds = %60
  store i64 %79, ptr %80, align 8, !tbaa !33
  br label %84

84:                                               ; preds = %83, %60
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %84, %94
  %89 = phi ptr [ %96, %94 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.cgraph_edge, ptr %89, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !35
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %89, i8 noundef zeroext %61, i8 noundef zeroext %2) #17
  br label %94

94:                                               ; preds = %88, %93
  %95 = getelementptr inbounds %struct.cgraph_edge, ptr %89, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %88, !llvm.loop !36

98:                                               ; preds = %94, %84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %14 = load i8, ptr %13, align 8
  %15 = lshr i8 %14, 1
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  br label %18

18:                                               ; preds = %6, %12, %1
  %19 = phi i8 [ 0, %1 ], [ 1, %6 ], [ %17, %12 ]
  ret i8 %19
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_noncloned_frequencies(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = trunc i32 %2 to i16
  %10 = sext i32 %4 to i64
  br label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %6, %8 ], [ %31, %29 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !28
  %15 = add i16 %14, %9
  store i16 %15, ptr %13, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !27
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, %10
  %20 = sdiv i64 %19, 1000
  %21 = trunc i64 %20 to i32
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 100000)
  store i32 %22, ptr %16, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !35
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  tail call fastcc void @update_noncloned_frequencies(ptr noundef %28, i32 noundef %4, i32 noundef %2) #17
  br label %29

29:                                               ; preds = %11, %26
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11, !llvm.loop !39

33:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_clone_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @inline_summary(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_early_inlining() #6 {
  %1 = load i32, ptr @flag_early_inlining, align 4, !tbaa !26
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cgraph_early_inlining() #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !34
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #18
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.param_info, ptr %12, i64 9, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !40
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11, %35
  %17 = phi i32 [ %31, %35 ], [ 0, %11 ]
  %18 = phi i32 [ %30, %35 ], [ 0, %11 ]
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %19, i32 3, i32 2
  %21 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %2, i32 noundef %20, i32 noundef 0) #17, !range !22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr @timevar_enable, align 1, !tbaa !42
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @timevar_push_1(i32 noundef 47) #18
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr @current_function_decl, align 8, !tbaa !34
  %29 = tail call i32 @optimize_inline_calls(ptr noundef %28) #18
  %30 = or i32 %29, %18
  %31 = add nuw nsw i32 %17, 1
  %32 = load i8, ptr @timevar_enable, align 1, !tbaa !42
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  tail call void @timevar_pop_1(i32 noundef 47) #18
  br label %35

35:                                               ; preds = %34, %27
  %36 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.param_info, ptr %36, i64 9, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !40
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %16, label %40, !llvm.loop !43

40:                                               ; preds = %16, %35, %11
  %41 = phi i32 [ 0, %11 ], [ %30, %35 ], [ %18, %16 ]
  %42 = phi i32 [ 0, %11 ], [ %31, %35 ], [ %17, %16 ]
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.6, i32 noundef %42) #17
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr @cfun, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 20
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 33554432
  store i32 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %0, %7, %47
  %53 = phi i32 [ %41, %47 ], [ 0, %7 ], [ 0, %0 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_ipa_early_inlining() #6 {
  %1 = load i32, ptr @flag_early_inlining, align 4, !tbaa !26
  %2 = icmp eq i32 %1, 0
  %3 = load i8, ptr @in_lto_p, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !26
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr @flag_test_coverage, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr @profile_arc_flag, align 4, !tbaa !26
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %12, %0
  %17 = phi i8 [ 0, %0 ], [ 1, %6 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_inline_parameters(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1865, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, ptr @optimize, align 4, !tbaa !26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @estimated_stack_frame_size() #18
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %0) #17
  store i64 %13, ptr %14, align 8, !tbaa !32
  store i64 %13, ptr %2, align 8, !tbaa !33
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 1
  store i64 0, ptr %15, align 8, !tbaa !31
  %16 = load ptr, ptr %0, align 8, !tbaa !38
  %17 = tail call zeroext i8 @tree_inlinable_function_p(ptr noundef %16) #18
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = shl i8 %17, 3
  %21 = and i8 %20, 8
  %22 = and i8 %19, -9
  %23 = or disjoint i8 %22, %21
  store i8 %23, ptr %18, align 8
  %24 = and i8 %17, 1
  %25 = icmp ne i8 %24, 0
  %26 = and i8 %19, 16
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %37

29:                                               ; preds = %12
  %30 = load ptr, ptr %0, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 22
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 16
  %36 = or disjoint i8 %35, %23
  store i8 %36, ptr %18, align 8
  br label %37

37:                                               ; preds = %29, %12
  tail call fastcc void @estimate_function_body_sizes(ptr noundef nonnull %0) #17
  %38 = getelementptr inbounds %struct.inline_summary, ptr %14, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 3
  store i32 %39, ptr %40, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.inline_summary, ptr %14, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  store i32 %42, ptr %43, align 4, !tbaa !25
  ret i32 0
}

; Function Attrs: optsize
declare i64 @estimated_stack_frame_size() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_inlinable_function_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_function_body_sizes(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.21, ptr noundef %11) #17
  br label %13

13:                                               ; preds = %10, %1
  %14 = icmp eq ptr %5, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1793, ptr noundef nonnull @.str.1) #18
  %20 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %17, %15 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %23, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %103, label %42

31:                                               ; preds = %95, %42
  %32 = phi i32 [ %47, %42 ], [ %88, %95 ]
  %33 = phi i32 [ %46, %42 ], [ %73, %95 ]
  %34 = phi i64 [ %45, %42 ], [ %89, %95 ]
  %35 = phi i64 [ %44, %42 ], [ %72, %95 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = load ptr, ptr %24, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %98, label %42, !llvm.loop !54

42:                                               ; preds = %22, %31
  %43 = phi ptr [ %37, %31 ], [ %27, %22 ]
  %44 = phi i64 [ %35, %31 ], [ 0, %22 ]
  %45 = phi i64 [ %34, %31 ], [ 0, %22 ]
  %46 = phi i32 [ %33, %31 ], [ 0, %22 ]
  %47 = phi i32 [ %32, %31 ], [ 0, %22 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !38
  %49 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %48, ptr noundef %43) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %43) #17
  %50 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !22
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %31

52:                                               ; preds = %42, %95
  %53 = phi i64 [ %72, %95 ], [ %44, %42 ]
  %54 = phi i64 [ %89, %95 ], [ %45, %42 ]
  %55 = phi i32 [ %73, %95 ], [ %46, %42 ]
  %56 = phi i32 [ %88, %95 ], [ %47, %42 ]
  %57 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %58 = tail call i32 @estimate_num_insns(ptr noundef %57, ptr noundef nonnull @eni_size_weights) #18
  %59 = tail call i32 @estimate_num_insns(ptr noundef %57, ptr noundef nonnull @eni_time_weights) #18
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !26
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %60, ptr noundef nonnull @.str.22, i32 noundef %49, i32 noundef %58, i32 noundef %59) #17
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !34
  tail call void @print_gimple_stmt(ptr noundef %68, ptr noundef %57, i32 noundef 0, i32 noundef 0) #18
  br label %69

69:                                               ; preds = %66, %62, %52
  %70 = mul nsw i32 %59, %49
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %53, %71
  %73 = add nsw i32 %58, %55
  %74 = tail call fastcc zeroext i8 @likely_eliminated_by_inlining_p(ptr noundef %57) #17, !range !22
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = add nsw i32 %58, %56
  %78 = add nsw i64 %54, %71
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr @dump_flags, align 4, !tbaa !26
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr nonnull %79)
  br label %87

87:                                               ; preds = %76, %81, %85, %69
  %88 = phi i32 [ %77, %85 ], [ %77, %81 ], [ %77, %76 ], [ %56, %69 ]
  %89 = phi i64 [ %78, %85 ], [ %78, %81 ], [ %78, %76 ], [ %54, %69 ]
  %90 = icmp sgt i64 %72, -1
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1819, ptr noundef nonnull @.str.1) #18
  br label %92

92:                                               ; preds = %87, %91
  %93 = icmp sgt i32 %73, -1
  br i1 %93, label %95, label %94

94:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #18
  br label %95

95:                                               ; preds = %92, %94
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %96 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !22
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %52, label %31, !llvm.loop !55

98:                                               ; preds = %31
  %99 = add nsw i64 %35, 500
  %100 = sdiv i64 %99, 1000
  %101 = add nsw i64 %34, 500
  %102 = sdiv i64 %101, 1000
  br label %103

103:                                              ; preds = %98, %22
  %104 = phi i32 [ 0, %22 ], [ %32, %98 ]
  %105 = phi i32 [ 0, %22 ], [ %33, %98 ]
  %106 = phi i64 [ 0, %22 ], [ %102, %98 ]
  %107 = phi i64 [ 0, %22 ], [ %100, %98 ]
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = trunc i64 %107 to i32
  %112 = trunc i64 %106 to i32
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.24, i32 noundef %111, i32 noundef %112, i32 noundef %105, i32 noundef %104) #17
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, ptr @eni_time_weights, align 4, !tbaa !56
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %106, %116
  %118 = load i32, ptr @eni_size_weights, align 4, !tbaa !56
  %119 = add i32 %118, %104
  %120 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 19
  br i1 %124, label %130, label %125

125:                                              ; preds = %114
  %126 = tail call i32 @estimate_move_cost(ptr noundef nonnull %121) #18
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %117, %127
  %129 = add nsw i32 %126, %119
  br label %130

130:                                              ; preds = %125, %114
  %131 = phi i32 [ %119, %114 ], [ %129, %125 ]
  %132 = phi i64 [ %117, %114 ], [ %128, %125 ]
  %133 = load ptr, ptr %0, align 8, !tbaa !38
  %134 = getelementptr inbounds %struct.tree_decl_non_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !42
  %136 = icmp eq ptr %135, null
  br i1 %136, label %157, label %137

137:                                              ; preds = %130, %151
  %138 = phi ptr [ %155, %151 ], [ %135, %130 ]
  %139 = phi i64 [ %153, %151 ], [ %132, %130 ]
  %140 = phi i32 [ %152, %151 ], [ %131, %130 ]
  %141 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !42
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 19
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = tail call i32 @estimate_move_cost(ptr noundef nonnull %142) #18
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %139, %148
  %150 = add nsw i32 %147, %140
  br label %151

151:                                              ; preds = %137, %146
  %152 = phi i32 [ %140, %137 ], [ %150, %146 ]
  %153 = phi i64 [ %139, %137 ], [ %149, %146 ]
  %154 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !42
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %137, !llvm.loop !58

157:                                              ; preds = %151, %130
  %158 = phi i32 [ %131, %130 ], [ %152, %151 ]
  %159 = phi i64 [ %132, %130 ], [ %153, %151 ]
  %160 = tail call i64 @llvm.smin.i64(i64 %159, i64 1000000000)
  %161 = tail call i64 @llvm.smin.i64(i64 %107, i64 1000000000)
  %162 = trunc i64 %161 to i32
  %163 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %0) #17
  %164 = getelementptr inbounds %struct.inline_summary, ptr %163, i64 0, i32 3
  store i32 %162, ptr %164, align 8, !tbaa !44
  %165 = getelementptr inbounds %struct.inline_summary, ptr %163, i64 0, i32 1
  store i32 %105, ptr %165, align 8, !tbaa !46
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %167 = icmp eq ptr %166, null
  %168 = trunc i64 %160 to i32
  br i1 %167, label %171, label %169

169:                                              ; preds = %157
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %166, ptr noundef nonnull @.str.25, i32 noundef %162, i32 noundef %168, i32 noundef %105, i32 noundef %158) #17
  br label %171

171:                                              ; preds = %157, %169
  %172 = getelementptr inbounds %struct.inline_summary, ptr %163, i64 0, i32 4
  store i32 %168, ptr %172, align 4, !tbaa !59
  %173 = getelementptr inbounds %struct.inline_summary, ptr %163, i64 0, i32 2
  store i32 %158, ptr %173, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @compute_inline_parameters_for_current() #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !34
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #18
  %3 = tail call i32 @compute_inline_parameters(ptr noundef %2) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cgraph_decide_inlining() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !26
  %3 = sext i32 %2 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #18
  %5 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !34
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %5) #18
  %6 = load i8, ptr @in_lto_p, align 1, !tbaa !42
  %7 = icmp ne i8 %6, 0
  %8 = load i32, ptr @flag_indirect_inlining, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  tail call void @ipa_update_after_lto_read() #18
  br label %12

12:                                               ; preds = %11, %0
  store i64 0, ptr @max_count, align 8, !tbaa !61
  store i64 0, ptr @max_benefit, align 8, !tbaa !61
  %13 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %12, %61
  %16 = phi i64 [ %62, %61 ], [ 0, %12 ]
  %17 = phi ptr [ %65, %61 ], [ %13, %12 ]
  %18 = phi i32 [ %63, %61 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %15
  %24 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %17) #17
  %25 = getelementptr inbounds %struct.inline_summary, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 19, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !25
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1157, ptr noundef nonnull @.str.1) #18
  %31 = load i32, ptr %27, align 4, !tbaa !25
  %32 = load i64, ptr @max_count, align 8
  br label %33

33:                                               ; preds = %23, %30
  %34 = phi i64 [ %16, %23 ], [ %32, %30 ]
  %35 = phi i32 [ %26, %23 ], [ %31, %30 ]
  %36 = add nsw i32 %35, %18
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %33, %47
  %41 = phi i64 [ %48, %47 ], [ %34, %33 ]
  %42 = phi ptr [ %51, %47 ], [ %38, %33 ]
  %43 = phi i64 [ %49, %47 ], [ %34, %33 ]
  %44 = load i64, ptr %42, align 8, !tbaa !29
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 %44, ptr @max_count, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %40, %46
  %48 = phi i64 [ %41, %40 ], [ %44, %46 ]
  %49 = phi i64 [ %43, %40 ], [ %44, %46 ]
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %42, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %40, !llvm.loop !62

53:                                               ; preds = %47, %33
  %54 = phi i64 [ %34, %33 ], [ %48, %47 ]
  %55 = load i64, ptr @max_benefit, align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.inline_summary, ptr %24, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !59
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i64 %58, ptr @max_benefit, align 8, !tbaa !61
  br label %61

61:                                               ; preds = %53, %60, %15
  %62 = phi i64 [ %16, %15 ], [ %54, %60 ], [ %54, %53 ]
  %63 = phi i32 [ %18, %15 ], [ %36, %60 ], [ %36, %53 ]
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %15, !llvm.loop !63

67:                                               ; preds = %61
  %68 = icmp ne i64 %62, 0
  %69 = load i8, ptr @in_lto_p, align 1, !tbaa !42
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i1 %68, i1 false
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load ptr, ptr @profile_info, align 8, !tbaa !34
  %74 = icmp ne ptr %73, null
  %75 = load i32, ptr @flag_branch_probabilities, align 4
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1167, ptr noundef nonnull @.str.1) #18
  br label %79

79:                                               ; preds = %12, %67, %72, %78
  %80 = phi i32 [ %63, %67 ], [ %63, %72 ], [ %63, %78 ], [ 0, %12 ]
  store i32 %80, ptr @overall_size, align 4, !tbaa !26
  %81 = tail call i32 @cgraph_postorder(ptr noundef %4) #18
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %82, ptr noundef nonnull @.str.27, i32 noundef %80) #17
  br label %86

86:                                               ; preds = %84, %79
  %87 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86, %89
  %90 = phi ptr [ %93, %89 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %90, i64 0, i32 16
  store ptr null, ptr %91, align 8, !tbaa !64
  %92 = getelementptr inbounds %struct.cgraph_node, ptr %90, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %89, !llvm.loop !65

95:                                               ; preds = %89, %86
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 35, i64 1, ptr nonnull %96)
  br label %100

100:                                              ; preds = %98, %95
  %101 = icmp slt i32 %81, 1
  %102 = zext i32 %81 to i64
  br i1 %101, label %209, label %106

103:                                              ; preds = %203
  %104 = icmp eq i8 %204, 0
  %105 = or i1 %104, %101
  br i1 %105, label %209, label %206

106:                                              ; preds = %100, %206
  %107 = phi i64 [ %207, %206 ], [ %102, %100 ]
  %108 = phi i8 [ %208, %206 ], [ 0, %100 ]
  %109 = add nsw i64 %107, -1
  %110 = getelementptr inbounds ptr, ptr %4, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !34
  %112 = load ptr, ptr %111, align 8, !tbaa !38
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %112, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !42
  %115 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %114) #18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %106
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = tail call ptr @cgraph_node_name(ptr noundef nonnull %111) #18
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %118, ptr noundef nonnull @.str.8, ptr noundef %121) #17
  br label %123

123:                                              ; preds = %120, %117
  %124 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef nonnull %111, i32 noundef 4, i32 noundef 0) #17, !range !22
  br label %125

125:                                              ; preds = %123, %106
  %126 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 18, i32 2
  %127 = load i8, ptr %126, align 8
  %128 = and i8 %127, 16
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %203, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = tail call ptr @cgraph_node_name(ptr noundef nonnull %111) #18
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 19, i32 4
  %136 = load i32, ptr %135, align 4, !tbaa !25
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %131, ptr noundef nonnull @.str.29, ptr noundef %134, i32 noundef %136) #17
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32, ptr @overall_size, align 4, !tbaa !26
  %140 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = icmp eq ptr %141, null
  br i1 %142, label %195, label %146

143:                                              ; preds = %182
  %144 = load ptr, ptr %140, align 8, !tbaa !34
  %145 = icmp eq ptr %144, null
  br i1 %145, label %195, label %185

146:                                              ; preds = %138, %182
  %147 = phi ptr [ %150, %182 ], [ %141, %138 ]
  %148 = phi i8 [ %183, %182 ], [ %108, %138 ]
  %149 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !21
  %151 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 9
  %152 = load i32, ptr %151, align 8, !tbaa !35
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %182, label %154

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 14
  %156 = load i8, ptr %155, align 2
  %157 = and i8 %156, 2
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !30
  %162 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %161, ptr noundef %163, ptr noundef nonnull %151) #17, !range !22
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %159
  %167 = tail call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %147) #18
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %166
  %170 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %147, i8 noundef zeroext 1, ptr noundef null) #17
  %171 = icmp eq i8 %170, 0
  %172 = select i1 %171, i8 %148, i8 1
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %174 = icmp eq ptr %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr %160, align 8, !tbaa !30
  %177 = tail call ptr @cgraph_node_name(ptr noundef %176) #18
  %178 = load ptr, ptr %160, align 8, !tbaa !30
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %178, i64 0, i32 19, i32 4
  %180 = load i32, ptr %179, align 4, !tbaa !25
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %173, ptr noundef nonnull @.str.30, ptr noundef %177, i32 noundef %180) #17
  br label %182

182:                                              ; preds = %169, %175, %166, %159, %146, %154
  %183 = phi i8 [ %148, %154 ], [ %148, %159 ], [ %172, %175 ], [ %172, %169 ], [ %148, %166 ], [ %148, %146 ]
  %184 = icmp eq ptr %150, null
  br i1 %184, label %143, label %146, !llvm.loop !66

185:                                              ; preds = %143, %191
  %186 = phi ptr [ %193, %191 ], [ %144, %143 ]
  %187 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 9
  %188 = load i32, ptr %187, align 8, !tbaa !35
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  store i32 12, ptr %187, align 8, !tbaa !35
  br label %191

191:                                              ; preds = %185, %190
  %192 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !34
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %185, !llvm.loop !67

195:                                              ; preds = %191, %138, %143
  %196 = phi i8 [ %183, %143 ], [ %108, %138 ], [ %183, %191 ]
  %197 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32, ptr @overall_size, align 4, !tbaa !26
  %201 = sub nsw i32 %200, %139
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %197, ptr noundef nonnull @.str.31, i32 noundef %201) #17
  br label %203

203:                                              ; preds = %195, %199, %125
  %204 = phi i8 [ %108, %125 ], [ %196, %199 ], [ %196, %195 ]
  %205 = icmp sgt i64 %107, 1
  br i1 %205, label %206, label %103

206:                                              ; preds = %203, %103
  %207 = phi i64 [ %109, %203 ], [ %102, %103 ]
  %208 = phi i8 [ %204, %203 ], [ 0, %103 ]
  br label %106, !llvm.loop !68

209:                                              ; preds = %103, %100
  tail call fastcc void @cgraph_decide_inlining_of_small_functions() #17
  %210 = load i32, ptr @flag_inline_functions_called_once, align 4, !tbaa !26
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %320, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %212
  %216 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 36, i64 1, ptr nonnull %213)
  br label %217

217:                                              ; preds = %215, %212
  br i1 %101, label %320, label %218

218:                                              ; preds = %217, %318
  %219 = phi i64 [ %220, %318 ], [ %102, %217 ]
  %220 = add nsw i64 %219, -1
  %221 = getelementptr inbounds ptr, ptr %4, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !34
  %223 = getelementptr inbounds %struct.cgraph_node, ptr %222, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !13
  %225 = icmp eq ptr %224, null
  br i1 %225, label %318, label %226

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !21
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %318

230:                                              ; preds = %226
  %231 = call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %222) #17, !range !22
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %318, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.cgraph_node, ptr %222, i64 0, i32 18, i32 2
  %235 = load i8, ptr %234, align 8
  %236 = and i8 %235, 8
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %318, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 9
  %240 = load i32, ptr %239, align 8, !tbaa !35
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %318, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !30
  %245 = icmp eq ptr %244, %222
  br i1 %245, label %318, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.cgraph_node, ptr %244, i64 0, i32 19, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !24
  %249 = icmp eq ptr %248, %222
  br i1 %249, label %318, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.cgraph_edge, ptr %224, i64 0, i32 14
  %252 = load i8, ptr %251, align 2
  %253 = and i8 %252, 2
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %318

255:                                              ; preds = %250
  %256 = load ptr, ptr %222, align 8, !tbaa !38
  %257 = getelementptr inbounds %struct.tree_decl_common, ptr %256, i64 0, i32 2
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 33554432
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %318

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %256, i64 0, i32 4
  %263 = load i32, ptr %262, align 8
  %264 = and i32 %263, 512
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %318

266:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %267 = load i32, ptr @overall_size, align 4, !tbaa !26
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %269 = icmp eq ptr %268, null
  br i1 %269, label %289, label %270

270:                                              ; preds = %266
  %271 = call ptr @cgraph_node_name(ptr noundef nonnull %222) #18
  %272 = getelementptr inbounds %struct.cgraph_node, ptr %222, i64 0, i32 19, i32 4
  %273 = load i32, ptr %272, align 4, !tbaa !25
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %268, ptr noundef nonnull @.str.33, ptr noundef %271, i32 noundef %273) #17
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %276 = load ptr, ptr %223, align 8, !tbaa !13
  %277 = getelementptr inbounds %struct.cgraph_edge, ptr %276, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !30
  %279 = call ptr @cgraph_node_name(ptr noundef %278) #18
  %280 = load ptr, ptr %223, align 8, !tbaa !13
  %281 = getelementptr inbounds %struct.cgraph_edge, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !30
  %283 = getelementptr inbounds %struct.cgraph_node, ptr %282, i64 0, i32 19, i32 4
  %284 = load i32, ptr %283, align 4, !tbaa !25
  %285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.34, ptr noundef %279, i32 noundef %284) #17
  %286 = load ptr, ptr %223, align 8, !tbaa !13
  %287 = getelementptr inbounds %struct.cgraph_edge, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !30
  br label %289

289:                                              ; preds = %270, %266
  %290 = phi ptr [ %288, %270 ], [ %244, %266 ]
  %291 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef %290, ptr noundef nonnull %222, ptr noundef nonnull %1, i8 noundef zeroext 0) #17, !range !22
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %310, label %293

293:                                              ; preds = %289
  %294 = load ptr, ptr %223, align 8, !tbaa !13
  call fastcc void @cgraph_mark_inline(ptr noundef %294) #17
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %296 = icmp eq ptr %295, null
  br i1 %296, label %317, label %297

297:                                              ; preds = %293
  %298 = load ptr, ptr %223, align 8, !tbaa !13
  %299 = getelementptr inbounds %struct.cgraph_edge, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !30
  %301 = call ptr @cgraph_node_name(ptr noundef %300) #18
  %302 = load ptr, ptr %223, align 8, !tbaa !13
  %303 = getelementptr inbounds %struct.cgraph_edge, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !30
  %305 = getelementptr inbounds %struct.cgraph_node, ptr %304, i64 0, i32 19, i32 4
  %306 = load i32, ptr %305, align 4, !tbaa !25
  %307 = load i32, ptr @overall_size, align 4, !tbaa !26
  %308 = sub nsw i32 %307, %267
  %309 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %295, ptr noundef nonnull @.str.35, ptr noundef %301, i32 noundef %306, i32 noundef %308) #17
  br label %317

310:                                              ; preds = %289
  %311 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %312 = icmp eq ptr %311, null
  br i1 %312, label %317, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %1, align 4, !tbaa !26
  %315 = call ptr @cgraph_inline_failed_string(i32 noundef %314) #18
  %316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %311, ptr noundef nonnull @.str.36, ptr noundef %315) #17
  br label %317

317:                                              ; preds = %310, %313, %293, %297
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  br label %318

318:                                              ; preds = %218, %226, %230, %233, %238, %242, %246, %250, %255, %261, %317
  %319 = icmp sgt i64 %219, 1
  br i1 %319, label %218, label %320, !llvm.loop !69

320:                                              ; preds = %318, %217, %209
  %321 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  call void @free_all_ipa_structures_after_iinln() #18
  br label %324

324:                                              ; preds = %323, %320
  %325 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %326 = icmp eq ptr %325, null
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr @ncalls_inlined, align 4, !tbaa !26
  %329 = load i32, ptr @nfunctions_inlined, align 4, !tbaa !26
  %330 = load i32, ptr @overall_size, align 4, !tbaa !26
  %331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %325, ptr noundef nonnull @.str.37, i32 noundef %328, i32 noundef %329, i32 noundef %80, i32 noundef %330) #17
  br label %332

332:                                              ; preds = %327, %324
  call void @free(ptr noundef %4) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @inline_generate_summary() #0 {
  %1 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #18
  store ptr %1, ptr @function_insertion_hook_holder, align 8, !tbaa !34
  %2 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @ipa_register_cgraph_hooks() #18
  tail call fastcc void @ipa_check_create_node_params() #17
  tail call fastcc void @ipa_check_create_edge_args() #17
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %15
  %9 = phi ptr [ %17, %15 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 27
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call fastcc void @analyze_function(ptr noundef nonnull %9) #17
  br label %15

15:                                               ; preds = %8, %14
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !70

19:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @inline_write_summary(ptr noundef %0) #0 {
  %2 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @flag_ipa_cp, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @ipa_prop_write_jump_functions(ptr noundef %0) #18
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @inline_read_summary() #0 {
  %1 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  tail call void @ipa_register_cgraph_hooks() #18
  %4 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @ipa_prop_read_jump_functions() #18
  br label %7

7:                                                ; preds = %3, %6, %0
  %8 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #18
  store ptr %8, ptr @function_insertion_hook_holder, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @lto_ipa_fixup_call_notes(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @inline_transform(ptr noundef %0) #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = tail call zeroext i8 @cgraph_preserve_function_body_p(ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @save_inline_function_body(ptr noundef nonnull %0) #18
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr @warn_inline, align 4
  %19 = freeze i32 %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %30

21:                                               ; preds = %25
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25, !llvm.loop !71

25:                                               ; preds = %17, %21
  %26 = phi ptr [ %23, %21 ], [ %15, %17 ]
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !35
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %21

30:                                               ; preds = %25, %17
  %31 = load i8, ptr @timevar_enable, align 1, !tbaa !42
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @timevar_push_1(i32 noundef 47) #18
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @current_function_decl, align 8, !tbaa !34
  %36 = tail call i32 @optimize_inline_calls(ptr noundef %35) #18
  %37 = load i8, ptr @timevar_enable, align 1, !tbaa !42
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @timevar_pop_1(i32 noundef 47) #18
  br label %40

40:                                               ; preds = %21, %13, %34, %39
  %41 = phi i32 [ %36, %39 ], [ %36, %34 ], [ 0, %13 ], [ 0, %21 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 20
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, 50331648
  store i32 %45, ptr %43, align 8
  %46 = tail call i32 @execute_fixup_cfg() #18
  %47 = or i32 %46, %41
  br label %48

48:                                               ; preds = %1, %40
  %49 = phi i32 [ %47, %40 ], [ 0, %1 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_order(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @order, align 8, !tbaa !34
  %3 = icmp ult ptr %2, inttoptr (i64 2 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %2) #18
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_order(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @order, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %2, ptr noundef nonnull @order, ptr noundef nonnull @gt_pch_pa_order, i32 noundef 217) #18
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = add i32 %1, -3
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @indent_to(ptr noundef nonnull %16, i32 noundef %2) #18
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %20 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef %20) #17
  br label %22

22:                                               ; preds = %9, %18, %15
  %23 = phi i32 [ 4, %15 ], [ 4, %18 ], [ %1, %9 ]
  %24 = zext i32 %23 to i64
  %25 = inttoptr i64 %24 to ptr
  store ptr %25, ptr %5, align 8, !tbaa !64
  br label %30

26:                                               ; preds = %3
  %27 = zext nneg i32 %1 to i64
  %28 = inttoptr i64 %27 to ptr
  store ptr %28, ptr %5, align 8, !tbaa !64
  %29 = icmp eq i32 %1, 2
  br i1 %29, label %132, label %30

30:                                               ; preds = %22, %26
  %31 = phi i32 [ %23, %22 ], [ 1, %26 ]
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %130, label %35

35:                                               ; preds = %30
  %36 = icmp ne i32 %31, 4
  %37 = icmp eq i32 %31, 4
  br label %38

38:                                               ; preds = %35, %125
  %39 = phi ptr [ %33, %35 ], [ %128, %125 ]
  %40 = phi i8 [ 0, %35 ], [ %126, %125 ]
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %39, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 18, i32 2
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = and i8 %44, 8
  %49 = icmp eq i8 %48, 0
  %50 = or i1 %36, %49
  br i1 %50, label %125, label %51

51:                                               ; preds = %47, %38
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %39, i64 0, i32 14
  %53 = load i8, ptr %52, align 2
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %39, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !35
  %59 = icmp eq i32 %58, 0
  %60 = and i1 %37, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = tail call fastcc zeroext i8 @try_inline(ptr noundef nonnull %39, i32 noundef 4, i32 noundef %2) #17, !range !22
  %63 = or i8 %62, %40
  br label %125

64:                                               ; preds = %56
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  tail call void @indent_to(ptr noundef nonnull %65, i32 noundef %2) #18
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %69 = load ptr, ptr %41, align 8, !tbaa !5
  %70 = tail call ptr @cgraph_node_name(ptr noundef %69) #18
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.9, ptr noundef %70) #17
  %72 = load ptr, ptr %41, align 8, !tbaa !5
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi ptr [ %72, %67 ], [ %42, %64 ]
  %75 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %0, ptr noundef %74, ptr noundef nonnull %57) #17, !range !22
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %125, label %80

80:                                               ; preds = %77
  tail call void @indent_to(ptr noundef nonnull %78, i32 noundef %2) #18
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %82 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 30, i64 1, ptr %81)
  br label %125

83:                                               ; preds = %73
  %84 = tail call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %39) #18
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %125, label %89

89:                                               ; preds = %86
  tail call void @indent_to(ptr noundef nonnull %87, i32 noundef %2) #18
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %91 = load i32, ptr %57, align 8, !tbaa !35
  %92 = tail call ptr @cgraph_inline_failed_string(i32 noundef %91) #18
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.11, ptr noundef %92) #17
  br label %125

94:                                               ; preds = %83
  %95 = load ptr, ptr %0, align 8, !tbaa !38
  %96 = getelementptr inbounds %struct.tree_function_decl, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  %98 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %97) #17, !range !22
  %99 = load ptr, ptr %41, align 8, !tbaa !5
  %100 = load ptr, ptr %99, align 8, !tbaa !38
  %101 = getelementptr inbounds %struct.tree_function_decl, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !42
  %103 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %102) #17, !range !22
  %104 = icmp eq i8 %98, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %94
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %125, label %108

108:                                              ; preds = %105
  tail call void @indent_to(ptr noundef nonnull %106, i32 noundef %2) #18
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %110 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 39, i64 1, ptr %109)
  br label %125

111:                                              ; preds = %94
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %99, i64 0, i32 27
  %113 = load i16, ptr %112, align 4
  %114 = and i16 %113, 32
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  tail call void @indent_to(ptr noundef nonnull %117, i32 noundef %2) #18
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %121 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr %120)
  br label %125

122:                                              ; preds = %111
  %123 = tail call fastcc zeroext i8 @try_inline(ptr noundef nonnull %39, i32 noundef %31, i32 noundef %2) #17, !range !22
  %124 = or i8 %123, %40
  br label %125

125:                                              ; preds = %116, %119, %105, %108, %86, %89, %77, %80, %51, %47, %122, %61
  %126 = phi i8 [ %40, %51 ], [ %63, %61 ], [ %40, %80 ], [ %40, %77 ], [ %40, %108 ], [ %40, %105 ], [ %124, %122 ], [ %40, %119 ], [ %40, %116 ], [ %40, %89 ], [ %40, %86 ], [ %40, %47 ]
  %127 = getelementptr inbounds %struct.cgraph_edge, ptr %39, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %38, !llvm.loop !72

130:                                              ; preds = %125, %30
  %131 = phi i8 [ 0, %30 ], [ %126, %125 ]
  switch i32 %31, label %132 [
    i32 4, label %314
    i32 1, label %314
  ]

132:                                              ; preds = %26, %130
  %133 = phi i8 [ %131, %130 ], [ 0, %26 ]
  %134 = phi i32 [ %31, %130 ], [ 2, %26 ]
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %136 = load i8, ptr %135, align 8
  %137 = and i8 %136, 16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %314

139:                                              ; preds = %132
  %140 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !34
  %143 = icmp eq ptr %142, null
  br i1 %143, label %312, label %144

144:                                              ; preds = %139
  %145 = and i32 %134, -2
  %146 = icmp eq i32 %145, 2
  br label %147

147:                                              ; preds = %144, %307
  %148 = phi ptr [ %142, %144 ], [ %310, %307 ]
  %149 = phi i8 [ %133, %144 ], [ %308, %307 ]
  %150 = getelementptr inbounds %struct.cgraph_edge, ptr %148, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.cgraph_node, ptr %151, i64 0, i32 18, i32 2
  %153 = load i8, ptr %152, align 8
  %154 = and i8 %153, 8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %307, label %156

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.cgraph_edge, ptr %148, i64 0, i32 9
  %158 = load i32, ptr %157, align 8, !tbaa !35
  %159 = icmp ne i32 %158, 0
  %160 = and i8 %153, 16
  %161 = icmp eq i8 %160, 0
  %162 = and i1 %161, %159
  br i1 %162, label %163, label %307

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.cgraph_node, ptr %151, i64 0, i32 24
  %165 = load i32, ptr %164, align 8, !tbaa !73
  %166 = call zeroext i8 @bitmap_set_bit(ptr noundef %140, i32 noundef %165) #18
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %307, label %168

168:                                              ; preds = %163
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %150, align 8, !tbaa !5
  %173 = call ptr @cgraph_node_name(ptr noundef %172) #18
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %169, ptr noundef nonnull @.str.14, ptr noundef %173) #17
  br label %175

175:                                              ; preds = %171, %168
  %176 = load ptr, ptr %150, align 8, !tbaa !5
  %177 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %0, ptr noundef %176, ptr noundef nonnull %157) #17, !range !22
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %181 = icmp eq ptr %180, null
  br i1 %181, label %307, label %182

182:                                              ; preds = %179
  call void @indent_to(ptr noundef nonnull %180, i32 noundef %2) #18
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %184 = call i64 @fwrite(ptr nonnull @.str.10, i64 30, i64 1, ptr %183)
  br label %307

185:                                              ; preds = %175
  %186 = load ptr, ptr %0, align 8, !tbaa !38
  %187 = getelementptr inbounds %struct.tree_function_decl, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !42
  %189 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %188) #17, !range !22
  %190 = load ptr, ptr %150, align 8, !tbaa !5
  %191 = load ptr, ptr %190, align 8, !tbaa !38
  %192 = getelementptr inbounds %struct.tree_function_decl, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !42
  %194 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %193) #17, !range !22
  %195 = icmp eq i8 %189, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %185
  %197 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %198 = icmp eq ptr %197, null
  br i1 %198, label %307, label %199

199:                                              ; preds = %196
  call void @indent_to(ptr noundef nonnull %197, i32 noundef %2) #18
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %201 = call i64 @fwrite(ptr nonnull @.str.12, i64 39, i64 1, ptr %200)
  br label %307

202:                                              ; preds = %185
  %203 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %148) #18
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr %150, align 8, !tbaa !5
  %207 = call fastcc zeroext i8 @leaf_node_p(ptr noundef %206) #17, !range !22
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr @cfun, align 8, !tbaa !34
  %211 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %210) #18
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %215 = getelementptr inbounds %struct.param_info, ptr %214, i64 20, i32 1
  %216 = load i32, ptr %215, align 8, !tbaa !40
  br label %217

217:                                              ; preds = %213, %209, %205, %202
  %218 = phi i32 [ %216, %213 ], [ 0, %209 ], [ 0, %205 ], [ 0, %202 ]
  br i1 %146, label %219, label %221

219:                                              ; preds = %217
  %220 = load ptr, ptr %150, align 8, !tbaa !5
  br label %231

221:                                              ; preds = %217
  %222 = load i32, ptr @flag_inline_functions, align 4, !tbaa !26
  %223 = icmp eq i32 %222, 0
  %224 = load ptr, ptr %150, align 8, !tbaa !5
  br i1 %223, label %225, label %260

225:                                              ; preds = %221
  %226 = load ptr, ptr %224, align 8, !tbaa !38
  %227 = getelementptr inbounds %struct.tree_function_decl, ptr %226, i64 0, i32 5
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 2097152
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %260

231:                                              ; preds = %219, %225
  %232 = phi ptr [ %220, %219 ], [ %224, %225 ]
  %233 = getelementptr inbounds %struct.cgraph_edge, ptr %148, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !30
  %235 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %234, ptr noundef %232) #17
  %236 = load ptr, ptr %233, align 8, !tbaa !30
  %237 = getelementptr inbounds %struct.cgraph_node, ptr %236, i64 0, i32 19, i32 4
  %238 = load i32, ptr %237, align 4, !tbaa !25
  %239 = add nsw i32 %238, %218
  %240 = icmp sgt i32 %235, %239
  %241 = load ptr, ptr %150, align 8, !tbaa !5
  br i1 %240, label %242, label %260

242:                                              ; preds = %231
  %243 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %241) #17
  %244 = icmp sgt i32 %243, %218
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %150, align 8, !tbaa !5
  br label %260

247:                                              ; preds = %242
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %249 = icmp eq ptr %248, null
  br i1 %249, label %307, label %250

250:                                              ; preds = %247
  call void @indent_to(ptr noundef nonnull %248, i32 noundef %2) #18
  %251 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %252 = load ptr, ptr %233, align 8, !tbaa !30
  %253 = load ptr, ptr %150, align 8, !tbaa !5
  %254 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %252, ptr noundef %253) #17
  %255 = load ptr, ptr %233, align 8, !tbaa !30
  %256 = getelementptr inbounds %struct.cgraph_node, ptr %255, i64 0, i32 19, i32 4
  %257 = load i32, ptr %256, align 4, !tbaa !25
  %258 = sub nsw i32 %254, %257
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef nonnull @.str.15, i32 noundef %258) #17
  br label %307

260:                                              ; preds = %245, %231, %225, %221
  %261 = phi ptr [ %246, %245 ], [ %241, %231 ], [ %224, %225 ], [ %224, %221 ]
  %262 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef nonnull %0, ptr noundef %261, ptr noundef nonnull %157, i8 noundef zeroext 0) #17, !range !22
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.cgraph_edge, ptr %148, i64 0, i32 14
  %266 = load i8, ptr %265, align 2
  %267 = and i8 %266, 2
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %264, %260
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %271 = icmp eq ptr %270, null
  br i1 %271, label %307, label %272

272:                                              ; preds = %269
  call void @indent_to(ptr noundef nonnull %270, i32 noundef %2) #18
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %274 = load i32, ptr %157, align 8, !tbaa !35
  %275 = call ptr @cgraph_inline_failed_string(i32 noundef %274) #18
  %276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.16, ptr noundef %275) #17
  br label %307

277:                                              ; preds = %264
  %278 = load ptr, ptr %150, align 8, !tbaa !5
  %279 = getelementptr inbounds %struct.cgraph_node, ptr %278, i64 0, i32 27
  %280 = load i16, ptr %279, align 4
  %281 = and i16 %280, 32
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %285 = icmp eq ptr %284, null
  br i1 %285, label %307, label %286

286:                                              ; preds = %283
  call void @indent_to(ptr noundef nonnull %284, i32 noundef %2) #18
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %288 = call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr %287)
  br label %307

289:                                              ; preds = %277
  %290 = call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %148) #18
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %294 = icmp eq ptr %293, null
  br i1 %294, label %307, label %295

295:                                              ; preds = %292
  call void @indent_to(ptr noundef nonnull %293, i32 noundef %2) #18
  %296 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %297 = load i32, ptr %157, align 8, !tbaa !35
  %298 = call ptr @cgraph_inline_failed_string(i32 noundef %297) #18
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef nonnull @.str.17, ptr noundef %298) #17
  br label %307

300:                                              ; preds = %289
  %301 = load ptr, ptr %150, align 8, !tbaa !5
  %302 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef %301, ptr noundef nonnull %4) #17, !range !22
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %300
  %305 = call fastcc zeroext i8 @try_inline(ptr noundef nonnull %148, i32 noundef %134, i32 noundef %2) #17, !range !22
  %306 = or i8 %305, %149
  br label %307

307:                                              ; preds = %300, %304, %292, %295, %283, %286, %269, %272, %247, %250, %196, %199, %179, %182, %163, %147, %156
  %308 = phi i8 [ %149, %156 ], [ %149, %147 ], [ %149, %163 ], [ %149, %182 ], [ %149, %179 ], [ %149, %199 ], [ %149, %196 ], [ %149, %250 ], [ %149, %247 ], [ %149, %272 ], [ %149, %269 ], [ %149, %286 ], [ %149, %283 ], [ %149, %295 ], [ %149, %292 ], [ %306, %304 ], [ %149, %300 ]
  %309 = getelementptr inbounds %struct.cgraph_edge, ptr %148, i64 0, i32 6
  %310 = load ptr, ptr %309, align 8, !tbaa !34
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %147, !llvm.loop !74

312:                                              ; preds = %307, %139
  %313 = phi i8 [ %133, %139 ], [ %308, %307 ]
  call void @bitmap_obstack_free(ptr noundef %140) #18
  br label %314

314:                                              ; preds = %130, %130, %312, %132
  %315 = phi i8 [ %133, %132 ], [ %313, %312 ], [ %131, %130 ], [ %131, %130 ]
  %316 = ptrtoint ptr %6 to i64
  %317 = and i64 %316, 4294967295
  %318 = inttoptr i64 %317 to ptr
  store ptr %318, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i8 %315
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @optimize_inline_calls(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @indent_to(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_inline(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = ptrtoint ptr %7 to i64
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 18, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = lshr i8 %10, 4
  %12 = and i8 %11, 1
  %13 = and i64 %8, 4294967295
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %3
  %16 = icmp ne i8 %12, 0
  %17 = icmp ne i32 %1, 1
  %18 = and i1 %17, %16
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %18, label %21, label %27

21:                                               ; preds = %15
  br i1 %20, label %22, label %23

22:                                               ; preds = %21
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8, !tbaa !64
  br label %58

23:                                               ; preds = %21
  tail call void @indent_to(ptr noundef nonnull %19, i32 noundef %2) #18
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %25 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.18, ptr noundef %25) #17
  br label %44

27:                                               ; preds = %15
  br i1 %20, label %38, label %28

28:                                               ; preds = %27
  tail call void @indent_to(ptr noundef nonnull %19, i32 noundef %2) #18
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %30 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = tail call ptr @cgraph_node_name(ptr noundef %32) #18
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef %30, ptr noundef %33) #17
  %35 = load ptr, ptr %4, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 18, i32 2
  %37 = load i8, ptr %36, align 8
  br label %38

38:                                               ; preds = %28, %27
  %39 = phi i8 [ %37, %28 ], [ %10, %27 ]
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 1, i32 12
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 %42, ptr %43, align 8, !tbaa !35
  br label %74

44:                                               ; preds = %23, %3
  %45 = phi i32 [ 1, %23 ], [ %1, %3 ]
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %47 = zext i32 %45 to i64
  %48 = inttoptr i64 %47 to ptr
  store ptr %48, ptr %6, align 8, !tbaa !64
  %49 = icmp eq ptr %46, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  tail call void @indent_to(ptr noundef nonnull %46, i32 noundef %2) #18
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %52 = load ptr, ptr %4, align 8, !tbaa !5
  %53 = tail call ptr @cgraph_node_name(ptr noundef %52) #18
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !30
  %56 = tail call ptr @cgraph_node_name(ptr noundef %55) #18
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.20, ptr noundef %53, ptr noundef %56) #17
  br label %58

58:                                               ; preds = %22, %50, %44
  %59 = phi i32 [ 1, %22 ], [ %45, %50 ], [ %45, %44 ]
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !35
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  tail call fastcc void @cgraph_mark_inline(ptr noundef nonnull %0) #17
  %64 = icmp eq i32 %59, 4
  %65 = icmp ne i8 %12, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 8, !tbaa !5
  %69 = add nsw i32 %2, 1
  %70 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %68, i32 noundef %59, i32 noundef %69) #17, !range !22
  br label %71

71:                                               ; preds = %67, %63, %58
  %72 = phi i8 [ 0, %58 ], [ 1, %63 ], [ 1, %67 ]
  %73 = inttoptr i64 %13 to ptr
  store ptr %73, ptr %6, align 8, !tbaa !64
  br label %74

74:                                               ; preds = %71, %38
  %75 = phi i8 [ %72, %71 ], [ 0, %38 ]
  ret i8 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %1, align 8, !tbaa !38
  %8 = select i1 %6, ptr %0, ptr %5
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = icmp eq ptr %7, %9
  %11 = icmp ne ptr %2, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 1, i32 12
  store i32 %18, ptr %2, align 4, !tbaa !26
  br label %19

19:                                               ; preds = %13, %3
  %20 = zext i1 %10 to i8
  ret i8 %20
}

; Function Attrs: optsize
declare zeroext i8 @tree_can_inline_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_inline_failed_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !75
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
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @leaf_node_p(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %9

5:                                                ; preds = %18
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9, !llvm.loop !76

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 6144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = load i64, ptr %13, align 8
  %20 = and i64 %19, 1048576
  %21 = icmp ne i64 %20, 0
  %22 = and i32 %15, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %23, %21
  br i1 %24, label %5, label %25

25:                                               ; preds = %18, %9, %5, %1
  %26 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ], [ 0, %18 ]
  ret i8 %26
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 19, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = tail call fastcc ptr @inline_summary(ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.inline_summary, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = sub nsw i32 %5, %8
  %10 = mul nsw i32 %9, %0
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !25
  %13 = add nsw i32 %10, %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %3, %15
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cgraph_estimate_growth(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %30, %27 ], [ %7, %5 ]
  %11 = phi i8 [ %16, %27 ], [ 0, %5 ]
  %12 = phi i32 [ %28, %27 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = icmp eq ptr %14, %0
  %16 = select i1 %15, i8 1, i8 %11
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !35
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %9
  %21 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %14, ptr noundef %0) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !30
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 19, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !25
  %25 = add i32 %21, %12
  %26 = sub i32 %25, %24
  br label %27

27:                                               ; preds = %9, %20
  %28 = phi i32 [ %26, %20 ], [ %12, %9 ]
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !78

32:                                               ; preds = %27
  %33 = icmp ne i8 %16, 0
  br label %34

34:                                               ; preds = %32, %5
  %35 = phi i32 [ 0, %5 ], [ %28, %32 ]
  %36 = phi i1 [ false, %5 ], [ %33, %32 ]
  %37 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %0) #17, !range !22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 33554432
  %44 = icmp ne i64 %43, 0
  %45 = select i1 %44, i1 true, i1 %36
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !25
  %49 = sub nsw i32 %35, %48
  br label %50

50:                                               ; preds = %46, %39, %34
  %51 = phi i32 [ %35, %39 ], [ %49, %46 ], [ %35, %34 ]
  store i32 %51, ptr %2, align 8, !tbaa !77
  br label %52

52:                                               ; preds = %1, %50
  %53 = phi i32 [ %51, %50 ], [ %3, %1 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cgraph_check_inline_limits(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %17, %10 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, %1
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %12, %16
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !79

21:                                               ; preds = %10, %6, %4
  %22 = phi i32 [ 1, %4 ], [ 0, %6 ], [ %17, %10 ]
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %0, ptr %24
  %27 = tail call fastcc ptr @inline_summary(ptr noundef %26) #17
  %28 = getelementptr inbounds %struct.inline_summary, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = tail call fastcc ptr @inline_summary(ptr noundef %1) #17
  %31 = getelementptr inbounds %struct.inline_summary, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !46
  %33 = icmp sgt i32 %29, %32
  %34 = select i1 %33, ptr %27, ptr %30
  %35 = getelementptr inbounds %struct.inline_summary, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.param_info, ptr %37, i64 16, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef %22, ptr noundef %26, ptr noundef %1) #17
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !25
  %43 = icmp slt i32 %40, %42
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  br i1 %43, label %56, label %45

45:                                               ; preds = %21
  %46 = mul nsw i32 %39, %36
  %47 = sdiv i32 %46, 100
  %48 = add nsw i32 %47, %36
  %49 = getelementptr inbounds %struct.param_info, ptr %44, i64 15, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !40
  %51 = icmp sgt i32 %40, %50
  %52 = icmp sgt i32 %40, %48
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = icmp eq ptr %2, null
  br i1 %55, label %80, label %78

56:                                               ; preds = %45, %21
  %57 = load i64, ptr %27, align 8, !tbaa !32
  %58 = getelementptr inbounds %struct.param_info, ptr %44, i64 22, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !40
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %57, %60
  %62 = sdiv i64 %61, 100
  %63 = add nsw i64 %62, %57
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !31
  %66 = add nsw i64 %65, %57
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19
  %68 = load i64, ptr %67, align 8, !tbaa !33
  %69 = add nsw i64 %66, %68
  %70 = icmp sgt i64 %69, %63
  br i1 %70, label %71, label %80

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.param_info, ptr %44, i64 21, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !40
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i64 %69, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = icmp eq ptr %2, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %76, %54
  %79 = phi i32 [ 7, %54 ], [ 8, %76 ]
  store i32 %79, ptr %2, align 4, !tbaa !26
  br label %80

80:                                               ; preds = %78, %56, %71, %76, %54
  %81 = phi i8 [ 0, %54 ], [ 0, %76 ], [ 1, %71 ], [ 1, %56 ], [ 0, %78 ]
  ret i8 %81
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @cgraph_default_inline_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = icmp eq ptr %1, null
  br i1 %12, label %42, label %40

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 32
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = icmp eq ptr %1, null
  br i1 %19, label %42, label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !25
  %27 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  br i1 %24, label %34, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.param_info, ptr %27, i64 2, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %1, null
  br i1 %33, label %42, label %40

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.param_info, ptr %27, i64 3, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !40
  %37 = icmp slt i32 %26, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = icmp eq ptr %1, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38, %32, %18, %11
  %41 = phi i32 [ 6, %11 ], [ 3, %18 ], [ 9, %32 ], [ 10, %38 ]
  store i32 %41, ptr %1, align 4, !tbaa !26
  br label %42

42:                                               ; preds = %40, %28, %34, %38, %32, %18, %11
  %43 = phi i8 [ 0, %11 ], [ 0, %18 ], [ 0, %32 ], [ 0, %38 ], [ 1, %34 ], [ 1, %28 ], [ 0, %40 ]
  ret i8 %43
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_mark_inline(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #18
  br label %11

11:                                               ; preds = %1, %10
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11, %31
  %16 = phi ptr [ %32, %31 ], [ %0, %11 ]
  %17 = phi ptr [ %19, %31 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !35
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %17, i8 noundef zeroext 1, ptr noundef null) #17
  %29 = icmp eq ptr %17, %16
  %30 = select i1 %29, ptr %19, ptr %16
  br label %31

31:                                               ; preds = %27, %15, %23
  %32 = phi ptr [ %16, %23 ], [ %16, %15 ], [ %30, %27 ]
  %33 = icmp eq ptr %19, null
  br i1 %33, label %34, label %15, !llvm.loop !80

34:                                               ; preds = %31, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 19, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !25
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 311, ptr noundef nonnull @.str.1) #18
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %5, %3 ], [ %12, %11 ]
  store i32 0, ptr %8, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 19, i32 6
  %16 = load i8, ptr %15, align 4, !tbaa !81
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 65536
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr %4, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi ptr [ %23, %18 ], [ %14, %13 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 19, i32 6
  store i8 1, ptr %26, align 4, !tbaa !81
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %25) #17, !range !22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %32, %24
  br label %40

40:                                               ; preds = %35, %39
  %41 = phi i1 [ false, %39 ], [ true, %35 ]
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext %1) #17
  %42 = load ptr, ptr %4, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %44 = load i32, ptr %43, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !35
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %65

48:                                               ; preds = %52
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !35
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65, !llvm.loop !82

52:                                               ; preds = %40, %48
  %53 = phi ptr [ %63, %48 ], [ %0, %40 ]
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !30
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 19, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %58 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %55, ptr noundef %42) #17
  store i32 %58, ptr %56, align 4, !tbaa !25
  %59 = tail call fastcc i32 @cgraph_estimate_time_after_inlining(i32 noundef %44, ptr noundef %55, ptr noundef %42) #17
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 19, i32 3
  store i32 %59, ptr %60, align 8, !tbaa !45
  %61 = load ptr, ptr %54, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %48, !llvm.loop !82

65:                                               ; preds = %52, %48, %40
  %66 = phi ptr [ null, %40 ], [ %55, %48 ], [ %55, %52 ]
  %67 = phi i32 [ 0, %40 ], [ %58, %48 ], [ %58, %52 ]
  %68 = phi i32 [ 0, %40 ], [ %57, %48 ], [ %57, %52 ]
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 19, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !24
  %71 = icmp eq ptr %70, %66
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #18
  br label %73

73:                                               ; preds = %65, %72
  %74 = icmp sgt i32 %67, %68
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = sub i32 %67, %68
  %77 = load i32, ptr @overall_size, align 4, !tbaa !26
  %78 = add nsw i32 %76, %77
  store i32 %78, ptr @overall_size, align 4, !tbaa !26
  br label %79

79:                                               ; preds = %75, %73
  br i1 %41, label %80, label %83

80:                                               ; preds = %79
  %81 = load i32, ptr @overall_size, align 4, !tbaa !26
  %82 = sub nsw i32 %81, %7
  store i32 %82, ptr @overall_size, align 4, !tbaa !26
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, ptr @ncalls_inlined, align 4, !tbaa !26
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr @ncalls_inlined, align 4, !tbaa !26
  %86 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = tail call zeroext i8 @ipa_propagate_indirect_call_infos(ptr noundef %0, ptr noundef %2) #18
  br label %90

90:                                               ; preds = %83, %88
  %91 = phi i8 [ %89, %88 ], [ 0, %83 ]
  ret i8 %91
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cgraph_estimate_time_after_inlining(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 19, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = sext i32 %5 to i64
  %7 = tail call fastcc ptr @inline_summary(ptr noundef %2) #17
  %8 = getelementptr inbounds %struct.inline_summary, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %6, %10
  %12 = sext i32 %0 to i64
  %13 = mul nsw i64 %11, %12
  %14 = add nsw i64 %13, 500
  %15 = sdiv i64 %14, 1000
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = tail call i64 @llvm.smax.i64(i64 %19, i64 0)
  %21 = tail call i64 @llvm.umin.i64(i64 %20, i64 1000000000)
  %22 = trunc i64 %21 to i32
  ret i32 %22
}

; Function Attrs: optsize
declare zeroext i8 @ipa_propagate_indirect_call_infos(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
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

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @likely_eliminated_by_inlining_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %90 [
    i8 9, label %91
    i8 6, label %4
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %91

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !90
  %9 = icmp eq i32 %8, 113
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !90
  %12 = icmp eq i32 %11, 116
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !90
  %15 = icmp eq i32 %14, 118
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) #17, !range !89
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %89

19:                                               ; preds = %16, %13, %10, %7
  %20 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %21 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #17
  br label %22

22:                                               ; preds = %30, %19
  %23 = phi ptr [ %21, %19 ], [ %32, %30 ]
  %24 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %23) #17, !range !22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, ptr %23, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 47
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %26
  %31 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  br label %22, !llvm.loop !91

33:                                               ; preds = %26, %40
  %34 = phi ptr [ %42, %40 ], [ %20, %26 ]
  %35 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %34) #17, !range !22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, ptr %34, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %56 [
    i16 121, label %40
    i16 47, label %40
    i16 34, label %52
    i16 141, label %43
  ]

40:                                               ; preds = %37, %37, %33
  %41 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  br label %33, !llvm.loop !92

43:                                               ; preds = %37
  %44 = and i64 %38, 4294967296
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 34
  br i1 %51, label %52, label %56

52:                                               ; preds = %37, %46
  %53 = tail call zeroext i8 @is_gimple_reg(ptr noundef %21) #18
  %54 = icmp eq i8 %53, 0
  %55 = load i64, ptr %23, align 8
  br label %56

56:                                               ; preds = %37, %43, %46, %52
  %57 = phi i64 [ %55, %52 ], [ %27, %46 ], [ %27, %43 ], [ %27, %37 ]
  %58 = phi i1 [ false, %52 ], [ true, %46 ], [ true, %43 ], [ true, %37 ]
  %59 = phi i1 [ %54, %52 ], [ true, %46 ], [ true, %43 ], [ true, %37 ]
  %60 = trunc i64 %57 to i16
  switch i16 %60, label %81 [
    i16 34, label %75
    i16 141, label %61
    i16 36, label %82
  ]

61:                                               ; preds = %56
  %62 = and i64 %57, 4294967296
  %63 = icmp eq i64 %62, 0
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  br i1 %63, label %78, label %68

68:                                               ; preds = %61
  %69 = icmp ne i64 %67, 34
  %70 = icmp eq ptr %23, %21
  %71 = select i1 %69, i1 true, i1 %70
  %72 = icmp ne i64 %67, 36
  %73 = and i1 %71, %72
  %74 = select i1 %73, i1 %59, i1 false
  br i1 %74, label %89, label %82

75:                                               ; preds = %56
  %76 = icmp eq ptr %23, %21
  %77 = select i1 %76, i1 %59, i1 false
  br i1 %77, label %89, label %82

78:                                               ; preds = %61
  %79 = icmp ne i64 %67, 36
  %80 = select i1 %79, i1 %59, i1 false
  br i1 %80, label %89, label %82

81:                                               ; preds = %56
  br i1 %59, label %89, label %82

82:                                               ; preds = %56, %68, %78, %75, %81
  %83 = tail call zeroext i8 @is_gimple_reg(ptr noundef %20) #18
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %20) #18
  %87 = icmp eq i8 %86, 0
  %88 = and i1 %87, %58
  br i1 %88, label %89, label %91

89:                                               ; preds = %68, %85, %78, %75, %81, %16
  br label %91

90:                                               ; preds = %1
  br label %91

91:                                               ; preds = %85, %82, %4, %1, %90, %89
  %92 = phi i8 [ 0, %90 ], [ 0, %89 ], [ 1, %1 ], [ 0, %4 ], [ 1, %82 ], [ 1, %85 ]
  ret i8 %92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  store ptr %4, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare i32 @estimate_move_cost(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !94
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !95
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !97
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !42
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !90
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !89
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !90
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !89
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
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
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !42
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !22
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !61
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !26
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_update_after_lto_read() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_decide_inlining_of_small_functions() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %3 = tail call ptr @fibheap_new() #18
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !34
  %5 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call fastcc ptr @VEC_cgraph_edge_p_heap_alloc() #17
  store ptr %8, ptr %2, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %0
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 32, i64 1, ptr nonnull %10)
  br label %14

14:                                               ; preds = %12, %9
  %15 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %14, %63
  %18 = phi ptr [ %65, %63 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 18, i32 2
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = icmp ne ptr %25, null
  %27 = and i8 %20, 16
  %28 = icmp eq i8 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %63

30:                                               ; preds = %23
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call ptr @cgraph_node_name(ptr noundef nonnull %18) #18
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %31, ptr noundef nonnull @.str.14, ptr noundef %34) #17
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %37, align 8, !tbaa !77
  %38 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef nonnull %18, ptr noundef nonnull %1) #17, !range !22
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %24, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %63, label %45

43:                                               ; preds = %36
  %44 = load i32, ptr %1, align 4, !tbaa !26
  call fastcc void @cgraph_set_inline_failed(ptr noundef nonnull %18, i32 noundef %44) #17
  br label %63

45:                                               ; preds = %40, %59
  %46 = phi ptr [ %61, %59 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !35
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !99
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 935, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %50, %54
  %56 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %46) #17
  %57 = sext i32 %56 to i64
  %58 = call ptr @fibheap_insert(ptr noundef %3, i64 noundef %57, ptr noundef nonnull %46) #18
  store ptr %58, ptr %51, align 8, !tbaa !99
  br label %59

59:                                               ; preds = %45, %55
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %45, !llvm.loop !100

63:                                               ; preds = %59, %40, %17, %23, %43
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %17, !llvm.loop !101

67:                                               ; preds = %63, %14
  %68 = load i32, ptr @overall_size, align 4, !tbaa !26
  %69 = call fastcc i32 @compute_max_insns(i32 noundef %68) #17
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %305, label %71

71:                                               ; preds = %67, %300
  %72 = phi i32 [ %302, %300 ], [ %69, %67 ]
  %73 = phi i32 [ %301, %300 ], [ %68, %67 ]
  %74 = call ptr @fibheap_extract_min(ptr noundef %3) #18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %305, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr @overall_size, align 4, !tbaa !26
  %78 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %79, ptr noundef %81) #17
  %83 = load ptr, ptr %78, align 8, !tbaa !30
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %83, i64 0, i32 19, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !25
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %116, label %88

88:                                               ; preds = %76
  %89 = load ptr, ptr %80, align 8, !tbaa !5
  %90 = call ptr @cgraph_node_name(ptr noundef %89) #18
  %91 = load ptr, ptr %80, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.cgraph_node, ptr %91, i64 0, i32 19, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !25
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.39, ptr noundef %90, i32 noundef %93) #17
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %96 = load ptr, ptr %78, align 8, !tbaa !30
  %97 = call ptr @cgraph_node_name(ptr noundef %96) #18
  %98 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !102
  %100 = call fastcc ptr @gimple_filename(ptr noundef %99) #17
  %101 = load ptr, ptr %98, align 8, !tbaa !102
  %102 = call fastcc i32 @gimple_lineno(ptr noundef %101) #17
  %103 = load ptr, ptr %80, align 8, !tbaa !5
  %104 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %103) #17
  %105 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %74) #17
  %106 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 11
  %107 = load i32, ptr %106, align 8, !tbaa !27
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %108, 1.000000e+03
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.40, ptr noundef %97, ptr noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %105, double noundef %109) #17
  %111 = load i64, ptr %74, align 8, !tbaa !29
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %88
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.41, i64 noundef %111) #17
  br label %116

116:                                              ; preds = %88, %113, %76
  %117 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !99
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 973, ptr noundef nonnull @.str.1) #18
  br label %121

121:                                              ; preds = %116, %120
  store ptr null, ptr %117, align 8, !tbaa !99
  %122 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !35
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %300, label %125, !llvm.loop !103

125:                                              ; preds = %121
  %126 = load i64, ptr %74, align 8, !tbaa !29
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %158

128:                                              ; preds = %125
  %129 = load ptr, ptr %78, align 8, !tbaa !30
  %130 = getelementptr inbounds %struct.cgraph_node, ptr %129, i64 0, i32 19, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !24
  %132 = icmp eq ptr %131, null
  br i1 %132, label %158, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %80, align 8, !tbaa !5
  %135 = load ptr, ptr %134, align 8, !tbaa !38
  br label %136

136:                                              ; preds = %133, %140
  %137 = phi ptr [ %129, %133 ], [ %144, %140 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !38
  %139 = icmp eq ptr %138, %135
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %137, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !13
  %143 = getelementptr inbounds %struct.cgraph_edge, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !30
  %145 = getelementptr inbounds %struct.cgraph_node, ptr %144, i64 0, i32 19, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !24
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %136, !llvm.loop !104

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.cgraph_node, ptr %134, i64 0, i32 18, i32 2
  %150 = load i8, ptr %149, align 8
  %151 = and i8 %150, 16
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, i32 1, i32 12
  store i32 %153, ptr %122, align 8, !tbaa !35
  %154 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %155 = icmp eq ptr %154, null
  br i1 %155, label %300, label %156, !llvm.loop !103

156:                                              ; preds = %148
  %157 = call i64 @fwrite(ptr nonnull @.str.42, i64 70, i64 1, ptr nonnull %154)
  br label %300, !llvm.loop !103

158:                                              ; preds = %140, %128, %125
  %159 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %74) #18
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i32 13, i32 0
  %162 = load i32, ptr @flag_inline_functions, align 4, !tbaa !26
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load ptr, ptr %80, align 8, !tbaa !5
  %166 = load ptr, ptr %165, align 8, !tbaa !38
  %167 = getelementptr inbounds %struct.tree_function_decl, ptr %166, i64 0, i32 5
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 2097152
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 14, i32 %161
  br label %172

172:                                              ; preds = %164, %158
  %173 = phi i32 [ %161, %158 ], [ %171, %164 ]
  %174 = load ptr, ptr %78, align 8, !tbaa !30
  %175 = load ptr, ptr %174, align 8, !tbaa !38
  %176 = getelementptr inbounds %struct.tree_function_decl, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !42
  %178 = call zeroext i8 @optimize_function_for_size_p(ptr noundef %177) #18
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 %173, i32 15
  %181 = icmp ne i32 %180, 0
  %182 = icmp sgt i32 %82, %85
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %199

184:                                              ; preds = %172
  %185 = load ptr, ptr %80, align 8, !tbaa !5
  %186 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %185) #17
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load ptr, ptr %78, align 8, !tbaa !30
  %190 = load ptr, ptr %80, align 8, !tbaa !5
  %191 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %189, ptr noundef %190, ptr noundef nonnull %122) #17, !range !22
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %300, !llvm.loop !103

193:                                              ; preds = %188
  store i32 %180, ptr %122, align 8, !tbaa !35
  %194 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %195 = icmp eq ptr %194, null
  br i1 %195, label %300, label %196, !llvm.loop !103

196:                                              ; preds = %193
  %197 = call ptr @cgraph_inline_failed_string(i32 noundef %180) #18
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %194, ptr noundef nonnull @.str.43, ptr noundef %197) #17
  br label %300, !llvm.loop !103

199:                                              ; preds = %184, %172
  %200 = load ptr, ptr %80, align 8, !tbaa !5
  %201 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef %200, ptr noundef nonnull %122) #17, !range !22
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load ptr, ptr %78, align 8, !tbaa !30
  %205 = load ptr, ptr %80, align 8, !tbaa !5
  %206 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %204, ptr noundef %205, ptr noundef nonnull %122) #17, !range !22
  %207 = icmp eq i8 %206, 0
  %208 = load ptr, ptr @dump_file, align 8
  %209 = icmp ne ptr %208, null
  %210 = select i1 %207, i1 %209, i1 false
  br i1 %210, label %211, label %300, !llvm.loop !103

211:                                              ; preds = %203
  %212 = load i32, ptr %122, align 8, !tbaa !35
  %213 = call ptr @cgraph_inline_failed_string(i32 noundef %212) #18
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %208, ptr noundef nonnull @.str.43, ptr noundef %213) #17
  br label %300, !llvm.loop !103

215:                                              ; preds = %199
  %216 = call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %74) #18
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %220 = icmp eq ptr %219, null
  br i1 %220, label %300, label %221, !llvm.loop !103

221:                                              ; preds = %218
  %222 = load i32, ptr %122, align 8, !tbaa !35
  %223 = call ptr @cgraph_inline_failed_string(i32 noundef %222) #18
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %219, ptr noundef nonnull @.str.43, ptr noundef %223) #17
  br label %300, !llvm.loop !103

225:                                              ; preds = %215
  %226 = load ptr, ptr %78, align 8, !tbaa !30
  %227 = load ptr, ptr %80, align 8, !tbaa !5
  %228 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %226, ptr noundef %227, ptr noundef nonnull %122) #17, !range !22
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %244, label %230

230:                                              ; preds = %225
  %231 = load ptr, ptr %78, align 8, !tbaa !30
  %232 = getelementptr inbounds %struct.cgraph_node, ptr %231, i64 0, i32 19, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !24
  %234 = icmp eq ptr %233, null
  %235 = select i1 %234, ptr %231, ptr %233
  %236 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %237 = icmp eq i32 %236, 0
  %238 = select i1 %237, ptr null, ptr %2
  %239 = call fastcc zeroext i8 @cgraph_decide_recursive_inlining(ptr noundef %235, ptr noundef %238) #17, !range !22
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %300, label %241, !llvm.loop !103

241:                                              ; preds = %230
  %242 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %271, label %268

244:                                              ; preds = %225
  %245 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 14
  %246 = load i8, ptr %245, align 2
  %247 = and i8 %246, 2
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load ptr, ptr %78, align 8, !tbaa !30
  %251 = load ptr, ptr %80, align 8, !tbaa !5
  %252 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef %250, ptr noundef %251, ptr noundef nonnull %122, i8 noundef zeroext 1) #17, !range !22
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249, %244
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %256 = icmp eq ptr %255, null
  br i1 %256, label %300, label %257, !llvm.loop !103

257:                                              ; preds = %254
  %258 = load ptr, ptr %78, align 8, !tbaa !30
  %259 = call ptr @cgraph_node_name(ptr noundef %258) #18
  %260 = load i32, ptr %122, align 8, !tbaa !35
  %261 = call ptr @cgraph_inline_failed_string(i32 noundef %260) #18
  %262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %255, ptr noundef nonnull @.str.44, ptr noundef %259, ptr noundef %261) #17
  br label %300, !llvm.loop !103

263:                                              ; preds = %249
  %264 = load ptr, ptr %80, align 8, !tbaa !5
  %265 = call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %74, i8 noundef zeroext 1, ptr noundef nonnull %2) #17
  %266 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %263, %241
  %269 = phi ptr [ %235, %241 ], [ %264, %263 ]
  %270 = load ptr, ptr %2, align 8, !tbaa !34
  call fastcc void @add_new_edges_to_heap(ptr noundef %3, ptr noundef %270) #17
  br label %271

271:                                              ; preds = %268, %263, %241
  %272 = phi ptr [ %235, %241 ], [ %264, %263 ], [ %269, %268 ]
  call fastcc void @update_callee_keys(ptr noundef %3, ptr noundef %272, ptr noundef %4) #17
  %273 = load ptr, ptr %78, align 8, !tbaa !30
  %274 = getelementptr inbounds %struct.cgraph_node, ptr %273, i64 0, i32 19, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !24
  %276 = icmp eq ptr %275, null
  %277 = select i1 %276, ptr %273, ptr %275
  call fastcc void @update_caller_keys(ptr noundef %3, ptr noundef %277, ptr noundef %4) #17
  call void @bitmap_clear(ptr noundef %4) #18
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %279 = icmp eq ptr %278, null
  br i1 %279, label %291, label %280

280:                                              ; preds = %271
  %281 = load ptr, ptr %78, align 8, !tbaa !30
  %282 = call ptr @cgraph_node_name(ptr noundef %281) #18
  %283 = load ptr, ptr %78, align 8, !tbaa !30
  %284 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 19, i32 3
  %285 = load i32, ptr %284, align 8, !tbaa !45
  %286 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 19, i32 4
  %287 = load i32, ptr %286, align 4, !tbaa !25
  %288 = load i32, ptr @overall_size, align 4, !tbaa !26
  %289 = sub nsw i32 %288, %77
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %278, ptr noundef nonnull @.str.45, ptr noundef %282, i32 noundef %285, i32 noundef %287, i32 noundef %289) #17
  br label %291

291:                                              ; preds = %280, %271
  %292 = load i32, ptr @overall_size, align 4, !tbaa !26
  %293 = icmp sgt i32 %73, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = call fastcc i32 @compute_max_insns(i32 noundef %292) #17
  %296 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %296, ptr noundef nonnull @.str.46, i32 noundef %292) #17
  br label %300

300:                                              ; preds = %291, %298, %294, %257, %254, %230, %218, %221, %203, %211, %188, %196, %193, %148, %156, %121
  %301 = phi i32 [ %73, %121 ], [ %73, %156 ], [ %73, %148 ], [ %73, %193 ], [ %73, %196 ], [ %73, %188 ], [ %73, %211 ], [ %73, %203 ], [ %73, %221 ], [ %73, %218 ], [ %73, %230 ], [ %73, %254 ], [ %73, %257 ], [ %292, %298 ], [ %292, %294 ], [ %73, %291 ]
  %302 = phi i32 [ %72, %121 ], [ %72, %156 ], [ %72, %148 ], [ %72, %193 ], [ %72, %196 ], [ %72, %188 ], [ %72, %211 ], [ %72, %203 ], [ %72, %221 ], [ %72, %218 ], [ %72, %230 ], [ %72, %254 ], [ %72, %257 ], [ %295, %298 ], [ %295, %294 ], [ %72, %291 ]
  %303 = load i32, ptr @overall_size, align 4, !tbaa !26
  %304 = icmp sgt i32 %303, %302
  br i1 %304, label %305, label %71

305:                                              ; preds = %71, %300, %67
  %306 = call ptr @fibheap_extract_min(ptr noundef %3) #18
  %307 = icmp eq ptr %306, null
  br i1 %307, label %334, label %308

308:                                              ; preds = %305, %331
  %309 = phi ptr [ %332, %331 ], [ %306, %305 ]
  %310 = getelementptr inbounds %struct.cgraph_edge, ptr %309, i64 0, i32 8
  %311 = load ptr, ptr %310, align 8, !tbaa !99
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1117, ptr noundef nonnull @.str.1) #18
  br label %314

314:                                              ; preds = %308, %313
  store ptr null, ptr %310, align 8, !tbaa !99
  %315 = getelementptr inbounds %struct.cgraph_edge, ptr %309, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !5
  %317 = getelementptr inbounds %struct.cgraph_node, ptr %316, i64 0, i32 18, i32 2
  %318 = load i8, ptr %317, align 8
  %319 = and i8 %318, 16
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %331

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.cgraph_edge, ptr %309, i64 0, i32 9
  %323 = load i32, ptr %322, align 8, !tbaa !35
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.cgraph_edge, ptr %309, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !30
  %328 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %327, ptr noundef nonnull %316, ptr noundef nonnull %322) #17, !range !22
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  store i32 11, ptr %322, align 8, !tbaa !35
  br label %331

331:                                              ; preds = %330, %325, %321, %314
  %332 = call ptr @fibheap_extract_min(ptr noundef %3) #18
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %308, !llvm.loop !105

334:                                              ; preds = %331, %305
  %335 = load ptr, ptr %2, align 8, !tbaa !34
  %336 = icmp eq ptr %335, null
  br i1 %336, label %338, label %337

337:                                              ; preds = %334
  call fastcc void @VEC_cgraph_edge_p_heap_free(ptr noundef nonnull %2) #17
  br label %338

338:                                              ; preds = %337, %334
  call void @fibheap_delete(ptr noundef %3) #18
  call void @bitmap_obstack_free(ptr noundef %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret void
}

; Function Attrs: optsize
declare void @free_all_ipa_structures_after_iinln() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_cgraph_edge_p_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_set_inline_failed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @cgraph_inline_failed_string(i32 noundef %1) #18
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.47, ptr noundef %6) #17
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi ptr [ %20, %18 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !35
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 %1, ptr %14, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %12, %17
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !106

22:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cgraph_edge_badness(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %3, ptr noundef %5) #17
  %7 = load ptr, ptr %2, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 19, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !25
  %10 = sub nsw i32 %6, %9
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = sub nsw i32 -2147483648, %10
  %14 = zext i32 %13 to i64
  br label %88

15:                                               ; preds = %1
  %16 = load i64, ptr @max_count, align 8, !tbaa !61
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %0, align 8, !tbaa !29
  %20 = sitofp i64 %19 to double
  %21 = fmul double %20, 0xC1E0000000000000
  %22 = sitofp i64 %16 to double
  %23 = fdiv double %21, %22
  %24 = load i64, ptr @max_benefit, align 8, !tbaa !61
  %25 = add nsw i64 %24, 1
  %26 = sitofp i64 %25 to double
  %27 = fdiv double %23, %26
  %28 = fptosi double %27 to i32
  %29 = load ptr, ptr %4, align 8, !tbaa !5
  %30 = tail call fastcc ptr @inline_summary(ptr noundef %29) #17
  %31 = getelementptr inbounds %struct.inline_summary, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, %28
  %35 = sdiv i32 %34, %10
  %36 = zext i32 %35 to i64
  br label %88

37:                                               ; preds = %15
  %38 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %75, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 8, !tbaa !27
  %43 = sdiv i32 %42, 10
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %10, 10000
  %46 = load ptr, ptr %4, align 8, !tbaa !5
  %47 = tail call fastcc ptr @inline_summary(ptr noundef %46) #17
  %48 = getelementptr inbounds %struct.inline_summary, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !59
  %50 = mul nsw i32 %49, 100
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %46, i64 0, i32 19, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !45
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %50, %53
  %55 = icmp slt i32 %54, 99
  %56 = add nsw i32 %54, 1
  %57 = select i1 %55, i32 %56, i32 100
  %58 = mul nsw i32 %57, %44
  %59 = icmp sgt i32 %58, 10000
  br i1 %59, label %60, label %65

60:                                               ; preds = %40
  %61 = zext nneg i32 %58 to i64
  %62 = tail call i32 @ceil_log2(i64 noundef %61) #18
  %63 = add nsw i32 %62, 9992
  %64 = load ptr, ptr %4, align 8, !tbaa !5
  br label %65

65:                                               ; preds = %40, %60
  %66 = phi ptr [ %64, %60 ], [ %46, %40 ]
  %67 = phi i32 [ %63, %60 ], [ %58, %40 ]
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 1)
  %69 = udiv i32 %45, %68
  %70 = zext nneg i32 %69 to i64
  %71 = tail call fastcc i32 @cgraph_estimate_growth(ptr noundef %66) #17
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = tail call i64 @llvm.smin.i64(i64 %73, i64 2147483647)
  br label %88

75:                                               ; preds = %37
  %76 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %77 = load i16, ptr %76, align 8, !tbaa !28
  %78 = tail call i16 @llvm.umin.i16(i16 %77, i16 8)
  %79 = zext nneg i16 %78 to i64
  %80 = load ptr, ptr %4, align 8, !tbaa !5
  %81 = tail call fastcc i32 @cgraph_estimate_growth(ptr noundef %80) #17
  %82 = shl nsw i32 %81, 8
  %83 = sext i32 %82 to i64
  %84 = icmp sgt i32 %81, 0
  %85 = lshr i64 %83, %79
  %86 = shl nsw i64 %83, %79
  %87 = select i1 %84, i64 %85, i64 %86
  br label %88

88:                                               ; preds = %18, %75, %65, %12
  %89 = phi i64 [ %14, %12 ], [ %36, %18 ], [ %74, %65 ], [ %87, %75 ]
  %90 = load ptr, ptr %2, align 8, !tbaa !30
  %91 = load ptr, ptr %4, align 8, !tbaa !5
  %92 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %90, ptr noundef %91, ptr noundef null) #17, !range !22
  %93 = trunc i64 %89 to i32
  %94 = zext nneg i8 %92 to i32
  %95 = add i32 %94, %93
  ret i32 %95
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @compute_max_insns(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 17, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 %0)
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.param_info, ptr %2, i64 18, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = add nsw i32 %8, 100
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, %6
  %12 = sdiv i64 %11, 100
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_filename(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #18
  %4 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_lineno(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #18
  %4 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !109
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_decide_recursive_inlining(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 5, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.param_info, ptr %3, i64 7, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.param_info, ptr %3, i64 8, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %12) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %197

15:                                               ; preds = %2
  %16 = load i32, ptr @flag_inline_functions, align 4, !tbaa !26
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %17, label %23, label %24

23:                                               ; preds = %15
  br i1 %22, label %197, label %25

24:                                               ; preds = %15
  br i1 %22, label %31, label %25

25:                                               ; preds = %23, %24
  %26 = load ptr, ptr @compiler_params, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.param_info, ptr %26, i64 4, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !40
  %29 = getelementptr inbounds %struct.param_info, ptr %26, i64 6, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !40
  br label %31

31:                                               ; preds = %25, %24
  %32 = phi i32 [ %30, %25 ], [ %7, %24 ]
  %33 = phi i32 [ %28, %25 ], [ %5, %24 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %197, label %35

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %0) #17
  %37 = icmp slt i32 %36, %33
  br i1 %37, label %38, label %197

38:                                               ; preds = %35
  %39 = tail call ptr @fibheap_new() #18
  tail call fastcc void @lookup_recursive_calls(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %39) #17
  %40 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @fibheap_delete(ptr noundef %39) #18
  br label %197

43:                                               ; preds = %38
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.48, ptr noundef %47) #17
  br label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %51 = load i64, ptr %50, align 8, !tbaa !110
  %52 = tail call ptr @cgraph_clone_node(ptr noundef nonnull %0, i64 noundef %51, i32 noundef 1000, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #18
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 27
  %54 = load i16, ptr %53, align 4
  %55 = or i16 %54, 1
  store i16 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %70, %49
  %60 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %159

62:                                               ; preds = %59
  %63 = sext i32 %9 to i64
  br label %74

64:                                               ; preds = %49, %70
  %65 = phi ptr [ %72, %70 ], [ %57, %49 ]
  %66 = getelementptr inbounds %struct.cgraph_edge, ptr %65, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !35
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %65, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %70

70:                                               ; preds = %64, %69
  %71 = getelementptr inbounds %struct.cgraph_edge, ptr %65, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %59, label %64, !llvm.loop !111

74:                                               ; preds = %62, %155
  %75 = phi i32 [ 0, %62 ], [ %156, %155 ]
  %76 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %52) #17
  %77 = icmp sgt i32 %76, %33
  br i1 %77, label %159, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @fibheap_extract_min(ptr noundef %39) #18
  %80 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !30
  %82 = getelementptr inbounds %struct.cgraph_node, ptr %81, i64 0, i32 19, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !24
  %84 = icmp eq ptr %83, null
  br i1 %84, label %103, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %0, align 8, !tbaa !38
  %87 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = load ptr, ptr %88, align 8, !tbaa !38
  %90 = icmp eq ptr %86, %89
  %91 = zext i1 %90 to i32
  br label %92

92:                                               ; preds = %85, %92
  %93 = phi ptr [ %81, %85 ], [ %99, %92 ]
  %94 = phi i32 [ 1, %85 ], [ %95, %92 ]
  %95 = add nuw nsw i32 %94, %91
  %96 = getelementptr inbounds %struct.cgraph_node, ptr %93, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !13
  %98 = getelementptr inbounds %struct.cgraph_edge, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !30
  %100 = getelementptr inbounds %struct.cgraph_node, ptr %99, i64 0, i32 19, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !24
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %92, !llvm.loop !112

103:                                              ; preds = %92, %78
  %104 = phi i32 [ 1, %78 ], [ %95, %92 ]
  %105 = icmp sgt i32 %104, %32
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %155, label %109, !llvm.loop !113

109:                                              ; preds = %106
  %110 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 25, i64 1, ptr nonnull %107)
  br label %155, !llvm.loop !113

111:                                              ; preds = %103
  %112 = load i64, ptr @max_count, align 8, !tbaa !61
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %111
  %115 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef %79) #18
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %155, label %120, !llvm.loop !113

120:                                              ; preds = %117
  %121 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 26, i64 1, ptr nonnull %118)
  br label %155, !llvm.loop !113

122:                                              ; preds = %114
  %123 = load i64, ptr %79, align 8, !tbaa !29
  %124 = mul nsw i64 %123, 100
  %125 = load i64, ptr %50, align 8, !tbaa !110
  %126 = sdiv i64 %124, %125
  %127 = icmp slt i64 %126, %63
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %130 = icmp eq ptr %129, null
  br i1 %130, label %155, label %131, !llvm.loop !113

131:                                              ; preds = %128
  %132 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 36, i64 1, ptr nonnull %129)
  br label %155, !llvm.loop !113

133:                                              ; preds = %122, %111
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %135 = icmp eq ptr %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %134, ptr noundef nonnull @.str.52, i32 noundef %104) #17
  %138 = load i64, ptr %50, align 8, !tbaa !110
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %142 = load i64, ptr %79, align 8, !tbaa !29
  %143 = sitofp i64 %142 to double
  %144 = sitofp i64 %138 to double
  %145 = fdiv double %143, %144
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.53, double noundef %145) #17
  br label %147

147:                                              ; preds = %140, %136
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %149 = tail call i32 @fputc(i32 10, ptr %148)
  br label %150

150:                                              ; preds = %147, %133
  tail call void @cgraph_redirect_edge_callee(ptr noundef %79, ptr noundef %52) #18
  %151 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef %79, i8 noundef zeroext 0, ptr noundef %1) #17
  %152 = getelementptr inbounds %struct.cgraph_edge, ptr %79, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  tail call fastcc void @lookup_recursive_calls(ptr noundef nonnull %0, ptr noundef %153, ptr noundef %39) #17
  %154 = add nsw i32 %75, 1
  br label %155

155:                                              ; preds = %128, %131, %117, %120, %106, %109, %150
  %156 = phi i32 [ %154, %150 ], [ %75, %109 ], [ %75, %106 ], [ %75, %120 ], [ %75, %117 ], [ %75, %131 ], [ %75, %128 ]
  %157 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %74, label %159

159:                                              ; preds = %74, %155, %59
  %160 = phi i32 [ 0, %59 ], [ %156, %155 ], [ %75, %74 ]
  %161 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %162 = icmp eq i32 %161, 0
  %163 = load ptr, ptr @dump_file, align 8
  %164 = icmp ne ptr %163, null
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 41, i64 1, ptr nonnull %163)
  br label %168

168:                                              ; preds = %166, %159
  tail call void @fibheap_delete(ptr noundef %39) #18
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 19, i32 4
  %173 = load i32, ptr %172, align 4, !tbaa !25
  %174 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %175 = load i32, ptr %174, align 4, !tbaa !25
  %176 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 19, i32 3
  %177 = load i32, ptr %176, align 8, !tbaa !45
  %178 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 3
  %179 = load i32, ptr %178, align 8, !tbaa !45
  %180 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %169, ptr noundef nonnull @.str.56, i32 noundef %160, i32 noundef %173, i32 noundef %175, i32 noundef %177, i32 noundef %179) #17
  br label %181

181:                                              ; preds = %171, %168
  %182 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !34
  %183 = icmp eq ptr %182, %52
  br i1 %183, label %194, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %187, %192 ], [ %182, %181 ]
  %186 = getelementptr inbounds %struct.cgraph_node, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !114
  %188 = getelementptr inbounds %struct.cgraph_node, ptr %185, i64 0, i32 19, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !24
  %190 = icmp eq ptr %189, %52
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  tail call void @cgraph_remove_node(ptr noundef nonnull %185) #18
  br label %192

192:                                              ; preds = %184, %191
  %193 = icmp eq ptr %187, %52
  br i1 %193, label %194, label %184, !llvm.loop !115

194:                                              ; preds = %192, %181
  tail call void @cgraph_remove_node(ptr noundef %52) #18
  %195 = icmp sgt i32 %160, 0
  %196 = zext i1 %195 to i8
  br label %197

197:                                              ; preds = %31, %35, %2, %23, %194, %42
  %198 = phi i8 [ 0, %42 ], [ %196, %194 ], [ 0, %23 ], [ 0, %2 ], [ 0, %35 ], [ 0, %31 ]
  ret i8 %198
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_new_edges_to_heap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @VEC_cgraph_edge_p_base_length(ptr noundef %1) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %2, %11
  %6 = tail call fastcc ptr @VEC_cgraph_edge_p_base_pop(ptr noundef %1) #17
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 885, ptr noundef nonnull @.str.1) #18
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %6) #17
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @fibheap_insert(ptr noundef %0, i64 noundef %13, ptr noundef nonnull %6) #18
  store ptr %14, ptr %7, align 8, !tbaa !99
  %15 = tail call fastcc i32 @VEC_cgraph_edge_p_base_length(ptr noundef %1) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %5, !llvm.loop !116

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_callee_keys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %19, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !35
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  br i1 %12, label %16, label %15

15:                                               ; preds = %8
  tail call fastcc void @update_caller_keys(ptr noundef %0, ptr noundef %14, ptr noundef %2) #17
  br label %17

16:                                               ; preds = %8
  tail call fastcc void @update_callee_keys(ptr noundef %0, ptr noundef %14, ptr noundef %2) #17
  br label %17

17:                                               ; preds = %15, %16
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !117

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_caller_keys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 24
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %9, label %84

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %15) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %13
  %19 = load i32, ptr %14, align 8, !tbaa !73
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %19) #18
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %21, align 8, !tbaa !77
  %22 = load i8, ptr %5, align 8
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %18
  %26 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef nonnull %1, ptr noundef nonnull %4) #17, !range !22
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %27, label %31, label %48

31:                                               ; preds = %25
  br i1 %30, label %84, label %32

32:                                               ; preds = %31, %44
  %33 = phi ptr [ %46, %44 ], [ %29, %31 ]
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !99
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = call ptr @fibheap_delete_node(ptr noundef %0, ptr noundef nonnull %35) #18
  store ptr null, ptr %34, align 8, !tbaa !99
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !35
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %4, align 4, !tbaa !26
  store i32 %43, ptr %39, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %32, %42, %37
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %84, label %32, !llvm.loop !118

48:                                               ; preds = %25
  br i1 %30, label %84, label %49

49:                                               ; preds = %48, %80
  %50 = phi ptr [ %82, %80 ], [ %29, %48 ]
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !35
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %49
  %55 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %50) #17
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %50, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !99
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = sext i32 %55 to i64
  br label %77

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.fibnode, ptr %57, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !119
  %64 = icmp eq ptr %63, %50
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 658, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %61, %65
  %67 = getelementptr inbounds %struct.fibnode, ptr %57, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !121
  %69 = sext i32 %55 to i64
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = call i64 @fibheap_replace_key(ptr noundef %0, ptr noundef nonnull %57, i64 noundef %69) #18
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load ptr, ptr %56, align 8, !tbaa !99
  %76 = call ptr @fibheap_delete_node(ptr noundef %0, ptr noundef %75) #18
  br label %77

77:                                               ; preds = %59, %74
  %78 = phi i64 [ %60, %59 ], [ %69, %74 ]
  %79 = call ptr @fibheap_insert(ptr noundef %0, i64 noundef %78, ptr noundef nonnull %50) #18
  store ptr %79, ptr %56, align 8, !tbaa !99
  br label %80

80:                                               ; preds = %77, %71, %66, %49
  %81 = getelementptr inbounds %struct.cgraph_edge, ptr %50, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %49, !llvm.loop !122

84:                                               ; preds = %80, %44, %48, %31, %18, %13, %3, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ceil_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lookup_recursive_calls(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %10

7:                                                ; preds = %31
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %35

10:                                               ; preds = %3, %31
  %11 = phi ptr [ %33, %31 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64, ptr @max_count, align 8, !tbaa !61
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, ptr @lookup_recursive_calls.priority, align 4, !tbaa !26
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @lookup_recursive_calls.priority, align 4, !tbaa !26
  %21 = sext i32 %19 to i64
  br label %28

22:                                               ; preds = %15
  %23 = load i64, ptr %11, align 8, !tbaa !29
  %24 = add nsw i64 %16, 16777215
  %25 = sdiv i64 %24, 16777216
  %26 = sdiv i64 %23, %25
  %27 = sub nsw i64 0, %26
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i64 [ %21, %18 ], [ %27, %22 ]
  %30 = tail call ptr @fibheap_insert(ptr noundef %2, i64 noundef %29, ptr noundef nonnull %11) #18
  br label %31

31:                                               ; preds = %10, %28
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %7, label %10, !llvm.loop !123

35:                                               ; preds = %7, %43
  %36 = phi ptr [ %45, %43 ], [ %8, %7 ]
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  tail call fastcc void @lookup_recursive_calls(ptr noundef %0, ptr noundef %42, ptr noundef %2) #17
  br label %43

43:                                               ; preds = %35, %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %35, !llvm.loop !124

47:                                               ; preds = %43, %3, %7
  ret void
}

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_edge_p_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !125
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_cgraph_edge_p_base_pop(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8, !tbaa !125
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !125
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @fibheap_replace_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @analyze_function(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare void @ipa_register_cgraph_hooks() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #0 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !26
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %4) #17
  store ptr %5, ptr @ipa_node_params_vector, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %7) #17
  %9 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !26
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %12) #17
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #0 {
  %1 = load ptr, ptr @ipa_edge_args_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !26
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %4) #17
  store ptr %5, ptr @ipa_edge_args_vector, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %7) #17
  %9 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !26
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %12) #17
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  tail call void @push_cfun(ptr noundef %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %5, ptr @current_function_decl, align 8, !tbaa !34
  %6 = tail call i32 @compute_inline_parameters(ptr noundef nonnull %0) #17
  %7 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @inline_indirect_intraprocedural_analysis(ptr noundef nonnull %0) #17
  br label %10

10:                                               ; preds = %9, %1
  store ptr null, ptr @current_function_decl, align 8, !tbaa !34
  tail call void @pop_cfun() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !127
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !34
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %2) #17
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) #17
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !34
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef %4) #17
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !127
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %8) #17
  %9 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !34, !nonnull !129, !noundef !129
  store i32 %0, ptr %9, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !34
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef %2, i32 noundef %0) #17, !range !130
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  store ptr %6, ptr @ipa_node_params_vector, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !131
  %7 = load i32, ptr %0, align 8, !tbaa !127
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
define internal fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !132
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !34
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %2) #17
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) #17
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !34
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef %4) #17
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ipa_edge_args, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !132
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %8) #17
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !34, !nonnull !129, !noundef !129
  store i32 %0, ptr %9, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !34
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef %2, i32 noundef %0) #17, !range !130
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  store ptr %6, ptr @ipa_edge_args_vector, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !134
  %7 = load i32, ptr %0, align 8, !tbaa !132
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
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @inline_indirect_intraprocedural_analysis(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !26
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @ipa_initialize_node_params(ptr noundef %0) #18
  tail call void @ipa_detect_param_modifications(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  tail call void @ipa_analyze_params_uses(ptr noundef %0) #18
  %6 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  tail call void @ipa_count_arguments(ptr noundef nonnull %13) #18
  tail call void @ipa_compute_jump_functions(ptr noundef nonnull %13) #18
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !135

17:                                               ; preds = %12, %8, %5
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  tail call void @ipa_print_node_params(ptr noundef nonnull %18, ptr noundef %0) #18
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !34
  tail call void @ipa_print_node_jump_functions(ptr noundef %21, ptr noundef %0) #18
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_initialize_node_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_detect_param_modifications(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_analyze_params_uses(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_count_arguments(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_compute_jump_functions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_print_node_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_print_node_jump_functions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_prop_write_jump_functions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_prop_read_jump_functions() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cgraph_preserve_function_body_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @save_inline_function_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @execute_fixup_cfg() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_order(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr @order, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = icmp eq ptr %0, @order
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void %2(ptr noundef nonnull @order, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"cgraph_edge", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !12, i64 88, !11, i64 90, !11, i64 90, !11, i64 90}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !10, i64 16}
!14 = !{!"cgraph_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !15, i64 144, !17, i64 184, !18, i64 224, !19, i64 232, !20, i64 256, !7, i64 288, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 308, !11, i64 309, !11, i64 309}
!15 = !{!"cgraph_local_info", !10, i64 0, !16, i64 8, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32, !11, i64 32}
!16 = !{!"inline_summary", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!17 = !{!"cgraph_global_info", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 36}
!18 = !{!"cgraph_rtl_info", !11, i64 0}
!19 = !{!"cgraph_clone_info", !10, i64 0, !10, i64 8, !10, i64 16}
!20 = !{!"cgraph_thunk_info", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!21 = !{!6, !10, i64 32}
!22 = !{i8 0, i8 2}
!23 = !{!14, !10, i64 112}
!24 = !{!14, !10, i64 200}
!25 = !{!14, !11, i64 212}
!26 = !{!11, !11, i64 0}
!27 = !{!6, !11, i64 80}
!28 = !{!6, !12, i64 88}
!29 = !{!6, !7, i64 0}
!30 = !{!6, !10, i64 8}
!31 = !{!14, !7, i64 192}
!32 = !{!16, !7, i64 0}
!33 = !{!14, !7, i64 184}
!34 = !{!10, !10, i64 0}
!35 = !{!6, !11, i64 72}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!14, !10, i64 0}
!39 = distinct !{!39, !37}
!40 = !{!41, !11, i64 8}
!41 = !{!"param_info", !10, i64 0, !11, i64 8, !8, i64 12, !11, i64 16, !11, i64 20, !10, i64 24}
!42 = !{!8, !8, i64 0}
!43 = distinct !{!43, !37}
!44 = !{!16, !11, i64 16}
!45 = !{!14, !11, i64 208}
!46 = !{!16, !11, i64 8}
!47 = !{!48, !10, i64 8}
!48 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !10, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!49 = !{!50, !10, i64 0}
!50 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !10, i64 40, !11, i64 48, !8, i64 52, !8, i64 60, !11, i64 68, !11, i64 72}
!51 = !{!52, !10, i64 56}
!52 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 48, !10, i64 56, !8, i64 64, !7, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!53 = !{!50, !10, i64 8}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = !{!57, !11, i64 0}
!57 = !{!"eni_weights_d", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!58 = distinct !{!58, !37}
!59 = !{!16, !11, i64 20}
!60 = !{!16, !11, i64 12}
!61 = !{!7, !7, i64 0}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !37}
!64 = !{!14, !10, i64 128}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !37}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = !{!14, !11, i64 296}
!74 = distinct !{!74, !37}
!75 = !{!48, !10, i64 24}
!76 = distinct !{!76, !37}
!77 = !{!14, !11, i64 216}
!78 = distinct !{!78, !37}
!79 = distinct !{!79, !37}
!80 = distinct !{!80, !37}
!81 = !{!14, !8, i64 220}
!82 = distinct !{!82, !37}
!83 = !{!84, !10, i64 0}
!84 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!85 = !{!84, !10, i64 8}
!86 = !{!84, !10, i64 16}
!87 = !{!88, !10, i64 0}
!88 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!89 = !{i32 0, i32 256}
!90 = !{i32 0, i32 65536}
!91 = distinct !{!91, !37}
!92 = distinct !{!92, !37}
!93 = !{!88, !10, i64 16}
!94 = !{!52, !11, i64 96}
!95 = !{!96, !10, i64 0}
!96 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!97 = !{!98, !10, i64 0}
!98 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!99 = !{!6, !10, i64 64}
!100 = distinct !{!100, !37}
!101 = distinct !{!101, !37}
!102 = !{!6, !10, i64 56}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
!106 = distinct !{!106, !37}
!107 = !{!108, !10, i64 0}
!108 = !{!"", !10, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!109 = !{!108, !11, i64 8}
!110 = !{!14, !7, i64 288}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !37}
!114 = !{!14, !10, i64 24}
!115 = distinct !{!115, !37}
!116 = distinct !{!116, !37}
!117 = distinct !{!117, !37}
!118 = distinct !{!118, !37}
!119 = !{!120, !10, i64 40}
!120 = !{!"fibnode", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 40, !11, i64 48, !11, i64 51}
!121 = !{!120, !7, i64 32}
!122 = distinct !{!122, !37}
!123 = distinct !{!123, !37}
!124 = distinct !{!124, !37}
!125 = !{!126, !11, i64 0}
!126 = !{!"VEC_cgraph_edge_p_base", !11, i64 0, !11, i64 4, !8, i64 8}
!127 = !{!128, !11, i64 0}
!128 = !{!"VEC_ipa_node_params_t_base", !11, i64 0, !11, i64 4, !8, i64 8}
!129 = !{}
!130 = !{i32 0, i32 2}
!131 = !{!128, !11, i64 4}
!132 = !{!133, !11, i64 0}
!133 = !{!"VEC_ipa_edge_args_t_base", !11, i64 0, !11, i64 4, !8, i64 8}
!134 = !{!133, !11, i64 4}
!135 = distinct !{!135, !37}
