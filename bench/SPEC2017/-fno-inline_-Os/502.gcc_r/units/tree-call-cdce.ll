; ModuleID = 'tree-call-cdce.c'
source_filename = "tree-call-cdce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"cdce\00", align 1
@pass_call_cdce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_call_cdce, ptr @tree_call_cdce, ptr null, ptr null, i32 0, i32 78, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_tree_builtin_call_dce = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Found conditional dead call: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@ieee_single_format = external constant %struct.real_format, align 8
@mips_single_format = external constant %struct.real_format, align 8
@motorola_single_format = external constant %struct.real_format, align 8
@ieee_double_format = external constant %struct.real_format, align 8
@mips_double_format = external constant %struct.real_format, align 8
@motorola_double_format = external constant %struct.real_format, align 8
@ieee_quad_format = external constant %struct.real_format, align 8
@mips_quad_format = external constant %struct.real_format, align 8
@ieee_extended_motorola_format = external constant %struct.real_format, align 8
@ieee_extended_intel_96_format = external constant %struct.real_format, align 8
@ieee_extended_intel_128_format = external constant %struct.real_format, align 8
@ieee_extended_intel_96_round_53_format = external constant %struct.real_format, align 8
@dconst1 = external global %struct.real_value, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"tree-call-cdce.c\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"%s:%d: note: function call is shrink-wrapped into error conditions.\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DCE_COND1\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DCE_COND_LB\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"DCE_COND_LB_TEST\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"DCE_COND_UB\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DCE_COND_UB_TEST\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_call_cdce() #0 !prof !64 !PGOFuncName !65 {
  %1 = load i32, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !66
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3, !prof !70

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !71
  %5 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %4) #13
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i8 [ 0, %0 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_call_cdce() #0 !prof !64 !PGOFuncName !73 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !71
  %3 = load ptr, ptr @cfun, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %62, label %21, !prof !82

12:                                               ; preds = %50, %21
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = load ptr, ptr @cfun, align 8, !tbaa !71
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %53, label %21, !prof !83, !llvm.loop !84

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %14, %12 ], [ %8, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %22) #15
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !86
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %12, !prof !87

25:                                               ; preds = %21, %50
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %27 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %26) #15, !range !86
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %50, label %29, !prof !88

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @is_call_dce_candidate(ptr noundef %26) #15, !range !86
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %50, label %32, !prof !89

32:                                               ; preds = %29
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @dump_flags, align 4, !tbaa !66
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 29, i64 1, ptr nonnull %33)
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !71
  tail call void @print_gimple_stmt(ptr noundef %41, ptr noundef %26, i32 noundef 0, i32 noundef 2) #13
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !71
  %43 = tail call i32 @fputc(i32 10, ptr %42)
  br label %44

44:                                               ; preds = %39, %35, %32
  %45 = load ptr, ptr %2, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef 64) #15
  store ptr %48, ptr %2, align 8, !tbaa !71
  br label %49

49:                                               ; preds = %47, %44
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %2, ptr noundef %26) #15
  br label %50

50:                                               ; preds = %49, %29, %25
  call fastcc void @gsi_next(ptr noundef nonnull %1) #15
  %51 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15, !range !86
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %25, label %12, !prof !90, !llvm.loop !91

53:                                               ; preds = %12
  %54 = load ptr, ptr %2, align 8, !tbaa !71
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !92

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @shrink_wrap_conditional_dead_built_in_calls(ptr noundef nonnull %54) #15, !range !86
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %2) #15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  tail call void @free_dominance_info(i32 noundef 1) #13
  tail call void @free_dominance_info(i32 noundef 2) #13
  %60 = load ptr, ptr @cfun, align 8, !tbaa !71
  %61 = tail call fastcc ptr @gimple_vop(ptr noundef %60) #15
  tail call void @mark_sym_for_renaming(ptr noundef %61) #13
  br label %62

62:                                               ; preds = %0, %56, %53, %59
  %63 = phi i32 [ 34850, %59 ], [ 0, %53 ], [ 0, %56 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  ret i32 %63
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 !prof !93 !PGOFuncName !94 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !99 !PGOFuncName !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !101 !PGOFuncName !102 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !101 !PGOFuncName !105 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !106
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_dce_candidate(ptr noundef %0) unnamed_addr #0 !prof !107 !PGOFuncName !108 {
  %2 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18, !prof !109

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7, !prof !110

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 6144
  %11 = icmp eq i32 %10, 6144
  br i1 %11, label %12, label %18, !prof !111

12:                                               ; preds = %7
  %13 = and i32 %9, 2047
  switch i32 %13, label %18 [
    i32 0, label %14
    i32 1, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
    i32 11, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %14
    i32 17, label %14
    i32 18, label %14
    i32 19, label %14
    i32 32, label %14
    i32 33, label %14
    i32 34, label %14
    i32 224, label %14
    i32 225, label %14
    i32 226, label %14
    i32 138, label %14
    i32 151, label %14
    i32 152, label %14
    i32 145, label %14
    i32 146, label %14
    i32 147, label %14
    i32 139, label %14
    i32 140, label %14
    i32 141, label %14
    i32 142, label %14
    i32 143, label %14
    i32 144, label %14
    i32 45, label %14
    i32 52, label %14
    i32 53, label %14
    i32 49, label %14
    i32 50, label %14
    i32 51, label %14
    i32 46, label %14
    i32 47, label %14
    i32 48, label %14
    i32 54, label %14
    i32 55, label %14
    i32 56, label %14
    i32 181, label %14
    i32 182, label %14
    i32 183, label %14
    i32 228, label %14
    i32 229, label %14
    i32 230, label %14
    i32 180, label %16
  ]

14:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %15 = tail call fastcc zeroext i8 @check_builtin_call(ptr noundef %0) #15, !range !86
  br label %18

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i8 @check_pow(ptr noundef %0) #15, !range !86
  br label %18

18:                                               ; preds = %7, %12, %4, %1, %16, %14
  %19 = phi i8 [ %17, %16 ], [ %15, %14 ], [ 0, %1 ], [ 0, %7 ], [ 0, %4 ], [ 0, %12 ]
  ret i8 %19
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !113 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !112 !PGOFuncName !114 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #15
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !101 !PGOFuncName !115 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %4, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @shrink_wrap_conditional_dead_built_in_calls(ptr noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !117 {
  %2 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %9, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %10, %4 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef %0, i32 noundef %6) #15
  %8 = tail call fastcc zeroext i8 @shrink_wrap_one_built_in_call(ptr noundef %7) #15, !range !86
  %9 = or i8 %8, %5
  %10 = add nuw i32 %6, 1
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %4, !llvm.loop !118

12:                                               ; preds = %4, %1
  %13 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %13
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !112 !PGOFuncName !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !120 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 51, ptr noundef nonnull @.str.4) #13
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !93 !PGOFuncName !126 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !127
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !128

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !130

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !131
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !93 !PGOFuncName !133 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !130

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !134
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !136 !PGOFuncName !137 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !107 !PGOFuncName !138 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !139 !PGOFuncName !140 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !141

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_builtin_call(ptr noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !142 {
  %2 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #15
  %3 = tail call fastcc zeroext i8 @check_target_format(ptr noundef %2) #15, !range !86
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_pow(ptr noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !143 {
  %2 = alloca %struct.real_value, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #15
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %80

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #15
  %8 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #15
  %9 = tail call fastcc zeroext i8 @check_target_format(ptr noundef %8) #15, !range !86
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %80, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = load i64, ptr %8, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 24
  %18 = icmp eq i32 %14, 24
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %80, label %20

20:                                               ; preds = %11
  br i1 %18, label %21, label %49

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %22 = getelementptr inbounds %struct.tree_real_cst, ptr %7, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 32, i1 false), !tbaa.struct !144
  %24 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %3, ptr noundef nonnull @dconst1) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %3, ptr noundef nonnull @dconst1) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @vector_type_mode(ptr noundef nonnull %31) #13
  br label %42

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %37, %35
  %43 = phi i32 [ %36, %35 ], [ %41, %37 ]
  call void @real_from_integer(ptr noundef nonnull %2, i32 noundef %43, i64 noundef 256, i64 noundef 0, i32 noundef 1) #13
  %44 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i8
  br label %47

47:                                               ; preds = %42, %26, %21
  %48 = phi i8 [ 0, %21 ], [ 0, %26 ], [ %46, %42 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  br label %80

49:                                               ; preds = %20
  %50 = icmp eq i32 %14, 141
  br i1 %50, label %51, label %80

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !129
  %54 = tail call fastcc i32 @gimple_code(ptr noundef %53) #15, !range !106
  %55 = icmp eq i32 %54, 6
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %53) #15, !range !145
  %58 = icmp eq i32 %57, 78
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %53) #15
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !129
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !66
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !129
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1023
  %78 = icmp ult i32 %77, 33
  %79 = zext i1 %78 to i8
  br label %80

80:                                               ; preds = %49, %51, %56, %59, %68, %74, %11, %6, %1, %47
  %81 = phi i8 [ %48, %47 ], [ 0, %1 ], [ 0, %6 ], [ 0, %11 ], [ 0, %51 ], [ 0, %56 ], [ 0, %59 ], [ 0, %68 ], [ %79, %74 ], [ 0, %49 ]
  ret i8 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !146 !PGOFuncName !147 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !86
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !148

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !146 !PGOFuncName !149 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !106
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !146 !PGOFuncName !150 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !151
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !148

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !146 !PGOFuncName !152 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !106
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !146 !PGOFuncName !153 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !139 !PGOFuncName !154 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !112 !PGOFuncName !155 {
  %3 = add nuw nsw i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_target_format(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !156 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 14
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #13
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = add i32 %15, -38
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  switch i32 %15, label %32 [
    i32 38, label %20
    i32 39, label %26
  ]

20:                                               ; preds = %14
  %21 = icmp eq ptr %19, @ieee_single_format
  %22 = icmp eq ptr %19, @mips_single_format
  %23 = or i1 %21, %22
  %24 = icmp eq ptr %19, @motorola_single_format
  %25 = or i1 %24, %23
  br i1 %25, label %45, label %44

26:                                               ; preds = %14
  %27 = icmp eq ptr %19, @ieee_double_format
  %28 = icmp eq ptr %19, @mips_double_format
  %29 = or i1 %27, %28
  %30 = icmp eq ptr %19, @motorola_double_format
  %31 = or i1 %30, %29
  br i1 %31, label %45, label %44

32:                                               ; preds = %14
  %33 = icmp eq ptr %19, @ieee_quad_format
  %34 = icmp eq ptr %19, @mips_quad_format
  %35 = or i1 %33, %34
  %36 = icmp eq ptr %19, @ieee_extended_motorola_format
  %37 = or i1 %36, %35
  %38 = icmp eq ptr %19, @ieee_extended_intel_96_format
  %39 = or i1 %38, %37
  %40 = icmp eq ptr %19, @ieee_extended_intel_128_format
  %41 = or i1 %40, %39
  %42 = icmp eq ptr %19, @ieee_extended_intel_96_round_53_format
  %43 = or i1 %42, %41
  br i1 %43, label %45, label %44

44:                                               ; preds = %26, %20, %32
  br label %45

45:                                               ; preds = %20, %26, %32, %44
  %46 = phi i8 [ 0, %44 ], [ 1, %32 ], [ 1, %26 ], [ 1, %20 ]
  ret i8 %46
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !157 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !158 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !145
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !106
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !159 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !129
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !112 !PGOFuncName !161 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !106
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.4) #13
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 !prof !112 !PGOFuncName !162 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !129
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !163 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #13
  store ptr %6, ptr %0, align 8, !tbaa !71
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !112 !PGOFuncName !164 {
  %3 = load i32, ptr %0, align 8, !tbaa !165
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !165
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !167 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = load i32, ptr %0, align 8, !tbaa !165
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !169 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !165
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !112 !PGOFuncName !170 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @shrink_wrap_one_built_in_call(ptr noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !171 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %9 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef 12) #15
  store ptr %9, ptr %3, align 8, !tbaa !71
  call fastcc void @gen_shrink_wrap_conditions(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %4) #15
  %10 = load i32, ptr %4, align 4, !tbaa !66
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %131, label %12

12:                                               ; preds = %1
  %13 = call fastcc ptr @gimple_bb(ptr noundef %0) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %14 = call ptr @split_block(ptr noundef %13, ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !172
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = call fastcc i32 @VEC_gimple_base_length(ptr noundef %9) #15
  %18 = call fastcc ptr @VEC_gimple_base_index(ptr noundef %9, i32 noundef 0) #15
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 4, !tbaa !66
  %22 = add i32 %21, -1
  store i32 %22, ptr %4, align 4, !tbaa !66
  br label %47

23:                                               ; preds = %12, %32
  %24 = phi i32 [ %33, %32 ], [ 0, %12 ]
  %25 = phi ptr [ %26, %32 ], [ null, %12 ]
  %26 = call fastcc ptr @VEC_gimple_base_index(ptr noundef %9, i32 noundef %24) #15
  %27 = icmp ne ptr %26, null
  %28 = icmp ne i32 %24, 0
  %29 = or i1 %28, %27
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 773, ptr noundef nonnull @.str.4) #13
  br label %38

31:                                               ; preds = %23
  br i1 %27, label %32, label %38

32:                                               ; preds = %31
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef nonnull %26, i32 noundef 1) #13
  %33 = add nuw i32 %24, 1
  %34 = icmp eq i32 %33, %17
  br i1 %34, label %35, label %23, !llvm.loop !175

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 4, !tbaa !66
  %37 = add i32 %36, -1
  store i32 %37, ptr %4, align 4, !tbaa !66
  br label %42

38:                                               ; preds = %31, %30
  %39 = load i32, ptr %4, align 4, !tbaa !66
  %40 = add i32 %39, -1
  store i32 %40, ptr %4, align 4, !tbaa !66
  %41 = icmp eq ptr %25, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35, %38
  %43 = phi i32 [ %17, %35 ], [ %24, %38 ]
  %44 = phi ptr [ %26, %35 ], [ %25, %38 ]
  %45 = call fastcc i32 @gimple_code(ptr noundef nonnull %44) #15, !range !106
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %20, %42, %38
  %48 = phi i32 [ 0, %20 ], [ %43, %42 ], [ %24, %38 ]
  %49 = phi ptr [ null, %20 ], [ %44, %42 ], [ null, %38 ]
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 781, ptr noundef nonnull @.str.4) #13
  br label %50

50:                                               ; preds = %42, %47
  %51 = phi i32 [ %43, %42 ], [ %48, %47 ]
  %52 = phi ptr [ %44, %42 ], [ %49, %47 ]
  %53 = call fastcc i32 @gimple_location(ptr noundef %0) #15
  %54 = call ptr @create_artificial_label(i32 noundef %53) #13
  %55 = call ptr @gimple_build_label(ptr noundef %54) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %55, i32 noundef 1) #13
  %56 = call ptr @split_block(ptr noundef %13, ptr noundef %52) #13
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !176
  %59 = and i32 %58, -1026
  %60 = or disjoint i32 %59, 1024
  store i32 %60, ptr %57, align 8, !tbaa !176
  %61 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !173
  %63 = call ptr @make_edge(ptr noundef %13, ptr noundef %16, i32 noundef 2048) #13
  %64 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 8
  store i32 100, ptr %64, align 4, !tbaa !177
  %65 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 8
  store i32 9900, ptr %65, align 4, !tbaa !177
  %66 = load i32, ptr %4, align 4, !tbaa !66
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %118, label %68

68:                                               ; preds = %50, %105
  %69 = phi i32 [ %106, %105 ], [ %51, %50 ]
  %70 = phi ptr [ %107, %105 ], [ %52, %50 ]
  %71 = phi ptr [ %74, %105 ], [ %18, %50 ]
  %72 = add i32 %69, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %71) #13
  %73 = load ptr, ptr %3, align 8
  %74 = call fastcc ptr @VEC_gimple_base_index(ptr noundef %73, i32 noundef %72) #15
  %75 = icmp ult i32 %72, %17
  br i1 %75, label %76, label %91

76:                                               ; preds = %68, %85
  %77 = phi i32 [ %86, %85 ], [ %72, %68 ]
  %78 = phi ptr [ %79, %85 ], [ %70, %68 ]
  %79 = call fastcc ptr @VEC_gimple_base_index(ptr noundef %73, i32 noundef %77) #15
  %80 = icmp eq ptr %79, null
  %81 = icmp eq i32 %77, %72
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 812, ptr noundef nonnull @.str.4) #13
  br label %91

84:                                               ; preds = %76
  br i1 %80, label %91, label %85

85:                                               ; preds = %84
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef nonnull %79, i32 noundef 1) #13
  %86 = add nuw i32 %77, 1
  %87 = icmp eq i32 %86, %17
  br i1 %87, label %88, label %76, !llvm.loop !178

88:                                               ; preds = %85
  %89 = load i32, ptr %4, align 4, !tbaa !66
  %90 = add i32 %89, -1
  store i32 %90, ptr %4, align 4, !tbaa !66
  br label %97

91:                                               ; preds = %84, %68, %83
  %92 = phi ptr [ %78, %83 ], [ %70, %68 ], [ %78, %84 ]
  %93 = phi i32 [ %72, %83 ], [ %72, %68 ], [ %77, %84 ]
  %94 = load i32, ptr %4, align 4, !tbaa !66
  %95 = add i32 %94, -1
  store i32 %95, ptr %4, align 4, !tbaa !66
  %96 = icmp eq ptr %92, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %88, %91
  %98 = phi i32 [ %17, %88 ], [ %93, %91 ]
  %99 = phi ptr [ %79, %88 ], [ %92, %91 ]
  %100 = call fastcc i32 @gimple_code(ptr noundef nonnull %99) #15, !range !106
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %97, %91
  %103 = phi i32 [ %98, %97 ], [ %93, %91 ]
  %104 = phi ptr [ %99, %97 ], [ null, %91 ]
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 820, ptr noundef nonnull @.str.4) #13
  br label %105

105:                                              ; preds = %97, %102
  %106 = phi i32 [ %98, %97 ], [ %103, %102 ]
  %107 = phi ptr [ %99, %97 ], [ %104, %102 ]
  %108 = call ptr @split_block(ptr noundef %13, ptr noundef %107) #13
  %109 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !176
  %111 = and i32 %110, -2050
  %112 = or disjoint i32 %111, 2048
  store i32 %112, ptr %109, align 8, !tbaa !176
  %113 = call ptr @make_edge(ptr noundef %13, ptr noundef %62, i32 noundef 1024) #13
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 8
  store i32 100, ptr %114, align 4, !tbaa !177
  %115 = getelementptr inbounds %struct.edge_def, ptr %108, i64 0, i32 8
  store i32 9900, ptr %115, align 4, !tbaa !177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %116 = load i32, ptr %4, align 4, !tbaa !66
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %68, !llvm.loop !179

118:                                              ; preds = %105, %50
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %3) #15
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !71
  %120 = icmp eq ptr %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr @dump_flags, align 4, !tbaa !66
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = call fastcc i32 @gimple_location(ptr noundef %0) #15
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %126) #13
  %127 = load ptr, ptr %7, align 8, !tbaa !180
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %126) #13
  %128 = getelementptr inbounds %struct.expanded_location, ptr %8, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !182
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %119, ptr noundef nonnull @.str.6, ptr noundef %127, i32 noundef %129) #15
  br label %131

131:                                              ; preds = %118, %121, %125, %1
  %132 = phi i8 [ 0, %1 ], [ 1, %125 ], [ 1, %121 ], [ 1, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i8 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_shrink_wrap_conditions(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !112 !PGOFuncName !183 {
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 695, ptr noundef nonnull @.str.4) #13
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %1) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.4) #13
  br label %12

12:                                               ; preds = %8, %11
  %13 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #15, !range !86
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 697, ptr noundef nonnull @.str.4) #13
  br label %16

16:                                               ; preds = %12, %15
  %17 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 6144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 701, ptr noundef nonnull @.str.4) #13
  %25 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 5
  %26 = load i32, ptr %25, align 8
  br label %27

27:                                               ; preds = %19, %24
  %28 = phi i32 [ %21, %19 ], [ %26, %24 ]
  %29 = and i32 %28, 2047
  store i32 0, ptr %2, align 4, !tbaa !66
  %30 = icmp eq i32 %29, 180
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @gen_conditions_for_pow(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #15
  br label %37

32:                                               ; preds = %27
  %33 = tail call fastcc { i64, i32 } @get_no_error_domain(i32 noundef %29) #15
  %34 = extractvalue { i64, i32 } %33, 0
  %35 = extractvalue { i64, i32 } %33, 1
  store i32 0, ptr %2, align 4, !tbaa !66
  %36 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #15
  tail call fastcc void @gen_conditions_for_domain(ptr noundef %36, i64 %34, i32 %35, ptr noundef %1, ptr noundef nonnull %2) #15
  br label %37

37:                                               ; preds = %32, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !184 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !112 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_conditions_for_pow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !112 !PGOFuncName !186 {
  store i32 0, ptr %2, align 4, !tbaa !66
  %4 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #15
  %5 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #15
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %10 [
    i16 24, label %8
    i16 141, label %9
  ]

8:                                                ; preds = %3
  tail call fastcc void @gen_conditions_for_pow_cst_base(ptr noundef nonnull %4, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %2) #15
  br label %11

9:                                                ; preds = %3
  tail call fastcc void @gen_conditions_for_pow_int_base(ptr noundef nonnull %4, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %2) #15
  br label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 568, ptr noundef nonnull @.str.4) #13
  br label %11

11:                                               ; preds = %9, %10, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i64, i32 } @get_no_error_domain(i32 noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !187 {
  switch i32 %0, label %30 [
    i32 0, label %2
    i32 1, label %2
    i32 5, label %2
    i32 6, label %2
    i32 7, label %2
    i32 11, label %2
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 17, label %6
    i32 18, label %6
    i32 19, label %6
    i32 33, label %8
    i32 225, label %8
    i32 32, label %10
    i32 224, label %10
    i32 34, label %10
    i32 226, label %10
    i32 138, label %12
    i32 151, label %12
    i32 152, label %12
    i32 145, label %12
    i32 146, label %12
    i32 147, label %12
    i32 139, label %12
    i32 140, label %12
    i32 141, label %12
    i32 142, label %14
    i32 143, label %14
    i32 144, label %14
    i32 52, label %16
    i32 55, label %16
    i32 45, label %18
    i32 54, label %18
    i32 53, label %18
    i32 56, label %18
    i32 50, label %20
    i32 49, label %22
    i32 51, label %22
    i32 47, label %24
    i32 182, label %24
    i32 46, label %26
    i32 181, label %26
    i32 48, label %26
    i32 183, label %26
    i32 228, label %28
    i32 229, label %28
    i32 230, label %28
  ]

2:                                                ; preds = %1, %1, %1, %1, %1, %1
  %3 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %32

4:                                                ; preds = %1, %1, %1
  %5 = tail call fastcc { i64, i32 } @get_domain(i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %32

6:                                                ; preds = %1, %1, %1
  %7 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

8:                                                ; preds = %1, %1
  %9 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -89, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 89, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

10:                                               ; preds = %1, %1, %1, %1
  %11 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -710, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 710, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %13 = tail call fastcc { i64, i32 } @get_domain(i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %32

14:                                               ; preds = %1, %1, %1
  %15 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %32

16:                                               ; preds = %1, %1
  %17 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 88, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

18:                                               ; preds = %1, %1, %1, %1
  %19 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 709, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

20:                                               ; preds = %1
  %21 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 128, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

22:                                               ; preds = %1, %1
  %23 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1024, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

24:                                               ; preds = %1, %1
  %25 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 38, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

26:                                               ; preds = %1, %1, %1, %1
  %27 = tail call fastcc { i64, i32 } @get_domain(i32 noundef -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 308, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %32

28:                                               ; preds = %1, %1, %1
  %29 = tail call fastcc { i64, i32 } @get_domain(i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %32

30:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 669, ptr noundef nonnull @.str.4) #13
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 672, ptr noundef nonnull @.str.4) #13
  %31 = tail call fastcc { i64, i32 } @get_domain(i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %32

32:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4, %2
  %33 = phi { i64, i32 } [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ]
  ret { i64, i32 } %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_conditions_for_domain(ptr noundef %0, i64 %1, i32 %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !112 !PGOFuncName !188 {
  %6 = lshr i64 %1, 32
  %7 = trunc i64 %6 to i32
  %8 = and i32 %2, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = and i32 %2, 65280
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %21

13:                                               ; preds = %5
  %14 = trunc i64 %1 to i32
  %15 = and i32 %2, 16711680
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 98, i32 97
  tail call fastcc void @gen_one_condition(ptr noundef %0, i32 noundef %14, i32 noundef %17, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %3, ptr noundef %4) #15
  %18 = and i32 %2, 65280
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef null) #15
  br label %21

21:                                               ; preds = %10, %20
  %22 = icmp ult i32 %2, 16777216
  %23 = select i1 %22, i32 100, i32 99
  tail call fastcc void @gen_one_condition(ptr noundef %0, i32 noundef %7, i32 noundef %23, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %3, ptr noundef %4) #15
  br label %24

24:                                               ; preds = %13, %21, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_conditions_for_pow_cst_base(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !112 !PGOFuncName !189 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !144
  %9 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %6, ptr noundef nonnull @dconst1) #13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %6, ptr noundef nonnull @dconst1) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %4
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 429, ptr noundef nonnull @.str.4) #13
  br label %15

15:                                               ; preds = %11, %14
  %16 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @vector_type_mode(ptr noundef nonnull %17) #13
  br label %28

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  call void @real_from_integer(ptr noundef nonnull %5, i32 noundef %29, i64 noundef 256, i64 noundef 0, i32 noundef 1) #13
  %30 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 431, ptr noundef nonnull @.str.4) #13
  br label %33

33:                                               ; preds = %28, %32
  %34 = call fastcc { i64, i32 } @get_domain(i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 127, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = extractvalue { i64, i32 } %34, 1
  call fastcc void @gen_conditions_for_domain(ptr noundef %1, i64 %35, i32 %36, ptr noundef %2, ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_conditions_for_pow_int_base(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !112 !PGOFuncName !190 {
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = add nsw i32 %14, -1
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 474, ptr noundef nonnull @.str.4) #13
  br label %18

18:                                               ; preds = %4, %17
  switch i32 %14, label %20 [
    i32 8, label %22
    i32 16, label %19
    i32 32, label %21
  ]

19:                                               ; preds = %18
  br label %22

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 486, ptr noundef nonnull @.str.4) #13
  br label %21

21:                                               ; preds = %18, %20
  br label %22

22:                                               ; preds = %18, %19, %21
  %23 = phi i32 [ 64, %19 ], [ 32, %21 ], [ 128, %18 ]
  %24 = tail call fastcc { i64, i32 } @get_domain(i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = extractvalue { i64, i32 } %24, 1
  tail call fastcc void @gen_conditions_for_domain(ptr noundef %1, i64 %25, i32 %26, ptr noundef %2, ptr noundef %3) #15
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %2, ptr noundef null) #15
  %27 = tail call ptr @create_tmp_var(ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #13
  %28 = tail call ptr @build_int_cst(ptr noundef nonnull %11, i64 noundef 0) #13
  %29 = tail call ptr @gimple_build_assign_stat(ptr noundef %27, ptr noundef nonnull %7) #13
  %30 = tail call fastcc ptr @make_ssa_name(ptr noundef %27, ptr noundef %29) #15
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %29, ptr noundef %30) #15
  %31 = tail call ptr @gimple_build_cond(i32 noundef 98, ptr noundef %30, ptr noundef %28, ptr noundef null, ptr noundef null) #13
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %2, ptr noundef %29) #15
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %2, ptr noundef %31) #15
  %32 = load i32, ptr %3, align 4, !tbaa !66
  %33 = add i32 %32, 1
  store i32 %33, ptr %3, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i32 } @get_domain(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #9 !prof !112 !PGOFuncName !191 {
  %7 = zext nneg i32 %3 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = zext i32 %0 to i64
  %10 = or disjoint i64 %8, %9
  %11 = zext nneg i8 %5 to i32
  %12 = shl nuw nsw i32 %11, 24
  %13 = zext nneg i8 %2 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %12, %14
  %16 = zext nneg i8 %4 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %15, %17
  %19 = zext nneg i8 %1 to i32
  %20 = or disjoint i32 %18, %19
  %21 = insertvalue { i64, i32 } poison, i64 %10, 0
  %22 = insertvalue { i64, i32 } %21, i32 %20, 1
  ret { i64, i32 } %22
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !112 !PGOFuncName !192 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !71
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !112 !PGOFuncName !193 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #15
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !129
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !112 !PGOFuncName !194 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !86
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.4) #13
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  store ptr %1, ptr %10, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_one_condition(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !112 !PGOFuncName !195 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !71
  %11 = sext i32 %1 to i64
  %12 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef %11) #13
  %13 = tail call ptr @build_real_from_int_cst(ptr noundef %9, ptr noundef %12) #13
  %14 = tail call ptr @create_tmp_var(ptr noundef %9, ptr noundef %3) #13
  %15 = tail call ptr @gimple_build_assign_stat(ptr noundef %14, ptr noundef %0) #13
  %16 = tail call fastcc ptr @make_ssa_name(ptr noundef %14, ptr noundef %15) #15
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %15, ptr noundef %16) #15
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !71
  %18 = tail call ptr @create_tmp_var(ptr noundef %17, ptr noundef %4) #13
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !71
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %19, ptr noundef %16, ptr noundef %13) #13
  %21 = tail call ptr @gimple_build_assign_stat(ptr noundef %18, ptr noundef %20) #13
  %22 = tail call fastcc ptr @make_ssa_name(ptr noundef %18, ptr noundef %21) #15
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %21, ptr noundef %22) #15
  %23 = tail call ptr @gimple_build_cond_from_tree(ptr noundef %22, ptr noundef null, ptr noundef null) #13
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %5, ptr noundef %15) #15
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %5, ptr noundef %21) #15
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %5, ptr noundef %23) #15
  %24 = load i32, ptr %6, align 4, !tbaa !66
  %25 = add i32 %24, 1
  store i32 %25, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare ptr @build_real_from_int_cst(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @gate_call_cdce, ptr @optimize_function_for_speed_p, i64 37}
!36 = !{ptr @tree_call_cdce, ptr @gsi_start_bb, i64 142893}
!37 = !{ptr @tree_call_cdce, ptr @gsi_end_p, i64 489227}
!38 = !{ptr @tree_call_cdce, ptr @gsi_stmt, i64 346334}
!39 = !{ptr @tree_call_cdce, ptr @is_gimple_call, i64 346334}
!40 = !{ptr @tree_call_cdce, ptr @is_call_dce_candidate, i64 67357}
!41 = !{ptr @tree_call_cdce, ptr @VEC_gimple_heap_safe_push, i64 1}
!42 = !{ptr @tree_call_cdce, ptr @gsi_next, i64 346334}
!43 = !{ptr @tree_call_cdce, ptr @shrink_wrap_conditional_dead_built_in_calls, i64 1}
!44 = !{ptr @tree_call_cdce, ptr @VEC_gimple_heap_free, i64 1}
!45 = !{ptr @tree_call_cdce, ptr @free_dominance_info, i64 2}
!46 = !{ptr @tree_call_cdce, ptr @gimple_vop, i64 1}
!47 = !{ptr @tree_call_cdce, ptr @mark_sym_for_renaming, i64 1}
!48 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 146652}
!49 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 146652}
!50 = !{ptr @is_gimple_call, ptr @gimple_code, i64 355447}
!51 = !{ptr @is_call_dce_candidate, ptr @gimple_call_lhs, i64 69129}
!52 = !{ptr @is_call_dce_candidate, ptr @gimple_call_fndecl, i64 2274}
!53 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 69129}
!54 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 2273}
!55 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 71402}
!56 = !{ptr @gimple_op, ptr @gimple_ops, i64 71401}
!57 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 71402}
!58 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 71402}
!59 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!60 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 71402}
!61 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 71402}
!62 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 2273}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 38}
!65 = !{!"tree-call-cdce.c:gate_call_cdce"}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!"branch_weights", i32 1, i32 39}
!71 = !{!72, !72, i64 0}
!72 = !{!"any pointer", !68, i64 0}
!73 = !{!"tree-call-cdce.c:tree_call_cdce"}
!74 = !{!75, !72, i64 8}
!75 = !{!"function", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !67, i64 104, !67, i64 108, !67, i64 112, !67, i64 116, !67, i64 120, !67, i64 124, !72, i64 128, !67, i64 136, !67, i64 137, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139}
!76 = !{!77, !72, i64 0}
!77 = !{!"control_flow_graph", !72, i64 0, !72, i64 8, !72, i64 16, !67, i64 24, !67, i64 28, !67, i64 32, !72, i64 40, !67, i64 48, !68, i64 52, !68, i64 60, !67, i64 68, !67, i64 72}
!78 = !{!79, !72, i64 56}
!79 = !{!"basic_block_def", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !68, i64 32, !72, i64 48, !72, i64 56, !68, i64 64, !80, i64 72, !67, i64 80, !67, i64 84, !67, i64 88, !67, i64 92, !67, i64 96}
!80 = !{!"long", !68, i64 0}
!81 = !{!77, !72, i64 8}
!82 = !{!"branch_weights", i32 1, i32 155}
!83 = !{!"branch_weights", i32 155, i32 586457}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 146652, i32 1}
!88 = !{!"branch_weights", i32 286319, i32 69130}
!89 = !{!"branch_weights", i32 69130, i32 1}
!90 = !{!"branch_weights", i32 208796, i32 146652}
!91 = distinct !{!91, !85}
!92 = !{!"branch_weights", i32 2093450189, i32 54033459}
!93 = !{!"function_entry_count", i64 146652}
!94 = !{!"tree-call-cdce.c:gsi_start_bb"}
!95 = !{!96, !72, i64 0}
!96 = !{!"", !72, i64 0, !72, i64 8, !72, i64 16}
!97 = !{!96, !72, i64 8}
!98 = !{!96, !72, i64 16}
!99 = !{!"function_entry_count", i64 502099}
!100 = !{!"tree-call-cdce.c:gsi_end_p"}
!101 = !{!"function_entry_count", i64 355447}
!102 = !{!"tree-call-cdce.c:gsi_stmt"}
!103 = !{!104, !72, i64 0}
!104 = !{!"gimple_seq_node_d", !72, i64 0, !72, i64 8, !72, i64 16}
!105 = !{!"tree-call-cdce.c:is_gimple_call"}
!106 = !{i32 0, i32 256}
!107 = !{!"function_entry_count", i64 69129}
!108 = !{!"tree-call-cdce.c:is_call_dce_candidate"}
!109 = !{!"branch_weights", i32 2274, i32 66857}
!110 = !{!"branch_weights", i32 1, i32 2274}
!111 = !{!"branch_weights", i32 1, i32 4549}
!112 = !{!"function_entry_count", i64 0}
!113 = !{!"tree-call-cdce.c:VEC_gimple_heap_alloc"}
!114 = !{!"tree-call-cdce.c:VEC_gimple_heap_safe_push"}
!115 = !{!"tree-call-cdce.c:gsi_next"}
!116 = !{!104, !72, i64 16}
!117 = !{!"tree-call-cdce.c:shrink_wrap_conditional_dead_built_in_calls"}
!118 = distinct !{!118, !85}
!119 = !{!"tree-call-cdce.c:VEC_gimple_heap_free"}
!120 = !{!"tree-call-cdce.c:gimple_vop"}
!121 = !{!75, !72, i64 24}
!122 = !{!123, !72, i64 24}
!123 = !{!"gimple_df", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !124, i64 32, !124, i64 48, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !67, i64 96, !125, i64 104}
!124 = !{!"pt_solution", !67, i64 0, !67, i64 0, !67, i64 0, !67, i64 0, !67, i64 0, !67, i64 0, !72, i64 8}
!125 = !{!"ssa_operands", !72, i64 0, !67, i64 8, !67, i64 12, !68, i64 16, !72, i64 24, !72, i64 32}
!126 = !{!"tree-call-cdce.c:bb_seq"}
!127 = !{!79, !67, i64 96}
!128 = !{!"branch_weights", i32 146653, i32 1}
!129 = !{!68, !68, i64 0}
!130 = !{!"branch_weights", i32 1, i32 146653}
!131 = !{!132, !72, i64 0}
!132 = !{!"gimple_bb_info", !72, i64 0, !72, i64 8}
!133 = !{!"tree-call-cdce.c:gimple_seq_first"}
!134 = !{!135, !72, i64 0}
!135 = !{!"gimple_seq_d", !72, i64 0, !72, i64 8, !72, i64 16}
!136 = !{!"function_entry_count", i64 569653}
!137 = !{!"tree-call-cdce.c:gimple_code"}
!138 = !{!"tree-call-cdce.c:gimple_call_lhs"}
!139 = !{!"function_entry_count", i64 2273}
!140 = !{!"tree-call-cdce.c:gimple_call_fndecl"}
!141 = !{!"branch_weights", i32 2274, i32 1}
!142 = !{!"tree-call-cdce.c:check_builtin_call"}
!143 = !{!"tree-call-cdce.c:check_pow"}
!144 = !{i64 0, i64 4, !66, i64 0, i64 4, !66, i64 0, i64 4, !66, i64 0, i64 4, !66, i64 0, i64 4, !66, i64 0, i64 4, !66, i64 8, i64 24, !129}
!145 = !{i32 0, i32 65536}
!146 = !{!"function_entry_count", i64 71402}
!147 = !{!"tree-call-cdce.c:gimple_op"}
!148 = !{!"branch_weights", i32 1, i32 71403}
!149 = !{!"tree-call-cdce.c:gimple_has_ops"}
!150 = !{!"tree-call-cdce.c:gimple_ops"}
!151 = !{!80, !80, i64 0}
!152 = !{!"tree-call-cdce.c:gimple_statement_structure"}
!153 = !{!"tree-call-cdce.c:gss_for_code"}
!154 = !{!"tree-call-cdce.c:gimple_call_fn"}
!155 = !{!"tree-call-cdce.c:gimple_call_arg"}
!156 = !{!"tree-call-cdce.c:check_target_format"}
!157 = !{!"tree-call-cdce.c:gimple_call_num_args"}
!158 = !{!"tree-call-cdce.c:gimple_assign_rhs_code"}
!159 = !{!"tree-call-cdce.c:gimple_assign_rhs1"}
!160 = !{!"tree-call-cdce.c:gimple_num_ops"}
!161 = !{!"tree-call-cdce.c:gimple_expr_code"}
!162 = !{!"tree-call-cdce.c:get_gimple_rhs_class"}
!163 = !{!"tree-call-cdce.c:VEC_gimple_heap_reserve"}
!164 = !{!"tree-call-cdce.c:VEC_gimple_base_quick_push"}
!165 = !{!166, !67, i64 0}
!166 = !{!"VEC_gimple_base", !67, i64 0, !67, i64 4, !68, i64 8}
!167 = !{!"tree-call-cdce.c:VEC_gimple_base_space"}
!168 = !{!166, !67, i64 4}
!169 = !{!"tree-call-cdce.c:VEC_gimple_base_length"}
!170 = !{!"tree-call-cdce.c:VEC_gimple_base_index"}
!171 = !{!"tree-call-cdce.c:shrink_wrap_one_built_in_call"}
!172 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71}
!173 = !{!174, !72, i64 8}
!174 = !{!"edge_def", !72, i64 0, !72, i64 8, !68, i64 16, !72, i64 24, !72, i64 32, !67, i64 40, !67, i64 44, !67, i64 48, !67, i64 52, !80, i64 56}
!175 = distinct !{!175, !85}
!176 = !{!174, !67, i64 48}
!177 = !{!174, !67, i64 52}
!178 = distinct !{!178, !85}
!179 = distinct !{!179, !85}
!180 = !{!181, !72, i64 0}
!181 = !{!"", !72, i64 0, !67, i64 8, !67, i64 12, !68, i64 16}
!182 = !{!181, !67, i64 8}
!183 = !{!"tree-call-cdce.c:gen_shrink_wrap_conditions"}
!184 = !{!"tree-call-cdce.c:gimple_bb"}
!185 = !{!"tree-call-cdce.c:gimple_location"}
!186 = !{!"tree-call-cdce.c:gen_conditions_for_pow"}
!187 = !{!"tree-call-cdce.c:get_no_error_domain"}
!188 = !{!"tree-call-cdce.c:gen_conditions_for_domain"}
!189 = !{!"tree-call-cdce.c:gen_conditions_for_pow_cst_base"}
!190 = !{!"tree-call-cdce.c:gen_conditions_for_pow_int_base"}
!191 = !{!"tree-call-cdce.c:get_domain"}
!192 = !{!"tree-call-cdce.c:make_ssa_name"}
!193 = !{!"tree-call-cdce.c:gimple_assign_set_lhs"}
!194 = !{!"tree-call-cdce.c:gimple_set_op"}
!195 = !{!"tree-call-cdce.c:gen_one_condition"}
