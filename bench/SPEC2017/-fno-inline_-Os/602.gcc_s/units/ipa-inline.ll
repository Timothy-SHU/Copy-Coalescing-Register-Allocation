; ModuleID = 'ipa-inline.c'
source_filename = "ipa-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
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
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
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
@pass_early_inline = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @cgraph_gate_early_inlining, ptr @cgraph_early_inlining, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"einline\00", align 1
@flag_early_inlining = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Iterations: %i\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"flatten\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Flattening %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Considering to always inline inline candidate %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Not inlining: recursive call.\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Not inlining: %s\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Not inlining: SSA form does not match.\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Not inlining: Function body no longer available.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Considering inline candidate %s.\0A\00", align 1
@flag_inline_functions = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"Not inlining: code size would grow by %i.\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Not inlining: %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Not inlining: %s.\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Hit cycle in %s, switching to always inline only.\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Not inlining %s into %s to avoid cycle.\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c" Inlining %s into %s.\0A\00", align 1
@ncalls_inlined = internal unnamed_addr global i32 0, align 4
@flag_indirect_inlining = external local_unnamed_addr global i32, align 4
@flag_inline_small_functions = external local_unnamed_addr global i32, align 4
@pass_ipa_early_inline = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.18, ptr @cgraph_gate_ipa_early_inlining, ptr null, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 128 } }, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"einline_ipa\00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [34 x i8] c"Analyzing function body size: %s\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@eni_time_weights = external global %struct.eni_weights_d, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"  freq:%6i size:%3i time:%3i \00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"    Likely eliminated\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Overall function body time: %i-%i size: %i-%i\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"With function call overhead time: %i-%i size: %i-%i\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@pass_inline_parameters = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.25, ptr null, ptr @compute_inline_parameters_for_current, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.25 = private unnamed_addr constant [13 x i8] c"inline_param\00", align 1
@pass_ipa_inline = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str.26, ptr null, ptr @cgraph_decide_inlining, ptr null, ptr null, i32 0, i32 46, i32 0, i32 0, i32 0, i32 256, i32 385 }, ptr @inline_generate_summary, ptr @inline_write_summary, ptr @inline_read_summary, ptr null, ptr @lto_ipa_fixup_call_notes, i32 0, ptr @inline_transform, ptr null }, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
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
@gt_ggc_r_gt_ipa_inline_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @order, i64 1, i64 8, ptr @gt_ggc_ma_order, ptr @gt_pch_na_order }, %struct.ggc_root_tab zeroinitializer], align 16
@order = internal global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cgraph_clone_inlined_nodes(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !240 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %60, label %5, !prof !241

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !250
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !258
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %52, !prof !259

13:                                               ; preds = %5
  %14 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %7) #17, !range !260
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %52, label %16, !prof !261

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !262
  %19 = icmp ne ptr %18, null
  %20 = load ptr, ptr @cgraph_new_nodes, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %52, label %23, !prof !263

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 19, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !264
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !265

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 257, ptr noundef nonnull @.str.1) #18
  %28 = load ptr, ptr %6, align 8, !tbaa !242
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %7, %23 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 27
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 32
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35, !prof !266

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 19, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !267
  %38 = load i32, ptr @overall_size, align 4, !tbaa !268
  %39 = sub nsw i32 %38, %37
  store i32 %39, ptr @overall_size, align 4, !tbaa !268
  %40 = load i32, ptr @nfunctions_inlined, align 4, !tbaa !268
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @nfunctions_inlined, align 4, !tbaa !268
  br label %42

42:                                               ; preds = %35, %29
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 18, i32 2
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, -3
  store i8 %45, ptr %43, align 8
  %46 = load ptr, ptr %6, align 8, !tbaa !242
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !269
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %50 = load i16, ptr %49, align 8, !tbaa !270
  %51 = zext i16 %50 to i32
  tail call fastcc void @update_noncloned_frequencies(ptr noundef %46, i32 noundef %48, i32 noundef %51) #17
  br label %60

52:                                               ; preds = %16, %13, %5
  %53 = load i64, ptr %0, align 8, !tbaa !271
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !269
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %57 = load i16, ptr %56, align 8, !tbaa !270
  %58 = zext i16 %57 to i32
  %59 = tail call ptr @cgraph_clone_node(ptr noundef nonnull %7, i64 noundef %53, i32 noundef %55, i32 noundef %58, i8 noundef zeroext %2, ptr noundef null) #18
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %0, ptr noundef %59) #18
  br label %60

60:                                               ; preds = %42, %52, %3
  %61 = phi i8 [ %1, %52 ], [ 0, %42 ], [ 0, %3 ]
  %62 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !272
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %63, i64 0, i32 19, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !264
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !242
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 19, i32 2
  %70 = select i1 %66, ptr %63, ptr %65, !prof !273
  store ptr %70, ptr %69, align 8, !tbaa !264
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %63, i64 0, i32 19, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !274
  %73 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %63) #17
  %74 = load i64, ptr %73, align 8, !tbaa !275
  %75 = add nsw i64 %74, %72
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 19, i32 1
  store i64 %75, ptr %76, align 8, !tbaa !274
  %77 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %68) #17
  %78 = load i64, ptr %77, align 8, !tbaa !275
  %79 = add nsw i64 %78, %75
  %80 = getelementptr inbounds %struct.cgraph_node, ptr %70, i64 0, i32 19
  %81 = load i64, ptr %80, align 8, !tbaa !276
  %82 = icmp slt i64 %81, %79
  br i1 %82, label %83, label %84, !prof !277

83:                                               ; preds = %60
  store i64 %79, ptr %80, align 8, !tbaa !276
  br label %84

84:                                               ; preds = %83, %60
  %85 = getelementptr inbounds %struct.cgraph_node, ptr %68, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !278
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88, !prof !279

88:                                               ; preds = %84, %94
  %89 = phi ptr [ %96, %94 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.cgraph_edge, ptr %89, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !280
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94, !prof !281

93:                                               ; preds = %88
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %89, i8 noundef zeroext %61, i8 noundef zeroext %2) #17
  br label %94

94:                                               ; preds = %88, %93
  %95 = getelementptr inbounds %struct.cgraph_edge, ptr %89, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !278
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %88, !prof !282, !llvm.loop !283

98:                                               ; preds = %94, %84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !285 !PGOFuncName !286 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %18, !prof !287

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !288
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !289

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
define internal fastcc void @update_noncloned_frequencies(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !290 !PGOFuncName !291 {
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8, !prof !292

8:                                                ; preds = %3
  %9 = trunc i32 %2 to i16
  %10 = sext i32 %4 to i64
  br label %11

11:                                               ; preds = %8, %32
  %12 = phi ptr [ %6, %8 ], [ %34, %32 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 13
  %14 = load i16, ptr %13, align 8, !tbaa !270
  %15 = add i16 %14, %9
  store i16 %15, ptr %13, align 8, !tbaa !270
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !269
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, %10
  %20 = sdiv i64 %19, 1000
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 100000
  br i1 %22, label %23, label %24, !prof !293

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %11
  %25 = phi i32 [ 100000, %23 ], [ %21, %11 ]
  store i32 %25, ptr %16, align 8, !tbaa !269
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !280
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32, !prof !294

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !242
  tail call fastcc void @update_noncloned_frequencies(ptr noundef %31, i32 noundef %4, i32 noundef %2) #17
  br label %32

32:                                               ; preds = %24, %29
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %12, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !278
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %11, !prof !295, !llvm.loop !296

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_clone_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @inline_summary(ptr noundef readnone %0) unnamed_addr #5 !prof !297 !PGOFuncName !298 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_early_inlining() #6 !prof !299 !PGOFuncName !300 {
  %1 = load i32, ptr @flag_early_inlining, align 4, !tbaa !268
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cgraph_early_inlining() #0 !prof !299 !PGOFuncName !301 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !278
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #18
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !278
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %5 = load i32, ptr %4, align 4, !tbaa !268
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %52, !prof !302

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !268
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52, !prof !302

11:                                               ; preds = %7
  %12 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %13 = getelementptr inbounds %struct.param_info, ptr %12, i64 9, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !303
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %40, !prof !305

16:                                               ; preds = %11, %35
  %17 = phi i32 [ %31, %35 ], [ 0, %11 ]
  %18 = phi i32 [ %30, %35 ], [ 0, %11 ]
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %19, i32 3, i32 2
  %21 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %2, i32 noundef %20, i32 noundef 0) #17, !range !260
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23, !prof !306

23:                                               ; preds = %16
  %24 = load i8, ptr @timevar_enable, align 1, !tbaa !307
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !308

26:                                               ; preds = %23
  tail call void @timevar_push_1(i32 noundef 47) #18
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr @current_function_decl, align 8, !tbaa !278
  %29 = tail call i32 @optimize_inline_calls(ptr noundef %28) #18
  %30 = or i32 %29, %18
  %31 = add nuw nsw i32 %17, 1
  %32 = load i8, ptr @timevar_enable, align 1, !tbaa !307
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34, !prof !308

34:                                               ; preds = %27
  tail call void @timevar_pop_1(i32 noundef 47) #18
  br label %35

35:                                               ; preds = %34, %27
  %36 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %37 = getelementptr inbounds %struct.param_info, ptr %36, i64 9, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !303
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %16, label %40, !prof !309, !llvm.loop !310

40:                                               ; preds = %16, %35, %11
  %41 = phi i32 [ 0, %11 ], [ %30, %35 ], [ %18, %16 ]
  %42 = phi i32 [ 0, %11 ], [ %31, %35 ], [ %17, %16 ]
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !302

45:                                               ; preds = %40
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.3, i32 noundef %42) #17
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr @cfun, align 8, !tbaa !278
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 20
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 33554432
  store i32 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %0, %7, %47
  %53 = phi i32 [ %41, %47 ], [ 0, %7 ], [ 0, %0 ]
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !311 !PGOFuncName !312 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !313
  %7 = add i32 %1, -3
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %9, label %26, !prof !314

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.4, ptr noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !302

15:                                               ; preds = %9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @indent_to(ptr noundef nonnull %16, i32 noundef %2) #18
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %20 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.5, ptr noundef %20) #17
  br label %22

22:                                               ; preds = %9, %18, %15
  %23 = phi i32 [ 4, %15 ], [ 4, %18 ], [ %1, %9 ]
  %24 = zext i32 %23 to i64
  %25 = inttoptr i64 %24 to ptr
  store ptr %25, ptr %5, align 8, !tbaa !313
  br label %30

26:                                               ; preds = %3
  %27 = zext nneg i32 %1 to i64
  %28 = inttoptr i64 %27 to ptr
  store ptr %28, ptr %5, align 8, !tbaa !313
  %29 = icmp eq i32 %1, 2
  br i1 %29, label %131, label %30, !prof !315

30:                                               ; preds = %22, %26
  %31 = phi i32 [ %23, %22 ], [ 1, %26 ]
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !278
  %34 = icmp eq ptr %33, null
  br i1 %34, label %129, label %35, !prof !316

35:                                               ; preds = %30
  %36 = icmp eq i32 %31, 4
  br label %37

37:                                               ; preds = %35, %124
  %38 = phi ptr [ %33, %35 ], [ %127, %124 ]
  %39 = phi i8 [ 0, %35 ], [ %125, %124 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !242
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %41, i64 0, i32 18, i32 2
  %43 = load i8, ptr %42, align 8
  %44 = and i8 %43, 16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50, !prof !317

46:                                               ; preds = %37
  br i1 %36, label %47, label %124, !prof !318

47:                                               ; preds = %46
  %48 = and i8 %43, 8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %124, label %50

50:                                               ; preds = %47, %37
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %38, i64 0, i32 14
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %124

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %38, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !280
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %36, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = tail call fastcc zeroext i8 @try_inline(ptr noundef nonnull %38, i32 noundef 4, i32 noundef %2) #17, !range !260
  %62 = or i8 %61, %39
  br label %124

63:                                               ; preds = %55
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  tail call void @indent_to(ptr noundef nonnull %64, i32 noundef %2) #18
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %68 = load ptr, ptr %40, align 8, !tbaa !242
  %69 = tail call ptr @cgraph_node_name(ptr noundef %68) #18
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.6, ptr noundef %69) #17
  %71 = load ptr, ptr %40, align 8, !tbaa !242
  br label %72

72:                                               ; preds = %66, %63
  %73 = phi ptr [ %71, %66 ], [ %41, %63 ]
  %74 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %0, ptr noundef %73, ptr noundef nonnull %56) #17, !range !260
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %78 = icmp eq ptr %77, null
  br i1 %78, label %124, label %79

79:                                               ; preds = %76
  tail call void @indent_to(ptr noundef nonnull %77, i32 noundef %2) #18
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %81 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %80)
  br label %124

82:                                               ; preds = %72
  %83 = tail call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %38) #18
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %87 = icmp eq ptr %86, null
  br i1 %87, label %124, label %88

88:                                               ; preds = %85
  tail call void @indent_to(ptr noundef nonnull %86, i32 noundef %2) #18
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %90 = load i32, ptr %56, align 8, !tbaa !280
  %91 = tail call ptr @cgraph_inline_failed_string(i32 noundef %90) #18
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.8, ptr noundef %91) #17
  br label %124

93:                                               ; preds = %82
  %94 = load ptr, ptr %0, align 8, !tbaa !288
  %95 = getelementptr inbounds %struct.tree_function_decl, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !307
  %97 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %96) #17, !range !260
  %98 = load ptr, ptr %40, align 8, !tbaa !242
  %99 = load ptr, ptr %98, align 8, !tbaa !288
  %100 = getelementptr inbounds %struct.tree_function_decl, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !307
  %102 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %101) #17, !range !260
  %103 = icmp eq i8 %97, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %93
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %104
  tail call void @indent_to(ptr noundef nonnull %105, i32 noundef %2) #18
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %109 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 39, i64 1, ptr %108)
  br label %124

110:                                              ; preds = %93
  %111 = getelementptr inbounds %struct.cgraph_node, ptr %98, i64 0, i32 27
  %112 = load i16, ptr %111, align 4
  %113 = and i16 %112, 32
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  tail call void @indent_to(ptr noundef nonnull %116, i32 noundef %2) #18
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %120 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 49, i64 1, ptr %119)
  br label %124

121:                                              ; preds = %110
  %122 = tail call fastcc zeroext i8 @try_inline(ptr noundef nonnull %38, i32 noundef %31, i32 noundef %2) #17, !range !260
  %123 = or i8 %122, %39
  br label %124

124:                                              ; preds = %115, %118, %104, %107, %85, %88, %76, %79, %50, %46, %47, %121, %60
  %125 = phi i8 [ %39, %50 ], [ %62, %60 ], [ %39, %79 ], [ %39, %76 ], [ %39, %107 ], [ %39, %104 ], [ %123, %121 ], [ %39, %118 ], [ %39, %115 ], [ %39, %88 ], [ %39, %85 ], [ %39, %46 ], [ %39, %47 ]
  %126 = getelementptr inbounds %struct.cgraph_edge, ptr %38, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !278
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %37, !prof !319, !llvm.loop !320

129:                                              ; preds = %124, %30
  %130 = phi i8 [ 0, %30 ], [ %125, %124 ]
  switch i32 %31, label %131 [
    i32 4, label %313
    i32 1, label %313
  ]

131:                                              ; preds = %26, %129
  %132 = phi i8 [ %130, %129 ], [ 0, %26 ]
  %133 = phi i32 [ %31, %129 ], [ 2, %26 ]
  %134 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %135 = load i8, ptr %134, align 8
  %136 = and i8 %135, 16
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %313, !prof !321

138:                                              ; preds = %131
  %139 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %140 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !278
  %142 = icmp eq ptr %141, null
  br i1 %142, label %311, label %143, !prof !322

143:                                              ; preds = %138
  %144 = and i32 %133, -2
  %145 = icmp eq i32 %144, 2
  br label %146

146:                                              ; preds = %143, %306
  %147 = phi ptr [ %141, %143 ], [ %309, %306 ]
  %148 = phi i8 [ %132, %143 ], [ %307, %306 ]
  %149 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !242
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %150, i64 0, i32 18, i32 2
  %152 = load i8, ptr %151, align 8
  %153 = and i8 %152, 8
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %306, label %155, !prof !323

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 9
  %157 = load i32, ptr %156, align 8, !tbaa !280
  %158 = icmp ne i32 %157, 0
  %159 = and i8 %152, 16
  %160 = icmp eq i8 %159, 0
  %161 = and i1 %160, %158
  br i1 %161, label %162, label %306, !prof !324

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.cgraph_node, ptr %150, i64 0, i32 24
  %164 = load i32, ptr %163, align 8, !tbaa !325
  %165 = call zeroext i8 @bitmap_set_bit(ptr noundef %139, i32 noundef %164) #18
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %306, label %167, !prof !326

167:                                              ; preds = %162
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170, !prof !327

170:                                              ; preds = %167
  %171 = load ptr, ptr %149, align 8, !tbaa !242
  %172 = call ptr @cgraph_node_name(ptr noundef %171) #18
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %168, ptr noundef nonnull @.str.11, ptr noundef %172) #17
  br label %174

174:                                              ; preds = %170, %167
  %175 = load ptr, ptr %149, align 8, !tbaa !242
  %176 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %0, ptr noundef %175, ptr noundef nonnull %156) #17, !range !260
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %184, label %178, !prof !328

178:                                              ; preds = %174
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %180 = icmp eq ptr %179, null
  br i1 %180, label %306, label %181, !prof !329

181:                                              ; preds = %178
  call void @indent_to(ptr noundef nonnull %179, i32 noundef %2) #18
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %183 = call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %182)
  br label %306

184:                                              ; preds = %174
  %185 = load ptr, ptr %0, align 8, !tbaa !288
  %186 = getelementptr inbounds %struct.tree_function_decl, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !307
  %188 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %187) #17, !range !260
  %189 = load ptr, ptr %149, align 8, !tbaa !242
  %190 = load ptr, ptr %189, align 8, !tbaa !288
  %191 = getelementptr inbounds %struct.tree_function_decl, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !307
  %193 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %192) #17, !range !260
  %194 = icmp eq i8 %188, %193
  br i1 %194, label %201, label %195, !prof !330

195:                                              ; preds = %184
  %196 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %197 = icmp eq ptr %196, null
  br i1 %197, label %306, label %198, !prof !331

198:                                              ; preds = %195
  call void @indent_to(ptr noundef nonnull %196, i32 noundef %2) #18
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %200 = call i64 @fwrite(ptr nonnull @.str.9, i64 39, i64 1, ptr %199)
  br label %306

201:                                              ; preds = %184
  %202 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %147) #18
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %216, label %204, !prof !332

204:                                              ; preds = %201
  %205 = load ptr, ptr %149, align 8, !tbaa !242
  %206 = call fastcc zeroext i8 @leaf_node_p(ptr noundef %205) #17, !range !260
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %216, label %208, !prof !333

208:                                              ; preds = %204
  %209 = load ptr, ptr @cfun, align 8, !tbaa !278
  %210 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %209) #18
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %216, label %212, !prof !334

212:                                              ; preds = %208
  %213 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %214 = getelementptr inbounds %struct.param_info, ptr %213, i64 20, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !303
  br label %216

216:                                              ; preds = %212, %208, %204, %201
  %217 = phi i32 [ %215, %212 ], [ 0, %208 ], [ 0, %204 ], [ 0, %201 ]
  br i1 %145, label %218, label %220, !prof !335

218:                                              ; preds = %216
  %219 = load ptr, ptr %149, align 8, !tbaa !242
  br label %230

220:                                              ; preds = %216
  %221 = load i32, ptr @flag_inline_functions, align 4, !tbaa !268
  %222 = icmp eq i32 %221, 0
  %223 = load ptr, ptr %149, align 8, !tbaa !242
  br i1 %222, label %224, label %259

224:                                              ; preds = %220
  %225 = load ptr, ptr %223, align 8, !tbaa !288
  %226 = getelementptr inbounds %struct.tree_function_decl, ptr %225, i64 0, i32 5
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 2097152
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %218, %224
  %231 = phi ptr [ %219, %218 ], [ %223, %224 ]
  %232 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !272
  %234 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %233, ptr noundef %231) #17
  %235 = load ptr, ptr %232, align 8, !tbaa !272
  %236 = getelementptr inbounds %struct.cgraph_node, ptr %235, i64 0, i32 19, i32 4
  %237 = load i32, ptr %236, align 4, !tbaa !267
  %238 = add nsw i32 %237, %217
  %239 = icmp sgt i32 %234, %238
  %240 = load ptr, ptr %149, align 8, !tbaa !242
  br i1 %239, label %241, label %259, !prof !336

241:                                              ; preds = %230
  %242 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %240) #17
  %243 = icmp sgt i32 %242, %217
  br i1 %243, label %246, label %244, !prof !337

244:                                              ; preds = %241
  %245 = load ptr, ptr %149, align 8, !tbaa !242
  br label %259

246:                                              ; preds = %241
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %248 = icmp eq ptr %247, null
  br i1 %248, label %306, label %249, !prof !338

249:                                              ; preds = %246
  call void @indent_to(ptr noundef nonnull %247, i32 noundef %2) #18
  %250 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %251 = load ptr, ptr %232, align 8, !tbaa !272
  %252 = load ptr, ptr %149, align 8, !tbaa !242
  %253 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %251, ptr noundef %252) #17
  %254 = load ptr, ptr %232, align 8, !tbaa !272
  %255 = getelementptr inbounds %struct.cgraph_node, ptr %254, i64 0, i32 19, i32 4
  %256 = load i32, ptr %255, align 4, !tbaa !267
  %257 = sub nsw i32 %253, %256
  %258 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.12, i32 noundef %257) #17
  br label %306

259:                                              ; preds = %244, %230, %224, %220
  %260 = phi ptr [ %245, %244 ], [ %240, %230 ], [ %223, %224 ], [ %223, %220 ]
  %261 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef nonnull %0, ptr noundef %260, ptr noundef nonnull %156, i8 noundef zeroext 0) #17, !range !260
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %268, label %263, !prof !339

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 14
  %265 = load i8, ptr %264, align 2
  %266 = and i8 %265, 2
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %276, label %268, !prof !340

268:                                              ; preds = %263, %259
  %269 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %270 = icmp eq ptr %269, null
  br i1 %270, label %306, label %271, !prof !341

271:                                              ; preds = %268
  call void @indent_to(ptr noundef nonnull %269, i32 noundef %2) #18
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %273 = load i32, ptr %156, align 8, !tbaa !280
  %274 = call ptr @cgraph_inline_failed_string(i32 noundef %273) #18
  %275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.13, ptr noundef %274) #17
  br label %306

276:                                              ; preds = %263
  %277 = load ptr, ptr %149, align 8, !tbaa !242
  %278 = getelementptr inbounds %struct.cgraph_node, ptr %277, i64 0, i32 27
  %279 = load i16, ptr %278, align 4
  %280 = and i16 %279, 32
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %282, label %288, !prof !342

282:                                              ; preds = %276
  %283 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %284 = icmp eq ptr %283, null
  br i1 %284, label %306, label %285

285:                                              ; preds = %282
  call void @indent_to(ptr noundef nonnull %283, i32 noundef %2) #18
  %286 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %287 = call i64 @fwrite(ptr nonnull @.str.10, i64 49, i64 1, ptr %286)
  br label %306

288:                                              ; preds = %276
  %289 = call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %147) #18
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %299, !prof !342

291:                                              ; preds = %288
  %292 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %293 = icmp eq ptr %292, null
  br i1 %293, label %306, label %294

294:                                              ; preds = %291
  call void @indent_to(ptr noundef nonnull %292, i32 noundef %2) #18
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %296 = load i32, ptr %156, align 8, !tbaa !280
  %297 = call ptr @cgraph_inline_failed_string(i32 noundef %296) #18
  %298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef nonnull @.str.14, ptr noundef %297) #17
  br label %306

299:                                              ; preds = %288
  %300 = load ptr, ptr %149, align 8, !tbaa !242
  %301 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef %300, ptr noundef nonnull %4) #17, !range !260
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %306, label %303, !prof !343

303:                                              ; preds = %299
  %304 = call fastcc zeroext i8 @try_inline(ptr noundef nonnull %147, i32 noundef %133, i32 noundef %2) #17, !range !260
  %305 = or i8 %304, %148
  br label %306

306:                                              ; preds = %299, %303, %291, %294, %282, %285, %268, %271, %246, %249, %195, %198, %178, %181, %162, %146, %155
  %307 = phi i8 [ %148, %155 ], [ %148, %146 ], [ %148, %162 ], [ %148, %181 ], [ %148, %178 ], [ %148, %198 ], [ %148, %195 ], [ %148, %249 ], [ %148, %246 ], [ %148, %271 ], [ %148, %268 ], [ %148, %285 ], [ %148, %282 ], [ %148, %294 ], [ %148, %291 ], [ %305, %303 ], [ %148, %299 ]
  %308 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 6
  %309 = load ptr, ptr %308, align 8, !tbaa !278
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %146, !prof !344, !llvm.loop !345

311:                                              ; preds = %306, %138
  %312 = phi i8 [ %132, %138 ], [ %307, %306 ]
  call void @bitmap_obstack_free(ptr noundef %139) #18
  br label %313

313:                                              ; preds = %129, %129, %311, %131
  %314 = phi i8 [ %132, %131 ], [ %312, %311 ], [ %130, %129 ], [ %130, %129 ]
  %315 = ptrtoint ptr %6 to i64
  %316 = and i64 %315, 4294967295
  %317 = inttoptr i64 %316 to ptr
  store ptr %317, ptr %5, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i8 %314
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
define internal fastcc noundef zeroext i8 @try_inline(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !346 !PGOFuncName !347 {
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !313
  %8 = ptrtoint ptr %7 to i64
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 18, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = lshr i8 %10, 4
  %12 = and i8 %11, 1
  %13 = and i64 %8, 4294967295
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %44, label %15, !prof !348

15:                                               ; preds = %3
  %16 = icmp ne i8 %12, 0
  %17 = icmp ne i32 %1, 1
  %18 = and i1 %17, %16
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %20 = icmp eq ptr %19, null
  br i1 %18, label %21, label %27

21:                                               ; preds = %15
  br i1 %20, label %22, label %23

22:                                               ; preds = %21
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8, !tbaa !313
  br label %58

23:                                               ; preds = %21
  tail call void @indent_to(ptr noundef nonnull %19, i32 noundef %2) #18
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %25 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.15, ptr noundef %25) #17
  br label %44

27:                                               ; preds = %15
  br i1 %20, label %38, label %28

28:                                               ; preds = %27
  tail call void @indent_to(ptr noundef nonnull %19, i32 noundef %2) #18
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %30 = tail call ptr @cgraph_node_name(ptr noundef nonnull %5) #18
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !272
  %33 = tail call ptr @cgraph_node_name(ptr noundef %32) #18
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.16, ptr noundef %30, ptr noundef %33) #17
  %35 = load ptr, ptr %4, align 8, !tbaa !242
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %35, i64 0, i32 18, i32 2
  %37 = load i8, ptr %36, align 8
  br label %38

38:                                               ; preds = %28, %27
  %39 = phi i8 [ %37, %28 ], [ %10, %27 ]
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 1, i32 12
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  store i32 %42, ptr %43, align 8, !tbaa !280
  br label %74

44:                                               ; preds = %23, %3
  %45 = phi i32 [ 1, %23 ], [ %1, %3 ]
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %47 = zext i32 %45 to i64
  %48 = inttoptr i64 %47 to ptr
  store ptr %48, ptr %6, align 8, !tbaa !313
  %49 = icmp eq ptr %46, null
  br i1 %49, label %58, label %50, !prof !349

50:                                               ; preds = %44
  tail call void @indent_to(ptr noundef nonnull %46, i32 noundef %2) #18
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %52 = load ptr, ptr %4, align 8, !tbaa !242
  %53 = tail call ptr @cgraph_node_name(ptr noundef %52) #18
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !272
  %56 = tail call ptr @cgraph_node_name(ptr noundef %55) #18
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.17, ptr noundef %53, ptr noundef %56) #17
  br label %58

58:                                               ; preds = %22, %50, %44
  %59 = phi i32 [ 1, %22 ], [ %45, %50 ], [ %45, %44 ]
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !280
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63, !prof !350

63:                                               ; preds = %58
  tail call fastcc void @cgraph_mark_inline(ptr noundef nonnull %0) #17
  %64 = icmp eq i32 %59, 4
  %65 = icmp ne i8 %12, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %67, label %71, !prof !351

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 8, !tbaa !242
  %69 = add nsw i32 %2, 1
  %70 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef %68, i32 noundef %59, i32 noundef %69) #17, !range !260
  br label %71

71:                                               ; preds = %67, %63, %58
  %72 = phi i8 [ 0, %58 ], [ 1, %63 ], [ 1, %67 ]
  %73 = inttoptr i64 %13 to ptr
  store ptr %73, ptr %6, align 8, !tbaa !313
  br label %74

74:                                               ; preds = %71, %38
  %75 = phi i8 [ %72, %71 ], [ 0, %38 ]
  ret i8 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #8 !prof !352 !PGOFuncName !353 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !264
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %1, align 8, !tbaa !288
  %8 = select i1 %6, ptr %0, ptr %5, !prof !354
  %9 = load ptr, ptr %8, align 8, !tbaa !288
  %10 = icmp eq ptr %7, %9
  %11 = icmp ne ptr %2, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %19, !prof !355

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 1, i32 12
  store i32 %18, ptr %2, align 4, !tbaa !268
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
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #2 !prof !356 !PGOFuncName !357 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !358

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !359
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !361

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
define internal fastcc noundef zeroext i8 @leaf_node_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !362 !PGOFuncName !363 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %9, !prof !364

5:                                                ; preds = %22
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9, !prof !365, !llvm.loop !366

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !242
  %13 = load ptr, ptr %12, align 8, !tbaa !288
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 6144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18, !prof !367

18:                                               ; preds = %9
  %19 = load i64, ptr %13, align 8
  %20 = and i64 %19, 1048576
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22, !prof !368

22:                                               ; preds = %18
  %23 = and i32 %15, 134217728
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %5, label %25, !prof !369

25:                                               ; preds = %22, %18, %9, %5, %1
  %26 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ], [ 0, %18 ], [ 0, %22 ]
  ret i8 %26
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !370 !PGOFuncName !371 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 19, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !267
  %6 = tail call fastcc ptr @inline_summary(ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.inline_summary, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !372
  %9 = sub nsw i32 %5, %8
  %10 = mul nsw i32 %9, %0
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !267
  %13 = add nsw i32 %10, %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15, !prof !373

15:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %3, %15
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cgraph_estimate_growth(ptr noundef %0) unnamed_addr #0 !prof !374 !PGOFuncName !375 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !376
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %5, label %52, !prof !377

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9, !prof !378

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %30, %27 ], [ %7, %5 ]
  %11 = phi i8 [ %16, %27 ], [ 0, %5 ]
  %12 = phi i32 [ %28, %27 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !272
  %15 = icmp eq ptr %14, %0
  %16 = select i1 %15, i8 1, i8 %11, !prof !379
  %17 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !280
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20, !prof !380

20:                                               ; preds = %9
  %21 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %14, ptr noundef %0) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !272
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 19, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !267
  %25 = add i32 %21, %12
  %26 = sub i32 %25, %24
  br label %27

27:                                               ; preds = %9, %20
  %28 = phi i32 [ %26, %20 ], [ %12, %9 ]
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !278
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !prof !381, !llvm.loop !382

32:                                               ; preds = %27
  %33 = icmp ne i8 %16, 0
  br label %34

34:                                               ; preds = %32, %5
  %35 = phi i32 [ 0, %5 ], [ %28, %32 ]
  %36 = phi i1 [ false, %5 ], [ %33, %32 ]
  %37 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef %0) #17, !range !260
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39, !prof !383

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !288
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 33554432
  %44 = icmp ne i64 %43, 0
  %45 = select i1 %44, i1 true, i1 %36
  br i1 %45, label %50, label %46, !prof !384

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !267
  %49 = sub nsw i32 %35, %48
  br label %50

50:                                               ; preds = %46, %39, %34
  %51 = phi i32 [ %35, %39 ], [ %49, %46 ], [ %35, %34 ]
  store i32 %51, ptr %2, align 8, !tbaa !376
  br label %52

52:                                               ; preds = %1, %50
  %53 = phi i32 [ %51, %50 ], [ %3, %1 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cgraph_check_inline_limits(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !385 !PGOFuncName !386 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %21, !prof !387

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10, !prof !388

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %17, %10 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  %15 = icmp eq ptr %14, %1
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %12, %16
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !prof !389, !llvm.loop !390

21:                                               ; preds = %10, %6, %4
  %22 = phi i32 [ 1, %4 ], [ 0, %6 ], [ %17, %10 ]
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !264
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %0, ptr %24, !prof !391
  %27 = tail call fastcc ptr @inline_summary(ptr noundef %26) #17
  %28 = getelementptr inbounds %struct.inline_summary, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !392
  %30 = tail call fastcc ptr @inline_summary(ptr noundef %1) #17
  %31 = getelementptr inbounds %struct.inline_summary, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !392
  %33 = icmp sgt i32 %29, %32
  %34 = select i1 %33, ptr %27, ptr %30, !prof !393
  %35 = getelementptr inbounds %struct.inline_summary, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !392
  %37 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %38 = getelementptr inbounds %struct.param_info, ptr %37, i64 16, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !303
  %40 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef %22, ptr noundef %26, ptr noundef %1) #17
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !267
  %43 = icmp slt i32 %40, %42
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  br i1 %43, label %56, label %45, !prof !394

45:                                               ; preds = %21
  %46 = mul nsw i32 %39, %36
  %47 = sdiv i32 %46, 100
  %48 = add nsw i32 %47, %36
  %49 = getelementptr inbounds %struct.param_info, ptr %44, i64 15, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !303
  %51 = icmp sgt i32 %40, %50
  %52 = icmp sgt i32 %40, %48
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %56, !prof !395

54:                                               ; preds = %45
  %55 = icmp eq ptr %2, null
  br i1 %55, label %80, label %78, !prof !396

56:                                               ; preds = %45, %21
  %57 = load i64, ptr %27, align 8, !tbaa !275
  %58 = getelementptr inbounds %struct.param_info, ptr %44, i64 22, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !303
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %57, %60
  %62 = sdiv i64 %61, 100
  %63 = add nsw i64 %62, %57
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !274
  %66 = add nsw i64 %65, %57
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19
  %68 = load i64, ptr %67, align 8, !tbaa !276
  %69 = add nsw i64 %66, %68
  %70 = icmp sgt i64 %69, %63
  br i1 %70, label %71, label %80, !prof !397

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.param_info, ptr %44, i64 21, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !303
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i64 %69, %74
  br i1 %75, label %76, label %80, !prof !398

76:                                               ; preds = %71
  %77 = icmp eq ptr %2, null
  br i1 %77, label %80, label %78, !prof !399

78:                                               ; preds = %76, %54
  %79 = phi i32 [ 7, %54 ], [ 8, %76 ]
  store i32 %79, ptr %2, align 4, !tbaa !268
  br label %80

80:                                               ; preds = %78, %56, %71, %76, %54
  %81 = phi i8 [ 0, %54 ], [ 0, %76 ], [ 1, %71 ], [ 1, %56 ], [ 0, %78 ]
  ret i8 %81
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @cgraph_default_inline_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #8 !prof !400 !PGOFuncName !401 {
  %3 = load ptr, ptr %0, align 8, !tbaa !288
  %4 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !268
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13, !prof !402

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
  br i1 %17, label %18, label %20, !prof !402

18:                                               ; preds = %13
  %19 = icmp eq ptr %1, null
  br i1 %19, label %42, label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !267
  %27 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  br i1 %24, label %34, label %28, !prof !403

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.param_info, ptr %27, i64 2, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !303
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %42, label %32, !prof !404

32:                                               ; preds = %28
  %33 = icmp eq ptr %1, null
  br i1 %33, label %42, label %40

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.param_info, ptr %27, i64 3, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !303
  %37 = icmp slt i32 %26, %36
  br i1 %37, label %42, label %38, !prof !405

38:                                               ; preds = %34
  %39 = icmp eq ptr %1, null
  br i1 %39, label %42, label %40, !prof !406

40:                                               ; preds = %38, %32, %18, %11
  %41 = phi i32 [ 6, %11 ], [ 3, %18 ], [ 9, %32 ], [ 10, %38 ]
  store i32 %41, ptr %1, align 4, !tbaa !268
  br label %42

42:                                               ; preds = %40, %28, %34, %38, %32, %18, %11
  %43 = phi i8 [ 0, %11 ], [ 0, %18 ], [ 0, %32 ], [ 0, %38 ], [ 1, %34 ], [ 1, %28 ], [ 0, %40 ]
  ret i8 %43
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_mark_inline(ptr noundef readonly %0) unnamed_addr #0 !prof !407 !PGOFuncName !408 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !409

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #18
  br label %11

11:                                               ; preds = %1, %10
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15, !prof !410

15:                                               ; preds = %11, %31
  %16 = phi ptr [ %32, %31 ], [ %0, %11 ]
  %17 = phi ptr [ %19, %31 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !258
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !272
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %31, !prof !411

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !280
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !412

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %17, i8 noundef zeroext 1, ptr noundef null) #17
  %29 = icmp eq ptr %17, %16
  %30 = select i1 %29, ptr %19, ptr %16, !prof !413
  br label %31

31:                                               ; preds = %27, %15, %23
  %32 = phi ptr [ %16, %23 ], [ %16, %15 ], [ %30, %27 ]
  %33 = icmp eq ptr %19, null
  br i1 %33, label %34, label %15, !prof !414, !llvm.loop !415

34:                                               ; preds = %31, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !416 !PGOFuncName !417 {
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 19, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !267
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !280
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !418

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 311, ptr noundef nonnull @.str.1) #18
  %12 = load ptr, ptr %4, align 8, !tbaa !242
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %5, %3 ], [ %12, %11 ]
  store i32 0, ptr %8, align 8, !tbaa !280
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 19, i32 6
  %16 = load i8, ptr %15, align 4, !tbaa !419
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24, !prof !420

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !288
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 65536
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr %4, align 8, !tbaa !242
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi ptr [ %23, %18 ], [ %14, %13 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 19, i32 6
  store i8 1, ptr %26, align 4, !tbaa !419
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !250
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !258
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39, !prof !421

32:                                               ; preds = %24
  %33 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(ptr noundef nonnull %25) #17, !range !260
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35, !prof !261

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !262
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !265

39:                                               ; preds = %35, %32, %24
  br label %40

40:                                               ; preds = %35, %39
  %41 = phi i1 [ false, %39 ], [ true, %35 ]
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext %1) #17
  %42 = load ptr, ptr %4, align 8, !tbaa !242
  %43 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %44 = load i32, ptr %43, align 8, !tbaa !269
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !280
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %65, !prof !422

48:                                               ; preds = %52
  %49 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !280
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65, !prof !423, !llvm.loop !424

52:                                               ; preds = %40, %48
  %53 = phi ptr [ %63, %48 ], [ %0, %40 ]
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !272
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 19, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !267
  %58 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %55, ptr noundef %42) #17
  store i32 %58, ptr %56, align 4, !tbaa !267
  %59 = tail call fastcc i32 @cgraph_estimate_time_after_inlining(i32 noundef %44, ptr noundef %55, ptr noundef %42) #17, !range !425
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %55, i64 0, i32 19, i32 3
  store i32 %59, ptr %60, align 8, !tbaa !426
  %61 = load ptr, ptr %54, align 8, !tbaa !272
  %62 = getelementptr inbounds %struct.cgraph_node, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !250
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %48, !prof !427, !llvm.loop !424

65:                                               ; preds = %52, %48, %40
  %66 = phi ptr [ null, %40 ], [ %55, %48 ], [ %55, %52 ]
  %67 = phi i32 [ 0, %40 ], [ %58, %48 ], [ %58, %52 ]
  %68 = phi i32 [ 0, %40 ], [ %57, %48 ], [ %57, %52 ]
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %42, i64 0, i32 19, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !264
  %71 = icmp eq ptr %70, %66
  br i1 %71, label %73, label %72, !prof !428

72:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #18
  br label %73

73:                                               ; preds = %65, %72
  %74 = icmp sgt i32 %67, %68
  br i1 %74, label %75, label %79, !prof !429

75:                                               ; preds = %73
  %76 = sub i32 %67, %68
  %77 = load i32, ptr @overall_size, align 4, !tbaa !268
  %78 = add nsw i32 %76, %77
  store i32 %78, ptr @overall_size, align 4, !tbaa !268
  br label %79

79:                                               ; preds = %75, %73
  br i1 %41, label %80, label %83, !prof !430

80:                                               ; preds = %79
  %81 = load i32, ptr @overall_size, align 4, !tbaa !268
  %82 = sub nsw i32 %81, %7
  store i32 %82, ptr @overall_size, align 4, !tbaa !268
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, ptr @ncalls_inlined, align 4, !tbaa !268
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr @ncalls_inlined, align 4, !tbaa !268
  %86 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !418

88:                                               ; preds = %83
  %89 = tail call zeroext i8 @ipa_propagate_indirect_call_infos(ptr noundef %0, ptr noundef %2) #18
  br label %90

90:                                               ; preds = %83, %88
  %91 = phi i8 [ %89, %88 ], [ 0, %83 ]
  ret i8 %91
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cgraph_estimate_time_after_inlining(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #2 !prof !431 !PGOFuncName !432 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 19, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !426
  %6 = sext i32 %5 to i64
  %7 = tail call fastcc ptr @inline_summary(ptr noundef %2) #17
  %8 = getelementptr inbounds %struct.inline_summary, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !433
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %6, %10
  %12 = sext i32 %0 to i64
  %13 = mul nsw i64 %11, %12
  %14 = add nsw i64 %13, 500
  %15 = sdiv i64 %14, 1000
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !426
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %24, label %21, !prof !434

21:                                               ; preds = %3
  %22 = icmp ugt i64 %19, 1000000000
  br i1 %22, label %23, label %24, !prof !435

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %3, %23, %21
  %25 = phi i64 [ 1000000000, %23 ], [ %19, %21 ], [ 0, %3 ]
  %26 = trunc i64 %25 to i32
  ret i32 %26
}

; Function Attrs: optsize
declare zeroext i8 @ipa_propagate_indirect_call_infos(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !436 !PGOFuncName !437 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12, !prof !438

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_ipa_early_inlining() #6 !prof !439 !PGOFuncName !440 {
  %1 = load i32, ptr @flag_early_inlining, align 4, !tbaa !268
  %2 = icmp eq i32 %1, 0
  %3 = load i8, ptr @in_lto_p, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %16, label %6, !prof !441

6:                                                ; preds = %0
  %7 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !268
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr @flag_test_coverage, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %16, label %12, !prof !441

12:                                               ; preds = %6
  %13 = load i32, ptr @profile_arc_flag, align 4, !tbaa !268
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %12, %0
  %17 = phi i8 [ 0, %0 ], [ 1, %6 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_inline_parameters(ptr noundef %0) local_unnamed_addr #0 !prof !442 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !443

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1865, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, ptr @optimize, align 4, !tbaa !268
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !444

10:                                               ; preds = %7
  %11 = tail call i64 @estimated_stack_frame_size() #18
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %0) #17
  store i64 %13, ptr %14, align 8, !tbaa !275
  store i64 %13, ptr %2, align 8, !tbaa !276
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 1
  store i64 0, ptr %15, align 8, !tbaa !274
  %16 = load ptr, ptr %0, align 8, !tbaa !288
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
  br i1 %28, label %29, label %37, !prof !445

29:                                               ; preds = %12
  %30 = load ptr, ptr %0, align 8, !tbaa !288
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
  %39 = load i32, ptr %38, align 8, !tbaa !446
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 3
  store i32 %39, ptr %40, align 8, !tbaa !426
  %41 = getelementptr inbounds %struct.inline_summary, ptr %14, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !392
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  store i32 %42, ptr %43, align 4, !tbaa !267
  ret i32 0
}

; Function Attrs: optsize
declare i64 @estimated_stack_frame_size() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_inlinable_function_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @estimate_function_body_sizes(ptr noundef %0) unnamed_addr #0 !prof !442 !PGOFuncName !447 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !288
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !307
  %6 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !307
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !443

10:                                               ; preds = %1
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.19, ptr noundef %11) #17
  br label %13

13:                                               ; preds = %10, %1
  %14 = icmp eq ptr %5, null
  br i1 %14, label %19, label %15, !prof !444

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !448
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22, !prof !444

19:                                               ; preds = %15, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1793, ptr noundef nonnull @.str.1) #18
  %20 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !448
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %17, %15 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %23, align 8, !tbaa !449
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !451
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !453
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %101, label %42, !prof !454

31:                                               ; preds = %95, %42
  %32 = phi i32 [ %47, %42 ], [ %88, %95 ]
  %33 = phi i32 [ %46, %42 ], [ %73, %95 ]
  %34 = phi i64 [ %45, %42 ], [ %89, %95 ]
  %35 = phi i64 [ %44, %42 ], [ %72, %95 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !451
  %38 = load ptr, ptr %24, align 8, !tbaa !448
  %39 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !453
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %98, label %42, !prof !455, !llvm.loop !456

42:                                               ; preds = %22, %31
  %43 = phi ptr [ %37, %31 ], [ %27, %22 ]
  %44 = phi i64 [ %35, %31 ], [ 0, %22 ]
  %45 = phi i64 [ %34, %31 ], [ 0, %22 ]
  %46 = phi i32 [ %33, %31 ], [ 0, %22 ]
  %47 = phi i32 [ %32, %31 ], [ 0, %22 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !288
  %49 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %48, ptr noundef %43) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %43) #17
  %50 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !260
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %31, !prof !457

52:                                               ; preds = %42, %95
  %53 = phi i64 [ %72, %95 ], [ %44, %42 ]
  %54 = phi i64 [ %89, %95 ], [ %45, %42 ]
  %55 = phi i32 [ %73, %95 ], [ %46, %42 ]
  %56 = phi i32 [ %88, %95 ], [ %47, %42 ]
  %57 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %58 = tail call i32 @estimate_num_insns(ptr noundef %57, ptr noundef nonnull @eni_size_weights) #18
  %59 = tail call i32 @estimate_num_insns(ptr noundef %57, ptr noundef nonnull @eni_time_weights) #18
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62, !prof !458

62:                                               ; preds = %52
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !268
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %60, ptr noundef nonnull @.str.20, i32 noundef %49, i32 noundef %58, i32 noundef %59) #17
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !278
  tail call void @print_gimple_stmt(ptr noundef %68, ptr noundef %57, i32 noundef 0, i32 noundef 0) #18
  br label %69

69:                                               ; preds = %66, %62, %52
  %70 = mul nsw i32 %59, %49
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %53, %71
  %73 = add nsw i32 %58, %55
  %74 = tail call fastcc zeroext i8 @likely_eliminated_by_inlining_p(ptr noundef %57) #17, !range !260
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %87, label %76, !prof !459

76:                                               ; preds = %69
  %77 = add nsw i32 %58, %56
  %78 = add nsw i64 %54, %71
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81, !prof !460

81:                                               ; preds = %76
  %82 = load i32, ptr @dump_flags, align 4, !tbaa !268
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 22, i64 1, ptr nonnull %79)
  br label %87

87:                                               ; preds = %76, %81, %85, %69
  %88 = phi i32 [ %77, %85 ], [ %77, %81 ], [ %77, %76 ], [ %56, %69 ]
  %89 = phi i64 [ %78, %85 ], [ %78, %81 ], [ %78, %76 ], [ %54, %69 ]
  %90 = icmp sgt i64 %72, -1
  br i1 %90, label %92, label %91, !prof !458

91:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1819, ptr noundef nonnull @.str.1) #18
  br label %92

92:                                               ; preds = %87, %91
  %93 = icmp sgt i32 %73, -1
  br i1 %93, label %95, label %94, !prof !458

94:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #18
  br label %95

95:                                               ; preds = %92, %94
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %96 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !260
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %52, label %31, !prof !461, !llvm.loop !462

98:                                               ; preds = %31
  %99 = add nsw i64 %34, 500
  %100 = sdiv i64 %99, 1000
  br label %101

101:                                              ; preds = %98, %22
  %102 = phi i32 [ 0, %22 ], [ %32, %98 ]
  %103 = phi i32 [ 0, %22 ], [ %33, %98 ]
  %104 = phi i64 [ 0, %22 ], [ %100, %98 ]
  %105 = phi i64 [ 0, %22 ], [ %35, %98 ]
  %106 = add nsw i64 %105, 500
  %107 = sdiv i64 %106, 1000
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110, !prof !443

110:                                              ; preds = %101
  %111 = trunc i64 %107 to i32
  %112 = trunc i64 %104 to i32
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.22, i32 noundef %111, i32 noundef %112, i32 noundef %103, i32 noundef %102) #17
  br label %114

114:                                              ; preds = %110, %101
  %115 = load i32, ptr @eni_time_weights, align 4, !tbaa !463
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %104, %116
  %118 = load i32, ptr @eni_size_weights, align 4, !tbaa !463
  %119 = add i32 %118, %102
  %120 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !307
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 19
  br i1 %124, label %130, label %125, !prof !465

125:                                              ; preds = %114
  %126 = tail call i32 @estimate_move_cost(ptr noundef nonnull %121) #18
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %117, %127
  %129 = add nsw i32 %126, %119
  br label %130

130:                                              ; preds = %125, %114
  %131 = phi i32 [ %119, %114 ], [ %129, %125 ]
  %132 = phi i64 [ %117, %114 ], [ %128, %125 ]
  %133 = load ptr, ptr %0, align 8, !tbaa !288
  %134 = getelementptr inbounds %struct.tree_decl_non_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !307
  %136 = icmp eq ptr %135, null
  br i1 %136, label %157, label %137, !prof !454

137:                                              ; preds = %130, %151
  %138 = phi ptr [ %155, %151 ], [ %135, %130 ]
  %139 = phi i64 [ %153, %151 ], [ %132, %130 ]
  %140 = phi i32 [ %152, %151 ], [ %131, %130 ]
  %141 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !307
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 19
  br i1 %145, label %151, label %146, !prof !466

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
  %155 = load ptr, ptr %154, align 8, !tbaa !307
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %137, !prof !467, !llvm.loop !468

157:                                              ; preds = %151, %130
  %158 = phi i32 [ %131, %130 ], [ %152, %151 ]
  %159 = phi i64 [ %132, %130 ], [ %153, %151 ]
  %160 = icmp sgt i64 %159, 1000000000
  br i1 %160, label %161, label %162, !prof !444

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i64 [ 1000000000, %161 ], [ %159, %157 ]
  %164 = icmp sgt i64 %105, 1000000000499
  br i1 %164, label %165, label %166, !prof !444

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi i64 [ 1000000000, %165 ], [ %107, %162 ]
  %168 = trunc i64 %167 to i32
  %169 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %0) #17
  %170 = getelementptr inbounds %struct.inline_summary, ptr %169, i64 0, i32 3
  store i32 %168, ptr %170, align 8, !tbaa !446
  %171 = getelementptr inbounds %struct.inline_summary, ptr %169, i64 0, i32 1
  store i32 %103, ptr %171, align 8, !tbaa !392
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %173 = icmp eq ptr %172, null
  %174 = trunc i64 %163 to i32
  br i1 %173, label %177, label %175, !prof !443

175:                                              ; preds = %166
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %172, ptr noundef nonnull @.str.23, i32 noundef %168, i32 noundef %174, i32 noundef %103, i32 noundef %158) #17
  br label %177

177:                                              ; preds = %166, %175
  %178 = getelementptr inbounds %struct.inline_summary, ptr %169, i64 0, i32 4
  store i32 %174, ptr %178, align 4, !tbaa !433
  %179 = getelementptr inbounds %struct.inline_summary, ptr %169, i64 0, i32 2
  store i32 %158, ptr %179, align 4, !tbaa !372
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !469 !PGOFuncName !470 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !471
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !473
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !474
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !475 !PGOFuncName !476 {
  %2 = load ptr, ptr %0, align 8, !tbaa !471
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !477 !PGOFuncName !478 {
  %2 = load ptr, ptr %0, align 8, !tbaa !471
  %3 = load ptr, ptr %2, align 8, !tbaa !479
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @likely_eliminated_by_inlining_p(ptr noundef %0) unnamed_addr #0 !prof !477 !PGOFuncName !481 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !482
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %90 [
    i8 9, label %91
    i8 6, label %4
  ], !prof !483

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %91, !prof !484

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !485
  %9 = icmp eq i32 %8, 113
  br i1 %9, label %19, label %10, !prof !486

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !485
  %12 = icmp eq i32 %11, 116
  br i1 %12, label %19, label %13, !prof !487

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !485
  %15 = icmp eq i32 %14, 118
  br i1 %15, label %19, label %16, !prof !488

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) #17, !range !482
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %89, !prof !489

19:                                               ; preds = %16, %13, %10, %7
  %20 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %21 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #17
  br label %22

22:                                               ; preds = %30, %19
  %23 = phi ptr [ %21, %19 ], [ %32, %30 ]
  %24 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %23) #17, !range !260
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30, !prof !490

26:                                               ; preds = %22
  %27 = load i64, ptr %23, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 47
  br i1 %29, label %30, label %33, !prof !491

30:                                               ; preds = %22, %26
  %31 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !307
  br label %22, !llvm.loop !492

33:                                               ; preds = %26, %40
  %34 = phi ptr [ %42, %40 ], [ %20, %26 ]
  %35 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %34) #17, !range !260
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40, !prof !493

37:                                               ; preds = %33
  %38 = load i64, ptr %34, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %56 [
    i16 121, label %40
    i16 47, label %40
    i16 34, label %52
    i16 141, label %43
  ], !prof !494

40:                                               ; preds = %37, %37, %33
  %41 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !307
  br label %33, !llvm.loop !495

43:                                               ; preds = %37
  %44 = and i64 %38, 4294967296
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %56, label %46, !prof !496

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !307
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 34
  br i1 %51, label %52, label %56, !prof !497

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
  ], !prof !498

61:                                               ; preds = %56
  %62 = and i64 %57, 4294967296
  %63 = icmp eq i64 %62, 0
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !307
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  br i1 %63, label %78, label %68, !prof !499

68:                                               ; preds = %61
  %69 = icmp ne i64 %67, 34
  %70 = icmp eq ptr %23, %21
  %71 = select i1 %69, i1 true, i1 %70
  %72 = icmp ne i64 %67, 36
  %73 = and i1 %71, %72
  %74 = select i1 %73, i1 %59, i1 false
  br i1 %74, label %89, label %82, !prof !500

75:                                               ; preds = %56
  %76 = icmp eq ptr %23, %21
  %77 = select i1 %76, i1 %59, i1 false
  br i1 %77, label %89, label %82, !prof !501

78:                                               ; preds = %61
  %79 = icmp ne i64 %67, 36
  %80 = select i1 %79, i1 %59, i1 false
  br i1 %80, label %89, label %82, !prof !502

81:                                               ; preds = %56
  br i1 %59, label %89, label %82, !prof !503

82:                                               ; preds = %56, %68, %78, %75, %81
  %83 = tail call zeroext i8 @is_gimple_reg(ptr noundef %20) #18
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %91, !prof !504

85:                                               ; preds = %82
  %86 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %20) #18
  %87 = icmp eq i8 %86, 0
  %88 = and i1 %87, %58
  br i1 %88, label %89, label %91, !prof !505

89:                                               ; preds = %68, %85, %78, %75, %81, %16
  br label %91

90:                                               ; preds = %1
  br label %91

91:                                               ; preds = %85, %82, %4, %1, %90, %89
  %92 = phi i8 [ 0, %90 ], [ 0, %89 ], [ 1, %1 ], [ 0, %4 ], [ 1, %82 ], [ 1, %85 ]
  ret i8 %92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !477 !PGOFuncName !506 {
  %2 = load ptr, ptr %0, align 8, !tbaa !471
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !507
  store ptr %4, ptr %0, align 8, !tbaa !471
  ret void
}

; Function Attrs: optsize
declare i32 @estimate_move_cost(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !469 !PGOFuncName !508 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !509
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !510

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !307
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !511

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !512
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #10 !prof !469 !PGOFuncName !514 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !511

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !515
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !517 !PGOFuncName !518 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !519 !PGOFuncName !520 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !307
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !521 !PGOFuncName !522 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !485
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !482
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !523

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
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 !prof !524 !PGOFuncName !525 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !485
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !482
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !526 !PGOFuncName !527 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !528 !PGOFuncName !529 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !530 !PGOFuncName !531 {
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
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !521 !PGOFuncName !533 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !482
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !534

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 !prof !535 !PGOFuncName !536 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !307
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !537 !PGOFuncName !538 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !260
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !539

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !537 !PGOFuncName !540 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !482
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !537 !PGOFuncName !541 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !542
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !539

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !537 !PGOFuncName !543 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !482
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !537 !PGOFuncName !544 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !268
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @compute_inline_parameters_for_current() #0 !prof !545 !PGOFuncName !546 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !278
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #18
  %3 = tail call i32 @compute_inline_parameters(ptr noundef %2) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cgraph_decide_inlining() #0 !prof !439 !PGOFuncName !547 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !268
  %3 = sext i32 %2 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #18
  %5 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !278
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %5) #18
  %6 = load i8, ptr @in_lto_p, align 1, !tbaa !307
  %7 = icmp ne i8 %6, 0
  %8 = load i32, ptr @flag_indirect_inlining, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !548

11:                                               ; preds = %0
  tail call void @ipa_update_after_lto_read() #18
  br label %12

12:                                               ; preds = %11, %0
  store i64 0, ptr @max_count, align 8, !tbaa !542
  store i64 0, ptr @max_benefit, align 8, !tbaa !542
  %13 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !278
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15, !prof !549

15:                                               ; preds = %12, %61
  %16 = phi i64 [ %62, %61 ], [ 0, %12 ]
  %17 = phi ptr [ %65, %61 ], [ %13, %12 ]
  %18 = phi i32 [ %63, %61 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %61, label %23, !prof !550

23:                                               ; preds = %15
  %24 = tail call fastcc ptr @inline_summary(ptr noundef nonnull %17) #17
  %25 = getelementptr inbounds %struct.inline_summary, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !392
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 19, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !267
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %33, label %30, !prof !551

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1157, ptr noundef nonnull @.str.1) #18
  %31 = load i32, ptr %27, align 4, !tbaa !267
  %32 = load i64, ptr @max_count, align 8
  br label %33

33:                                               ; preds = %23, %30
  %34 = phi i64 [ %16, %23 ], [ %32, %30 ]
  %35 = phi i32 [ %26, %23 ], [ %31, %30 ]
  %36 = add nsw i32 %35, %18
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !278
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40, !prof !552

40:                                               ; preds = %33, %47
  %41 = phi i64 [ %48, %47 ], [ %34, %33 ]
  %42 = phi ptr [ %51, %47 ], [ %38, %33 ]
  %43 = phi i64 [ %49, %47 ], [ %34, %33 ]
  %44 = load i64, ptr %42, align 8, !tbaa !271
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47, !prof !553

46:                                               ; preds = %40
  store i64 %44, ptr @max_count, align 8, !tbaa !542
  br label %47

47:                                               ; preds = %40, %46
  %48 = phi i64 [ %41, %40 ], [ %44, %46 ]
  %49 = phi i64 [ %43, %40 ], [ %44, %46 ]
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %42, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !278
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %40, !prof !554, !llvm.loop !555

53:                                               ; preds = %47, %33
  %54 = phi i64 [ %34, %33 ], [ %48, %47 ]
  %55 = load i64, ptr @max_benefit, align 8, !tbaa !542
  %56 = getelementptr inbounds %struct.inline_summary, ptr %24, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !433
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %61, !prof !556

60:                                               ; preds = %53
  store i64 %58, ptr @max_benefit, align 8, !tbaa !542
  br label %61

61:                                               ; preds = %53, %60, %15
  %62 = phi i64 [ %16, %15 ], [ %54, %60 ], [ %54, %53 ]
  %63 = phi i32 [ %18, %15 ], [ %36, %60 ], [ %36, %53 ]
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !278
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %15, !prof !557, !llvm.loop !558

67:                                               ; preds = %61
  %68 = icmp ne i64 %62, 0
  %69 = load i8, ptr @in_lto_p, align 1, !tbaa !307
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i1 %68, i1 false
  br i1 %71, label %72, label %79, !prof !559

72:                                               ; preds = %67
  %73 = load ptr, ptr @profile_info, align 8, !tbaa !278
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
  store i32 %80, ptr @overall_size, align 4, !tbaa !268
  %81 = tail call i32 @cgraph_postorder(ptr noundef %4) #18
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84, !prof !560

84:                                               ; preds = %79
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %82, ptr noundef nonnull @.str.27, i32 noundef %80) #17
  br label %86

86:                                               ; preds = %84, %79
  %87 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !278
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89, !prof !549

89:                                               ; preds = %86, %89
  %90 = phi ptr [ %93, %89 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %90, i64 0, i32 16
  store ptr null, ptr %91, align 8, !tbaa !313
  %92 = getelementptr inbounds %struct.cgraph_node, ptr %90, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !278
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %89, !prof !557, !llvm.loop !561

95:                                               ; preds = %89, %86
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !560

98:                                               ; preds = %95
  %99 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 35, i64 1, ptr nonnull %96)
  br label %100

100:                                              ; preds = %98, %95
  %101 = icmp sgt i32 %81, 0
  %102 = zext i32 %81 to i64
  br label %105

103:                                              ; preds = %203
  %104 = icmp eq i8 %204, 0
  br i1 %104, label %206, label %105, !prof !562, !llvm.loop !563

105:                                              ; preds = %100, %103
  br i1 %101, label %106, label %206, !prof !305

106:                                              ; preds = %105, %203
  %107 = phi i64 [ %109, %203 ], [ %102, %105 ]
  %108 = phi i8 [ %204, %203 ], [ 0, %105 ]
  %109 = add nsw i64 %107, -1
  %110 = getelementptr inbounds ptr, ptr %4, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !278
  %112 = load ptr, ptr %111, align 8, !tbaa !288
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %112, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !307
  %115 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.4, ptr noundef %114) #18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117, !prof !564

117:                                              ; preds = %106
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = tail call ptr @cgraph_node_name(ptr noundef nonnull %111) #18
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %118, ptr noundef nonnull @.str.5, ptr noundef %121) #17
  br label %123

123:                                              ; preds = %120, %117
  %124 = tail call fastcc zeroext i8 @cgraph_decide_inlining_incrementally(ptr noundef nonnull %111, i32 noundef 4, i32 noundef 0) #17, !range !260
  br label %125

125:                                              ; preds = %123, %106
  %126 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 18, i32 2
  %127 = load i8, ptr %126, align 8
  %128 = and i8 %127, 16
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %203, label %130, !prof !564

130:                                              ; preds = %125
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = tail call ptr @cgraph_node_name(ptr noundef nonnull %111) #18
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 19, i32 4
  %136 = load i32, ptr %135, align 4, !tbaa !267
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %131, ptr noundef nonnull @.str.29, ptr noundef %134, i32 noundef %136) #17
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32, ptr @overall_size, align 4, !tbaa !268
  %140 = getelementptr inbounds %struct.cgraph_node, ptr %111, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !278
  %142 = icmp eq ptr %141, null
  br i1 %142, label %195, label %146

143:                                              ; preds = %182
  %144 = load ptr, ptr %140, align 8, !tbaa !278
  %145 = icmp eq ptr %144, null
  br i1 %145, label %195, label %185

146:                                              ; preds = %138, %182
  %147 = phi ptr [ %150, %182 ], [ %141, %138 ]
  %148 = phi i8 [ %183, %182 ], [ %108, %138 ]
  %149 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !258
  %151 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 9
  %152 = load i32, ptr %151, align 8, !tbaa !280
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
  %161 = load ptr, ptr %160, align 8, !tbaa !272
  %162 = getelementptr inbounds %struct.cgraph_edge, ptr %147, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !242
  %164 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %161, ptr noundef %163, ptr noundef nonnull %151) #17, !range !260
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
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %174 = icmp eq ptr %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr %160, align 8, !tbaa !272
  %177 = tail call ptr @cgraph_node_name(ptr noundef %176) #18
  %178 = load ptr, ptr %160, align 8, !tbaa !272
  %179 = getelementptr inbounds %struct.cgraph_node, ptr %178, i64 0, i32 19, i32 4
  %180 = load i32, ptr %179, align 4, !tbaa !267
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %173, ptr noundef nonnull @.str.30, ptr noundef %177, i32 noundef %180) #17
  br label %182

182:                                              ; preds = %169, %175, %166, %159, %146, %154
  %183 = phi i8 [ %148, %154 ], [ %148, %159 ], [ %172, %175 ], [ %172, %169 ], [ %148, %166 ], [ %148, %146 ]
  %184 = icmp eq ptr %150, null
  br i1 %184, label %143, label %146, !llvm.loop !565

185:                                              ; preds = %143, %191
  %186 = phi ptr [ %193, %191 ], [ %144, %143 ]
  %187 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 9
  %188 = load i32, ptr %187, align 8, !tbaa !280
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  store i32 12, ptr %187, align 8, !tbaa !280
  br label %191

191:                                              ; preds = %185, %190
  %192 = getelementptr inbounds %struct.cgraph_edge, ptr %186, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !278
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %185, !llvm.loop !566

195:                                              ; preds = %191, %138, %143
  %196 = phi i8 [ %183, %143 ], [ %108, %138 ], [ %183, %191 ]
  %197 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32, ptr @overall_size, align 4, !tbaa !268
  %201 = sub nsw i32 %200, %139
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %197, ptr noundef nonnull @.str.31, i32 noundef %201) #17
  br label %203

203:                                              ; preds = %195, %199, %125
  %204 = phi i8 [ %108, %125 ], [ %196, %199 ], [ %196, %195 ]
  %205 = icmp sgt i64 %107, 1
  br i1 %205, label %106, label %103, !prof !567, !llvm.loop !568

206:                                              ; preds = %105, %103
  tail call fastcc void @cgraph_decide_inlining_of_small_functions() #17
  %207 = load i32, ptr @flag_inline_functions_called_once, align 4, !tbaa !268
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %317, label %209, !prof !569

209:                                              ; preds = %206
  %210 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212, !prof !560

212:                                              ; preds = %209
  %213 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 36, i64 1, ptr nonnull %210)
  br label %214

214:                                              ; preds = %212, %209
  br i1 %101, label %215, label %317, !prof !305

215:                                              ; preds = %214, %315
  %216 = phi i64 [ %217, %315 ], [ %102, %214 ]
  %217 = add nsw i64 %216, -1
  %218 = getelementptr inbounds ptr, ptr %4, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !278
  %220 = getelementptr inbounds %struct.cgraph_node, ptr %219, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !250
  %222 = icmp eq ptr %221, null
  br i1 %222, label %315, label %223, !prof !570

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.cgraph_edge, ptr %221, i64 0, i32 4
  %225 = load ptr, ptr %224, align 8, !tbaa !258
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %315, !prof !571

227:                                              ; preds = %223
  %228 = call fastcc zeroext i8 @cgraph_only_called_directly_p(ptr noundef nonnull %219) #17, !range !260
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %315, label %230, !prof !572

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.cgraph_node, ptr %219, i64 0, i32 18, i32 2
  %232 = load i8, ptr %231, align 8
  %233 = and i8 %232, 8
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %315, label %235, !prof !573

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.cgraph_edge, ptr %221, i64 0, i32 9
  %237 = load i32, ptr %236, align 8, !tbaa !280
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %315, label %239, !prof !574

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.cgraph_edge, ptr %221, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !272
  %242 = icmp eq ptr %241, %219
  br i1 %242, label %315, label %243, !prof !575

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.cgraph_node, ptr %241, i64 0, i32 19, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !264
  %246 = icmp eq ptr %245, %219
  br i1 %246, label %315, label %247, !prof !575

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.cgraph_edge, ptr %221, i64 0, i32 14
  %249 = load i8, ptr %248, align 2
  %250 = and i8 %249, 2
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %315, !prof !576

252:                                              ; preds = %247
  %253 = load ptr, ptr %219, align 8, !tbaa !288
  %254 = getelementptr inbounds %struct.tree_decl_common, ptr %253, i64 0, i32 2
  %255 = load i64, ptr %254, align 8
  %256 = and i64 %255, 33554432
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %315, !prof !576

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %253, i64 0, i32 4
  %260 = load i32, ptr %259, align 8
  %261 = and i32 %260, 512
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %315, !prof !576

263:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %264 = load i32, ptr @overall_size, align 4, !tbaa !268
  %265 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %266 = icmp eq ptr %265, null
  br i1 %266, label %286, label %267, !prof !576

267:                                              ; preds = %263
  %268 = call ptr @cgraph_node_name(ptr noundef nonnull %219) #18
  %269 = getelementptr inbounds %struct.cgraph_node, ptr %219, i64 0, i32 19, i32 4
  %270 = load i32, ptr %269, align 4, !tbaa !267
  %271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %265, ptr noundef nonnull @.str.33, ptr noundef %268, i32 noundef %270) #17
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %273 = load ptr, ptr %220, align 8, !tbaa !250
  %274 = getelementptr inbounds %struct.cgraph_edge, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !272
  %276 = call ptr @cgraph_node_name(ptr noundef %275) #18
  %277 = load ptr, ptr %220, align 8, !tbaa !250
  %278 = getelementptr inbounds %struct.cgraph_edge, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !272
  %280 = getelementptr inbounds %struct.cgraph_node, ptr %279, i64 0, i32 19, i32 4
  %281 = load i32, ptr %280, align 4, !tbaa !267
  %282 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.34, ptr noundef %276, i32 noundef %281) #17
  %283 = load ptr, ptr %220, align 8, !tbaa !250
  %284 = getelementptr inbounds %struct.cgraph_edge, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !272
  br label %286

286:                                              ; preds = %267, %263
  %287 = phi ptr [ %285, %267 ], [ %241, %263 ]
  %288 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef %287, ptr noundef nonnull %219, ptr noundef nonnull %1, i8 noundef zeroext 0) #17, !range !260
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %307, label %290, !prof !577

290:                                              ; preds = %286
  %291 = load ptr, ptr %220, align 8, !tbaa !250
  call fastcc void @cgraph_mark_inline(ptr noundef %291) #17
  %292 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %293 = icmp eq ptr %292, null
  br i1 %293, label %314, label %294, !prof !578

294:                                              ; preds = %290
  %295 = load ptr, ptr %220, align 8, !tbaa !250
  %296 = getelementptr inbounds %struct.cgraph_edge, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !272
  %298 = call ptr @cgraph_node_name(ptr noundef %297) #18
  %299 = load ptr, ptr %220, align 8, !tbaa !250
  %300 = getelementptr inbounds %struct.cgraph_edge, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !272
  %302 = getelementptr inbounds %struct.cgraph_node, ptr %301, i64 0, i32 19, i32 4
  %303 = load i32, ptr %302, align 4, !tbaa !267
  %304 = load i32, ptr @overall_size, align 4, !tbaa !268
  %305 = sub nsw i32 %304, %264
  %306 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %292, ptr noundef nonnull @.str.35, ptr noundef %298, i32 noundef %303, i32 noundef %305) #17
  br label %314

307:                                              ; preds = %286
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %309 = icmp eq ptr %308, null
  br i1 %309, label %314, label %310, !prof !579

310:                                              ; preds = %307
  %311 = load i32, ptr %1, align 4, !tbaa !268
  %312 = call ptr @cgraph_inline_failed_string(i32 noundef %311) #18
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %308, ptr noundef nonnull @.str.36, ptr noundef %312) #17
  br label %314

314:                                              ; preds = %307, %310, %290, %294
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  br label %315

315:                                              ; preds = %215, %223, %227, %230, %235, %239, %243, %247, %252, %258, %314
  %316 = icmp sgt i64 %216, 1
  br i1 %316, label %215, label %317, !prof !567, !llvm.loop !580

317:                                              ; preds = %315, %214, %206
  %318 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320, !prof !569

320:                                              ; preds = %317
  call void @free_all_ipa_structures_after_iinln() #18
  br label %321

321:                                              ; preds = %320, %317
  %322 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %323 = icmp eq ptr %322, null
  br i1 %323, label %329, label %324, !prof !560

324:                                              ; preds = %321
  %325 = load i32, ptr @ncalls_inlined, align 4, !tbaa !268
  %326 = load i32, ptr @nfunctions_inlined, align 4, !tbaa !268
  %327 = load i32, ptr @overall_size, align 4, !tbaa !268
  %328 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %322, ptr noundef nonnull @.str.37, i32 noundef %325, i32 noundef %326, i32 noundef %80, i32 noundef %327) #17
  br label %329

329:                                              ; preds = %324, %321
  call void @free(ptr noundef %4) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @inline_generate_summary() #0 !prof !439 !PGOFuncName !581 {
  %1 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #18
  store ptr %1, ptr @function_insertion_hook_holder, align 8, !tbaa !278
  %2 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !569

4:                                                ; preds = %0
  tail call void @ipa_register_cgraph_hooks() #18
  tail call fastcc void @ipa_check_create_node_params() #17
  tail call fastcc void @ipa_check_create_edge_args() #17
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !549

8:                                                ; preds = %5, %15
  %9 = phi ptr [ %17, %15 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 27
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14, !prof !582

14:                                               ; preds = %8
  tail call fastcc void @analyze_function(ptr noundef nonnull %9) #17
  br label %15

15:                                               ; preds = %8, %14
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !278
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !prof !583, !llvm.loop !584

19:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @inline_write_summary(ptr noundef %0) #0 !prof !585 !PGOFuncName !586 {
  %2 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
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
define internal void @inline_read_summary() #0 !prof !585 !PGOFuncName !587 {
  %1 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  tail call void @ipa_register_cgraph_hooks() #18
  %4 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !268
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @ipa_prop_read_jump_functions() #18
  br label %7

7:                                                ; preds = %3, %6, %0
  %8 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #18
  store ptr %8, ptr @function_insertion_hook_holder, align 8, !tbaa !278
  ret void
}

; Function Attrs: optsize
declare void @lto_ipa_fixup_call_notes(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @inline_transform(ptr noundef %0) #0 !prof !588 !PGOFuncName !589 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !278
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48, !prof !590

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !288
  %9 = tail call zeroext i8 @cgraph_preserve_function_body_p(ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !591

11:                                               ; preds = %7
  %12 = tail call ptr @save_inline_function_body(ptr noundef nonnull %0) #18
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !278
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17, !prof !592

17:                                               ; preds = %13
  %18 = load i32, ptr @warn_inline, align 4
  %19 = freeze i32 %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %30

21:                                               ; preds = %25
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !278
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25, !prof !593, !llvm.loop !594

25:                                               ; preds = %17, %21
  %26 = phi ptr [ %23, %21 ], [ %15, %17 ]
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !280
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %21, !prof !595

30:                                               ; preds = %25, %17
  %31 = load i8, ptr @timevar_enable, align 1, !tbaa !307
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33, !prof !596

33:                                               ; preds = %30
  tail call void @timevar_push_1(i32 noundef 47) #18
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @current_function_decl, align 8, !tbaa !278
  %36 = tail call i32 @optimize_inline_calls(ptr noundef %35) #18
  %37 = load i8, ptr @timevar_enable, align 1, !tbaa !307
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39, !prof !596

39:                                               ; preds = %34
  tail call void @timevar_pop_1(i32 noundef 47) #18
  br label %40

40:                                               ; preds = %21, %13, %34, %39
  %41 = phi i32 [ %36, %39 ], [ %36, %34 ], [ 0, %13 ], [ 0, %21 ]
  %42 = load ptr, ptr @cfun, align 8, !tbaa !278
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

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_update_after_lto_read() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_decide_inlining_of_small_functions() unnamed_addr #0 !prof !439 !PGOFuncName !597 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %3 = tail call ptr @fibheap_new() #18
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !278
  %5 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !569

7:                                                ; preds = %0
  %8 = tail call fastcc ptr @VEC_cgraph_edge_p_heap_alloc() #17
  store ptr %8, ptr %2, align 8, !tbaa !278
  br label %9

9:                                                ; preds = %7, %0
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !560

12:                                               ; preds = %9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 32, i64 1, ptr nonnull %10)
  br label %14

14:                                               ; preds = %12, %9
  %15 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !278
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17, !prof !549

17:                                               ; preds = %14, %63
  %18 = phi ptr [ %65, %63 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 18, i32 2
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %63, label %23, !prof !598

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !250
  %26 = icmp ne ptr %25, null
  %27 = and i8 %20, 16
  %28 = icmp eq i8 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %63, !prof !599

30:                                               ; preds = %23
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33, !prof !600

33:                                               ; preds = %30
  %34 = call ptr @cgraph_node_name(ptr noundef nonnull %18) #18
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %31, ptr noundef nonnull @.str.11, ptr noundef %34) #17
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %37, align 8, !tbaa !376
  %38 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef nonnull %18, ptr noundef nonnull %1) #17, !range !260
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40, !prof !601

40:                                               ; preds = %36
  %41 = load ptr, ptr %24, align 8, !tbaa !278
  %42 = icmp eq ptr %41, null
  br i1 %42, label %63, label %45, !prof !602

43:                                               ; preds = %36
  %44 = load i32, ptr %1, align 4, !tbaa !268
  call fastcc void @cgraph_set_inline_failed(ptr noundef nonnull %18, i32 noundef %44) #17
  br label %63

45:                                               ; preds = %40, %59
  %46 = phi ptr [ %61, %59 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !280
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50, !prof !603

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !604
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54, !prof !605

54:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 935, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %50, %54
  %56 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %46) #17
  %57 = sext i32 %56 to i64
  %58 = call ptr @fibheap_insert(ptr noundef %3, i64 noundef %57, ptr noundef nonnull %46) #18
  store ptr %58, ptr %51, align 8, !tbaa !604
  br label %59

59:                                               ; preds = %45, %55
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %46, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !278
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %45, !prof !606, !llvm.loop !607

63:                                               ; preds = %59, %40, %17, %23, %43
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !278
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %17, !prof !557, !llvm.loop !608

67:                                               ; preds = %63, %14
  %68 = load i32, ptr @overall_size, align 4, !tbaa !268
  %69 = call fastcc i32 @compute_max_insns(i32 noundef %68) #17
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %307, label %71, !prof !549

71:                                               ; preds = %67, %302
  %72 = phi i32 [ %304, %302 ], [ %69, %67 ]
  %73 = phi i32 [ %303, %302 ], [ %68, %67 ]
  %74 = call ptr @fibheap_extract_min(ptr noundef %3) #18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %307, label %76, !prof !609

76:                                               ; preds = %71
  %77 = load i32, ptr @overall_size, align 4, !tbaa !268
  %78 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !272
  %80 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !242
  %82 = call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %79, ptr noundef %81) #17
  %83 = load ptr, ptr %78, align 8, !tbaa !272
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %83, i64 0, i32 19, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !267
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %87 = icmp eq ptr %86, null
  br i1 %87, label %116, label %88, !prof !610

88:                                               ; preds = %76
  %89 = load ptr, ptr %80, align 8, !tbaa !242
  %90 = call ptr @cgraph_node_name(ptr noundef %89) #18
  %91 = load ptr, ptr %80, align 8, !tbaa !242
  %92 = getelementptr inbounds %struct.cgraph_node, ptr %91, i64 0, i32 19, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !267
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.39, ptr noundef %90, i32 noundef %93) #17
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %96 = load ptr, ptr %78, align 8, !tbaa !272
  %97 = call ptr @cgraph_node_name(ptr noundef %96) #18
  %98 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !611
  %100 = call fastcc ptr @gimple_filename(ptr noundef %99) #17
  %101 = load ptr, ptr %98, align 8, !tbaa !611
  %102 = call fastcc i32 @gimple_lineno(ptr noundef %101) #17
  %103 = load ptr, ptr %80, align 8, !tbaa !242
  %104 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %103) #17
  %105 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %74) #17
  %106 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 11
  %107 = load i32, ptr %106, align 8, !tbaa !269
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %108, 1.000000e+03
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.40, ptr noundef %97, ptr noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %105, double noundef %109) #17
  %111 = load i64, ptr %74, align 8, !tbaa !271
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %88
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.41, i64 noundef %111) #17
  br label %116

116:                                              ; preds = %88, %113, %76
  %117 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !604
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121, !prof !612

120:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 973, ptr noundef nonnull @.str.1) #18
  br label %121

121:                                              ; preds = %116, %120
  store ptr null, ptr %117, align 8, !tbaa !604
  %122 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !280
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %302, label %125, !prof !613, !llvm.loop !614

125:                                              ; preds = %121
  %126 = load i64, ptr %74, align 8, !tbaa !271
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %158, !prof !615

128:                                              ; preds = %125
  %129 = load ptr, ptr %78, align 8, !tbaa !272
  %130 = getelementptr inbounds %struct.cgraph_node, ptr %129, i64 0, i32 19, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !264
  %132 = icmp eq ptr %131, null
  br i1 %132, label %158, label %133, !prof !616

133:                                              ; preds = %128
  %134 = load ptr, ptr %80, align 8, !tbaa !242
  %135 = load ptr, ptr %134, align 8, !tbaa !288
  br label %136

136:                                              ; preds = %133, %140
  %137 = phi ptr [ %129, %133 ], [ %144, %140 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !288
  %139 = icmp eq ptr %138, %135
  br i1 %139, label %148, label %140, !prof !617

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.cgraph_node, ptr %137, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !250
  %143 = getelementptr inbounds %struct.cgraph_edge, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !272
  %145 = getelementptr inbounds %struct.cgraph_node, ptr %144, i64 0, i32 19, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !264
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %136, !prof !618, !llvm.loop !619

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.cgraph_node, ptr %134, i64 0, i32 18, i32 2
  %150 = load i8, ptr %149, align 8
  %151 = and i8 %150, 16
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, i32 1, i32 12
  store i32 %153, ptr %122, align 8, !tbaa !280
  %154 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %155 = icmp eq ptr %154, null
  br i1 %155, label %302, label %156, !prof !620, !llvm.loop !614

156:                                              ; preds = %148
  %157 = call i64 @fwrite(ptr nonnull @.str.42, i64 70, i64 1, ptr nonnull %154)
  br label %302, !llvm.loop !614

158:                                              ; preds = %140, %128, %125
  %159 = call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %74) #18
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i32 13, i32 0, !prof !621
  %162 = load i32, ptr @flag_inline_functions, align 4, !tbaa !268
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %172, !prof !622

164:                                              ; preds = %158
  %165 = load ptr, ptr %80, align 8, !tbaa !242
  %166 = load ptr, ptr %165, align 8, !tbaa !288
  %167 = getelementptr inbounds %struct.tree_function_decl, ptr %166, i64 0, i32 5
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 2097152
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 14, i32 %161
  br label %172

172:                                              ; preds = %164, %158
  %173 = phi i32 [ %161, %158 ], [ %171, %164 ]
  %174 = load ptr, ptr %78, align 8, !tbaa !272
  %175 = load ptr, ptr %174, align 8, !tbaa !288
  %176 = getelementptr inbounds %struct.tree_function_decl, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !307
  %178 = call zeroext i8 @optimize_function_for_size_p(ptr noundef %177) #18
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180, !prof !623

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %180, %172
  %182 = phi i32 [ 15, %180 ], [ %173, %172 ]
  %183 = icmp ne i32 %182, 0
  %184 = icmp sgt i32 %82, %85
  %185 = select i1 %183, i1 %184, i1 false
  br i1 %185, label %186, label %201, !prof !624

186:                                              ; preds = %181
  %187 = load ptr, ptr %80, align 8, !tbaa !242
  %188 = call fastcc i32 @cgraph_estimate_growth(ptr noundef %187) #17
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %201, !prof !625

190:                                              ; preds = %186
  %191 = load ptr, ptr %78, align 8, !tbaa !272
  %192 = load ptr, ptr %80, align 8, !tbaa !242
  %193 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %191, ptr noundef %192, ptr noundef nonnull %122) #17, !range !260
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %302, !prof !626, !llvm.loop !614

195:                                              ; preds = %190
  store i32 %182, ptr %122, align 8, !tbaa !280
  %196 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %197 = icmp eq ptr %196, null
  br i1 %197, label %302, label %198, !prof !626, !llvm.loop !614

198:                                              ; preds = %195
  %199 = call ptr @cgraph_inline_failed_string(i32 noundef %182) #18
  %200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %196, ptr noundef nonnull @.str.43, ptr noundef %199) #17
  br label %302, !llvm.loop !614

201:                                              ; preds = %186, %181
  %202 = load ptr, ptr %80, align 8, !tbaa !242
  %203 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef %202, ptr noundef nonnull %122) #17, !range !260
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %217, !prof !627

205:                                              ; preds = %201
  %206 = load ptr, ptr %78, align 8, !tbaa !272
  %207 = load ptr, ptr %80, align 8, !tbaa !242
  %208 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %206, ptr noundef %207, ptr noundef nonnull %122) #17, !range !260
  %209 = icmp eq i8 %208, 0
  %210 = load ptr, ptr @dump_file, align 8
  %211 = icmp ne ptr %210, null
  %212 = select i1 %209, i1 %211, i1 false
  br i1 %212, label %213, label %302, !llvm.loop !614

213:                                              ; preds = %205
  %214 = load i32, ptr %122, align 8, !tbaa !280
  %215 = call ptr @cgraph_inline_failed_string(i32 noundef %214) #18
  %216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %210, ptr noundef nonnull @.str.43, ptr noundef %215) #17
  br label %302, !llvm.loop !614

217:                                              ; preds = %201
  %218 = call zeroext i8 @tree_can_inline_p(ptr noundef nonnull %74) #18
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %227, !prof !627

220:                                              ; preds = %217
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %222 = icmp eq ptr %221, null
  br i1 %222, label %302, label %223, !llvm.loop !614

223:                                              ; preds = %220
  %224 = load i32, ptr %122, align 8, !tbaa !280
  %225 = call ptr @cgraph_inline_failed_string(i32 noundef %224) #18
  %226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %221, ptr noundef nonnull @.str.43, ptr noundef %225) #17
  br label %302, !llvm.loop !614

227:                                              ; preds = %217
  %228 = load ptr, ptr %78, align 8, !tbaa !272
  %229 = load ptr, ptr %80, align 8, !tbaa !242
  %230 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %228, ptr noundef %229, ptr noundef nonnull %122) #17, !range !260
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %246, label %232, !prof !628

232:                                              ; preds = %227
  %233 = load ptr, ptr %78, align 8, !tbaa !272
  %234 = getelementptr inbounds %struct.cgraph_node, ptr %233, i64 0, i32 19, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !264
  %236 = icmp eq ptr %235, null
  %237 = select i1 %236, ptr %233, ptr %235, !prof !629
  %238 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, ptr null, ptr %2, !prof !630
  %241 = call fastcc zeroext i8 @cgraph_decide_recursive_inlining(ptr noundef %237, ptr noundef %240) #17, !range !260
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %302, label %243, !prof !631, !llvm.loop !614

243:                                              ; preds = %232
  %244 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %273, label %270, !prof !632

246:                                              ; preds = %227
  %247 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 14
  %248 = load i8, ptr %247, align 2
  %249 = and i8 %248, 2
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %256, !prof !633

251:                                              ; preds = %246
  %252 = load ptr, ptr %78, align 8, !tbaa !272
  %253 = load ptr, ptr %80, align 8, !tbaa !242
  %254 = call fastcc zeroext i8 @cgraph_check_inline_limits(ptr noundef %252, ptr noundef %253, ptr noundef nonnull %122, i8 noundef zeroext 1) #17, !range !260
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %265, !prof !634

256:                                              ; preds = %251, %246
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %258 = icmp eq ptr %257, null
  br i1 %258, label %302, label %259, !prof !635, !llvm.loop !614

259:                                              ; preds = %256
  %260 = load ptr, ptr %78, align 8, !tbaa !272
  %261 = call ptr @cgraph_node_name(ptr noundef %260) #18
  %262 = load i32, ptr %122, align 8, !tbaa !280
  %263 = call ptr @cgraph_inline_failed_string(i32 noundef %262) #18
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %257, ptr noundef nonnull @.str.44, ptr noundef %261, ptr noundef %263) #17
  br label %302, !llvm.loop !614

265:                                              ; preds = %251
  %266 = load ptr, ptr %80, align 8, !tbaa !242
  %267 = call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef nonnull %74, i8 noundef zeroext 1, ptr noundef nonnull %2) #17
  %268 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270, !prof !636

270:                                              ; preds = %265, %243
  %271 = phi ptr [ %237, %243 ], [ %266, %265 ]
  %272 = load ptr, ptr %2, align 8, !tbaa !278
  call fastcc void @add_new_edges_to_heap(ptr noundef %3, ptr noundef %272) #17
  br label %273

273:                                              ; preds = %270, %265, %243
  %274 = phi ptr [ %237, %243 ], [ %266, %265 ], [ %271, %270 ]
  call fastcc void @update_callee_keys(ptr noundef %3, ptr noundef %274, ptr noundef %4) #17
  %275 = load ptr, ptr %78, align 8, !tbaa !272
  %276 = getelementptr inbounds %struct.cgraph_node, ptr %275, i64 0, i32 19, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !264
  %278 = icmp eq ptr %277, null
  %279 = select i1 %278, ptr %275, ptr %277, !prof !637
  call fastcc void @update_caller_keys(ptr noundef %3, ptr noundef %279, ptr noundef %4) #17
  call void @bitmap_clear(ptr noundef %4) #18
  %280 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %281 = icmp eq ptr %280, null
  br i1 %281, label %293, label %282, !prof !638

282:                                              ; preds = %273
  %283 = load ptr, ptr %78, align 8, !tbaa !272
  %284 = call ptr @cgraph_node_name(ptr noundef %283) #18
  %285 = load ptr, ptr %78, align 8, !tbaa !272
  %286 = getelementptr inbounds %struct.cgraph_node, ptr %285, i64 0, i32 19, i32 3
  %287 = load i32, ptr %286, align 8, !tbaa !426
  %288 = getelementptr inbounds %struct.cgraph_node, ptr %285, i64 0, i32 19, i32 4
  %289 = load i32, ptr %288, align 4, !tbaa !267
  %290 = load i32, ptr @overall_size, align 4, !tbaa !268
  %291 = sub nsw i32 %290, %77
  %292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %280, ptr noundef nonnull @.str.45, ptr noundef %284, i32 noundef %287, i32 noundef %289, i32 noundef %291) #17
  br label %293

293:                                              ; preds = %282, %273
  %294 = load i32, ptr @overall_size, align 4, !tbaa !268
  %295 = icmp sgt i32 %73, %294
  br i1 %295, label %296, label %302, !prof !639

296:                                              ; preds = %293
  %297 = call fastcc i32 @compute_max_insns(i32 noundef %294) #17
  %298 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300, !prof !640

300:                                              ; preds = %296
  %301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %298, ptr noundef nonnull @.str.46, i32 noundef %294) #17
  br label %302

302:                                              ; preds = %293, %300, %296, %259, %256, %232, %220, %223, %205, %213, %190, %198, %195, %148, %156, %121
  %303 = phi i32 [ %73, %121 ], [ %73, %156 ], [ %73, %148 ], [ %73, %195 ], [ %73, %198 ], [ %73, %190 ], [ %73, %213 ], [ %73, %205 ], [ %73, %223 ], [ %73, %220 ], [ %73, %232 ], [ %73, %256 ], [ %73, %259 ], [ %294, %300 ], [ %294, %296 ], [ %73, %293 ]
  %304 = phi i32 [ %72, %121 ], [ %72, %156 ], [ %72, %148 ], [ %72, %195 ], [ %72, %198 ], [ %72, %190 ], [ %72, %213 ], [ %72, %205 ], [ %72, %223 ], [ %72, %220 ], [ %72, %232 ], [ %72, %256 ], [ %72, %259 ], [ %297, %300 ], [ %297, %296 ], [ %72, %293 ]
  %305 = load i32, ptr @overall_size, align 4, !tbaa !268
  %306 = icmp sgt i32 %305, %304
  br i1 %306, label %307, label %71, !prof !641

307:                                              ; preds = %71, %302, %67
  %308 = call ptr @fibheap_extract_min(ptr noundef %3) #18
  %309 = icmp eq ptr %308, null
  br i1 %309, label %336, label %310, !prof !549

310:                                              ; preds = %307, %333
  %311 = phi ptr [ %334, %333 ], [ %308, %307 ]
  %312 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 8
  %313 = load ptr, ptr %312, align 8, !tbaa !604
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %316, !prof !642

315:                                              ; preds = %310
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1117, ptr noundef nonnull @.str.1) #18
  br label %316

316:                                              ; preds = %310, %315
  store ptr null, ptr %312, align 8, !tbaa !604
  %317 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !242
  %319 = getelementptr inbounds %struct.cgraph_node, ptr %318, i64 0, i32 18, i32 2
  %320 = load i8, ptr %319, align 8
  %321 = and i8 %320, 16
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %333, !prof !643

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 9
  %325 = load i32, ptr %324, align 8, !tbaa !280
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %333, label %327, !prof !644

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.cgraph_edge, ptr %311, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !272
  %330 = call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %329, ptr noundef nonnull %318, ptr noundef nonnull %324) #17, !range !260
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %332, label %333, !prof !645

332:                                              ; preds = %327
  store i32 11, ptr %324, align 8, !tbaa !280
  br label %333

333:                                              ; preds = %332, %327, %323, %316
  %334 = call ptr @fibheap_extract_min(ptr noundef %3) #18
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %310, !prof !646, !llvm.loop !647

336:                                              ; preds = %333, %307
  %337 = load ptr, ptr %2, align 8, !tbaa !278
  %338 = icmp eq ptr %337, null
  br i1 %338, label %340, label %339, !prof !569

339:                                              ; preds = %336
  call fastcc void @VEC_cgraph_edge_p_heap_free(ptr noundef nonnull %2) #17
  br label %340

340:                                              ; preds = %339, %336
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
define internal fastcc ptr @VEC_cgraph_edge_p_heap_alloc() unnamed_addr #0 !prof !439 !PGOFuncName !648 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cgraph_set_inline_failed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !649 !PGOFuncName !650 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !579

5:                                                ; preds = %2
  %6 = tail call ptr @cgraph_inline_failed_string(i32 noundef %1) #18
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.47, ptr noundef %6) #17
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !651

12:                                               ; preds = %8, %18
  %13 = phi ptr [ %20, %18 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !280
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !652

17:                                               ; preds = %12
  store i32 %1, ptr %14, align 8, !tbaa !280
  br label %18

18:                                               ; preds = %12, %17
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !prof !653, !llvm.loop !654

22:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cgraph_edge_badness(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !655 !PGOFuncName !656 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  %4 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef %3, ptr noundef %5) #17
  %7 = load ptr, ptr %2, align 8, !tbaa !272
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 19, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !267
  %10 = sub nsw i32 %6, %9
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15, !prof !657

12:                                               ; preds = %1
  %13 = sub nsw i32 -2147483648, %10
  %14 = zext i32 %13 to i64
  br label %91

15:                                               ; preds = %1
  %16 = load i64, ptr @max_count, align 8, !tbaa !542
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %37, label %18, !prof !658

18:                                               ; preds = %15
  %19 = load i64, ptr %0, align 8, !tbaa !271
  %20 = sitofp i64 %19 to double
  %21 = fmul double %20, 0xC1E0000000000000
  %22 = sitofp i64 %16 to double
  %23 = fdiv double %21, %22
  %24 = load i64, ptr @max_benefit, align 8, !tbaa !542
  %25 = add nsw i64 %24, 1
  %26 = sitofp i64 %25 to double
  %27 = fdiv double %23, %26
  %28 = fptosi double %27 to i32
  %29 = load ptr, ptr %4, align 8, !tbaa !242
  %30 = tail call fastcc ptr @inline_summary(ptr noundef %29) #17
  %31 = getelementptr inbounds %struct.inline_summary, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !433
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, %28
  %35 = sdiv i32 %34, %10
  %36 = zext i32 %35 to i64
  br label %91

37:                                               ; preds = %15
  %38 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !268
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %78, label %40, !prof !659

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 8, !tbaa !269
  %43 = sdiv i32 %42, 10
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %10, 10000
  %46 = load ptr, ptr %4, align 8, !tbaa !242
  %47 = tail call fastcc ptr @inline_summary(ptr noundef %46) #17
  %48 = getelementptr inbounds %struct.inline_summary, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !433
  %50 = mul nsw i32 %49, 100
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %46, i64 0, i32 19, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !426
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %50, %53
  %55 = icmp slt i32 %54, 99
  %56 = add nsw i32 %54, 1
  %57 = select i1 %55, i32 %56, i32 100, !prof !660
  %58 = mul nsw i32 %57, %44
  %59 = icmp sgt i32 %58, 10000
  br i1 %59, label %60, label %64, !prof !661

60:                                               ; preds = %40
  %61 = zext nneg i32 %58 to i64
  %62 = tail call i32 @ceil_log2(i64 noundef %61) #18
  %63 = add nsw i32 %62, 9992
  br label %64

64:                                               ; preds = %60, %40
  %65 = phi i32 [ %63, %60 ], [ %58, %40 ]
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %68, !prof !659

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %64, %67
  %69 = phi i32 [ 1, %67 ], [ %65, %64 ]
  %70 = udiv i32 %45, %69
  %71 = zext nneg i32 %70 to i64
  %72 = load ptr, ptr %4, align 8, !tbaa !242
  %73 = tail call fastcc i32 @cgraph_estimate_growth(ptr noundef %72) #17
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %71
  %76 = icmp sgt i64 %75, 2147483647
  br i1 %76, label %77, label %91, !prof !659

77:                                               ; preds = %68
  br label %91

78:                                               ; preds = %37
  %79 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 13
  %80 = load i16, ptr %79, align 8, !tbaa !270
  %81 = tail call i16 @llvm.umin.i16(i16 %80, i16 8)
  %82 = zext nneg i16 %81 to i64
  %83 = load ptr, ptr %4, align 8, !tbaa !242
  %84 = tail call fastcc i32 @cgraph_estimate_growth(ptr noundef %83) #17
  %85 = shl nsw i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = icmp sgt i32 %84, 0
  %88 = lshr i64 %86, %82
  %89 = shl nsw i64 %86, %82
  %90 = select i1 %87, i64 %88, i64 %89
  br label %91

91:                                               ; preds = %68, %77, %18, %78, %12
  %92 = phi i64 [ %14, %12 ], [ %36, %18 ], [ %90, %78 ], [ 2147483647, %77 ], [ %75, %68 ]
  %93 = load ptr, ptr %2, align 8, !tbaa !272
  %94 = load ptr, ptr %4, align 8, !tbaa !242
  %95 = tail call fastcc zeroext i8 @cgraph_recursive_inlining_p(ptr noundef %93, ptr noundef %94, ptr noundef null) #17, !range !260
  %96 = trunc i64 %92 to i32
  %97 = zext nneg i8 %95 to i32
  %98 = add i32 %97, %96
  ret i32 %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @compute_max_insns(i32 noundef %0) unnamed_addr #2 !prof !662 !PGOFuncName !663 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 17, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !303
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 %0)
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.param_info, ptr %2, i64 18, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !303
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
define internal fastcc ptr @gimple_filename(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !585 !PGOFuncName !664 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #18
  %4 = load ptr, ptr %2, align 8, !tbaa !665
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_lineno(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !585 !PGOFuncName !667 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #18
  %4 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !668
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @cgraph_decide_recursive_inlining(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !669 !PGOFuncName !670 {
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 5, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !303
  %6 = getelementptr inbounds %struct.param_info, ptr %3, i64 7, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !303
  %8 = getelementptr inbounds %struct.param_info, ptr %3, i64 8, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !303
  %10 = load ptr, ptr %0, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %12) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %196, !prof !671

15:                                               ; preds = %2
  %16 = load i32, ptr @flag_inline_functions, align 4, !tbaa !268
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %0, align 8, !tbaa !288
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %17, label %23, label %24, !prof !630

23:                                               ; preds = %15
  br i1 %22, label %196, label %25, !prof !672

24:                                               ; preds = %15
  br i1 %22, label %31, label %25, !prof !673

25:                                               ; preds = %23, %24
  %26 = load ptr, ptr @compiler_params, align 8, !tbaa !278
  %27 = getelementptr inbounds %struct.param_info, ptr %26, i64 4, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !303
  %29 = getelementptr inbounds %struct.param_info, ptr %26, i64 6, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !303
  br label %31

31:                                               ; preds = %25, %24
  %32 = phi i32 [ %30, %25 ], [ %7, %24 ]
  %33 = phi i32 [ %28, %25 ], [ %5, %24 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %196, label %35, !prof !630

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %0) #17
  %37 = icmp slt i32 %36, %33
  br i1 %37, label %38, label %196, !prof !629

38:                                               ; preds = %35
  %39 = tail call ptr @fibheap_new() #18
  tail call fastcc void @lookup_recursive_calls(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %39) #17
  %40 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !674

42:                                               ; preds = %38
  tail call void @fibheap_delete(ptr noundef %39) #18
  br label %196

43:                                               ; preds = %38
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !674

46:                                               ; preds = %43
  %47 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.48, ptr noundef %47) #17
  br label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 23
  %51 = load i64, ptr %50, align 8, !tbaa !675
  %52 = tail call ptr @cgraph_clone_node(ptr noundef nonnull %0, i64 noundef %51, i32 noundef 1000, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null) #18
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 27
  %54 = load i16, ptr %53, align 4
  %55 = or i16 %54, 1
  store i16 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !278
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62, !prof !676

59:                                               ; preds = %68, %49
  %60 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %158, !prof !677

62:                                               ; preds = %49, %68
  %63 = phi ptr [ %70, %68 ], [ %57, %49 ]
  %64 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !280
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68, !prof !678

67:                                               ; preds = %62
  tail call void @cgraph_clone_inlined_nodes(ptr noundef nonnull %63, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %68

68:                                               ; preds = %62, %67
  %69 = getelementptr inbounds %struct.cgraph_edge, ptr %63, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !278
  %71 = icmp eq ptr %70, null
  br i1 %71, label %59, label %62, !prof !679, !llvm.loop !680

72:                                               ; preds = %59, %154
  %73 = phi i32 [ %155, %154 ], [ 0, %59 ]
  %74 = tail call fastcc i32 @cgraph_estimate_size_after_inlining(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %52) #17
  %75 = icmp sgt i32 %74, %33
  br i1 %75, label %158, label %76, !prof !681

76:                                               ; preds = %72
  %77 = tail call ptr @fibheap_extract_min(ptr noundef %39) #18
  %78 = getelementptr inbounds %struct.cgraph_edge, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !272
  %80 = getelementptr inbounds %struct.cgraph_node, ptr %79, i64 0, i32 19, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !264
  %82 = icmp eq ptr %81, null
  br i1 %82, label %101, label %83, !prof !682

83:                                               ; preds = %76
  %84 = load ptr, ptr %0, align 8, !tbaa !288
  %85 = getelementptr inbounds %struct.cgraph_edge, ptr %77, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !242
  %87 = load ptr, ptr %86, align 8, !tbaa !288
  %88 = icmp eq ptr %84, %87
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %83, %90
  %91 = phi ptr [ %79, %83 ], [ %97, %90 ]
  %92 = phi i32 [ 1, %83 ], [ %93, %90 ]
  %93 = add nuw nsw i32 %92, %89
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %91, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !250
  %96 = getelementptr inbounds %struct.cgraph_edge, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !272
  %98 = getelementptr inbounds %struct.cgraph_node, ptr %97, i64 0, i32 19, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !264
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %90, !prof !683, !llvm.loop !684

101:                                              ; preds = %90, %76
  %102 = phi i32 [ 1, %76 ], [ %93, %90 ]
  %103 = icmp sgt i32 %102, %32
  br i1 %103, label %104, label %109, !prof !685

104:                                              ; preds = %101
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %106 = icmp eq ptr %105, null
  br i1 %106, label %154, label %107, !prof !686, !llvm.loop !687

107:                                              ; preds = %104
  %108 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 25, i64 1, ptr nonnull %105)
  br label %154, !llvm.loop !687

109:                                              ; preds = %101
  %110 = load i64, ptr @max_count, align 8, !tbaa !542
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %132, label %112, !prof !688

112:                                              ; preds = %109
  %113 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef %77) #18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %117 = icmp eq ptr %116, null
  br i1 %117, label %154, label %118, !llvm.loop !687

118:                                              ; preds = %115
  %119 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 26, i64 1, ptr nonnull %116)
  br label %154, !llvm.loop !687

120:                                              ; preds = %112
  %121 = sext i32 %9 to i64
  %122 = load i64, ptr %77, align 8, !tbaa !271
  %123 = mul nsw i64 %122, 100
  %124 = load i64, ptr %50, align 8, !tbaa !675
  %125 = sdiv i64 %123, %124
  %126 = icmp slt i64 %125, %121
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %129 = icmp eq ptr %128, null
  br i1 %129, label %154, label %130, !llvm.loop !687

130:                                              ; preds = %127
  %131 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 36, i64 1, ptr nonnull %128)
  br label %154, !llvm.loop !687

132:                                              ; preds = %120, %109
  %133 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %134 = icmp eq ptr %133, null
  br i1 %134, label %149, label %135, !prof !688

135:                                              ; preds = %132
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %133, ptr noundef nonnull @.str.52, i32 noundef %102) #17
  %137 = load i64, ptr %50, align 8, !tbaa !675
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %141 = load i64, ptr %77, align 8, !tbaa !271
  %142 = sitofp i64 %141 to double
  %143 = sitofp i64 %137 to double
  %144 = fdiv double %142, %143
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.53, double noundef %144) #17
  br label %146

146:                                              ; preds = %139, %135
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %148 = tail call i32 @fputc(i32 10, ptr %147)
  br label %149

149:                                              ; preds = %146, %132
  tail call void @cgraph_redirect_edge_callee(ptr noundef %77, ptr noundef %52) #18
  %150 = tail call fastcc zeroext i8 @cgraph_mark_inline_edge(ptr noundef %77, i8 noundef zeroext 0, ptr noundef %1) #17
  %151 = getelementptr inbounds %struct.cgraph_edge, ptr %77, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !242
  tail call fastcc void @lookup_recursive_calls(ptr noundef nonnull %0, ptr noundef %152, ptr noundef %39) #17
  %153 = add nsw i32 %73, 1
  br label %154

154:                                              ; preds = %127, %130, %115, %118, %104, %107, %149
  %155 = phi i32 [ %153, %149 ], [ %73, %107 ], [ %73, %104 ], [ %73, %118 ], [ %73, %115 ], [ %73, %130 ], [ %73, %127 ]
  %156 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %72, label %158, !prof !689

158:                                              ; preds = %72, %154, %59
  %159 = phi i32 [ 0, %59 ], [ %155, %154 ], [ %73, %72 ]
  %160 = tail call i32 @fibheap_empty(ptr noundef %39) #18
  %161 = icmp eq i32 %160, 0
  %162 = load ptr, ptr @dump_file, align 8
  %163 = icmp ne ptr %162, null
  %164 = select i1 %161, i1 %163, i1 false
  br i1 %164, label %165, label %167, !prof !690

165:                                              ; preds = %158
  %166 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 41, i64 1, ptr nonnull %162)
  br label %167

167:                                              ; preds = %165, %158
  tail call void @fibheap_delete(ptr noundef %39) #18
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %169 = icmp eq ptr %168, null
  br i1 %169, label %180, label %170, !prof !674

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 19, i32 4
  %172 = load i32, ptr %171, align 4, !tbaa !267
  %173 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 4
  %174 = load i32, ptr %173, align 4, !tbaa !267
  %175 = getelementptr inbounds %struct.cgraph_node, ptr %52, i64 0, i32 19, i32 3
  %176 = load i32, ptr %175, align 8, !tbaa !426
  %177 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !426
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %168, ptr noundef nonnull @.str.56, i32 noundef %159, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178) #17
  br label %180

180:                                              ; preds = %170, %167
  %181 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !278
  %182 = icmp eq ptr %181, %52
  br i1 %182, label %193, label %183, !prof !676

183:                                              ; preds = %180, %191
  %184 = phi ptr [ %186, %191 ], [ %181, %180 ]
  %185 = getelementptr inbounds %struct.cgraph_node, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !691
  %187 = getelementptr inbounds %struct.cgraph_node, ptr %184, i64 0, i32 19, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !264
  %189 = icmp eq ptr %188, %52
  br i1 %189, label %190, label %191, !prof !692

190:                                              ; preds = %183
  tail call void @cgraph_remove_node(ptr noundef nonnull %184) #18
  br label %191

191:                                              ; preds = %183, %190
  %192 = icmp eq ptr %186, %52
  br i1 %192, label %193, label %183, !prof !693, !llvm.loop !694

193:                                              ; preds = %191, %180
  tail call void @cgraph_remove_node(ptr noundef %52) #18
  %194 = icmp sgt i32 %159, 0
  %195 = zext i1 %194 to i8
  br label %196

196:                                              ; preds = %31, %35, %2, %23, %193, %42
  %197 = phi i8 [ 0, %42 ], [ %195, %193 ], [ 0, %23 ], [ 0, %2 ], [ 0, %35 ], [ 0, %31 ]
  ret i8 %197
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_new_edges_to_heap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !695 !PGOFuncName !696 {
  %3 = tail call fastcc i32 @VEC_cgraph_edge_p_base_length(ptr noundef %1) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5, !prof !697

5:                                                ; preds = %2, %11
  %6 = tail call fastcc ptr @VEC_cgraph_edge_p_base_pop(ptr noundef %1) #17
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !604
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !698

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 885, ptr noundef nonnull @.str.1) #18
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %6) #17
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @fibheap_insert(ptr noundef %0, i64 noundef %13, ptr noundef nonnull %6) #18
  store ptr %14, ptr %7, align 8, !tbaa !604
  %15 = tail call fastcc i32 @VEC_cgraph_edge_p_base_length(ptr noundef %1) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %5, !prof !699, !llvm.loop !700

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_callee_keys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %4, align 8, !tbaa !376
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !prof !703

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %19, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !280
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  br i1 %12, label %16, label %15, !prof !704

15:                                               ; preds = %8
  tail call fastcc void @update_caller_keys(ptr noundef %0, ptr noundef %14, ptr noundef %2) #17
  br label %17

16:                                               ; preds = %8
  tail call fastcc void @update_callee_keys(ptr noundef %0, ptr noundef %14, ptr noundef %2) #17
  br label %17

17:                                               ; preds = %15, %16
  %18 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !prof !705, !llvm.loop !706

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_caller_keys(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !707 !PGOFuncName !708 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 18, i32 2
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 24
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %9, label %84, !prof !709

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !264
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %84, !prof !710

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !325
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %15) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %84, !prof !711

18:                                               ; preds = %13
  %19 = load i32, ptr %14, align 8, !tbaa !325
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %19) #18
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 5
  store i32 -2147483648, ptr %21, align 8, !tbaa !376
  %22 = load i8, ptr %5, align 8
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %84, label %25, !prof !712

25:                                               ; preds = %18
  %26 = call fastcc zeroext i8 @cgraph_default_inline_p(ptr noundef nonnull %1, ptr noundef nonnull %4) #17, !range !260
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !278
  %30 = icmp eq ptr %29, null
  br i1 %27, label %31, label %48, !prof !713

31:                                               ; preds = %25
  br i1 %30, label %84, label %32, !prof !714

32:                                               ; preds = %31, %44
  %33 = phi ptr [ %46, %44 ], [ %29, %31 ]
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !604
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !715

37:                                               ; preds = %32
  %38 = call ptr @fibheap_delete_node(ptr noundef %0, ptr noundef nonnull %35) #18
  store ptr null, ptr %34, align 8, !tbaa !604
  %39 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !280
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %4, align 4, !tbaa !268
  store i32 %43, ptr %39, align 8, !tbaa !280
  br label %44

44:                                               ; preds = %32, %42, %37
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %33, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !278
  %47 = icmp eq ptr %46, null
  br i1 %47, label %84, label %32, !prof !716, !llvm.loop !717

48:                                               ; preds = %25
  br i1 %30, label %84, label %49, !prof !718

49:                                               ; preds = %48, %80
  %50 = phi ptr [ %82, %80 ], [ %29, %48 ]
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !280
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %80, label %54, !prof !719

54:                                               ; preds = %49
  %55 = call fastcc i32 @cgraph_edge_badness(ptr noundef nonnull %50) #17
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %50, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !604
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61, !prof !720

59:                                               ; preds = %54
  %60 = sext i32 %55 to i64
  br label %77

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.fibnode, ptr %57, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !721
  %64 = icmp eq ptr %63, %50
  br i1 %64, label %66, label %65, !prof !723

65:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 658, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %61, %65
  %67 = getelementptr inbounds %struct.fibnode, ptr %57, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !724
  %69 = sext i32 %55 to i64
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %80, label %71, !prof !725

71:                                               ; preds = %66
  %72 = call i64 @fibheap_replace_key(ptr noundef %0, ptr noundef nonnull %57, i64 noundef %69) #18
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80, !prof !726

74:                                               ; preds = %71
  %75 = load ptr, ptr %56, align 8, !tbaa !604
  %76 = call ptr @fibheap_delete_node(ptr noundef %0, ptr noundef %75) #18
  br label %77

77:                                               ; preds = %59, %74
  %78 = phi i64 [ %60, %59 ], [ %69, %74 ]
  %79 = call ptr @fibheap_insert(ptr noundef %0, i64 noundef %78, ptr noundef nonnull %50) #18
  store ptr %79, ptr %56, align 8, !tbaa !604
  br label %80

80:                                               ; preds = %77, %71, %66, %49
  %81 = getelementptr inbounds %struct.cgraph_edge, ptr %50, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !278
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %49, !prof !727, !llvm.loop !728

84:                                               ; preds = %80, %44, %48, %31, %18, %13, %3, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !439 !PGOFuncName !729 {
  %2 = load ptr, ptr %0, align 8, !tbaa !278
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !569

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !278
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
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !585 !PGOFuncName !730 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !307
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lookup_recursive_calls(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !731 !PGOFuncName !732 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %10, !prof !733

7:                                                ; preds = %31
  %8 = load ptr, ptr %4, align 8, !tbaa !278
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %35, !prof !734

10:                                               ; preds = %3, %31
  %11 = phi ptr [ %33, %31 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !242
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %31, !prof !735

15:                                               ; preds = %10
  %16 = load i64, ptr @max_count, align 8, !tbaa !542
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22, !prof !736

18:                                               ; preds = %15
  %19 = load i32, ptr @lookup_recursive_calls.priority, align 4, !tbaa !268
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @lookup_recursive_calls.priority, align 4, !tbaa !268
  %21 = sext i32 %19 to i64
  br label %28

22:                                               ; preds = %15
  %23 = load i64, ptr %11, align 8, !tbaa !271
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
  %33 = load ptr, ptr %32, align 8, !tbaa !278
  %34 = icmp eq ptr %33, null
  br i1 %34, label %7, label %10, !prof !737, !llvm.loop !738

35:                                               ; preds = %7, %43
  %36 = phi ptr [ %45, %43 ], [ %8, %7 ]
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !280
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43, !prof !739

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !242
  tail call fastcc void @lookup_recursive_calls(ptr noundef %0, ptr noundef %42, ptr noundef %2) #17
  br label %43

43:                                               ; preds = %35, %40
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !278
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %35, !prof !737, !llvm.loop !740

47:                                               ; preds = %43, %3, %7
  ret void
}

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_edge_p_base_length(ptr noundef readonly %0) unnamed_addr #10 !prof !741 !PGOFuncName !742 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !743

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !744
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_cgraph_edge_p_base_pop(ptr nocapture noundef %0) unnamed_addr #13 !prof !746 !PGOFuncName !747 {
  %2 = load i32, ptr %0, align 8, !tbaa !744
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !744
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !278
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
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !585 !PGOFuncName !748 {
  tail call fastcc void @analyze_function(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare void @ipa_register_cgraph_hooks() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #0 !prof !439 !PGOFuncName !749 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !569

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !268
  %5 = tail call fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %4) #17
  store ptr %5, ptr @ipa_node_params_vector, align 8, !tbaa !278
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %7) #17
  %9 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !268
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11, !prof !560

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %12) #17
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #0 !prof !439 !PGOFuncName !750 {
  %1 = load ptr, ptr @ipa_edge_args_vector, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !569

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !268
  %5 = tail call fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %4) #17
  store ptr %5, ptr @ipa_edge_args_vector, align 8, !tbaa !278
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %7) #17
  %9 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !268
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %13, label %11, !prof !560

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 1
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %12) #17
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #0 !prof !751 !PGOFuncName !752 {
  %2 = load ptr, ptr %0, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  tail call void @push_cfun(ptr noundef %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !288
  store ptr %5, ptr @current_function_decl, align 8, !tbaa !278
  %6 = tail call i32 @compute_inline_parameters(ptr noundef nonnull %0) #17
  %7 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !268
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !753

9:                                                ; preds = %1
  tail call fastcc void @inline_indirect_intraprocedural_analysis(ptr noundef nonnull %0) #17
  br label %10

10:                                               ; preds = %9, %1
  store ptr null, ptr @current_function_decl, align 8, !tbaa !278
  tail call void @pop_cfun() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !754 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef readonly %0) unnamed_addr #10 !prof !439 !PGOFuncName !755 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !569

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !756
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !758 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !278
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(ptr noundef %2) #17
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) #17
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !278
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
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !759 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !278
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !756
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %8) #17
  %9 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !278, !nonnull !760, !noundef !760
  store i32 %0, ptr %9, align 8, !tbaa !756
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_node_params_t_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !585 !PGOFuncName !761 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !762 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !278
  %3 = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef %2, i32 noundef %0) #17, !range !763
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 48) #18
  store ptr %6, ptr @ipa_node_params_vector, align 8, !tbaa !278
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !585 !PGOFuncName !764 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !765
  %7 = load i32, ptr %0, align 8, !tbaa !756
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
define internal fastcc ptr @VEC_ipa_edge_args_t_gc_alloc(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !766 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef readonly %0) unnamed_addr #10 !prof !439 !PGOFuncName !767 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !569

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !768
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !770 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !278
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(ptr noundef %2) #17
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) #17
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !278
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
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !771 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !278
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !768
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %8) #17
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !278, !nonnull !760, !noundef !760
  store i32 %0, ptr %9, align 8, !tbaa !768
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ipa_edge_args_t_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !585 !PGOFuncName !772 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !773 {
  %2 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !278
  %3 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef %2, i32 noundef %0) #17, !range !763
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 16) #18
  store ptr %6, ptr @ipa_edge_args_vector, align 8, !tbaa !278
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !585 !PGOFuncName !774 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !775
  %7 = load i32, ptr %0, align 8, !tbaa !768
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
define internal fastcc void @inline_indirect_intraprocedural_analysis(ptr noundef %0) unnamed_addr #0 !prof !751 !PGOFuncName !776 {
  %2 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !268
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5, !prof !753

4:                                                ; preds = %1
  tail call void @ipa_initialize_node_params(ptr noundef %0) #18
  tail call void @ipa_detect_param_modifications(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  tail call void @ipa_analyze_params_uses(ptr noundef %0) #18
  %6 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !268
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !753

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  tail call void @ipa_count_arguments(ptr noundef nonnull %13) #18
  tail call void @ipa_compute_jump_functions(ptr noundef nonnull %13) #18
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !278
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !777

17:                                               ; preds = %12, %8, %5
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !278
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !778

20:                                               ; preds = %17
  tail call void @ipa_print_node_params(ptr noundef nonnull %18, ptr noundef %0) #18
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !278
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_order(ptr nocapture readnone %0) #0 !prof !585 !PGOFuncName !779 {
  %2 = load ptr, ptr @order, align 8, !tbaa !278
  %3 = icmp ult ptr %2, inttoptr (i64 2 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %2) #18
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_order(ptr nocapture readnone %0) #0 !prof !585 !PGOFuncName !780 {
  %2 = load ptr, ptr @order, align 8, !tbaa !278
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %2, ptr noundef nonnull @order, ptr noundef nonnull @gt_pch_pa_order, i32 noundef 217) #18
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_order(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !585 !PGOFuncName !781 {
  %5 = load ptr, ptr @order, align 8, !tbaa !278
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!239}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!36 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_can_remove_if_no_direct_calls_p, i64 5161}
!37 = !{ptr @cgraph_clone_inlined_nodes, ptr @fancy_abort, i64 1}
!38 = !{ptr @cgraph_clone_inlined_nodes, ptr @update_noncloned_frequencies, i64 2456}
!39 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_clone_node, i64 25900}
!40 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_redirect_edge_callee, i64 25900}
!41 = !{ptr @cgraph_clone_inlined_nodes, ptr @inline_summary, i64 58970}
!42 = !{ptr @cgraph_clone_inlined_nodes, ptr @cgraph_clone_inlined_nodes, i64 8906}
!43 = !{ptr @update_noncloned_frequencies, ptr @update_noncloned_frequencies, i64 1129}
!44 = !{ptr @cgraph_early_inlining, ptr @cgraph_node, i64 8964}
!45 = !{ptr @cgraph_early_inlining, ptr @cgraph_decide_inlining_incrementally, i64 11683}
!46 = !{ptr @cgraph_early_inlining, ptr @timevar_push_1, i64 1}
!47 = !{ptr @cgraph_early_inlining, ptr @optimize_inline_calls, i64 2791}
!48 = !{ptr @cgraph_early_inlining, ptr @timevar_pop_1, i64 1}
!49 = !{ptr @cgraph_early_inlining, ptr @fprintf, i64 1}
!50 = !{ptr @cgraph_decide_inlining_incrementally, ptr @lookup_attribute, i64 8963}
!51 = !{ptr @cgraph_decide_inlining_incrementally, ptr @indent_to, i64 1}
!52 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_node_name, i64 1}
!53 = !{ptr @cgraph_decide_inlining_incrementally, ptr @fprintf, i64 1}
!54 = !{ptr @cgraph_decide_inlining_incrementally, ptr @bitmap_obstack_alloc_stat, i64 5801}
!55 = !{ptr @cgraph_decide_inlining_incrementally, ptr @bitmap_set_bit, i64 60765}
!56 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_recursive_inlining_p, i64 26192}
!57 = !{ptr @cgraph_decide_inlining_incrementally, ptr @gimple_in_ssa_p, i64 51570}
!58 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_maybe_hot_edge_p, i64 25365}
!59 = !{ptr @cgraph_decide_inlining_incrementally, ptr @leaf_node_p, i64 25365}
!60 = !{ptr @cgraph_decide_inlining_incrementally, ptr @optimize_function_for_speed_p, i64 3480}
!61 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_estimate_size_after_inlining, i64 25365}
!62 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_estimate_growth, i64 23296}
!63 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_check_inline_limits, i64 2840}
!64 = !{ptr @cgraph_decide_inlining_incrementally, ptr @tree_can_inline_p, i64 2822}
!65 = !{ptr @cgraph_decide_inlining_incrementally, ptr @cgraph_default_inline_p, i64 2822}
!66 = !{ptr @cgraph_decide_inlining_incrementally, ptr @try_inline, i64 2818}
!67 = !{ptr @cgraph_decide_inlining_incrementally, ptr @bitmap_obstack_free, i64 5801}
!68 = !{ptr @try_inline, ptr @indent_to, i64 1}
!69 = !{ptr @try_inline, ptr @cgraph_node_name, i64 2}
!70 = !{ptr @try_inline, ptr @fprintf, i64 1}
!71 = !{ptr @try_inline, ptr @cgraph_mark_inline, i64 5723}
!72 = !{ptr @try_inline, ptr @cgraph_decide_inlining_incrementally, i64 2}
!73 = !{ptr @cgraph_estimate_size_after_inlining, ptr @inline_summary, i64 8563128}
!74 = !{ptr @cgraph_estimate_size_after_inlining, ptr @fancy_abort, i64 1}
!75 = !{ptr @cgraph_estimate_growth, ptr @cgraph_estimate_size_after_inlining, i64 4260930}
!76 = !{ptr @cgraph_estimate_growth, ptr @cgraph_only_called_directly_p, i64 33254}
!77 = !{ptr @cgraph_check_inline_limits, ptr @inline_summary, i64 32784}
!78 = !{ptr @cgraph_check_inline_limits, ptr @cgraph_estimate_size_after_inlining, i64 16392}
!79 = !{ptr @cgraph_mark_inline, ptr @fancy_abort, i64 1}
!80 = !{ptr @cgraph_mark_inline, ptr @cgraph_mark_inline_edge, i64 8524}
!81 = !{ptr @cgraph_mark_inline_edge, ptr @fancy_abort, i64 2}
!82 = !{ptr @cgraph_mark_inline_edge, ptr @cgraph_can_remove_if_no_direct_calls_p, i64 5161}
!83 = !{ptr @cgraph_mark_inline_edge, ptr @cgraph_clone_inlined_nodes, i64 20512}
!84 = !{ptr @cgraph_mark_inline_edge, ptr @cgraph_estimate_size_after_inlining, i64 26398}
!85 = !{ptr @cgraph_mark_inline_edge, ptr @cgraph_estimate_time_after_inlining, i64 26398}
!86 = !{ptr @cgraph_mark_inline_edge, ptr @ipa_propagate_indirect_call_infos, i64 20511}
!87 = !{ptr @cgraph_estimate_time_after_inlining, ptr @inline_summary, i64 26957}
!88 = !{ptr @compute_inline_parameters, ptr @fancy_abort, i64 1}
!89 = !{ptr @compute_inline_parameters, ptr @estimated_stack_frame_size, i64 26889}
!90 = !{ptr @compute_inline_parameters, ptr @inline_summary, i64 26890}
!91 = !{ptr @compute_inline_parameters, ptr @tree_inlinable_function_p, i64 26890}
!92 = !{ptr @compute_inline_parameters, ptr @estimate_function_body_sizes, i64 26890}
!93 = !{ptr @estimate_function_body_sizes, ptr @cgraph_node_name, i64 1}
!94 = !{ptr @estimate_function_body_sizes, ptr @fprintf, i64 3}
!95 = !{ptr @estimate_function_body_sizes, ptr @fancy_abort, i64 4}
!96 = !{ptr @estimate_function_body_sizes, ptr @compute_call_stmt_bb_frequency, i64 753548}
!97 = !{ptr @estimate_function_body_sizes, ptr @gsi_start_bb, i64 753548}
!98 = !{ptr @estimate_function_body_sizes, ptr @gsi_end_p, i64 3010868}
!99 = !{ptr @estimate_function_body_sizes, ptr @gsi_stmt, i64 2257320}
!100 = !{ptr @estimate_function_body_sizes, ptr @estimate_num_insns, i64 4514640}
!101 = !{ptr @estimate_function_body_sizes, ptr @likely_eliminated_by_inlining_p, i64 2257320}
!102 = !{ptr @estimate_function_body_sizes, ptr @gsi_next, i64 2257320}
!103 = !{ptr @estimate_function_body_sizes, ptr @estimate_move_cost, i64 70406}
!104 = !{ptr @estimate_function_body_sizes, ptr @inline_summary, i64 26890}
!105 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 753575}
!106 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 753575}
!107 = !{ptr @likely_eliminated_by_inlining_p, ptr @gimple_code, i64 2257403}
!108 = !{ptr @likely_eliminated_by_inlining_p, ptr @gimple_num_ops, i64 1408857}
!109 = !{ptr @likely_eliminated_by_inlining_p, ptr @gimple_assign_rhs_code, i64 3278224}
!110 = !{ptr @likely_eliminated_by_inlining_p, ptr @gimple_assign_rhs_class, i64 1014374}
!111 = !{ptr @likely_eliminated_by_inlining_p, ptr @gimple_assign_rhs1, i64 1132985}
!112 = !{ptr @likely_eliminated_by_inlining_p, ptr @gimple_assign_lhs, i64 1132985}
!113 = !{ptr @likely_eliminated_by_inlining_p, ptr @handled_component_p, i64 7017585}
!114 = !{ptr @likely_eliminated_by_inlining_p, ptr @is_gimple_reg, i64 330735}
!115 = !{ptr @likely_eliminated_by_inlining_p, ptr @is_gimple_min_invariant, i64 149680}
!116 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 4292608}
!117 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 4292608}
!118 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 4042075}
!119 = !{ptr @gimple_assign_rhs_class, ptr @gimple_assign_rhs_code, i64 1014378}
!120 = !{ptr @gimple_assign_rhs_class, ptr @get_gimple_rhs_class, i64 1014378}
!121 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 5175063}
!122 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 1132987}
!123 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 4292608}
!124 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 6308050}
!125 = !{ptr @gimple_op, ptr @gimple_ops, i64 6308049}
!126 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 6308050}
!127 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 6308050}
!128 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!129 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 6308050}
!130 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 6308050}
!131 = !{ptr @compute_inline_parameters_for_current, ptr @cgraph_node, i64 17928}
!132 = !{ptr @compute_inline_parameters_for_current, ptr @compute_inline_parameters, i64 17928}
!133 = !{ptr @cgraph_decide_inlining, ptr @xcalloc, i64 1}
!134 = !{ptr @cgraph_decide_inlining, ptr @cgraph_remove_function_insertion_hook, i64 1}
!135 = !{ptr @cgraph_decide_inlining, ptr @inline_summary, i64 3676}
!136 = !{ptr @cgraph_decide_inlining, ptr @cgraph_postorder, i64 1}
!137 = !{ptr @cgraph_decide_inlining, ptr @lookup_attribute, i64 3761}
!138 = !{ptr @cgraph_decide_inlining, ptr @cgraph_recursive_inlining_p, i64 3}
!139 = !{ptr @cgraph_decide_inlining, ptr @tree_can_inline_p, i64 1}
!140 = !{ptr @cgraph_decide_inlining, ptr @cgraph_mark_inline_edge, i64 1}
!141 = !{ptr @cgraph_decide_inlining, ptr @cgraph_decide_inlining_of_small_functions, i64 1}
!142 = !{ptr @cgraph_decide_inlining, ptr @cgraph_only_called_directly_p, i64 518}
!143 = !{ptr @cgraph_decide_inlining, ptr @cgraph_check_inline_limits, i64 82}
!144 = !{ptr @cgraph_decide_inlining, ptr @cgraph_mark_inline, i64 80}
!145 = !{ptr @cgraph_decide_inlining, ptr @free_all_ipa_structures_after_iinln, i64 1}
!146 = !{ptr @cgraph_decide_inlining, ptr @free, i64 1}
!147 = !{ptr @inline_generate_summary, ptr @cgraph_add_function_insertion_hook, i64 1}
!148 = !{ptr @inline_generate_summary, ptr @ipa_register_cgraph_hooks, i64 1}
!149 = !{ptr @inline_generate_summary, ptr @ipa_check_create_node_params, i64 1}
!150 = !{ptr @inline_generate_summary, ptr @ipa_check_create_edge_args, i64 1}
!151 = !{ptr @inline_generate_summary, ptr @analyze_function, i64 3603}
!152 = !{ptr @inline_transform, ptr @cgraph_preserve_function_body_p, i64 6651}
!153 = !{ptr @inline_transform, ptr @save_inline_function_body, i64 1627}
!154 = !{ptr @inline_transform, ptr @timevar_push_1, i64 2}
!155 = !{ptr @inline_transform, ptr @optimize_inline_calls, i64 5205}
!156 = !{ptr @inline_transform, ptr @timevar_pop_1, i64 2}
!157 = !{ptr @inline_transform, ptr @execute_fixup_cfg, i64 6651}
!158 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @fibheap_new, i64 1}
!159 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @bitmap_obstack_alloc_stat, i64 1}
!160 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @VEC_cgraph_edge_p_heap_alloc, i64 1}
!161 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_default_inline_p, i64 4966}
!162 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_set_inline_failed, i64 2}
!163 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_edge_badness, i64 30509}
!164 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @fibheap_insert, i64 30509}
!165 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @compute_max_insns, i64 4}
!166 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @fibheap_extract_min, i64 39343}
!167 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_estimate_size_after_inlining, i64 2902}
!168 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_maybe_hot_edge_p, i64 2838}
!169 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @optimize_function_for_size_p, i64 2838}
!170 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_estimate_growth, i64 210}
!171 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_recursive_inlining_p, i64 39250}
!172 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @tree_can_inline_p, i64 2629}
!173 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_decide_recursive_inlining, i64 47}
!174 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_check_inline_limits, i64 2582}
!175 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @cgraph_mark_inline_edge, i64 2580}
!176 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @add_new_edges_to_heap, i64 2626}
!177 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @update_callee_keys, i64 2627}
!178 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @update_caller_keys, i64 2627}
!179 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @bitmap_clear, i64 2627}
!180 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @VEC_cgraph_edge_p_heap_free, i64 1}
!181 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @fibheap_delete, i64 1}
!182 = !{ptr @cgraph_decide_inlining_of_small_functions, ptr @bitmap_obstack_free, i64 1}
!183 = !{ptr @VEC_cgraph_edge_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 1}
!184 = !{ptr @cgraph_set_inline_failed, ptr @cgraph_inline_failed_string, i64 1}
!185 = !{ptr @cgraph_set_inline_failed, ptr @fprintf, i64 1}
!186 = !{ptr @cgraph_edge_badness, ptr @cgraph_estimate_size_after_inlining, i64 4193702}
!187 = !{ptr @cgraph_edge_badness, ptr @inline_summary, i64 4193594}
!188 = !{ptr @cgraph_edge_badness, ptr @ceil_log2, i64 314446}
!189 = !{ptr @cgraph_edge_badness, ptr @cgraph_estimate_growth, i64 4193594}
!190 = !{ptr @cgraph_edge_badness, ptr @cgraph_recursive_inlining_p, i64 4193702}
!191 = !{ptr @cgraph_decide_recursive_inlining, ptr @optimize_function_for_size_p, i64 187}
!192 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_estimate_size_after_inlining, i64 1432}
!193 = !{ptr @cgraph_decide_recursive_inlining, ptr @fibheap_new, i64 182}
!194 = !{ptr @cgraph_decide_recursive_inlining, ptr @lookup_recursive_calls, i64 1246}
!195 = !{ptr @cgraph_decide_recursive_inlining, ptr @fibheap_empty, i64 1669}
!196 = !{ptr @cgraph_decide_recursive_inlining, ptr @fibheap_delete, i64 182}
!197 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_node_name, i64 1}
!198 = !{ptr @cgraph_decide_recursive_inlining, ptr @fprintf, i64 3}
!199 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_clone_node, i64 181}
!200 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_clone_inlined_nodes, i64 67}
!201 = !{ptr @cgraph_decide_recursive_inlining, ptr @fibheap_extract_min, i64 1125}
!202 = !{ptr @cgraph_decide_recursive_inlining, ptr @fwrite, i64 2}
!203 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_maybe_hot_edge_p, i64 1}
!204 = !{ptr @cgraph_decide_recursive_inlining, ptr @fputc, i64 1}
!205 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_redirect_edge_callee, i64 1064}
!206 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_mark_inline_edge, i64 1064}
!207 = !{ptr @cgraph_decide_recursive_inlining, ptr @cgraph_remove_node, i64 295}
!208 = !{ptr @add_new_edges_to_heap, ptr @VEC_cgraph_edge_p_base_length, i64 10618}
!209 = !{ptr @add_new_edges_to_heap, ptr @VEC_cgraph_edge_p_base_pop, i64 62}
!210 = !{ptr @add_new_edges_to_heap, ptr @fancy_abort, i64 1}
!211 = !{ptr @add_new_edges_to_heap, ptr @cgraph_edge_badness, i64 62}
!212 = !{ptr @add_new_edges_to_heap, ptr @fibheap_insert, i64 62}
!213 = !{ptr @update_callee_keys, ptr @update_caller_keys, i64 31144}
!214 = !{ptr @update_callee_keys, ptr @update_callee_keys, i64 9669}
!215 = !{ptr @update_caller_keys, ptr @bitmap_bit_p, i64 34228}
!216 = !{ptr @update_caller_keys, ptr @bitmap_set_bit, i64 24584}
!217 = !{ptr @update_caller_keys, ptr @cgraph_default_inline_p, i64 24583}
!218 = !{ptr @update_caller_keys, ptr @fibheap_delete_node, i64 2}
!219 = !{ptr @update_caller_keys, ptr @cgraph_edge_badness, i64 4131684}
!220 = !{ptr @update_caller_keys, ptr @fancy_abort, i64 1}
!221 = !{ptr @update_caller_keys, ptr @fibheap_replace_key, i64 4105030}
!222 = !{ptr @update_caller_keys, ptr @fibheap_insert, i64 23405}
!223 = !{ptr @VEC_cgraph_edge_p_heap_free, ptr @free, i64 1}
!224 = !{ptr @lookup_recursive_calls, ptr @fibheap_insert, i64 2824}
!225 = !{ptr @lookup_recursive_calls, ptr @lookup_recursive_calls, i64 685}
!226 = !{ptr @ipa_check_create_node_params, ptr @VEC_ipa_node_params_t_base_length, i64 1}
!227 = !{ptr @ipa_check_create_edge_args, ptr @VEC_ipa_edge_args_t_base_length, i64 1}
!228 = !{ptr @analyze_function, ptr @push_cfun, i64 7205}
!229 = !{ptr @analyze_function, ptr @compute_inline_parameters, i64 7205}
!230 = !{ptr @analyze_function, ptr @inline_indirect_intraprocedural_analysis, i64 7204}
!231 = !{ptr @analyze_function, ptr @pop_cfun, i64 7205}
!232 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_initialize_node_params, i64 1}
!233 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_detect_param_modifications, i64 1}
!234 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_analyze_params_uses, i64 7205}
!235 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_count_arguments, i64 20}
!236 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_compute_jump_functions, i64 20}
!237 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_print_node_params, i64 1}
!238 = !{ptr @inline_indirect_intraprocedural_analysis, ptr @ipa_print_node_jump_functions, i64 1}
!239 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!240 = !{!"function_entry_count", i64 29485}
!241 = !{!"branch_weights", i32 1129, i32 28358}
!242 = !{!243, !247, i64 16}
!243 = !{!"cgraph_edge", !244, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !247, i64 32, !247, i64 40, !247, i64 48, !247, i64 56, !247, i64 64, !248, i64 72, !248, i64 76, !248, i64 80, !248, i64 84, !249, i64 88, !248, i64 90, !248, i64 90, !248, i64 90}
!244 = !{!"long", !245, i64 0}
!245 = !{!"omnipotent char", !246, i64 0}
!246 = !{!"Simple C/C++ TBAA"}
!247 = !{!"any pointer", !245, i64 0}
!248 = !{!"int", !245, i64 0}
!249 = !{!"short", !245, i64 0}
!250 = !{!251, !247, i64 16}
!251 = !{!"cgraph_node", !247, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !247, i64 32, !247, i64 40, !247, i64 48, !247, i64 56, !247, i64 64, !247, i64 72, !247, i64 80, !247, i64 88, !247, i64 96, !247, i64 104, !247, i64 112, !247, i64 120, !247, i64 128, !247, i64 136, !252, i64 144, !254, i64 184, !255, i64 224, !256, i64 232, !257, i64 256, !244, i64 288, !248, i64 296, !248, i64 300, !248, i64 304, !248, i64 308, !248, i64 308, !248, i64 308, !248, i64 308, !248, i64 308, !248, i64 308, !248, i64 308, !248, i64 308, !248, i64 309, !248, i64 309}
!252 = !{!"cgraph_local_info", !247, i64 0, !253, i64 8, !248, i64 32, !248, i64 32, !248, i64 32, !248, i64 32, !248, i64 32, !248, i64 32, !248, i64 32, !248, i64 32}
!253 = !{!"inline_summary", !244, i64 0, !248, i64 8, !248, i64 12, !248, i64 16, !248, i64 20}
!254 = !{!"cgraph_global_info", !244, i64 0, !244, i64 8, !247, i64 16, !248, i64 24, !248, i64 28, !248, i64 32, !245, i64 36}
!255 = !{!"cgraph_rtl_info", !248, i64 0}
!256 = !{!"cgraph_clone_info", !247, i64 0, !247, i64 8, !247, i64 16}
!257 = !{!"cgraph_thunk_info", !244, i64 0, !244, i64 8, !247, i64 16, !245, i64 24, !245, i64 25, !245, i64 26}
!258 = !{!243, !247, i64 32}
!259 = !{!"branch_weights", i32 5162, i32 23197}
!260 = !{i8 0, i8 2}
!261 = !{!"branch_weights", i32 2704, i32 2459}
!262 = !{!251, !247, i64 112}
!263 = !{!"branch_weights", i32 4919, i32 6046681}
!264 = !{!251, !247, i64 200}
!265 = !{!"branch_weights", i32 2459, i32 1}
!266 = !{!"branch_weights", i32 1, i32 2459}
!267 = !{!251, !248, i64 212}
!268 = !{!248, !248, i64 0}
!269 = !{!243, !248, i64 80}
!270 = !{!243, !249, i64 88}
!271 = !{!243, !244, i64 0}
!272 = !{!243, !247, i64 8}
!273 = !{!"branch_weights", i32 17399, i32 12088}
!274 = !{!251, !244, i64 192}
!275 = !{!253, !244, i64 0}
!276 = !{!251, !244, i64 184}
!277 = !{!"branch_weights", i32 655, i32 28832}
!278 = !{!247, !247, i64 0}
!279 = !{!"branch_weights", i32 1, i32 29485}
!280 = !{!243, !248, i64 72}
!281 = !{!"branch_weights", i32 8906, i32 56743}
!282 = !{!"branch_weights", i32 29485, i32 36163}
!283 = distinct !{!283, !284}
!284 = !{!"llvm.loop.mustprogress"}
!285 = !{!"function_entry_count", i64 10322}
!286 = !{!"ipa-inline.c:cgraph_can_remove_if_no_direct_calls_p"}
!287 = !{!"branch_weights", i32 4917, i32 5407}
!288 = !{!251, !247, i64 0}
!289 = !{!"branch_weights", i32 4917, i32 1}
!290 = !{!"function_entry_count", i64 3586}
!291 = !{!"ipa-inline.c:update_noncloned_frequencies"}
!292 = !{!"branch_weights", i32 1, i32 3586}
!293 = !{!"branch_weights", i32 75, i32 26396}
!294 = !{!"branch_weights", i32 1129, i32 25342}
!295 = !{!"branch_weights", i32 3586, i32 22884}
!296 = distinct !{!296, !284}
!297 = !{!"function_entry_count", i64 17205142}
!298 = !{!"ipa-inline.c:inline_summary"}
!299 = !{!"function_entry_count", i64 8964}
!300 = !{!"ipa-inline.c:cgraph_gate_early_inlining"}
!301 = !{!"ipa-inline.c:cgraph_early_inlining"}
!302 = !{!"branch_weights", i32 8965, i32 1}
!303 = !{!304, !248, i64 8}
!304 = !{!"param_info", !247, i64 0, !248, i64 8, !245, i64 12, !248, i64 16, !248, i64 20, !247, i64 24}
!305 = !{!"branch_weights", i32 127, i32 1}
!306 = !{!"branch_weights", i32 8965, i32 2814}
!307 = !{!245, !245, i64 0}
!308 = !{!"branch_weights", i32 2814, i32 1}
!309 = !{!"branch_weights", i32 1507457, i32 127}
!310 = distinct !{!310, !284}
!311 = !{!"function_entry_count", i64 11777}
!312 = !{!"ipa-inline.c:cgraph_decide_inlining_incrementally"}
!313 = !{!251, !247, i64 128}
!314 = !{!"branch_weights", i32 105589770, i32 33155071}
!315 = !{!"branch_weights", i32 2146902976, i32 580672}
!316 = !{!"branch_weights", i32 1, i32 8964}
!317 = !{!"branch_weights", i32 78497, i32 1}
!318 = !{!"branch_weights", i32 1, i32 78497}
!319 = !{!"branch_weights", i32 8964, i32 69533}
!320 = distinct !{!320, !284}
!321 = !{!"branch_weights", i32 11778, i32 1}
!322 = !{!"branch_weights", i32 1, i32 11777}
!323 = !{!"branch_weights", i32 18017, i32 125933}
!324 = !{!"branch_weights", i32 -489372886, i32 78839819}
!325 = !{!251, !248, i64 296}
!326 = !{!"branch_weights", i32 70199, i32 53181}
!327 = !{!"branch_weights", i32 53181, i32 1}
!328 = !{!"branch_weights", i32 52357, i32 825}
!329 = !{!"branch_weights", i32 825, i32 1}
!330 = !{!"branch_weights", i32 51505, i32 853}
!331 = !{!"branch_weights", i32 853, i32 1}
!332 = !{!"branch_weights", i32 1, i32 51505}
!333 = !{!"branch_weights", i32 44440, i32 7066}
!334 = !{!"branch_weights", i32 1, i32 7066}
!335 = !{!"branch_weights", i32 1032469231, i32 20045}
!336 = !{!"branch_weights", i32 47304, i32 4202}
!337 = !{!"branch_weights", i32 45740, i32 1565}
!338 = !{!"branch_weights", i32 45740, i32 1}
!339 = !{!"branch_weights", i32 35, i32 5732}
!340 = !{!"branch_weights", i32 5732, i32 1}
!341 = !{!"branch_weights", i32 35, i32 1}
!342 = !{!"branch_weights", i32 1, i32 5732}
!343 = !{!"branch_weights", i32 8, i32 5725}
!344 = !{!"branch_weights", i32 11777, i32 132172}
!345 = distinct !{!345, !284}
!346 = !{!"function_entry_count", i64 5724}
!347 = !{!"ipa-inline.c:try_inline"}
!348 = !{!"branch_weights", i32 5725, i32 1}
!349 = !{!"branch_weights", i32 2147108595, i32 375053}
!350 = !{!"branch_weights", i32 1, i32 5725}
!351 = !{!"branch_weights", i32 11451, i32 32775625}
!352 = !{!"function_entry_count", i64 4331111}
!353 = !{!"ipa-inline.c:cgraph_recursive_inlining_p"}
!354 = !{!"branch_weights", i32 2743980, i32 1587133}
!355 = !{!"branch_weights", i32 2327861, i32 -2129505428}
!356 = !{!"function_entry_count", i64 104712}
!357 = !{!"ipa-inline.c:gimple_in_ssa_p"}
!358 = !{!"branch_weights", i32 1, i32 104713}
!359 = !{!360, !247, i64 24}
!360 = !{!"function", !247, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !247, i64 32, !247, i64 40, !247, i64 48, !247, i64 56, !247, i64 64, !247, i64 72, !247, i64 80, !247, i64 88, !247, i64 96, !248, i64 104, !248, i64 108, !248, i64 112, !248, i64 116, !248, i64 120, !248, i64 124, !247, i64 128, !248, i64 136, !248, i64 137, !248, i64 138, !248, i64 138, !248, i64 138, !248, i64 138, !248, i64 138, !248, i64 138, !248, i64 138, !248, i64 139, !248, i64 139, !248, i64 139, !248, i64 139, !248, i64 139, !248, i64 139, !248, i64 139}
!361 = !{!"branch_weights", i32 853, i32 103861}
!362 = !{!"function_entry_count", i64 51504}
!363 = !{!"ipa-inline.c:leaf_node_p"}
!364 = !{!"branch_weights", i32 1, i32 7065}
!365 = !{!"branch_weights", i32 7065, i32 37442}
!366 = distinct !{!366, !284}
!367 = !{!"branch_weights", i32 33614, i32 10894}
!368 = !{!"branch_weights", i32 10827, i32 68}
!369 = !{!"branch_weights", i32 68, i32 1}
!370 = !{!"function_entry_count", i64 8563128}
!371 = !{!"ipa-inline.c:cgraph_estimate_size_after_inlining"}
!372 = !{!253, !248, i64 12}
!373 = !{!"branch_weights", i32 8563129, i32 1}
!374 = !{!"function_entry_count", i64 4241741}
!375 = !{!"ipa-inline.c:cgraph_estimate_growth"}
!376 = !{!251, !248, i64 216}
!377 = !{!"branch_weights", i32 33254, i32 4208489}
!378 = !{!"branch_weights", i32 1, i32 33253}
!379 = !{!"branch_weights", i32 58800, i32 4202134}
!380 = !{!"branch_weights", i32 1, i32 4260933}
!381 = !{!"branch_weights", i32 33253, i32 4227680}
!382 = distinct !{!382, !284}
!383 = !{!"branch_weights", i32 22975, i32 10280}
!384 = !{!"branch_weights", i32 17249841, i32 88449120}
!385 = !{!"function_entry_count", i64 16392}
!386 = !{!"ipa-inline.c:cgraph_check_inline_limits"}
!387 = !{!"branch_weights", i32 6017, i32 10377}
!388 = !{!"branch_weights", i32 1, i32 6016}
!389 = !{!"branch_weights", i32 6016, i32 254236}
!390 = distinct !{!390, !284}
!391 = !{!"branch_weights", i32 14554, i32 1840}
!392 = !{!253, !248, i64 8}
!393 = !{!"branch_weights", i32 14837, i32 1557}
!394 = !{!"branch_weights", i32 1798, i32 14596}
!395 = !{!"branch_weights", i32 14739, i32 12655457}
!396 = !{!"branch_weights", i32 1, i32 17}
!397 = !{!"branch_weights", i32 481, i32 15897}
!398 = !{!"branch_weights", i32 29, i32 453}
!399 = !{!"branch_weights", i32 1, i32 29}
!400 = !{!"function_entry_count", i64 45553}
!401 = !{!"ipa-inline.c:cgraph_default_inline_p"}
!402 = !{!"branch_weights", i32 1, i32 45554}
!403 = !{!"branch_weights", i32 42482, i32 3073}
!404 = !{!"branch_weights", i32 3073, i32 1}
!405 = !{!"branch_weights", i32 42455, i32 28}
!406 = !{!"branch_weights", i32 1, i32 28}
!407 = !{!"function_entry_count", i64 5971}
!408 = !{!"ipa-inline.c:cgraph_mark_inline"}
!409 = !{!"branch_weights", i32 5972, i32 1}
!410 = !{!"branch_weights", i32 1, i32 5971}
!411 = !{!"branch_weights", i32 8526, i32 394711}
!412 = !{!"branch_weights", i32 1, i32 8526}
!413 = !{!"branch_weights", i32 8526, i32 1}
!414 = !{!"branch_weights", i32 5971, i32 397265}
!415 = distinct !{!415, !284}
!416 = !{!"function_entry_count", i64 20512}
!417 = !{!"ipa-inline.c:cgraph_mark_inline_edge"}
!418 = !{!"branch_weights", i32 1, i32 20513}
!419 = !{!251, !245, i64 220}
!420 = !{!"branch_weights", i32 4531, i32 15983}
!421 = !{!"branch_weights", i32 5162, i32 15352}
!422 = !{!"branch_weights", i32 20512, i32 1}
!423 = !{!"branch_weights", i32 6446, i32 20512}
!424 = distinct !{!424, !284}
!425 = !{i32 0, i32 1000000001}
!426 = !{!251, !248, i64 208}
!427 = !{!"branch_weights", i32 2994, i32 41482}
!428 = !{!"branch_weights", i32 20513, i32 1}
!429 = !{!"branch_weights", i32 16965, i32 3549}
!430 = !{!"branch_weights", i32 2459, i32 18055}
!431 = !{!"function_entry_count", i64 26957}
!432 = !{!"ipa-inline.c:cgraph_estimate_time_after_inlining"}
!433 = !{!253, !248, i64 20}
!434 = !{!"branch_weights", i32 56, i32 26903}
!435 = !{!"branch_weights", i32 79823, i32 2147403825}
!436 = !{!"function_entry_count", i64 34806}
!437 = !{!"ipa-inline.c:cgraph_only_called_directly_p"}
!438 = !{!"branch_weights", i32 11020, i32 23788}
!439 = !{!"function_entry_count", i64 1}
!440 = !{!"ipa-inline.c:cgraph_gate_ipa_early_inlining"}
!441 = !{!"branch_weights", i32 5, i32 4}
!442 = !{!"function_entry_count", i64 26890}
!443 = !{!"branch_weights", i32 26891, i32 1}
!444 = !{!"branch_weights", i32 1, i32 26891}
!445 = !{!"branch_weights", i32 699919936, i32 11561708}
!446 = !{!253, !248, i64 16}
!447 = !{!"ipa-inline.c:estimate_function_body_sizes"}
!448 = !{!360, !247, i64 8}
!449 = !{!450, !247, i64 0}
!450 = !{!"control_flow_graph", !247, i64 0, !247, i64 8, !247, i64 16, !248, i64 24, !248, i64 28, !248, i64 32, !247, i64 40, !248, i64 48, !245, i64 52, !245, i64 60, !248, i64 68, !248, i64 72}
!451 = !{!452, !247, i64 56}
!452 = !{!"basic_block_def", !247, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !245, i64 32, !247, i64 48, !247, i64 56, !245, i64 64, !244, i64 72, !248, i64 80, !248, i64 84, !248, i64 88, !248, i64 92, !248, i64 96}
!453 = !{!450, !247, i64 8}
!454 = !{!"branch_weights", i32 1, i32 26890}
!455 = !{!"branch_weights", i32 26890, i32 726686}
!456 = distinct !{!456, !284}
!457 = !{!"branch_weights", i32 753575, i32 1}
!458 = !{!"branch_weights", i32 2257404, i32 1}
!459 = !{!"branch_weights", i32 2058819, i32 198586}
!460 = !{!"branch_weights", i32 198586, i32 1}
!461 = !{!"branch_weights", i32 1503829, i32 753575}
!462 = distinct !{!462, !284}
!463 = !{!464, !248, i64 0}
!464 = !{!"eni_weights_d", !248, i64 0, !248, i64 4, !248, i64 8, !248, i64 12, !245, i64 16}
!465 = !{!"branch_weights", i32 11529, i32 15363}
!466 = !{!"branch_weights", i32 1, i32 55047}
!467 = !{!"branch_weights", i32 26890, i32 28157}
!468 = distinct !{!468, !284}
!469 = !{!"function_entry_count", i64 753575}
!470 = !{!"ipa-inline.c:gsi_start_bb"}
!471 = !{!472, !247, i64 0}
!472 = !{!"", !247, i64 0, !247, i64 8, !247, i64 16}
!473 = !{!472, !247, i64 8}
!474 = !{!472, !247, i64 16}
!475 = !{!"function_entry_count", i64 3010978}
!476 = !{!"ipa-inline.c:gsi_end_p"}
!477 = !{!"function_entry_count", i64 2257403}
!478 = !{!"ipa-inline.c:gsi_stmt"}
!479 = !{!480, !247, i64 0}
!480 = !{!"gimple_seq_node_d", !247, i64 0, !247, i64 8, !247, i64 16}
!481 = !{!"ipa-inline.c:likely_eliminated_by_inlining_p"}
!482 = !{i32 0, i32 256}
!483 = !{!"branch_weights", i32 821726, i32 26821, i32 1408859}
!484 = !{!"branch_weights", i32 1136847, i32 272013}
!485 = !{i32 0, i32 65536}
!486 = !{!"branch_weights", i32 9841, i32 1127007}
!487 = !{!"branch_weights", i32 112629, i32 1014379}
!488 = !{!"branch_weights", i32 1, i32 1014379}
!489 = !{!"branch_weights", i32 1010520, i32 3860}
!490 = !{!"branch_weights", i32 1207190, i32 126370}
!491 = !{!"branch_weights", i32 200572, i32 1132988}
!492 = distinct !{!492, !284}
!493 = !{!"branch_weights", i32 1748768, i32 1331484}
!494 = !{!"branch_weights", i32 1076394756, i32 122061582, i32 -775093369, i32 150569310, i32 821024762}
!495 = distinct !{!495, !284}
!496 = !{!"branch_weights", i32 378708, i32 75501}
!497 = !{!"branch_weights", i32 75501, i32 1}
!498 = !{!"branch_weights", i32 -1907020950, i32 43714625, i32 -1757678815, i32 1265278}
!499 = !{!"branch_weights", i32 567502, i32 10889}
!500 = !{!"branch_weights", i32 337434304, i32 -699297190}
!501 = !{!"branch_weights", i32 234310886, i32 -1795902695}
!502 = !{!"branch_weights", i32 -283990681, i32 638007960}
!503 = !{!"branch_weights", i32 1852774887, i32 294708761}
!504 = !{!"branch_weights", i32 149682, i32 22258}
!505 = !{!"branch_weights", i32 143334, i32 156032}
!506 = !{!"ipa-inline.c:gsi_next"}
!507 = !{!480, !247, i64 16}
!508 = !{!"ipa-inline.c:bb_seq"}
!509 = !{!452, !248, i64 96}
!510 = !{!"branch_weights", i32 753576, i32 1}
!511 = !{!"branch_weights", i32 1, i32 753576}
!512 = !{!513, !247, i64 0}
!513 = !{!"gimple_bb_info", !247, i64 0, !247, i64 8}
!514 = !{!"ipa-inline.c:gimple_seq_first"}
!515 = !{!516, !247, i64 0}
!516 = !{!"gimple_seq_d", !247, i64 0, !247, i64 8, !247, i64 16}
!517 = !{!"function_entry_count", i64 25474161}
!518 = !{!"ipa-inline.c:gimple_code"}
!519 = !{!"function_entry_count", i64 1408858}
!520 = !{!"ipa-inline.c:gimple_num_ops"}
!521 = !{!"function_entry_count", i64 4292608}
!522 = !{!"ipa-inline.c:gimple_assign_rhs_code"}
!523 = !{!"branch_weights", i32 4042077, i32 250533}
!524 = !{!"function_entry_count", i64 1014378}
!525 = !{!"ipa-inline.c:gimple_assign_rhs_class"}
!526 = !{!"function_entry_count", i64 5175063}
!527 = !{!"ipa-inline.c:gimple_assign_rhs1"}
!528 = !{!"function_entry_count", i64 1132987}
!529 = !{!"ipa-inline.c:gimple_assign_lhs"}
!530 = !{!"function_entry_count", i64 4413808}
!531 = !{!"ipa-inline.c:handled_component_p"}
!532 = !{!"branch_weights", i32 2955957, i32 19279, i32 1091363, i32 347213, i32 1, i32 1, i32 1, i32 1}
!533 = !{!"ipa-inline.c:gimple_expr_code"}
!534 = !{!"branch_weights", i32 1, i32 17170436, i32 2, i32 1}
!535 = !{!"function_entry_count", i64 5306986}
!536 = !{!"ipa-inline.c:get_gimple_rhs_class"}
!537 = !{!"function_entry_count", i64 6308050}
!538 = !{!"ipa-inline.c:gimple_op"}
!539 = !{!"branch_weights", i32 1, i32 6308051}
!540 = !{!"ipa-inline.c:gimple_has_ops"}
!541 = !{!"ipa-inline.c:gimple_ops"}
!542 = !{!244, !244, i64 0}
!543 = !{!"ipa-inline.c:gimple_statement_structure"}
!544 = !{!"ipa-inline.c:gss_for_code"}
!545 = !{!"function_entry_count", i64 17928}
!546 = !{!"ipa-inline.c:compute_inline_parameters_for_current"}
!547 = !{!"ipa-inline.c:cgraph_decide_inlining"}
!548 = !{!"branch_weights", i32 1, i32 5}
!549 = !{!"branch_weights", i32 1, i32 127}
!550 = !{!"branch_weights", i32 171, i32 7352}
!551 = !{!"branch_weights", i32 7352, i32 1}
!552 = !{!"branch_weights", i32 1, i32 7351}
!553 = !{!"branch_weights", i32 1, i32 71440}
!554 = !{!"branch_weights", i32 7351, i32 64089}
!555 = distinct !{!555, !284}
!556 = !{!"branch_weights", i32 9, i32 7344}
!557 = !{!"branch_weights", i32 127, i32 481281}
!558 = distinct !{!558, !284}
!559 = !{!"branch_weights", i32 480976214, i32 1666507434}
!560 = !{!"branch_weights", i32 2, i32 1}
!561 = distinct !{!561, !284}
!562 = !{!"branch_weights", i32 -2147483648, i32 0}
!563 = distinct !{!563, !284}
!564 = !{!"branch_weights", i32 7522, i32 1}
!565 = distinct !{!565, !284}
!566 = distinct !{!566, !284}
!567 = !{!"branch_weights", i32 481281, i32 127}
!568 = distinct !{!568, !284}
!569 = !{!"branch_weights", i32 1, i32 2}
!570 = !{!"branch_weights", i32 3320, i32 4203}
!571 = !{!"branch_weights", i32 1554, i32 2650}
!572 = !{!"branch_weights", i32 814, i32 741}
!573 = !{!"branch_weights", i32 38, i32 704}
!574 = !{!"branch_weights", i32 453, i32 252}
!575 = !{!"branch_weights", i32 1, i32 252}
!576 = !{!"branch_weights", i32 252, i32 1}
!577 = !{!"branch_weights", i32 5, i32 248}
!578 = !{!"branch_weights", i32 248, i32 1}
!579 = !{!"branch_weights", i32 5, i32 1}
!580 = distinct !{!580, !284}
!581 = !{!"ipa-inline.c:inline_generate_summary"}
!582 = !{!"branch_weights", i32 135, i32 7206}
!583 = !{!"branch_weights", i32 127, i32 469633}
!584 = distinct !{!584, !284}
!585 = !{!"function_entry_count", i64 0}
!586 = !{!"ipa-inline.c:inline_write_summary"}
!587 = !{!"ipa-inline.c:inline_read_summary"}
!588 = !{!"function_entry_count", i64 6708}
!589 = !{!"ipa-inline.c:inline_transform"}
!590 = !{!"branch_weights", i32 6653, i32 57}
!591 = !{!"branch_weights", i32 5026, i32 1628}
!592 = !{!"branch_weights", i32 1, i32 3976}
!593 = !{!"branch_weights", i32 3976, i32 32533}
!594 = distinct !{!594, !284}
!595 = !{!"branch_weights", i32 90607451, i32 1144671889}
!596 = !{!"branch_weights", i32 2677, i32 1}
!597 = !{!"ipa-inline.c:cgraph_decide_inlining_of_small_functions"}
!598 = !{!"branch_weights", i32 312, i32 7211}
!599 = !{!"branch_weights", i32 21846276, i32 11869824}
!600 = !{!"branch_weights", i32 4674, i32 1}
!601 = !{!"branch_weights", i32 5, i32 4670}
!602 = !{!"branch_weights", i32 1, i32 4669}
!603 = !{!"branch_weights", i32 1, i32 61062}
!604 = !{!243, !247, i64 64}
!605 = !{!"branch_weights", i32 61062, i32 1}
!606 = !{!"branch_weights", i32 4669, i32 56393}
!607 = distinct !{!607, !284}
!608 = distinct !{!608, !284}
!609 = !{!"branch_weights", i32 2, i32 11652}
!610 = !{!"branch_weights", i32 11652, i32 1}
!611 = !{!243, !247, i64 56}
!612 = !{!"branch_weights", i32 1, i32 11652}
!613 = !{!"branch_weights", i32 35, i32 11618}
!614 = distinct !{!614, !284}
!615 = !{!"branch_weights", i32 11618, i32 1}
!616 = !{!"branch_weights", i32 8485, i32 2919}
!617 = !{!"branch_weights", i32 215, i32 2705}
!618 = !{!"branch_weights", i32 2919, i32 0}
!619 = distinct !{!619, !284}
!620 = !{!"branch_weights", i32 215, i32 1}
!621 = !{!"branch_weights", i32 854, i32 10551}
!622 = !{!"branch_weights", i32 1, i32 11404}
!623 = !{!"branch_weights", i32 11404, i32 1}
!624 = !{!"branch_weights", i32 719922, i32 9031353}
!625 = !{!"branch_weights", i32 841, i32 3}
!626 = !{!"branch_weights", i32 841, i32 1}
!627 = !{!"branch_weights", i32 1, i32 10564}
!628 = !{!"branch_weights", i32 10377, i32 188}
!629 = !{!"branch_weights", i32 187, i32 2}
!630 = !{!"branch_weights", i32 1, i32 188}
!631 = !{!"branch_weights", i32 2, i32 187}
!632 = !{!"branch_weights", i32 1, i32 187}
!633 = !{!"branch_weights", i32 10377, i32 1}
!634 = !{!"branch_weights", i32 7, i32 10371}
!635 = !{!"branch_weights", i32 7, i32 1}
!636 = !{!"branch_weights", i32 1, i32 10371}
!637 = !{!"branch_weights", i32 8729, i32 1829}
!638 = !{!"branch_weights", i32 10557, i32 1}
!639 = !{!"branch_weights", i32 14, i32 10544}
!640 = !{!"branch_weights", i32 14, i32 1}
!641 = !{!"branch_weights", i32 127, i32 745601}
!642 = !{!"branch_weights", i32 1, i32 72880}
!643 = !{!"branch_weights", i32 72880, i32 1}
!644 = !{!"branch_weights", i32 54, i32 72827}
!645 = !{!"branch_weights", i32 69188, i32 3640}
!646 = !{!"branch_weights", i32 127, i32 4664193}
!647 = distinct !{!647, !284}
!648 = !{!"ipa-inline.c:VEC_cgraph_edge_p_heap_alloc"}
!649 = !{!"function_entry_count", i64 4}
!650 = !{!"ipa-inline.c:cgraph_set_inline_failed"}
!651 = !{!"branch_weights", i32 1, i32 159}
!652 = !{!"branch_weights", i32 1, i32 8}
!653 = !{!"branch_weights", i32 159, i32 97}
!654 = distinct !{!654, !284}
!655 = !{!"function_entry_count", i64 4193702}
!656 = !{!"ipa-inline.c:cgraph_edge_badness"}
!657 = !{!"branch_weights", i32 107, i32 4193597}
!658 = !{!"branch_weights", i32 4193597, i32 1}
!659 = !{!"branch_weights", i32 1, i32 4193597}
!660 = !{!"branch_weights", i32 4077624, i32 115974}
!661 = !{!"branch_weights", i32 314446, i32 3879152}
!662 = !{!"function_entry_count", i64 14}
!663 = !{!"ipa-inline.c:compute_max_insns"}
!664 = !{!"ipa-inline.c:gimple_filename"}
!665 = !{!666, !247, i64 0}
!666 = !{!"", !247, i64 0, !248, i64 8, !248, i64 12, !245, i64 16}
!667 = !{!"ipa-inline.c:gimple_lineno"}
!668 = !{!666, !248, i64 8}
!669 = !{!"function_entry_count", i64 187}
!670 = !{!"ipa-inline.c:cgraph_decide_recursive_inlining"}
!671 = !{!"branch_weights", i32 188, i32 1}
!672 = !{!"branch_weights", i32 2124758953, i32 22724695}
!673 = !{!"branch_weights", i32 2130409908, i32 17073740}
!674 = !{!"branch_weights", i32 187, i32 1}
!675 = !{!251, !244, i64 288}
!676 = !{!"branch_weights", i32 1, i32 186}
!677 = !{!"branch_weights", i32 183, i32 1}
!678 = !{!"branch_weights", i32 69, i32 547}
!679 = !{!"branch_weights", i32 186, i32 429}
!680 = distinct !{!680, !284}
!681 = !{!"branch_weights", i32 187, i32 1709}
!682 = !{!"branch_weights", i32 1, i32 1708}
!683 = !{!"branch_weights", i32 1708, i32 2857}
!684 = distinct !{!684, !284}
!685 = !{!"branch_weights", i32 92, i32 1618}
!686 = !{!"branch_weights", i32 92, i32 1}
!687 = distinct !{!687, !284}
!688 = !{!"branch_weights", i32 1618, i32 1}
!689 = !{!"branch_weights", i32 3425, i32 183}
!690 = !{!"branch_weights", i32 96, i32 18140}
!691 = !{!251, !247, i64 24}
!692 = !{!"branch_weights", i32 118, i32 2185}
!693 = !{!"branch_weights", i32 186, i32 2116}
!694 = distinct !{!694, !284}
!695 = !{!"function_entry_count", i64 10556}
!696 = !{!"ipa-inline.c:add_new_edges_to_heap"}
!697 = !{!"branch_weights", i32 10495, i32 62}
!698 = !{!"branch_weights", i32 62, i32 1}
!699 = !{!"branch_weights", i32 62, i32 0}
!700 = distinct !{!700, !284}
!701 = !{!"function_entry_count", i64 20225}
!702 = !{!"ipa-inline.c:update_callee_keys"}
!703 = !{!"branch_weights", i32 1, i32 20225}
!704 = !{!"branch_weights", i32 9670, i32 31146}
!705 = !{!"branch_weights", i32 20225, i32 20590}
!706 = distinct !{!706, !284}
!707 = !{!"function_entry_count", i64 41701}
!708 = !{!"ipa-inline.c:update_caller_keys"}
!709 = !{!"branch_weights", i32 1171829824, i32 255788975}
!710 = !{!"branch_weights", i32 34232, i32 1}
!711 = !{!"branch_weights", i32 24587, i32 9646}
!712 = !{!"branch_weights", i32 1, i32 24587}
!713 = !{!"branch_weights", i32 17, i32 24571}
!714 = !{!"branch_weights", i32 1, i32 135}
!715 = !{!"branch_weights", i32 126, i32 1}
!716 = !{!"branch_weights", i32 135, i32 873}
!717 = distinct !{!717, !284}
!718 = !{!"branch_weights", i32 1, i32 24570}
!719 = !{!"branch_weights", i32 1, i32 4132581}
!720 = !{!"branch_weights", i32 23409, i32 4109173}
!721 = !{!722, !247, i64 40}
!722 = !{!"fibnode", !247, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !244, i64 32, !247, i64 40, !248, i64 48, !248, i64 51}
!723 = !{!"branch_weights", i32 4109173, i32 1}
!724 = !{!722, !244, i64 32}
!725 = !{!"branch_weights", i32 3250, i32 4105924}
!726 = !{!"branch_weights", i32 1, i32 4105924}
!727 = !{!"branch_weights", i32 24570, i32 4108011}
!728 = distinct !{!728, !284}
!729 = !{!"ipa-inline.c:VEC_cgraph_edge_p_heap_free"}
!730 = !{!"ipa-inline.c:gimple_location"}
!731 = !{!"function_entry_count", i64 2487}
!732 = !{!"ipa-inline.c:lookup_recursive_calls"}
!733 = !{!"branch_weights", i32 1, i32 2487}
!734 = !{!"branch_weights", i32 0, i32 -2147483648}
!735 = !{!"branch_weights", i32 2826, i32 3974}
!736 = !{!"branch_weights", i32 2826, i32 1}
!737 = !{!"branch_weights", i32 2487, i32 4312}
!738 = distinct !{!738, !284}
!739 = !{!"branch_weights", i32 685, i32 6115}
!740 = distinct !{!740, !284}
!741 = !{!"function_entry_count", i64 10617}
!742 = !{!"ipa-inline.c:VEC_cgraph_edge_p_base_length"}
!743 = !{!"branch_weights", i32 1, i32 10618}
!744 = !{!745, !248, i64 0}
!745 = !{!"VEC_cgraph_edge_p_base", !248, i64 0, !248, i64 4, !245, i64 8}
!746 = !{!"function_entry_count", i64 61}
!747 = !{!"ipa-inline.c:VEC_cgraph_edge_p_base_pop"}
!748 = !{!"ipa-inline.c:add_new_function"}
!749 = !{!"ipa-inline.c:ipa_check_create_node_params"}
!750 = !{!"ipa-inline.c:ipa_check_create_edge_args"}
!751 = !{!"function_entry_count", i64 7205}
!752 = !{!"ipa-inline.c:analyze_function"}
!753 = !{!"branch_weights", i32 1, i32 7206}
!754 = !{!"ipa-inline.c:VEC_ipa_node_params_t_heap_alloc"}
!755 = !{!"ipa-inline.c:VEC_ipa_node_params_t_base_length"}
!756 = !{!757, !248, i64 0}
!757 = !{!"VEC_ipa_node_params_t_base", !248, i64 0, !248, i64 4, !245, i64 8}
!758 = !{!"ipa-inline.c:VEC_ipa_node_params_t_heap_safe_grow_cleared"}
!759 = !{!"ipa-inline.c:VEC_ipa_node_params_t_heap_safe_grow"}
!760 = !{}
!761 = !{!"ipa-inline.c:VEC_ipa_node_params_t_base_address"}
!762 = !{!"ipa-inline.c:VEC_ipa_node_params_t_heap_reserve_exact"}
!763 = !{i32 0, i32 2}
!764 = !{!"ipa-inline.c:VEC_ipa_node_params_t_base_space"}
!765 = !{!757, !248, i64 4}
!766 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_gc_alloc"}
!767 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_base_length"}
!768 = !{!769, !248, i64 0}
!769 = !{!"VEC_ipa_edge_args_t_base", !248, i64 0, !248, i64 4, !245, i64 8}
!770 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_gc_safe_grow_cleared"}
!771 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_gc_safe_grow"}
!772 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_base_address"}
!773 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_gc_reserve_exact"}
!774 = !{!"ipa-inline.c:VEC_ipa_edge_args_t_base_space"}
!775 = !{!769, !248, i64 4}
!776 = !{!"ipa-inline.c:inline_indirect_intraprocedural_analysis"}
!777 = distinct !{!777, !284}
!778 = !{!"branch_weights", i32 7206, i32 1}
!779 = !{!"ipa-inline.c:gt_ggc_ma_order"}
!780 = !{!"ipa-inline.c:gt_pch_na_order"}
!781 = !{!"ipa-inline.c:gt_pch_pa_order"}
