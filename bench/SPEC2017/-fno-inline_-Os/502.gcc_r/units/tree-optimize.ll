; ModuleID = 'tree-optimize.c'
source_filename = "tree-optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [19 x i8] c"*all_optimizations\00", align 1
@pass_all_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_all_optimizations, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"early_local_cleanups\00", align 1
@pass_early_local_passes = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.1, ptr @gate_all_early_local_passes, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256 } }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"early_optimizations\00", align 1
@pass_all_early_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_all_early_optimizations, ptr @execute_early_local_optimizations, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"cleanup_cfg\00", align 1
@pass_cleanup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr null, ptr @execute_cleanup_cfg_pre_ipa, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"optimized\00", align 1
@pass_cleanup_cfg_post_optimizing = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @execute_cleanup_cfg_post_optimizing, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 32769 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"*free_cfg_annotations\00", align 1
@pass_fixup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr null, ptr @execute_fixup_cfg, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"*init_datastructures\00", align 1
@pass_init_datastructures = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr null, ptr @execute_init_datastructures, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@all_lowering_passes = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tree-optimize.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@all_passes = external local_unnamed_addr global ptr, align 8
@warn_larger_than = external local_unnamed_addr global i8, align 1
@larger_than_size = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"size of return value of %q+D is %u bytes\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"size of return value of %q+D is larger than %wd bytes\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@global_dc = external local_unnamed_addr global ptr, align 8
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_state = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_optimizations() #0 !prof !107 !PGOFuncName !108 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !109
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %15, !prof !113

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !113

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !109
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12, !prof !113

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr @cfun, align 8, !tbaa !114
  %14 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %13) #8, !range !116
  br label %15

15:                                               ; preds = %8, %12, %0
  %16 = phi i8 [ 0, %0 ], [ 1, %8 ], [ %14, %12 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_early_local_passes() #0 !prof !117 !PGOFuncName !118 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !109
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13, !prof !119

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !109
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13, !prof !119

9:                                                ; preds = %5
  %10 = load i8, ptr @in_lto_p, align 1, !tbaa !120
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %9, %5, %0
  %14 = phi i8 [ 0, %5 ], [ 0, %0 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_early_optimizations() #0 !prof !121 !PGOFuncName !122 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !109
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13, !prof !123

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !123

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !109
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @execute_early_local_optimizations() #1 !prof !121 !PGOFuncName !124 {
  %1 = load i32, ptr @cgraph_state, align 4, !tbaa !109
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %4, !prof !125

3:                                                ; preds = %0
  store i32 2, ptr @cgraph_state, align 4, !tbaa !109
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cleanup_cfg_pre_ipa() #2 !prof !121 !PGOFuncName !126 {
  %1 = tail call zeroext i8 @cleanup_tree_cfg() #9
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cleanup_cfg_post_optimizing() #2 !prof !107 !PGOFuncName !127 {
  tail call void @fold_cond_expr_cond() #9
  %1 = tail call zeroext i8 @cleanup_tree_cfg() #9
  tail call void @cleanup_dead_labels() #9
  tail call void @group_case_labels() #9
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @execute_free_datastructures() local_unnamed_addr #2 !prof !107 {
  tail call void @free_dominance_info(i32 noundef 1) #9
  tail call void @free_dominance_info(i32 noundef 2) #9
  tail call void @delete_tree_cfg_annotations() #9
  ret i32 0
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_tree_cfg_annotations() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @execute_fixup_cfg() #2 !prof !128 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  %4 = load ptr, ptr @cfun, align 8, !tbaa !114
  %5 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %4) #8, !range !116
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !133
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14, !prof !136

14:                                               ; preds = %0
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !114
  %16 = tail call ptr @cgraph_node(ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 23
  %18 = load i64, ptr %17, align 8, !tbaa !137
  %19 = mul nsw i64 %18, 10000
  %20 = load ptr, ptr @cfun, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !129
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !133
  %26 = sdiv i64 %25, 2
  %27 = add nsw i64 %26, %19
  %28 = sdiv i64 %27, %25
  br label %29

29:                                               ; preds = %0, %14
  %30 = phi i64 [ %28, %14 ], [ 10000, %0 ]
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !114
  %32 = tail call ptr @cgraph_node(ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %32, i64 0, i32 23
  %34 = load i64, ptr %33, align 8, !tbaa !137
  %35 = load ptr, ptr @cfun, align 8, !tbaa !114
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !129
  %38 = load ptr, ptr %37, align 8, !tbaa !131
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 8
  store i64 %34, ptr %39, align 8, !tbaa !133
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !145
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !133
  %44 = mul nsw i64 %43, %30
  %45 = add nsw i64 %44, 5000
  %46 = sdiv i64 %45, 10000
  store i64 %46, ptr %42, align 8, !tbaa !133
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !146
  %49 = icmp eq ptr %48, %41
  br i1 %49, label %117, label %50, !prof !147

50:                                               ; preds = %29
  %51 = getelementptr inbounds i8, ptr %3, i64 8
  br label %61

52:                                               ; preds = %106, %100
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !146
  %55 = load ptr, ptr @cfun, align 8, !tbaa !114
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !129
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !145
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %117, label %61, !prof !148, !llvm.loop !149

61:                                               ; preds = %50, %52
  %62 = phi ptr [ %48, %50 ], [ %54, %52 ]
  %63 = phi i32 [ %7, %50 ], [ %101, %52 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !133
  %66 = mul nsw i64 %65, %30
  %67 = add nsw i64 %66, 5000
  %68 = sdiv i64 %67, 10000
  store i64 %68, ptr %64, align 8, !tbaa !133
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %62) #8
  %69 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #8, !range !116
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %94, !prof !151

71:                                               ; preds = %61, %89
  %72 = phi i32 [ %90, %89 ], [ %63, %61 ]
  %73 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #8
  %74 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %73) #8, !range !116
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %89, label %76, !prof !152

76:                                               ; preds = %71
  %77 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %73) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79, !prof !153

79:                                               ; preds = %76
  %80 = tail call i32 @gimple_call_flags(ptr noundef %73) #9
  %81 = and i32 %80, 7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83, !prof !154

83:                                               ; preds = %79
  %84 = load ptr, ptr @cfun, align 8, !tbaa !114
  %85 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %84) #8, !range !116
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87, !prof !155

87:                                               ; preds = %83
  %88 = or i32 %72, 2080
  tail call void @mark_symbols_for_renaming(ptr noundef %73) #9
  tail call fastcc void @update_stmt(ptr noundef %73) #8
  br label %89

89:                                               ; preds = %71, %83, %87, %79, %76
  %90 = phi i32 [ %88, %87 ], [ %72, %83 ], [ %72, %79 ], [ %72, %76 ], [ %72, %71 ]
  %91 = tail call zeroext i8 @maybe_clean_eh_stmt(ptr noundef %73) #9
  call fastcc void @gsi_next(ptr noundef nonnull %1) #8
  %92 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #8, !range !116
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %71, label %94, !prof !156, !llvm.loop !157

94:                                               ; preds = %89, %61
  %95 = phi i32 [ %63, %61 ], [ %90, %89 ]
  %96 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %62) #9
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98, !prof !158

98:                                               ; preds = %94
  %99 = or i32 %95, 32
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %103 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %102) #8
  store i32 0, ptr %3, align 8, !tbaa.struct !159
  store ptr %103, ptr %51, align 8, !tbaa.struct !160
  %104 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %103, ptr noundef nonnull %2) #8, !range !116
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %52, label %106, !prof !161

106:                                              ; preds = %100, %106
  %107 = load ptr, ptr %2, align 8, !tbaa !114
  %108 = getelementptr inbounds %struct.edge_def, ptr %107, i64 0, i32 9
  %109 = load i64, ptr %108, align 8, !tbaa !162
  %110 = mul nsw i64 %109, %30
  %111 = add nsw i64 %110, 5000
  %112 = sdiv i64 %111, 10000
  store i64 %112, ptr %108, align 8, !tbaa !162
  call fastcc void @ei_next(ptr noundef nonnull %3) #8
  %113 = load i32, ptr %3, align 8
  %114 = load ptr, ptr %51, align 8
  %115 = call fastcc zeroext i8 @ei_cond(i32 %113, ptr %114, ptr noundef nonnull %2) #8, !range !116
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %52, label %106, !prof !164, !llvm.loop !165

117:                                              ; preds = %52, %29
  %118 = phi i32 [ %7, %29 ], [ %101, %52 ]
  %119 = icmp eq i64 %30, 10000
  br i1 %119, label %121, label %120, !prof !136

120:                                              ; preds = %117
  tail call void @compute_function_frequency() #9
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !114
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124, !prof !136

124:                                              ; preds = %121
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !109
  tail call void @gimple_dump_cfg(ptr noundef nonnull %122, i32 noundef %125) #9
  br label %126

126:                                              ; preds = %124, %121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 %118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #0 !prof !166 !PGOFuncName !167 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !168

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !170

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
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !171 !PGOFuncName !172 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #8
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #8
  store ptr %4, ptr %0, align 8, !tbaa !173
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !177 !PGOFuncName !178 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !179 !PGOFuncName !180 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !179 !PGOFuncName !183 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #8, !range !184
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #2 !prof !185 !PGOFuncName !186 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !187

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #2 !prof !188 !PGOFuncName !189 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #8, !range !116
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #9
  tail call void @update_stmt_operands(ptr noundef %0) #9
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_eh_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !179 !PGOFuncName !190 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  store ptr %4, ptr %0, align 8, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !171 !PGOFuncName !192 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !193 !PGOFuncName !194 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #8, !range !116
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !195

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #8
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !114
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #2 !prof !196 !PGOFuncName !197 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !198

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #8
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #8
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !199

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.8) #9
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !200
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !200
  ret void
}

; Function Attrs: optsize
declare void @compute_function_frequency() local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_init_datastructures() #2 !prof !121 !PGOFuncName !202 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !114
  tail call void @init_tree_ssa(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_lowering_passes(ptr noundef %0) local_unnamed_addr #2 !prof !121 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !114
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  tail call void @push_cfun(ptr noundef %4) #9
  tail call void @gimple_register_cfg_hooks() #9
  tail call void @bitmap_obstack_initialize(ptr noundef null) #9
  %5 = load ptr, ptr @all_lowering_passes, align 8, !tbaa !114
  tail call void @execute_pass_list(ptr noundef %5) #9
  %6 = load i32, ptr @optimize, align 4, !tbaa !109
  %7 = icmp ne i32 %6, 0
  %8 = load i8, ptr @cgraph_global_info_ready, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !203

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !204
  tail call void @execute_pass_list(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %11, %1
  tail call void @free_dominance_info(i32 noundef 2) #9
  tail call void @free_dominance_info(i32 noundef 1) #9
  tail call void @compact_blocks() #9
  store ptr %2, ptr @current_function_decl, align 8, !tbaa !114
  tail call void @bitmap_obstack_release(ptr noundef null) #9
  tail call void @pop_cfun() #9
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @execute_pass_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_rest_of_compilation(ptr noundef %0) local_unnamed_addr #2 !prof !107 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !120
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !113

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 116) #9
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !120
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !207

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 385, ptr noundef nonnull @.str.8) #9
  br label %9

9:                                                ; preds = %5, %8
  tail call void @bitmap_obstack_initialize(ptr noundef null) #9
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !114
  %10 = load i32, ptr @input_location, align 4, !tbaa !109
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !120
  store i32 %12, ptr @input_location, align 4, !tbaa !109
  tail call void @init_function_start(ptr noundef %0) #9
  %13 = load ptr, ptr @cfun, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8388608
  store i32 %16, ptr %14, align 8
  tail call void @gimple_register_cfg_hooks() #9
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @reg_obstack) #9
  tail call void @execute_all_ipa_transforms() #9
  %17 = tail call i32 @invoke_plugin_callbacks(i32 noundef 14, ptr noundef null) #9
  %18 = load ptr, ptr @all_passes, align 8, !tbaa !114
  tail call void @execute_pass_list(ptr noundef %18) #9
  %19 = tail call i32 @invoke_plugin_callbacks(i32 noundef 15, ptr noundef null) #9
  tail call void @bitmap_obstack_release(ptr noundef nonnull @reg_obstack) #9
  tail call void @bitmap_obstack_release(ptr noundef null) #9
  tail call void @set_cfun(ptr noundef null) #9
  %20 = load i8, ptr @warn_larger_than, align 1, !tbaa !120
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22, !prof !113

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 33554432
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !120
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i64, ptr @larger_than_size, align 8, !tbaa !208
  %45 = tail call i32 @compare_tree_int(ptr noundef nonnull %37, i64 noundef %44) #9
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load ptr, ptr %36, align 8, !tbaa !120
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !120
  %51 = and i64 %50, 4294967295
  %52 = tail call i32 @compare_tree_int(ptr noundef %48, i64 noundef %51) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = trunc i64 %50 to i32
  %56 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.9, ptr noundef nonnull %0, i32 noundef %55) #9
  br label %60

57:                                               ; preds = %47
  %58 = load i64, ptr @larger_than_size, align 8, !tbaa !208
  %59 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.10, ptr noundef nonnull %0, i64 noundef %58) #9
  br label %60

60:                                               ; preds = %31, %35, %39, %43, %57, %54, %27, %22, %9
  tail call void @gimple_set_body(ptr noundef nonnull %0, ptr noundef null) #9
  %61 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !120
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %75, !prof !207

64:                                               ; preds = %60
  %65 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #9
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !209
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !120
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @global_trees, align 16, !tbaa !114
  store ptr %74, ptr %70, align 8, !tbaa !120
  br label %75

75:                                               ; preds = %69, %73, %64, %60
  store i32 %10, ptr @input_location, align 4, !tbaa !109
  tail call void @ggc_collect() #9
  %76 = load i8, ptr @timevar_enable, align 1, !tbaa !120
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78, !prof !113

78:                                               ; preds = %75
  tail call void @timevar_pop_1(i32 noundef 116) #9
  br label %79

79:                                               ; preds = %78, %75
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_function_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @execute_all_ipa_transforms() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ggc_collect() local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_cond_expr_cond() local_unnamed_addr #3

; Function Attrs: optsize
declare void @cleanup_dead_labels() local_unnamed_addr #3

; Function Attrs: optsize
declare void @group_case_labels() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !171 !PGOFuncName !210 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !211
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !158

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !212

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !213
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !171 !PGOFuncName !215 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !212

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !216
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !218 !PGOFuncName !219 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #2 !prof !185 !PGOFuncName !220 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #8
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #2 !prof !185 !PGOFuncName !221 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #8, !range !116
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !222

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #8
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !185 !PGOFuncName !223 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #8, !range !184
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 !prof !185 !PGOFuncName !224 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #8
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !208
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !222

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.8) #9
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !185 !PGOFuncName !225 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #8, !range !184
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !185 !PGOFuncName !226 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !109
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #2 !prof !193 !PGOFuncName !227 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !228

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #8
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #8
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #2 !prof !196 !PGOFuncName !229 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !198

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #8
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !230 !PGOFuncName !231 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !232

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !233
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #2 !prof !235 !PGOFuncName !236 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !237

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.8) #9
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !114
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !196 !PGOFuncName !238 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  ret ptr %5
}

; Function Attrs: optsize
declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!106}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!35 = !{ptr @gate_all_optimizations, ptr @gimple_in_ssa_p, i64 2}
!36 = !{ptr @execute_cleanup_cfg_pre_ipa, ptr @cleanup_tree_cfg, i64 40}
!37 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @fold_cond_expr_cond, i64 38}
!38 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @cleanup_tree_cfg, i64 38}
!39 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @cleanup_dead_labels, i64 38}
!40 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @group_case_labels, i64 38}
!41 = !{ptr @execute_free_datastructures, ptr @free_dominance_info, i64 76}
!42 = !{ptr @execute_free_datastructures, ptr @delete_tree_cfg_annotations, i64 38}
!43 = !{ptr @execute_fixup_cfg, ptr @gimple_in_ssa_p, i64 125}
!44 = !{ptr @execute_fixup_cfg, ptr @cgraph_node, i64 119}
!45 = !{ptr @execute_fixup_cfg, ptr @gsi_start_bb, i64 476604}
!46 = !{ptr @execute_fixup_cfg, ptr @gsi_end_p, i64 1581672}
!47 = !{ptr @execute_fixup_cfg, ptr @gsi_stmt, i64 1105068}
!48 = !{ptr @execute_fixup_cfg, ptr @is_gimple_call, i64 1105068}
!49 = !{ptr @execute_fixup_cfg, ptr @gimple_call_fndecl, i64 205651}
!50 = !{ptr @execute_fixup_cfg, ptr @gimple_call_flags, i64 205651}
!51 = !{ptr @execute_fixup_cfg, ptr @mark_symbols_for_renaming, i64 1}
!52 = !{ptr @execute_fixup_cfg, ptr @update_stmt, i64 1}
!53 = !{ptr @execute_fixup_cfg, ptr @maybe_clean_eh_stmt, i64 1105068}
!54 = !{ptr @execute_fixup_cfg, ptr @gsi_next, i64 1105068}
!55 = !{ptr @execute_fixup_cfg, ptr @gimple_purge_dead_eh_edges, i64 476604}
!56 = !{ptr @execute_fixup_cfg, ptr @ei_start_1, i64 476604}
!57 = !{ptr @execute_fixup_cfg, ptr @ei_cond, i64 1388056}
!58 = !{ptr @execute_fixup_cfg, ptr @ei_next, i64 911452}
!59 = !{ptr @execute_fixup_cfg, ptr @compute_function_frequency, i64 1}
!60 = !{ptr @execute_fixup_cfg, ptr @gimple_dump_cfg, i64 1}
!61 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 480642}
!62 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 480642}
!63 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1114432}
!64 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 207393}
!65 = !{ptr @ei_cond, ptr @ei_end_p, i64 1399818}
!66 = !{ptr @ei_cond, ptr @ei_edge, i64 919176}
!67 = !{ptr @ei_next, ptr @ei_container, i64 1838351}
!68 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 919176}
!69 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!70 = !{ptr @execute_init_datastructures, ptr @init_tree_ssa, i64 40}
!71 = !{ptr @tree_lowering_passes, ptr @push_cfun, i64 40}
!72 = !{ptr @tree_lowering_passes, ptr @gimple_register_cfg_hooks, i64 40}
!73 = !{ptr @tree_lowering_passes, ptr @bitmap_obstack_initialize, i64 40}
!74 = !{ptr @tree_lowering_passes, ptr @execute_pass_list, i64 41}
!75 = !{ptr @tree_lowering_passes, ptr @free_dominance_info, i64 80}
!76 = !{ptr @tree_lowering_passes, ptr @compact_blocks, i64 40}
!77 = !{ptr @tree_lowering_passes, ptr @bitmap_obstack_release, i64 40}
!78 = !{ptr @tree_lowering_passes, ptr @pop_cfun, i64 40}
!79 = !{ptr @tree_rest_of_compilation, ptr @timevar_push_1, i64 1}
!80 = !{ptr @tree_rest_of_compilation, ptr @fancy_abort, i64 1}
!81 = !{ptr @tree_rest_of_compilation, ptr @bitmap_obstack_initialize, i64 76}
!82 = !{ptr @tree_rest_of_compilation, ptr @init_function_start, i64 38}
!83 = !{ptr @tree_rest_of_compilation, ptr @gimple_register_cfg_hooks, i64 38}
!84 = !{ptr @tree_rest_of_compilation, ptr @execute_all_ipa_transforms, i64 38}
!85 = !{ptr @tree_rest_of_compilation, ptr @invoke_plugin_callbacks, i64 76}
!86 = !{ptr @tree_rest_of_compilation, ptr @execute_pass_list, i64 38}
!87 = !{ptr @tree_rest_of_compilation, ptr @bitmap_obstack_release, i64 76}
!88 = !{ptr @tree_rest_of_compilation, ptr @set_cfun, i64 38}
!89 = !{ptr @tree_rest_of_compilation, ptr @gimple_set_body, i64 38}
!90 = !{ptr @tree_rest_of_compilation, ptr @cgraph_node, i64 1}
!91 = !{ptr @tree_rest_of_compilation, ptr @ggc_collect, i64 38}
!92 = !{ptr @tree_rest_of_compilation, ptr @timevar_pop_1, i64 1}
!93 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 207393}
!94 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 207393}
!95 = !{ptr @gimple_op, ptr @gimple_ops, i64 207392}
!96 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 207393}
!97 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 207393}
!98 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!99 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 207393}
!100 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 207393}
!101 = !{ptr @ei_end_p, ptr @ei_container, i64 2799572}
!102 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 1399818}
!103 = !{ptr @ei_edge, ptr @ei_container, i64 1838351}
!104 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 919176}
!105 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = !{!"function_entry_count", i64 38}
!108 = !{!"tree-optimize.c:gate_all_optimizations"}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!"branch_weights", i32 39, i32 1}
!114 = !{!115, !115, i64 0}
!115 = !{!"any pointer", !111, i64 0}
!116 = !{i8 0, i8 2}
!117 = !{!"function_entry_count", i64 1}
!118 = !{!"tree-optimize.c:gate_all_early_local_passes"}
!119 = !{!"branch_weights", i32 2, i32 1}
!120 = !{!111, !111, i64 0}
!121 = !{!"function_entry_count", i64 40}
!122 = !{!"tree-optimize.c:gate_all_early_optimizations"}
!123 = !{!"branch_weights", i32 41, i32 1}
!124 = !{!"tree-optimize.c:execute_early_local_optimizations"}
!125 = !{!"branch_weights", i32 2, i32 40}
!126 = !{!"tree-optimize.c:execute_cleanup_cfg_pre_ipa"}
!127 = !{!"tree-optimize.c:execute_cleanup_cfg_post_optimizing"}
!128 = !{!"function_entry_count", i64 118}
!129 = !{!130, !115, i64 8}
!130 = !{!"function", !115, i64 0, !115, i64 8, !115, i64 16, !115, i64 24, !115, i64 32, !115, i64 40, !115, i64 48, !115, i64 56, !115, i64 64, !115, i64 72, !115, i64 80, !115, i64 88, !115, i64 96, !110, i64 104, !110, i64 108, !110, i64 112, !110, i64 116, !110, i64 120, !110, i64 124, !115, i64 128, !110, i64 136, !110, i64 137, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139}
!131 = !{!132, !115, i64 0}
!132 = !{!"control_flow_graph", !115, i64 0, !115, i64 8, !115, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !115, i64 40, !110, i64 48, !111, i64 52, !111, i64 60, !110, i64 68, !110, i64 72}
!133 = !{!134, !135, i64 72}
!134 = !{!"basic_block_def", !115, i64 0, !115, i64 8, !115, i64 16, !115, i64 24, !111, i64 32, !115, i64 48, !115, i64 56, !111, i64 64, !135, i64 72, !110, i64 80, !110, i64 84, !110, i64 88, !110, i64 92, !110, i64 96}
!135 = !{!"long", !111, i64 0}
!136 = !{!"branch_weights", i32 119, i32 1}
!137 = !{!138, !135, i64 288}
!138 = !{!"cgraph_node", !115, i64 0, !115, i64 8, !115, i64 16, !115, i64 24, !115, i64 32, !115, i64 40, !115, i64 48, !115, i64 56, !115, i64 64, !115, i64 72, !115, i64 80, !115, i64 88, !115, i64 96, !115, i64 104, !115, i64 112, !115, i64 120, !115, i64 128, !115, i64 136, !139, i64 144, !141, i64 184, !142, i64 224, !143, i64 232, !144, i64 256, !135, i64 288, !110, i64 296, !110, i64 300, !110, i64 304, !110, i64 308, !110, i64 308, !110, i64 308, !110, i64 308, !110, i64 308, !110, i64 308, !110, i64 308, !110, i64 308, !110, i64 309, !110, i64 309}
!139 = !{!"cgraph_local_info", !115, i64 0, !140, i64 8, !110, i64 32, !110, i64 32, !110, i64 32, !110, i64 32, !110, i64 32, !110, i64 32, !110, i64 32, !110, i64 32}
!140 = !{!"inline_summary", !135, i64 0, !110, i64 8, !110, i64 12, !110, i64 16, !110, i64 20}
!141 = !{!"cgraph_global_info", !135, i64 0, !135, i64 8, !115, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !111, i64 36}
!142 = !{!"cgraph_rtl_info", !110, i64 0}
!143 = !{!"cgraph_clone_info", !115, i64 0, !115, i64 8, !115, i64 16}
!144 = !{!"cgraph_thunk_info", !135, i64 0, !135, i64 8, !115, i64 16, !111, i64 24, !111, i64 25, !111, i64 26}
!145 = !{!132, !115, i64 8}
!146 = !{!134, !115, i64 56}
!147 = !{!"branch_weights", i32 1, i32 237}
!148 = !{!"branch_weights", i32 237, i32 961049}
!149 = distinct !{!149, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !{!"branch_weights", i32 480642, i32 1}
!152 = !{!"branch_weights", i32 907040, i32 207394}
!153 = !{!"branch_weights", i32 0, i32 -2147483648}
!154 = !{!"branch_weights", i32 207388, i32 7}
!155 = !{!"branch_weights", i32 7, i32 1}
!156 = !{!"branch_weights", i32 633791, i32 480642}
!157 = distinct !{!157, !150}
!158 = !{!"branch_weights", i32 480643, i32 1}
!159 = !{i64 0, i64 4, !109, i64 8, i64 8, !114}
!160 = !{i64 0, i64 8, !114}
!161 = !{!"branch_weights", i32 1, i32 480642}
!162 = !{!163, !135, i64 56}
!163 = !{!"edge_def", !115, i64 0, !115, i64 8, !111, i64 16, !115, i64 24, !115, i64 32, !110, i64 40, !110, i64 44, !110, i64 48, !110, i64 52, !135, i64 56}
!164 = !{!"branch_weights", i32 480642, i32 438535}
!165 = distinct !{!165, !150}
!166 = !{!"function_entry_count", i64 124}
!167 = !{!"tree-optimize.c:gimple_in_ssa_p"}
!168 = !{!"branch_weights", i32 1, i32 125}
!169 = !{!130, !115, i64 24}
!170 = !{!"branch_weights", i32 47, i32 79}
!171 = !{!"function_entry_count", i64 480642}
!172 = !{!"tree-optimize.c:gsi_start_bb"}
!173 = !{!174, !115, i64 0}
!174 = !{!"", !115, i64 0, !115, i64 8, !115, i64 16}
!175 = !{!174, !115, i64 8}
!176 = !{!174, !115, i64 16}
!177 = !{!"function_entry_count", i64 1595074}
!178 = !{!"tree-optimize.c:gsi_end_p"}
!179 = !{!"function_entry_count", i64 1114432}
!180 = !{!"tree-optimize.c:gsi_stmt"}
!181 = !{!182, !115, i64 0}
!182 = !{!"gimple_seq_node_d", !115, i64 0, !115, i64 8, !115, i64 16}
!183 = !{!"tree-optimize.c:is_gimple_call"}
!184 = !{i32 0, i32 256}
!185 = !{!"function_entry_count", i64 207393}
!186 = !{!"tree-optimize.c:gimple_call_fndecl"}
!187 = !{!"branch_weights", i32 207394, i32 1}
!188 = !{!"function_entry_count", i64 0}
!189 = !{!"tree-optimize.c:update_stmt"}
!190 = !{!"tree-optimize.c:gsi_next"}
!191 = !{!182, !115, i64 16}
!192 = !{!"tree-optimize.c:ei_start_1"}
!193 = !{!"function_entry_count", i64 1399818}
!194 = !{!"tree-optimize.c:ei_cond"}
!195 = !{!"branch_weights", i32 919177, i32 480643}
!196 = !{!"function_entry_count", i64 919176}
!197 = !{!"tree-optimize.c:ei_next"}
!198 = !{!"branch_weights", i32 1, i32 919177}
!199 = !{!"branch_weights", i32 919177, i32 1}
!200 = !{!201, !110, i64 0}
!201 = !{!"", !110, i64 0, !115, i64 8}
!202 = !{!"tree-optimize.c:execute_init_datastructures"}
!203 = !{!"branch_weights", i32 41, i32 1723}
!204 = !{!205, !115, i64 32}
!205 = !{!"simple_ipa_opt_pass", !206, i64 0}
!206 = !{!"opt_pass", !110, i64 0, !115, i64 8, !115, i64 16, !115, i64 24, !115, i64 32, !115, i64 40, !110, i64 48, !110, i64 52, !110, i64 56, !110, i64 60, !110, i64 64, !110, i64 68, !110, i64 72}
!207 = !{!"branch_weights", i32 1, i32 39}
!208 = !{!135, !135, i64 0}
!209 = !{!138, !115, i64 40}
!210 = !{!"tree-optimize.c:bb_seq"}
!211 = !{!134, !110, i64 96}
!212 = !{!"branch_weights", i32 1, i32 480643}
!213 = !{!214, !115, i64 0}
!214 = !{!"gimple_bb_info", !115, i64 0, !115, i64 8}
!215 = !{!"tree-optimize.c:gimple_seq_first"}
!216 = !{!217, !115, i64 0}
!217 = !{!"gimple_seq_d", !115, i64 0, !115, i64 8, !115, i64 16}
!218 = !{!"function_entry_count", i64 1736611}
!219 = !{!"tree-optimize.c:gimple_code"}
!220 = !{!"tree-optimize.c:gimple_call_fn"}
!221 = !{!"tree-optimize.c:gimple_op"}
!222 = !{!"branch_weights", i32 1, i32 207394}
!223 = !{!"tree-optimize.c:gimple_has_ops"}
!224 = !{!"tree-optimize.c:gimple_ops"}
!225 = !{!"tree-optimize.c:gimple_statement_structure"}
!226 = !{!"tree-optimize.c:gss_for_code"}
!227 = !{!"tree-optimize.c:ei_end_p"}
!228 = !{!"branch_weights", i32 64, i32 1399756}
!229 = !{!"tree-optimize.c:ei_edge"}
!230 = !{!"function_entry_count", i64 2318994}
!231 = !{!"tree-optimize.c:VEC_edge_base_length"}
!232 = !{!"branch_weights", i32 64, i32 2318932}
!233 = !{!234, !110, i64 0}
!234 = !{!"VEC_edge_base", !110, i64 0, !110, i64 4, !111, i64 8}
!235 = !{!"function_entry_count", i64 6476277}
!236 = !{!"tree-optimize.c:ei_container"}
!237 = !{!"branch_weights", i32 1, i32 6476278}
!238 = !{!"tree-optimize.c:VEC_edge_base_index"}
