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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
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
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
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

@pass_all_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_all_optimizations, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str = private unnamed_addr constant [19 x i8] c"*all_optimizations\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@pass_early_local_passes = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.1, ptr @gate_all_early_local_passes, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256 } }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"early_local_cleanups\00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@pass_all_early_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_all_early_optimizations, ptr @execute_early_local_optimizations, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"early_optimizations\00", align 1
@cgraph_state = external local_unnamed_addr global i32, align 4
@pass_cleanup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr null, ptr @execute_cleanup_cfg_pre_ipa, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"cleanup_cfg\00", align 1
@pass_cleanup_cfg_post_optimizing = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @execute_cleanup_cfg_post_optimizing, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 32769 } }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"optimized\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@pass_fixup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.8, ptr null, ptr @execute_fixup_cfg, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"*free_cfg_annotations\00", align 1
@pass_init_datastructures = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.9, ptr null, ptr @execute_init_datastructures, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"*init_datastructures\00", align 1
@all_lowering_passes = external local_unnamed_addr global ptr, align 8
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"tree-optimize.c\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@all_passes = external local_unnamed_addr global ptr, align 8
@warn_larger_than = external local_unnamed_addr global i8, align 1
@larger_than_size = external local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"size of return value of %q+D is %u bytes\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"size of return value of %q+D is larger than %wd bytes\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_optimizations() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr @cfun, align 8, !tbaa !10
  %14 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %13) #8, !range !12
  br label %15

15:                                               ; preds = %8, %12, %0
  %16 = phi i8 [ 0, %0 ], [ 1, %8 ], [ %14, %12 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_early_local_passes() #0 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i8, ptr @in_lto_p, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %9, %5, %0
  %14 = phi i8 [ 0, %5 ], [ 0, %0 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_early_optimizations() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @execute_early_local_optimizations() #1 {
  %1 = load i32, ptr @cgraph_state, align 4, !tbaa !6
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 2, ptr @cgraph_state, align 4, !tbaa !6
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cleanup_cfg_pre_ipa() #2 {
  %1 = tail call zeroext i8 @cleanup_tree_cfg() #9
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cleanup_cfg_post_optimizing() #2 {
  tail call void @fold_cond_expr_cond() #9
  %1 = tail call zeroext i8 @cleanup_tree_cfg() #9
  tail call void @cleanup_dead_labels() #9
  tail call void @group_case_labels() #9
  ret i32 0
}

; Function Attrs: optsize
declare void @fold_cond_expr_cond() local_unnamed_addr #3

; Function Attrs: optsize
declare void @cleanup_dead_labels() local_unnamed_addr #3

; Function Attrs: optsize
declare void @group_case_labels() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @execute_free_datastructures() local_unnamed_addr #2 {
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
define dso_local i32 @execute_fixup_cfg() #2 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %4) #8, !range !12
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %0
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %16 = tail call ptr @cgraph_node(ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 23
  %18 = load i64, ptr %17, align 8, !tbaa !22
  %19 = mul nsw i64 %18, 10000
  %20 = load ptr, ptr @cfun, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !19
  %26 = sdiv i64 %25, 2
  %27 = add nsw i64 %26, %19
  %28 = sdiv i64 %27, %25
  br label %29

29:                                               ; preds = %0, %14
  %30 = phi i64 [ %28, %14 ], [ 10000, %0 ]
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %32 = tail call ptr @cgraph_node(ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %32, i64 0, i32 23
  %34 = load i64, ptr %33, align 8, !tbaa !22
  %35 = load ptr, ptr @cfun, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 8
  store i64 %34, ptr %39, align 8, !tbaa !19
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !19
  %44 = mul nsw i64 %43, %30
  %45 = add nsw i64 %44, 5000
  %46 = sdiv i64 %45, 10000
  store i64 %46, ptr %42, align 8, !tbaa !19
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  %49 = icmp eq ptr %48, %41
  br i1 %49, label %115, label %50

50:                                               ; preds = %29
  %51 = getelementptr inbounds i8, ptr %3, i64 8
  br label %61

52:                                               ; preds = %104, %94
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = load ptr, ptr @cfun, align 8, !tbaa !10
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !30
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %115, label %61, !llvm.loop !32

61:                                               ; preds = %50, %52
  %62 = phi ptr [ %48, %50 ], [ %54, %52 ]
  %63 = phi i32 [ %7, %50 ], [ %99, %52 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !19
  %66 = mul nsw i64 %65, %30
  %67 = add nsw i64 %66, 5000
  %68 = sdiv i64 %67, 10000
  store i64 %68, ptr %64, align 8, !tbaa !19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %62) #8
  %69 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #8, !range !12
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %61, %89
  %72 = phi i32 [ %90, %89 ], [ %63, %61 ]
  %73 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #8
  %74 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %73) #8, !range !12
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %71
  %77 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %73) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @gimple_call_flags(ptr noundef %73) #9
  %81 = and i32 %80, 7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @cfun, align 8, !tbaa !10
  %85 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %84) #8, !range !12
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = or i32 %72, 2080
  tail call void @mark_symbols_for_renaming(ptr noundef %73) #9
  tail call fastcc void @update_stmt(ptr noundef %73) #8
  br label %89

89:                                               ; preds = %71, %83, %87, %79, %76
  %90 = phi i32 [ %88, %87 ], [ %72, %83 ], [ %72, %79 ], [ %72, %76 ], [ %72, %71 ]
  %91 = tail call zeroext i8 @maybe_clean_eh_stmt(ptr noundef %73) #9
  call fastcc void @gsi_next(ptr noundef nonnull %1) #8
  %92 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #8, !range !12
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %71, label %94, !llvm.loop !34

94:                                               ; preds = %89, %61
  %95 = phi i32 [ %63, %61 ], [ %90, %89 ]
  %96 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %62) #9
  %97 = icmp eq i8 %96, 0
  %98 = or i32 %95, 32
  %99 = select i1 %97, i32 %95, i32 %98
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %101 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %100) #8
  store i32 0, ptr %3, align 8, !tbaa.struct !35
  store ptr %101, ptr %51, align 8, !tbaa.struct !36
  %102 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %101, ptr noundef nonnull %2) #8, !range !12
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %52, label %104

104:                                              ; preds = %94, %104
  %105 = load ptr, ptr %2, align 8, !tbaa !10
  %106 = getelementptr inbounds %struct.edge_def, ptr %105, i64 0, i32 9
  %107 = load i64, ptr %106, align 8, !tbaa !37
  %108 = mul nsw i64 %107, %30
  %109 = add nsw i64 %108, 5000
  %110 = sdiv i64 %109, 10000
  store i64 %110, ptr %106, align 8, !tbaa !37
  call fastcc void @ei_next(ptr noundef nonnull %3) #8
  %111 = load i32, ptr %3, align 8
  %112 = load ptr, ptr %51, align 8
  %113 = call fastcc zeroext i8 @ei_cond(i32 %111, ptr %112, ptr noundef nonnull %2) #8, !range !12
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %52, label %104, !llvm.loop !39

115:                                              ; preds = %52, %29
  %116 = phi i32 [ %7, %29 ], [ %99, %52 ]
  %117 = icmp eq i64 %30, 10000
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void @compute_function_frequency() #9
  br label %119

119:                                              ; preds = %118, %115
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @gimple_dump_cfg(ptr noundef nonnull %120, i32 noundef %123) #9
  br label %124

124:                                              ; preds = %122, %119
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 %116
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #8
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #8
  store ptr %4, ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #8, !range !46
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !15
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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #8, !range !12
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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  store ptr %4, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #8, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #8
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #8
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #8
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.6) #9
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !48
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @compute_function_frequency() local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #8
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #8, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #8
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #8, !range !46
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #8
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.6) #9
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #8, !range !46
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #8
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #8
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !56
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.6) #9
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_init_datastructures() #2 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  tail call void @init_tree_ssa(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: optsize
declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_lowering_passes(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  tail call void @push_cfun(ptr noundef %4) #9
  tail call void @gimple_register_cfg_hooks() #9
  tail call void @bitmap_obstack_initialize(ptr noundef null) #9
  %5 = load ptr, ptr @all_lowering_passes, align 8, !tbaa !10
  tail call void @execute_pass_list(ptr noundef %5) #9
  %6 = load i32, ptr @optimize, align 4, !tbaa !6
  %7 = icmp ne i32 %6, 0
  %8 = load i8, ptr @cgraph_global_info_ready, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !58
  tail call void @execute_pass_list(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %11, %1
  tail call void @free_dominance_info(i32 noundef 2) #9
  tail call void @free_dominance_info(i32 noundef 1) #9
  tail call void @compact_blocks() #9
  store ptr %2, ptr @current_function_decl, align 8, !tbaa !10
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
define dso_local void @tree_rest_of_compilation(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 116) #9
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 385, ptr noundef nonnull @.str.6) #9
  br label %9

9:                                                ; preds = %5, %8
  tail call void @bitmap_obstack_initialize(ptr noundef null) #9
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !10
  %10 = load i32, ptr @input_location, align 4, !tbaa !6
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !15
  store i32 %12, ptr @input_location, align 4, !tbaa !6
  tail call void @init_function_start(ptr noundef %0) #9
  %13 = load ptr, ptr @cfun, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8388608
  store i32 %16, ptr %14, align 8
  tail call void @gimple_register_cfg_hooks() #9
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @reg_obstack) #9
  tail call void @execute_all_ipa_transforms() #9
  %17 = tail call i32 @invoke_plugin_callbacks(i32 noundef 14, ptr noundef null) #9
  %18 = load ptr, ptr @all_passes, align 8, !tbaa !10
  tail call void @execute_pass_list(ptr noundef %18) #9
  %19 = tail call i32 @invoke_plugin_callbacks(i32 noundef 15, ptr noundef null) #9
  tail call void @bitmap_obstack_release(ptr noundef nonnull @reg_obstack) #9
  tail call void @bitmap_obstack_release(ptr noundef null) #9
  tail call void @set_cfun(ptr noundef null) #9
  %20 = load i8, ptr @warn_larger_than, align 1, !tbaa !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 33554432
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i64, ptr @larger_than_size, align 8, !tbaa !55
  %45 = tail call i32 @compare_tree_int(ptr noundef nonnull %37, i64 noundef %44) #9
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load ptr, ptr %36, align 8, !tbaa !15
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !15
  %51 = and i64 %50, 4294967295
  %52 = tail call i32 @compare_tree_int(ptr noundef %48, i64 noundef %51) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = trunc i64 %50 to i32
  %56 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.11, ptr noundef nonnull %0, i32 noundef %55) #9
  br label %60

57:                                               ; preds = %47
  %58 = load i64, ptr @larger_than_size, align 8, !tbaa !55
  %59 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.12, ptr noundef nonnull %0, i64 noundef %58) #9
  br label %60

60:                                               ; preds = %31, %35, %39, %43, %57, %54, %27, %22, %9
  tail call void @gimple_set_body(ptr noundef nonnull %0, ptr noundef null) #9
  %61 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = tail call ptr @cgraph_node(ptr noundef nonnull %0) #9
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @global_trees, align 16, !tbaa !10
  store ptr %74, ptr %70, align 8, !tbaa !15
  br label %75

75:                                               ; preds = %69, %73, %64, %60
  store i32 %10, ptr @input_location, align 4, !tbaa !6
  tail call void @ggc_collect() #9
  %76 = load i8, ptr @timevar_enable, align 1, !tbaa !15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @timevar_pop_1(i32 noundef 116) #9
  br label %79

79:                                               ; preds = %78, %75
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

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
!12 = !{i8 0, i8 2}
!13 = !{!14, !11, i64 24}
!14 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!15 = !{!8, !8, i64 0}
!16 = !{!14, !11, i64 8}
!17 = !{!18, !11, i64 0}
!18 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!19 = !{!20, !21, i64 72}
!20 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !21, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!21 = !{!"long", !8, i64 0}
!22 = !{!23, !21, i64 288}
!23 = !{!"cgraph_node", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !24, i64 144, !26, i64 184, !27, i64 224, !28, i64 232, !29, i64 256, !21, i64 288, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 308, !7, i64 309, !7, i64 309}
!24 = !{!"cgraph_local_info", !11, i64 0, !25, i64 8, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32, !7, i64 32}
!25 = !{!"inline_summary", !21, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!26 = !{!"cgraph_global_info", !21, i64 0, !21, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 36}
!27 = !{!"cgraph_rtl_info", !7, i64 0}
!28 = !{!"cgraph_clone_info", !11, i64 0, !11, i64 8, !11, i64 16}
!29 = !{!"cgraph_thunk_info", !21, i64 0, !21, i64 8, !11, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!30 = !{!18, !11, i64 8}
!31 = !{!20, !11, i64 56}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!36 = !{i64 0, i64 8, !10}
!37 = !{!38, !21, i64 56}
!38 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !21, i64 56}
!39 = distinct !{!39, !33}
!40 = !{!41, !11, i64 0}
!41 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!42 = !{!41, !11, i64 8}
!43 = !{!41, !11, i64 16}
!44 = !{!45, !11, i64 0}
!45 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!46 = !{i32 0, i32 256}
!47 = !{!45, !11, i64 16}
!48 = !{!49, !7, i64 0}
!49 = !{!"", !7, i64 0, !11, i64 8}
!50 = !{!20, !7, i64 96}
!51 = !{!52, !11, i64 0}
!52 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!53 = !{!54, !11, i64 0}
!54 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!55 = !{!21, !21, i64 0}
!56 = !{!57, !7, i64 0}
!57 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!58 = !{!59, !11, i64 32}
!59 = !{!"simple_ipa_opt_pass", !60, i64 0}
!60 = !{!"opt_pass", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72}
!61 = !{!23, !11, i64 40}
