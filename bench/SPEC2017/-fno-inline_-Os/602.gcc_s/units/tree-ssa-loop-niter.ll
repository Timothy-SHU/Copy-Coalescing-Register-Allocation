; ModuleID = 'tree-ssa-loop-niter.c'
source_filename = "tree-ssa-loop-niter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.bounds = type { [1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct] }
%struct.__mpz_struct = type { i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.nb_iter_bound = type { ptr, %struct.double_int, i8, ptr }
%struct.ilb_data = type { ptr, ptr, i8 }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"assuming that the loop is not infinite\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot optimize possibly infinite loops\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"assuming that the loop counter does not overflow\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"cannot optimize loop, the loop counter may overflow\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Analyzing # of iterations of loop %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"  exit condition \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"  bounds on difference of bases: \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" ... \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-niter.c\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"  result:\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"    under assumptions \00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"    zero if \00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"    # of iterations \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c", bounded by \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"  failed\0A\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c", + , \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"]%s\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"(no_overflow)\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [66 x i8] c"Found loop %i to be finite: it is within pure or const function.\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Found loop %i to be finite: iterating \00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" times\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [58 x i8] c"Proved that loop %d iterates %d times using brute force.\0A\00", align 1
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"Statement %s\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"(exit)\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c" is %sexecuted at most \00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"probably \00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c" (bounded by \00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c") + 1 times in loop %d.\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Induction variable (\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c" * iteration does not wrap in statement \00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c" in loop %d.\0A\00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_simple_operations(ptr noundef %0) local_unnamed_addr #0 !prof !570 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %80, label %3, !prof !571

3:                                                ; preds = %1, %65
  %4 = phi ptr [ %66, %65 ], [ %0, %1 ]
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %4) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %80, !prof !572

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !573
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %14, label %41, !prof !577

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %4) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %80, label %17, !prof !578

17:                                               ; preds = %14
  %18 = zext i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %33
  %20 = phi i64 [ 0, %17 ], [ %35, %33 ]
  %21 = phi ptr [ null, %17 ], [ %34, %33 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !579
  %24 = tail call ptr @expand_simple_operations(ptr noundef %23) #15
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %33, label %26, !prof !580

26:                                               ; preds = %19
  %27 = icmp eq ptr %21, null
  br i1 %27, label %28, label %30, !prof !581

28:                                               ; preds = %26
  %29 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #14
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %21, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3, i64 %20
  store ptr %24, ptr %32, align 8, !tbaa !579
  br label %33

33:                                               ; preds = %19, %30
  %34 = phi ptr [ %21, %19 ], [ %31, %30 ]
  %35 = add nuw nsw i64 %20, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %37, label %19, !prof !582, !llvm.loop !583

37:                                               ; preds = %33
  %38 = icmp eq ptr %34, null
  br i1 %38, label %80, label %39, !prof !585

39:                                               ; preds = %37
  tail call void @fold_defer_overflow_warnings() #14
  %40 = tail call ptr @fold(ptr noundef nonnull %34) #14
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %80

41:                                               ; preds = %7
  %42 = icmp eq i64 %9, 141
  br i1 %42, label %43, label %80, !prof !586

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !579
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %45) #15, !range !587
  %47 = trunc i32 %46 to i8
  switch i8 %47, label %80 [
    i8 16, label %48
    i8 6, label %68
  ], !prof !588

48:                                               ; preds = %43
  %49 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %45) #15
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %80, !prof !589

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %45, i32 noundef 0) #15
  %53 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %52) #15
  %54 = tail call fastcc ptr @gimple_bb(ptr noundef %45) #15
  %55 = tail call fastcc ptr @single_pred(ptr noundef %54) #15
  %56 = load i64, ptr %53, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %65, !prof !590

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !591
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !591
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %65, label %80, !prof !595

65:                                               ; preds = %51, %59, %76
  %66 = phi ptr [ %69, %76 ], [ %53, %59 ], [ %53, %51 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %3, !prof !596

68:                                               ; preds = %43
  %69 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #15
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %45) #15, !range !597
  %71 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %70) #15, !range !587
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %78, !prof !598

73:                                               ; preds = %68
  %74 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %69) #14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %80, !prof !599

76:                                               ; preds = %73
  %77 = icmp eq i32 %70, 141
  br i1 %77, label %65, label %80, !prof !600

78:                                               ; preds = %68
  %79 = trunc i32 %70 to i16
  switch i16 %79, label %80 [
    i16 116, label %82
    i16 113, label %82
    i16 63, label %87
    i16 64, label %87
    i16 66, label %87
  ], !prof !601

80:                                               ; preds = %78, %87, %37, %39, %1, %14, %65, %3, %41, %59, %48, %73, %76, %43, %91, %82
  %81 = phi ptr [ %86, %82 ], [ %95, %91 ], [ %40, %39 ], [ %4, %37 ], [ %4, %87 ], [ %4, %78 ], [ null, %1 ], [ %4, %14 ], [ %4, %43 ], [ %4, %76 ], [ %69, %73 ], [ %4, %48 ], [ %4, %59 ], [ %4, %41 ], [ %4, %3 ], [ null, %65 ]
  ret ptr %81

82:                                               ; preds = %78, %78
  %83 = tail call ptr @expand_simple_operations(ptr noundef %69) #15
  %84 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !579
  %86 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %70, ptr noundef %85, ptr noundef %83) #14
  br label %80

87:                                               ; preds = %78, %78, %78
  %88 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %45) #15
  %89 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %88) #14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %80, label %91, !prof !602

91:                                               ; preds = %87
  %92 = tail call ptr @expand_simple_operations(ptr noundef %69) #15
  %93 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !579
  %95 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %70, ptr noundef %94, ptr noundef %92, ptr noundef %88) #14
  br label %80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !603 !PGOFuncName !604 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !573
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13, !prof !605

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !579
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !579
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !579
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !606 !PGOFuncName !607 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !608 !PGOFuncName !609 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !579
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !610 !PGOFuncName !611 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !612
  %4 = load ptr, ptr %3, align 8, !tbaa !614
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !615 !PGOFuncName !616 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !617 !PGOFuncName !618 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !579
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !619 !PGOFuncName !620 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !621
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !623 !PGOFuncName !624 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !625 !PGOFuncName !626 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !597
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !587
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !627

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 !prof !628 !PGOFuncName !629 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !579
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !630 !PGOFuncName !631 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !632

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #15
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !615 !PGOFuncName !633 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !579
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !634

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !635 !PGOFuncName !636 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !637
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !638

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !639
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #15
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !640 !PGOFuncName !641 {
  %2 = load ptr, ptr %0, align 8, !tbaa !639
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !635 !PGOFuncName !642 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !614
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !640 !PGOFuncName !643 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !644

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !645
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !647 !PGOFuncName !648 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !637
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !649

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !614
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !650 !PGOFuncName !651 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !647 !PGOFuncName !652 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !653
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !649

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1622, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !647 !PGOFuncName !654 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !647 !PGOFuncName !655 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !573
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !625 !PGOFuncName !656 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !657

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1446, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !658 !PGOFuncName !659 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !579
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @loop_only_exit_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !660 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = tail call ptr @single_exit(ptr noundef %0) #14
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %34, !prof !661

6:                                                ; preds = %2
  %7 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !662
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11, !prof !666

11:                                               ; preds = %6, %27
  %12 = phi i64 [ %28, %27 ], [ 0, %6 ]
  %13 = getelementptr inbounds ptr, ptr %7, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !614
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %14) #15
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15, !range !637
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27, !prof !667

17:                                               ; preds = %11, %24
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %19 = tail call fastcc i32 @gimple_code(ptr noundef %18) #15, !range !587
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %24, !prof !668

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %18) #14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32, !prof !669

24:                                               ; preds = %21, %17
  call fastcc void @gsi_next(ptr noundef nonnull %3) #15
  %25 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15, !range !637
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %17, label %27, !prof !670, !llvm.loop !671

27:                                               ; preds = %24, %11
  %28 = add nuw nsw i64 %12, 1
  %29 = load i32, ptr %8, align 4, !tbaa !662
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %11, label %32, !prof !672, !llvm.loop !673

32:                                               ; preds = %27, %21, %6
  %33 = phi i8 [ 1, %6 ], [ 0, %21 ], [ 1, %27 ]
  tail call void @free(ptr noundef %7) #15
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i8 [ 0, %2 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i8 %35
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !674 !PGOFuncName !675 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !676
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !678
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !679
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !680 !PGOFuncName !681 {
  %2 = load ptr, ptr %0, align 8, !tbaa !676
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !682 !PGOFuncName !683 {
  %2 = load ptr, ptr %0, align 8, !tbaa !676
  %3 = load ptr, ptr %2, align 8, !tbaa !684
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !686 !PGOFuncName !687 {
  %2 = load ptr, ptr %0, align 8, !tbaa !676
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !688
  store ptr %4, ptr %0, align 8, !tbaa !676
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !674 !PGOFuncName !689 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !690
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !691

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !579
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !692

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !693
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !674 !PGOFuncName !695 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !692

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !696
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !698 {
  %5 = alloca %struct.affine_iv, align 8
  %6 = alloca %struct.affine_iv, align 8
  %7 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !699
  %10 = load ptr, ptr %1, align 8, !tbaa !621
  %11 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %9, ptr noundef %10) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %133, label %13, !prof !700

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !614
  store ptr %14, ptr %2, align 8, !tbaa !701
  %15 = load ptr, ptr %1, align 8, !tbaa !621
  %16 = tail call ptr @last_stmt(ptr noundef %15) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %133, label %18, !prof !704

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %16) #15, !range !587
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %133, !prof !705

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %16) #15, !range !597
  %23 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !706
  %25 = and i32 %24, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !707

27:                                               ; preds = %21
  %28 = tail call i32 @invert_tree_comparison(i32 noundef %22, i8 noundef zeroext 0) #14
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %28, %27 ], [ %22, %21 ]
  switch i32 %30, label %133 [
    i32 99, label %31
    i32 100, label %31
    i32 102, label %31
    i32 97, label %31
    i32 98, label %31
  ], !prof !708

31:                                               ; preds = %29, %29, %29, %29, %29
  %32 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %16) #15
  %33 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %16) #15
  %34 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !579
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %133 [
    i16 8, label %38
    i16 10, label %38
    i16 12, label %38
  ], !prof !709

38:                                               ; preds = %31, %31, %31
  %39 = tail call fastcc ptr @loop_containing_stmt(ptr noundef nonnull %16) #15
  %40 = call zeroext i8 @simple_iv(ptr noundef nonnull %0, ptr noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %5, i8 noundef zeroext 0) #14
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %133, label %42, !prof !710

42:                                               ; preds = %38
  %43 = call fastcc ptr @loop_containing_stmt(ptr noundef nonnull %16) #15
  %44 = call zeroext i8 @simple_iv(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %33, ptr noundef nonnull %6, i8 noundef zeroext 0) #14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %133, label %46, !prof !711

46:                                               ; preds = %42
  call void @fold_defer_overflow_warnings() #14
  %47 = load ptr, ptr %5, align 8, !tbaa !712
  %48 = call ptr @expand_simple_operations(ptr noundef %47) #15
  store ptr %48, ptr %5, align 8, !tbaa !712
  %49 = load ptr, ptr %6, align 8, !tbaa !712
  %50 = call ptr @expand_simple_operations(ptr noundef %49) #15
  store ptr %50, ptr %6, align 8, !tbaa !712
  %51 = call zeroext i8 @loop_only_exit_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #15, !range !637
  %52 = call fastcc zeroext i8 @number_of_iterations_cond(ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %5, i32 noundef %30, ptr noundef nonnull %6, ptr noundef nonnull %2, i8 noundef zeroext %51) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55, !prof !713

54:                                               ; preds = %46
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %133

55:                                               ; preds = %46
  %56 = load i32, ptr @optimize, align 4, !tbaa !573
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %67, !prof !714

58:                                               ; preds = %55
  %59 = load ptr, ptr %2, align 8, !tbaa !701
  %60 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef nonnull %0, ptr noundef %59) #15
  store ptr %60, ptr %2, align 8, !tbaa !701
  %61 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !715
  %63 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef nonnull %0, ptr noundef %62) #15
  store ptr %63, ptr %61, align 8, !tbaa !715
  %64 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !716
  %66 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef nonnull %0, ptr noundef %65) #15
  store ptr %66, ptr %64, align 8, !tbaa !716
  br label %67

67:                                               ; preds = %58, %55
  %68 = load ptr, ptr %2, align 8, !tbaa !701
  %69 = call fastcc ptr @simplify_using_initial_conditions(ptr noundef nonnull %0, ptr noundef %68) #15
  store ptr %69, ptr %2, align 8, !tbaa !701
  %70 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !715
  %72 = call fastcc ptr @simplify_using_initial_conditions(ptr noundef nonnull %0, ptr noundef %71) #15
  store ptr %72, ptr %70, align 8, !tbaa !715
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  %73 = load ptr, ptr %2, align 8, !tbaa !701
  %74 = call i32 @integer_onep(ptr noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %133, !prof !717

76:                                               ; preds = %67
  %77 = load ptr, ptr %2, align 8, !tbaa !701
  %78 = call i32 @integer_zerop(ptr noundef %77) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %133, !prof !718

80:                                               ; preds = %76
  %81 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !573
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !719

83:                                               ; preds = %80
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !614
  store ptr %84, ptr %2, align 8, !tbaa !701
  br label %85

85:                                               ; preds = %83, %80
  %86 = icmp eq i8 %3, 0
  br i1 %86, label %130, label %87, !prof !720

87:                                               ; preds = %85
  %88 = call fastcc i32 @gimple_location(ptr noundef nonnull %16) #15
  %89 = getelementptr inbounds %struct.affine_iv, ptr %6, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !721
  %91 = call i32 @integer_zerop(ptr noundef %90) #14
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.affine_iv, ptr %5, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !721
  br i1 %92, label %95, label %106, !prof !722

95:                                               ; preds = %87
  %96 = call i32 @integer_zerop(ptr noundef %94) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %117, label %98, !prof !723

98:                                               ; preds = %95
  %99 = load ptr, ptr %89, align 8, !tbaa !721
  %100 = call i32 @integer_onep(ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113, !prof !724

102:                                              ; preds = %98
  %103 = load ptr, ptr %89, align 8, !tbaa !721
  %104 = call i32 @integer_all_onesp(ptr noundef %103) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %117, label %113, !prof !725

106:                                              ; preds = %87
  %107 = call i32 @integer_onep(ptr noundef %94) #14
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113, !prof !726

109:                                              ; preds = %106
  %110 = load ptr, ptr %93, align 8, !tbaa !721
  %111 = call i32 @integer_all_onesp(ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113, !prof !727

113:                                              ; preds = %109, %106, %102, %98
  %114 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !573
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, ptr @.str.4, ptr @.str.3
  br label %121

117:                                              ; preds = %109, %102, %95
  %118 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !573
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.6, ptr @.str.5
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi ptr [ %116, %113 ], [ %120, %117 ]
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %88) #14
  %123 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !728
  %125 = icmp sgt i32 %124, 0
  %126 = load i32, ptr @input_location, align 4
  %127 = select i1 %125, i32 %88, i32 %126, !prof !730
  %128 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %127, i32 noundef 216, ptr noundef nonnull @.str.7, ptr noundef nonnull %122) #14
  %129 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !573
  br label %130

130:                                              ; preds = %121, %85
  %131 = phi i32 [ %129, %121 ], [ %81, %85 ]
  %132 = trunc i32 %131 to i8
  br label %133

133:                                              ; preds = %76, %67, %42, %38, %31, %29, %13, %18, %4, %130, %54
  %134 = phi i8 [ %132, %130 ], [ 0, %54 ], [ 0, %4 ], [ 0, %18 ], [ 0, %13 ], [ 0, %29 ], [ 0, %31 ], [ 0, %38 ], [ 0, %42 ], [ 1, %67 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret i8 %134
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !731 !PGOFuncName !732 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !733 !PGOFuncName !734 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !733 !PGOFuncName !735 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !736 !PGOFuncName !737 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !738

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !591
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @number_of_iterations_cond(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !prof !739 !PGOFuncName !740 {
  %8 = alloca %struct.bounds, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !614
  store ptr %9, ptr %5, align 8, !tbaa !701
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !614
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !715
  %12 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !716
  %13 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 3
  %14 = tail call fastcc i64 @shwi_to_double_int(i64 noundef 0) #15
  store i64 %14, ptr %13, align 8, !tbaa.struct !741
  %15 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 3, i32 1
  store i64 0, ptr %15, align 8, !tbaa.struct !742
  %16 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 5
  store ptr null, ptr %16, align 8, !tbaa !743
  %17 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 6
  store i32 0, ptr %17, align 8, !tbaa !744
  %18 = add i32 %3, -99
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %27, label %20, !prof !745

20:                                               ; preds = %7
  %21 = icmp eq i32 %3, 102
  br i1 %21, label %22, label %29, !prof !746

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !721
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !747

27:                                               ; preds = %7, %22
  %28 = tail call i32 @swap_tree_comparison(i32 noundef %3) #14
  br label %29

29:                                               ; preds = %27, %22, %20
  %30 = phi ptr [ %2, %27 ], [ %4, %22 ], [ %4, %20 ]
  %31 = phi i32 [ %28, %27 ], [ 102, %22 ], [ %3, %20 ]
  %32 = phi ptr [ %4, %27 ], [ %2, %22 ], [ %2, %20 ]
  %33 = load i64, ptr %1, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %38 [
    i16 10, label %35
    i16 12, label %35
  ], !prof !748

35:                                               ; preds = %29, %29
  %36 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 2
  store i8 1, ptr %36, align 8, !tbaa !749
  %37 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 2
  store i8 1, ptr %37, align 8, !tbaa !749
  br label %38

38:                                               ; preds = %29, %35
  %39 = icmp eq i8 %6, 0
  br i1 %39, label %59, label %40, !prof !750

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !721
  %43 = tail call i32 @integer_zerop(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49, !prof !751

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 2
  %47 = load i8, ptr %46, align 8, !tbaa !749
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %59, !prof !752

49:                                               ; preds = %45, %40
  %50 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !721
  %52 = tail call i32 @integer_zerop(ptr noundef %51) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59, !prof !753

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 2
  %56 = load i8, ptr %55, align 8, !tbaa !749
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %54, %45, %49, %38
  %60 = phi i8 [ 0, %49 ], [ 0, %38 ], [ 1, %45 ], [ %58, %54 ]
  %61 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !721
  %63 = tail call i32 @integer_zerop(ptr noundef %62) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79, !prof !754

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !721
  %68 = tail call i32 @integer_zerop(ptr noundef %67) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79, !prof !755

70:                                               ; preds = %65
  %71 = icmp eq i32 %31, 102
  br i1 %71, label %72, label %211

72:                                               ; preds = %70
  %73 = load ptr, ptr %61, align 8, !tbaa !721
  %74 = load ptr, ptr %66, align 8, !tbaa !721
  %75 = tail call ptr @fold_binary_to_constant(i32 noundef 64, ptr noundef nonnull %1, ptr noundef %73, ptr noundef %74) #14
  store ptr %75, ptr %61, align 8, !tbaa !721
  %76 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 2
  store i8 0, ptr %76, align 8, !tbaa !749
  %77 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 0) #14
  store ptr %77, ptr %66, align 8, !tbaa !721
  %78 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 2
  store i8 1, ptr %78, align 8, !tbaa !749
  br label %79

79:                                               ; preds = %72, %65, %59
  %80 = load ptr, ptr %61, align 8, !tbaa !721
  %81 = tail call i32 @integer_zerop(ptr noundef %80) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83, !prof !754

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !721
  %86 = tail call i32 @integer_zerop(ptr noundef %85) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %211, !prof !756

88:                                               ; preds = %83, %79
  %89 = icmp eq i32 %31, 102
  br i1 %89, label %105, label %90, !prof !757

90:                                               ; preds = %88
  %91 = load ptr, ptr %61, align 8, !tbaa !721
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !758

93:                                               ; preds = %90
  %94 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %91) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %211, !prof !759

96:                                               ; preds = %93, %90
  %97 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !721
  %99 = tail call i32 @integer_zerop(ptr noundef %98) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105, !prof !760

101:                                              ; preds = %96
  %102 = load ptr, ptr %97, align 8, !tbaa !721
  %103 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %102) #14
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %211, label %105, !prof !761

105:                                              ; preds = %96, %101, %88
  %106 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %107 = load ptr, ptr %32, align 8, !tbaa !712
  %108 = load ptr, ptr %30, align 8, !tbaa !712
  %109 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %31, ptr noundef %106, ptr noundef %107, ptr noundef %108) #14
  %110 = tail call i32 @integer_zerop(ptr noundef %109) #14
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112, !prof !762

112:                                              ; preds = %105
  %113 = tail call ptr @unsigned_type_for(ptr noundef nonnull %1) #14
  %114 = tail call ptr @build_int_cst(ptr noundef %113, i64 noundef 0) #14
  store ptr %114, ptr %12, align 8, !tbaa !716
  store i64 %14, ptr %13, align 8, !tbaa.struct !741
  store i64 0, ptr %15, align 8, !tbaa.struct !742
  br label %211

115:                                              ; preds = %105
  %116 = load ptr, ptr %30, align 8, !tbaa !712
  %117 = load ptr, ptr %32, align 8, !tbaa !712
  call fastcc void @bound_difference(ptr noundef %0, ptr noundef %116, ptr noundef %117, ptr noundef nonnull %8) #15
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %119 = icmp eq ptr %118, null
  br i1 %119, label %149, label %120, !prof !763

120:                                              ; preds = %115
  %121 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %0, align 8, !tbaa !764
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %118, ptr noundef nonnull @.str.8, i32 noundef %125) #15
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %128 = call i64 @fwrite(ptr nonnull @.str.9, i64 17, i64 1, ptr %127)
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !614
  call fastcc void @dump_affine_iv(ptr noundef %129, ptr noundef nonnull %32) #15
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %131 = icmp eq i32 %31, 97
  %132 = select i1 %131, ptr @.str.12, ptr @.str.13
  %133 = select i1 %89, ptr @.str.11, ptr %132
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.10, ptr noundef nonnull %133) #15
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !614
  call fastcc void @dump_affine_iv(ptr noundef %135, ptr noundef nonnull %30) #15
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %137 = call i32 @fputc(i32 10, ptr %136)
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %139 = call i64 @fwrite(ptr nonnull @.str.15, i64 33, i64 1, ptr %138)
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %141 = call i64 @mpz_out_str(ptr noundef %140, i32 noundef 10, ptr noundef nonnull %8) #14
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %143 = call i64 @fwrite(ptr nonnull @.str.16, i64 5, i64 1, ptr %142)
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %145 = getelementptr inbounds %struct.bounds, ptr %8, i64 0, i32 1
  %146 = call i64 @mpz_out_str(ptr noundef %144, i32 noundef 10, ptr noundef nonnull %145) #14
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %148 = call i32 @fputc(i32 10, ptr %147)
  br label %149

149:                                              ; preds = %124, %120, %115
  switch i32 %31, label %162 [
    i32 102, label %150
    i32 97, label %158
    i32 98, label %160
  ], !prof !765

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !721
  %153 = call i32 @integer_zerop(ptr noundef %152) #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156, !prof !766

155:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1314, ptr noundef nonnull @.str.1) #14
  br label %156

156:                                              ; preds = %150, %155
  %157 = load ptr, ptr %30, align 8, !tbaa !712
  call fastcc void @number_of_iterations_ne(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %157, ptr noundef nonnull %5, i8 noundef zeroext %60, ptr noundef nonnull %8) #15
  br label %163

158:                                              ; preds = %149
  %159 = call fastcc zeroext i8 @number_of_iterations_lt(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %30, ptr noundef nonnull %5, i8 noundef zeroext %60, ptr noundef nonnull %8) #15, !range !637
  br label %163

160:                                              ; preds = %149
  %161 = call fastcc zeroext i8 @number_of_iterations_le(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %30, ptr noundef nonnull %5, i8 noundef zeroext %60, ptr noundef nonnull %8) #15, !range !637
  br label %163

162:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1330, ptr noundef nonnull @.str.1) #14
  br label %163

163:                                              ; preds = %162, %160, %158, %156
  %164 = phi i8 [ undef, %162 ], [ %161, %160 ], [ %159, %158 ], [ 1, %156 ]
  %165 = getelementptr inbounds %struct.bounds, ptr %8, i64 0, i32 1
  call void @mpz_clear(ptr noundef nonnull %165) #14
  call void @mpz_clear(ptr noundef nonnull %8) #14
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %167 = icmp eq ptr %166, null
  br i1 %167, label %211, label %168, !prof !763

168:                                              ; preds = %163
  %169 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %170 = and i32 %169, 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %211, label %172

172:                                              ; preds = %168
  %173 = icmp eq i8 %164, 0
  br i1 %173, label %209, label %174

174:                                              ; preds = %172
  %175 = call i64 @fwrite(ptr nonnull @.str.18, i64 10, i64 1, ptr nonnull %166)
  %176 = load ptr, ptr %5, align 8, !tbaa !701
  %177 = call i32 @integer_nonzerop(ptr noundef %176) #14
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %181 = call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %183 = load ptr, ptr %5, align 8, !tbaa !701
  call void @print_generic_expr(ptr noundef %182, ptr noundef %183, i32 noundef 2) #14
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %185 = call i32 @fputc(i32 10, ptr %184)
  br label %186

186:                                              ; preds = %179, %174
  %187 = load ptr, ptr %11, align 8, !tbaa !715
  %188 = call i32 @integer_zerop(ptr noundef %187) #14
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %192 = call i64 @fwrite(ptr nonnull @.str.20, i64 12, i64 1, ptr %191)
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %194 = load ptr, ptr %11, align 8, !tbaa !715
  call void @print_generic_expr(ptr noundef %193, ptr noundef %194, i32 noundef 2) #14
  %195 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %196 = call i32 @fputc(i32 10, ptr %195)
  br label %197

197:                                              ; preds = %190, %186
  %198 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %199 = call i64 @fwrite(ptr nonnull @.str.21, i64 20, i64 1, ptr %198)
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %201 = load ptr, ptr %12, align 8, !tbaa !716
  call void @print_generic_expr(ptr noundef %200, ptr noundef %201, i32 noundef 2) #14
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %203 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr %202)
  %204 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %205 = load i64, ptr %13, align 8
  %206 = load i64, ptr %15, align 8
  call void @dump_double_int(ptr noundef %204, i64 %205, i64 %206, i8 noundef zeroext 1) #14
  %207 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %208 = call i32 @fputc(i32 10, ptr %207)
  br label %211

209:                                              ; preds = %172
  %210 = call i64 @fwrite(ptr nonnull @.str.23, i64 10, i64 1, ptr nonnull %166)
  br label %211

211:                                              ; preds = %163, %168, %209, %197, %101, %93, %83, %70, %112
  %212 = phi i8 [ 1, %112 ], [ 0, %70 ], [ 0, %83 ], [ 0, %93 ], [ 0, %101 ], [ 1, %197 ], [ 0, %209 ], [ %164, %168 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  ret i8 %212
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !767 !PGOFuncName !768 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %42, !prof !769

8:                                                ; preds = %2
  %9 = trunc i64 %3 to i16
  switch i16 %9, label %37 [
    i16 94, label %10
    i16 93, label %10
    i16 56, label %10
  ]

10:                                               ; preds = %8, %8, %8
  %11 = icmp eq i32 %5, 56
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !579
  %14 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %13) #15
  %15 = load ptr, ptr %12, align 8, !tbaa !579
  %16 = icmp eq ptr %15, %14
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !579
  %19 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %18) #15
  %20 = load ptr, ptr %17, align 8, !tbaa !579
  %21 = icmp eq ptr %20, %19
  %22 = select i1 %21, i1 %16, i1 false
  br i1 %11, label %23, label %30, !prof !770

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !579
  %26 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %25) #15
  %27 = load ptr, ptr %24, align 8, !tbaa !579
  %28 = icmp eq ptr %27, %26
  %29 = select i1 %28, i1 %22, i1 false
  br i1 %29, label %42, label %31, !prof !771

30:                                               ; preds = %10
  br i1 %22, label %42, label %34, !prof !772

31:                                               ; preds = %23
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %33 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %32, ptr noundef %14, ptr noundef %19, ptr noundef %26) #14
  br label %42

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %35, ptr noundef %14, ptr noundef %19) #14
  br label %42

37:                                               ; preds = %8
  %38 = tail call fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef nonnull %1) #15
  %39 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %38) #14
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %1, ptr %38, !prof !773
  br label %42

42:                                               ; preds = %23, %30, %37, %34, %31, %2
  %43 = phi ptr [ %1, %2 ], [ %33, %31 ], [ %36, %34 ], [ %41, %37 ], [ %1, %30 ], [ %1, %23 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_using_initial_conditions(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !774 !PGOFuncName !775 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %54, label %6, !prof !776

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !777
  %9 = load ptr, ptr @cfun, align 8, !tbaa !614
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !778
  %12 = load ptr, ptr %11, align 8, !tbaa !780
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %54, label %14, !prof !782

14:                                               ; preds = %6, %43
  %15 = phi i32 [ %45, %43 ], [ 0, %6 ]
  %16 = phi ptr [ %46, %43 ], [ %8, %6 ]
  %17 = phi ptr [ %44, %43 ], [ %1, %6 ]
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %16) #15, !range !637
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %43, label %20, !prof !783

20:                                               ; preds = %14
  %21 = tail call fastcc ptr @single_pred_edge(ptr noundef %16) #15
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !706
  %24 = and i32 %23, 3072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26, !prof !784

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !621
  %28 = tail call ptr @last_stmt(ptr noundef %27) #14
  %29 = tail call fastcc i32 @gimple_cond_code(ptr noundef %28) #15, !range !597
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %31 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %28) #15
  %32 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %28) #15
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32) #14
  %34 = load i32, ptr %22, align 8, !tbaa !706
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !785

37:                                               ; preds = %26
  %38 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef %33) #14
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi ptr [ %38, %37 ], [ %33, %26 ]
  %41 = tail call fastcc ptr @tree_simplify_using_condition(ptr noundef %40, ptr noundef %17) #15
  %42 = add nsw i32 %15, 1
  br label %43

43:                                               ; preds = %20, %14, %39
  %44 = phi ptr [ %41, %39 ], [ %17, %20 ], [ %17, %14 ]
  %45 = phi i32 [ %42, %39 ], [ %15, %20 ], [ %15, %14 ]
  %46 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %16) #14
  %47 = load ptr, ptr @cfun, align 8, !tbaa !614
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !778
  %50 = load ptr, ptr %49, align 8, !tbaa !780
  %51 = icmp ne ptr %46, %50
  %52 = icmp slt i32 %45, 8
  %53 = select i1 %51, i1 %52, i1 false, !prof !786
  br i1 %53, label %14, label %54, !prof !787, !llvm.loop !788

54:                                               ; preds = %43, %6, %2
  %55 = phi ptr [ %1, %2 ], [ %1, %6 ], [ %44, %43 ]
  ret ptr %55
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !789 !PGOFuncName !790 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !579
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @shwi_to_double_int(i64 noundef %0) unnamed_addr #5 !prof !791 !PGOFuncName !792 {
  ret i64 %0
}

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bound_difference(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !793 !PGOFuncName !794 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca [1 x %struct.__mpz_struct], align 16
  %11 = alloca [1 x %struct.__mpz_struct], align 16
  %12 = alloca [1 x %struct.__mpz_struct], align 16
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  %15 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %1) #14
  %16 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %2) #14
  tail call void @mpz_init(ptr noundef %3) #14
  %17 = getelementptr inbounds %struct.bounds, ptr %3, i64 0, i32 1
  tail call void @mpz_init(ptr noundef nonnull %17) #14
  call void @mpz_init(ptr noundef nonnull %7) #14
  call void @mpz_init(ptr noundef nonnull %8) #14
  call fastcc void @split_to_var_and_offset(ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %7) #15
  call fastcc void @split_to_var_and_offset(ptr noundef %16, ptr noundef nonnull %6, ptr noundef nonnull %8) #15
  %18 = load ptr, ptr %5, align 8, !tbaa !614
  %19 = call i32 @integer_zerop(ptr noundef %18) #14
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %6, align 8
  br i1 %20, label %22, label %26, !prof !795

22:                                               ; preds = %4
  %23 = call i32 @operand_equal_p(ptr noundef %18, ptr noundef %21, i32 noundef 0) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !796

25:                                               ; preds = %22
  call fastcc void @bound_difference_of_offsetted_base(ptr noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %3) #15
  br label %27

26:                                               ; preds = %22, %4
  call void @mpz_init(ptr noundef nonnull %9) #14
  call void @mpz_init(ptr noundef nonnull %10) #14
  call void @mpz_init(ptr noundef nonnull %11) #14
  call void @mpz_init(ptr noundef nonnull %12) #14
  call fastcc void @determine_value_range(ptr noundef %14, ptr noundef %18, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  call fastcc void @determine_value_range(ptr noundef %14, ptr noundef %21, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  call void @mpz_sub(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %12) #14
  call void @mpz_sub(ptr noundef nonnull %17, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  call void @mpz_clear(ptr noundef nonnull %9) #14
  call void @mpz_clear(ptr noundef nonnull %10) #14
  call void @mpz_clear(ptr noundef nonnull %11) #14
  call void @mpz_clear(ptr noundef nonnull %12) #14
  br label %27

27:                                               ; preds = %26, %25
  %28 = call i32 @integer_zerop(ptr noundef %18) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30, !prof !795

30:                                               ; preds = %27
  %31 = call i32 @integer_zerop(ptr noundef %21) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %76, !prof !797

33:                                               ; preds = %30, %27
  %34 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !777
  %36 = load ptr, ptr @cfun, align 8, !tbaa !614
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !778
  %39 = load ptr, ptr %38, align 8, !tbaa !780
  %40 = icmp eq ptr %35, %39
  br i1 %40, label %76, label %41, !prof !798

41:                                               ; preds = %33, %66
  %42 = phi i32 [ %67, %66 ], [ 0, %33 ]
  %43 = phi ptr [ %68, %66 ], [ %35, %33 ]
  %44 = call fastcc zeroext i8 @single_pred_p(ptr noundef %43) #15, !range !637
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %66, label %46, !prof !799

46:                                               ; preds = %41
  %47 = call fastcc ptr @single_pred_edge(ptr noundef %43) #15
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !706
  %50 = and i32 %49, 3072
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %52, !prof !800

52:                                               ; preds = %46
  %53 = load ptr, ptr %47, align 8, !tbaa !621
  %54 = call ptr @last_stmt(ptr noundef %53) #14
  %55 = call fastcc ptr @gimple_cond_lhs(ptr noundef %54) #15
  %56 = call fastcc i32 @gimple_cond_code(ptr noundef %54) #15, !range !597
  %57 = call fastcc ptr @gimple_cond_rhs(ptr noundef %54) #15
  %58 = load i32, ptr %48, align 8, !tbaa !706
  %59 = and i32 %58, 2048
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61, !prof !801

61:                                               ; preds = %52
  %62 = call i32 @invert_tree_comparison(i32 noundef %56, i8 noundef zeroext 0) #14
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi i32 [ %62, %61 ], [ %56, %52 ]
  call fastcc void @refine_bounds_using_guard(ptr noundef %14, ptr noundef %18, ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %8, ptr noundef %55, i32 noundef %64, ptr noundef %57, ptr noundef %3) #15
  %65 = add nsw i32 %42, 1
  br label %66

66:                                               ; preds = %46, %41, %63
  %67 = phi i32 [ %65, %63 ], [ %42, %46 ], [ %42, %41 ]
  %68 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %43) #14
  %69 = load ptr, ptr @cfun, align 8, !tbaa !614
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !778
  %72 = load ptr, ptr %71, align 8, !tbaa !780
  %73 = icmp ne ptr %68, %72
  %74 = icmp slt i32 %67, 8
  %75 = select i1 %73, i1 %74, i1 false, !prof !802
  br i1 %75, label %41, label %76, !prof !803, !llvm.loop !804

76:                                               ; preds = %66, %33, %30
  call void @mpz_clear(ptr noundef nonnull %7) #14
  call void @mpz_clear(ptr noundef nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_affine_iv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !805 !PGOFuncName !806 {
  %3 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !721
  %5 = tail call i32 @integer_zerop(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @fputc(i32 91, ptr %0)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %11 = load ptr, ptr %1, align 8, !tbaa !712
  tail call void @print_generic_expr(ptr noundef %10, ptr noundef %11, i32 noundef 2) #14
  %12 = load ptr, ptr %3, align 8, !tbaa !721
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 6, i64 1, ptr %0)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %18 = load ptr, ptr %3, align 8, !tbaa !721
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %18, i32 noundef 2) #14
  %19 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !749
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.28, ptr @.str.27
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %22) #15
  br label %24

24:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: optsize
declare i64 @mpz_out_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @number_of_iterations_ne(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !807 !PGOFuncName !808 {
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = tail call ptr @unsigned_type_for(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %9 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !809
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !743
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  store i32 102, ptr %11, align 8, !tbaa !744
  %12 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !721
  %14 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %13) #14
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %12, align 8, !tbaa !721
  br i1 %15, label %24, label %17, !prof !810

17:                                               ; preds = %6
  %18 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %16) #14
  %19 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %18) #14
  %20 = load ptr, ptr %1, align 8, !tbaa !712
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %20) #14
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %2) #14
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %8, ptr noundef %21, ptr noundef %22) #14
  tail call fastcc void @bounds_negate(ptr noundef %5) #15
  br label %30

24:                                               ; preds = %6
  %25 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %16) #14
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %2) #14
  %27 = load ptr, ptr %1, align 8, !tbaa !712
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %27) #14
  %29 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %8, ptr noundef %26, ptr noundef %28) #14
  br label %30

30:                                               ; preds = %24, %17
  %31 = phi ptr [ %23, %17 ], [ %29, %24 ]
  %32 = phi ptr [ %19, %17 ], [ %25, %24 ]
  call void @mpz_init(ptr noundef nonnull %7) #14
  %33 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %34 = load i8, ptr %33, align 8, !tbaa !749
  call fastcc void @number_of_iterations_ne_max(ptr noundef nonnull %7, i8 noundef zeroext %34, ptr noundef %31, ptr noundef %32, ptr noundef %5) #15
  %35 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %36 = call { i64, i64 } @mpz_get_double_int(ptr noundef %8, ptr noundef nonnull %7, i8 noundef zeroext 0) #14
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  store i64 %37, ptr %35, align 8, !tbaa.struct !741
  %39 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %38, ptr %39, align 8, !tbaa.struct !742
  call void @mpz_clear(ptr noundef nonnull %7) #14
  %40 = call i32 @integer_onep(ptr noundef %32) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %71, !prof !811

42:                                               ; preds = %30
  %43 = call ptr @num_ending_zeros(ptr noundef %32) #14
  %44 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1023
  %47 = call i64 @tree_low_cst(ptr noundef %43, i32 noundef 1) #14
  %48 = trunc i64 %47 to i32
  %49 = sub i32 %46, %48
  %50 = call ptr @build_low_bits_mask(ptr noundef %8, i32 noundef %49) #14
  %51 = call ptr @build_int_cst(ptr noundef %8, i64 noundef 1) #14
  %52 = call ptr @fold_binary_to_constant(i32 noundef 83, ptr noundef %8, ptr noundef %51, ptr noundef %43) #14
  %53 = call ptr @fold_binary_to_constant(i32 noundef 84, ptr noundef %8, ptr noundef %32, ptr noundef %43) #14
  %54 = icmp eq i8 %4, 0
  br i1 %54, label %55, label %66, !prof !812

55:                                               ; preds = %42
  %56 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %52) #14
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %58 = call ptr @build_int_cst(ptr noundef nonnull %8, i64 noundef 0) #14
  %59 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %57, ptr noundef %56, ptr noundef %58) #14
  %60 = call i32 @integer_nonzerop(ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66, !prof !813

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %64 = load ptr, ptr %3, align 8, !tbaa !701
  %65 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %63, ptr noundef %64, ptr noundef %59) #14
  store ptr %65, ptr %3, align 8, !tbaa !701
  br label %66

66:                                               ; preds = %55, %62, %42
  %67 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 76, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %52) #14
  %68 = call fastcc ptr @inverse(ptr noundef %53, ptr noundef %50) #15
  %69 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef nonnull %8, ptr noundef %67, ptr noundef %68) #14
  %70 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef nonnull %8, ptr noundef %69, ptr noundef %50) #14
  br label %71

71:                                               ; preds = %30, %66
  %72 = phi ptr [ %70, %66 ], [ %31, %30 ]
  %73 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !716
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @number_of_iterations_lt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !814 !PGOFuncName !815 {
  %7 = alloca ptr, align 8
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca %struct.affine_iv, align 8
  %11 = tail call ptr @unsigned_type_for(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %12 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !721
  %14 = tail call i32 @integer_nonzerop(ptr noundef %13) #14
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  %17 = select i1 %15, ptr %2, ptr %1, !prof !816
  %18 = select i1 %15, i32 99, i32 97, !prof !816
  %19 = select i1 %15, ptr %1, ptr %2, !prof !816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  %20 = load ptr, ptr %19, align 8, !tbaa !712
  %21 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  store i32 %18, ptr %21, align 8
  %22 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %2, align 8, !tbaa !712
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %23) #14
  %25 = load ptr, ptr %1, align 8, !tbaa !712
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %25) #14
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %11, ptr noundef %24, ptr noundef %26) #14
  store ptr %27, ptr %7, align 8, !tbaa !614
  %28 = load ptr, ptr %12, align 8, !tbaa !721
  %29 = tail call i32 @integer_onep(ptr noundef %28) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31, !prof !817

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !721
  %34 = tail call i32 @integer_zerop(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45, !prof !818

36:                                               ; preds = %31, %6
  %37 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !721
  %39 = tail call i32 @integer_all_onesp(ptr noundef %38) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41, !prof !819

41:                                               ; preds = %36
  %42 = load ptr, ptr %12, align 8, !tbaa !721
  %43 = tail call i32 @integer_zerop(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45, !prof !820

45:                                               ; preds = %41, %31
  %46 = tail call i32 @mpz_sgn(ptr noundef %5) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54, !prof !821

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %50 = load ptr, ptr %2, align 8, !tbaa !712
  %51 = load ptr, ptr %1, align 8, !tbaa !712
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %49, ptr noundef %50, ptr noundef %51) #14
  %53 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !715
  br label %54

54:                                               ; preds = %48, %45
  %55 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %27, ptr %55, align 8, !tbaa !716
  %56 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %57 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  %58 = tail call { i64, i64 } @mpz_get_double_int(ptr noundef %11, ptr noundef nonnull %57, i8 noundef zeroext 0) #14
  %59 = extractvalue { i64, i64 } %58, 0
  %60 = extractvalue { i64, i64 } %58, 1
  store i64 %59, ptr %56, align 8, !tbaa.struct !741
  %61 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %60, ptr %61, align 8, !tbaa.struct !742
  br label %100

62:                                               ; preds = %41, %36
  %63 = load ptr, ptr %12, align 8, !tbaa !721
  %64 = tail call i32 @integer_nonzerop(ptr noundef %63) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !822

66:                                               ; preds = %62
  %67 = load ptr, ptr %12, align 8, !tbaa !721
  br label %71

68:                                               ; preds = %62
  %69 = load ptr, ptr %37, align 8, !tbaa !721
  %70 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %69) #14
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi ptr [ %70, %68 ], [ %67, %66 ]
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %72) #14
  %74 = call fastcc zeroext i8 @number_of_iterations_lt_to_ne(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %73, i8 noundef zeroext %4, ptr noundef %5) #15, !range !637
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76, !prof !823

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %77 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 0) #14
  store ptr %77, ptr %10, align 8, !tbaa !712
  %78 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 1
  store ptr %73, ptr %78, align 8, !tbaa !721
  %79 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 2
  store i8 1, ptr %79, align 8, !tbaa !749
  %80 = load ptr, ptr %7, align 8, !tbaa !614
  call fastcc void @number_of_iterations_ne(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %80, ptr noundef nonnull %3, i8 noundef zeroext 1, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br label %100

81:                                               ; preds = %71
  %82 = tail call fastcc zeroext i8 @assert_no_overflow_lt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %73) #15, !range !637
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84, !prof !824

84:                                               ; preds = %81
  tail call fastcc void @assert_loop_rolls_lt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #15
  %85 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 1) #14
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %11, ptr noundef %73, ptr noundef %85) #14
  %87 = load ptr, ptr %7, align 8, !tbaa !614
  %88 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %11, ptr noundef %87, ptr noundef %86) #14
  %89 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %11, ptr noundef %88, ptr noundef %73) #14
  %90 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %89, ptr %90, align 8, !tbaa !716
  call void @mpz_init(ptr noundef nonnull %8) #14
  call void @mpz_init(ptr noundef nonnull %9) #14
  %91 = call { i64, i64 } @tree_to_double_int(ptr noundef %73) #14
  %92 = extractvalue { i64, i64 } %91, 0
  %93 = extractvalue { i64, i64 } %91, 1
  call void @mpz_set_double_int(ptr noundef nonnull %8, i64 %92, i64 %93, i8 noundef zeroext 1) #14
  %94 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  call void @mpz_add(ptr noundef nonnull %9, ptr noundef nonnull %94, ptr noundef nonnull %8) #14
  call void @mpz_sub_ui(ptr noundef nonnull %9, ptr noundef nonnull %9, i64 noundef 1) #14
  call void @mpz_fdiv_q(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %8) #14
  %95 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %96 = call { i64, i64 } @mpz_get_double_int(ptr noundef %11, ptr noundef nonnull %9, i8 noundef zeroext 0) #14
  %97 = extractvalue { i64, i64 } %96, 0
  %98 = extractvalue { i64, i64 } %96, 1
  store i64 %97, ptr %95, align 8, !tbaa.struct !741
  %99 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %98, ptr %99, align 8, !tbaa.struct !742
  call void @mpz_clear(ptr noundef nonnull %8) #14
  call void @mpz_clear(ptr noundef nonnull %9) #14
  br label %100

100:                                              ; preds = %81, %84, %76, %54
  %101 = phi i8 [ 1, %54 ], [ 1, %76 ], [ 1, %84 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret i8 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @number_of_iterations_le(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !825 !PGOFuncName !826 {
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %11 [
    i16 10, label %9
    i16 12, label %9
  ], !prof !827

9:                                                ; preds = %6, %6
  %10 = load ptr, ptr @sizetype_tab, align 16, !tbaa !614
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %0, %6 ]
  %13 = icmp eq i8 %4, 0
  br i1 %13, label %14, label %37, !prof !828

14:                                               ; preds = %11
  switch i16 %8, label %15 [
    i16 10, label %37
    i16 12, label %37
  ], !prof !829

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !721
  %18 = tail call i32 @integer_nonzerop(ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %23 = select i1 %19, ptr %21, ptr %22, !prof !830
  %24 = select i1 %19, ptr %1, ptr %2, !prof !830
  %25 = load ptr, ptr %24, align 8, !tbaa !712
  %26 = load ptr, ptr %23, align 8, !tbaa !579
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %20, ptr noundef %25, ptr noundef %26) #14
  %28 = tail call i32 @integer_zerop(ptr noundef %27) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %66, !prof !831

30:                                               ; preds = %15
  %31 = tail call i32 @integer_nonzerop(ptr noundef %27) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !832

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %35 = load ptr, ptr %3, align 8, !tbaa !701
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %34, ptr noundef %35, ptr noundef %27) #14
  store ptr %36, ptr %3, align 8, !tbaa !701
  br label %37

37:                                               ; preds = %14, %14, %30, %33, %11
  %38 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !721
  %40 = tail call i32 @integer_nonzerop(ptr noundef %39) #14
  %41 = icmp eq i32 %40, 0
  %42 = load i64, ptr %0, align 8
  %43 = trunc i64 %42 to i16
  br i1 %41, label %53, label %44, !prof !833

44:                                               ; preds = %37
  switch i16 %43, label %49 [
    i16 10, label %45
    i16 12, label %45
  ], !prof !834

45:                                               ; preds = %44, %44
  %46 = load ptr, ptr %2, align 8, !tbaa !712
  %47 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %47) #14
  store ptr %48, ptr %2, align 8, !tbaa !712
  br label %63

49:                                               ; preds = %44
  %50 = load ptr, ptr %2, align 8, !tbaa !712
  %51 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %12, ptr noundef %50, ptr noundef %51) #14
  store ptr %52, ptr %2, align 8, !tbaa !712
  br label %63

53:                                               ; preds = %37
  switch i16 %43, label %59 [
    i16 10, label %54
    i16 12, label %54
  ], !prof !835

54:                                               ; preds = %53, %53
  %55 = load ptr, ptr %1, align 8, !tbaa !712
  %56 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %57 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %56) #14
  %58 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %55, ptr noundef %57) #14
  store ptr %58, ptr %1, align 8, !tbaa !712
  br label %63

59:                                               ; preds = %53
  %60 = load ptr, ptr %1, align 8, !tbaa !712
  %61 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %62 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %12, ptr noundef %60, ptr noundef %61) #14
  store ptr %62, ptr %1, align 8, !tbaa !712
  br label %63

63:                                               ; preds = %54, %59, %45, %49
  %64 = tail call fastcc i64 @shwi_to_double_int(i64 noundef 1) #15
  tail call fastcc void @bounds_add(ptr noundef %5, i64 %64, i64 0, ptr noundef %12) #15
  %65 = tail call fastcc zeroext i8 @number_of_iterations_lt(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #15, !range !637
  br label %66

66:                                               ; preds = %15, %63
  %67 = phi i8 [ %65, %63 ], [ 0, %15 ]
  ret i8 %67
}

; Function Attrs: optsize
declare void @mpz_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_strip_sign_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_to_var_and_offset(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !prof !836 !PGOFuncName !837 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !579
  store ptr %0, ptr %1, align 8, !tbaa !614
  tail call void @mpz_set_ui(ptr noundef %2, i64 noundef 0) #14
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %44 [
    i16 64, label %8
    i16 63, label %9
    i16 66, label %9
    i16 23, label %35
  ], !prof !838

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %3, %3, %8
  %10 = phi i1 [ true, %3 ], [ true, %3 ], [ false, %8 ]
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !579
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %44, !prof !839

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !579
  store ptr %18, ptr %1, align 8, !tbaa !614
  %19 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %12) #14
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  br i1 %10, label %26, label %22, !prof !840

22:                                               ; preds = %16
  %23 = tail call { i64, i64 } @double_int_neg(i64 %20, i64 %21) #14
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i64 [ %24, %22 ], [ %20, %16 ]
  %28 = phi i64 [ %25, %22 ], [ %21, %16 ]
  %29 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = tail call { i64, i64 } @double_int_sext(i64 %27, i64 %28, i32 noundef %31) #14
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %33, i64 %34, i8 noundef zeroext 0) #14
  br label %44

35:                                               ; preds = %3
  %36 = tail call ptr @build_int_cst_type(ptr noundef %5, i64 noundef 0) #14
  store ptr %36, ptr %1, align 8, !tbaa !614
  %37 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %0) #14
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  %40 = load i64, ptr %5, align 8
  %41 = lshr i64 %40, 21
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %38, i64 %39, i8 noundef zeroext %43) #14
  br label %44

44:                                               ; preds = %3, %9, %35, %26
  ret void
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bound_difference_of_offsetted_base(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !841 !PGOFuncName !842 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = tail call i32 @mpz_cmp(ptr noundef %1, ptr noundef %2) #14
  %7 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0) #15, !range !637
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %11, !prof !843

9:                                                ; preds = %4
  tail call void @mpz_set_ui(ptr noundef %3, i64 noundef 0) #14
  %10 = getelementptr inbounds %struct.bounds, ptr %3, i64 0, i32 1
  tail call void @mpz_set_ui(ptr noundef nonnull %10, i64 noundef 0) #14
  br label %25

11:                                               ; preds = %4
  call void @mpz_init(ptr noundef nonnull %5) #14
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = call { i64, i64 } @double_int_mask(i32 noundef %14) #14
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  call void @mpz_set_double_int(ptr noundef nonnull %5, i64 %16, i64 %17, i8 noundef zeroext 1) #14
  call void @mpz_add_ui(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1) #14
  %18 = getelementptr inbounds %struct.bounds, ptr %3, i64 0, i32 1
  call void @mpz_sub(ptr noundef nonnull %18, ptr noundef %1, ptr noundef %2) #14
  call void @mpz_set(ptr noundef %3, ptr noundef nonnull %18) #14
  %19 = icmp eq i8 %7, 0
  br i1 %19, label %20, label %24, !prof !844

20:                                               ; preds = %11
  %21 = icmp sgt i32 %6, 0
  br i1 %21, label %22, label %23, !prof !845

22:                                               ; preds = %20
  call void @mpz_sub(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %5) #14
  br label %24

23:                                               ; preds = %20
  call void @mpz_add(ptr noundef nonnull %18, ptr noundef nonnull %18, ptr noundef nonnull %5) #14
  br label %24

24:                                               ; preds = %22, %23, %11
  call void @mpz_clear(ptr noundef nonnull %5) #14
  br label %25

25:                                               ; preds = %24, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_value_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !846 !PGOFuncName !847 {
  %6 = tail call i32 @integer_zerop(ptr noundef %1) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !848

8:                                                ; preds = %5
  tail call void @mpz_set(ptr noundef %3, ptr noundef %2) #14
  tail call void @mpz_set(ptr noundef %4, ptr noundef %2) #14
  br label %17

9:                                                ; preds = %5
  tail call void @get_type_static_bounds(ptr noundef %0, ptr noundef %3, ptr noundef %4) #14
  %10 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0) #15, !range !637
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !849

12:                                               ; preds = %9
  %13 = tail call i32 @mpz_sgn(ptr noundef %2) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16, !prof !850

15:                                               ; preds = %12
  tail call void @mpz_add(ptr noundef %4, ptr noundef %4, ptr noundef %2) #14
  br label %17

16:                                               ; preds = %12
  tail call void @mpz_add(ptr noundef %3, ptr noundef %3, ptr noundef %2) #14
  br label %17

17:                                               ; preds = %9, %8, %16, %15
  ret void
}

; Function Attrs: optsize
declare void @mpz_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @refine_bounds_using_guard(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !prof !851 !PGOFuncName !852 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [1 x %struct.__mpz_struct], align 16
  %13 = alloca [1 x %struct.__mpz_struct], align 16
  %14 = alloca [1 x %struct.__mpz_struct], align 16
  %15 = alloca [1 x %struct.__mpz_struct], align 16
  %16 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #16
  %17 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0) #15, !range !637
  switch i32 %6, label %124 [
    i32 97, label %18
    i32 98, label %18
    i32 99, label %18
    i32 100, label %18
    i32 102, label %25
  ], !prof !853

18:                                               ; preds = %9, %9, %9, %9
  %19 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %5) #14
  %20 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %7) #14
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !579
  %23 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %22, ptr noundef %0) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %124, label %61, !prof !854

25:                                               ; preds = %9
  %26 = load i64, ptr %7, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %29, label %124, !prof !855

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -6
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %124, !prof !856

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !579
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %39
  %43 = and i32 %42, 1023
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %124, !prof !857

45:                                               ; preds = %35
  %46 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %7) #14
  %48 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !579
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !858

51:                                               ; preds = %45
  %52 = tail call i32 @operand_equal_p(ptr noundef %47, ptr noundef nonnull %49, i32 noundef 0) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61, !prof !859

54:                                               ; preds = %51, %45
  %55 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !579
  %57 = icmp eq ptr %56, null
  br i1 %57, label %124, label %58, !prof !860

58:                                               ; preds = %54
  %59 = tail call i32 @operand_equal_p(ptr noundef %47, ptr noundef nonnull %56, i32 noundef 0) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %124, label %61, !prof !861

61:                                               ; preds = %58, %51, %18
  %62 = phi ptr [ %19, %18 ], [ %46, %51 ], [ %46, %58 ]
  %63 = phi i32 [ %6, %18 ], [ 99, %51 ], [ 97, %58 ]
  %64 = phi ptr [ %20, %18 ], [ %47, %51 ], [ %47, %58 ]
  call void @mpz_init(ptr noundef nonnull %12) #14
  call void @mpz_init(ptr noundef nonnull %13) #14
  %65 = call ptr @expand_simple_operations(ptr noundef %62) #15
  call fastcc void @split_to_var_and_offset(ptr noundef %65, ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  %66 = call ptr @expand_simple_operations(ptr noundef %64) #15
  call fastcc void @split_to_var_and_offset(ptr noundef %66, ptr noundef nonnull %11, ptr noundef nonnull %13) #15
  %67 = load ptr, ptr %11, align 8, !tbaa !614
  %68 = call i32 @operand_equal_p(ptr noundef %1, ptr noundef %67, i32 noundef 0) #14
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr %10, align 8, !tbaa !614
  br i1 %69, label %73, label %71, !prof !862

71:                                               ; preds = %61
  call void @mpz_swap(ptr noundef nonnull %12, ptr noundef nonnull %13) #14
  %72 = call i32 @swap_tree_comparison(i32 noundef %63) #14
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi ptr [ %70, %71 ], [ %67, %61 ]
  %75 = phi ptr [ %67, %71 ], [ %70, %61 ]
  %76 = phi i32 [ %72, %71 ], [ %63, %61 ]
  %77 = call i32 @operand_equal_p(ptr noundef %1, ptr noundef %75, i32 noundef 0) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %123, label %79, !prof !863

79:                                               ; preds = %73
  %80 = call i32 @operand_equal_p(ptr noundef %3, ptr noundef %74, i32 noundef 0) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %123, label %82, !prof !864

82:                                               ; preds = %79
  call void @mpz_init_set(ptr noundef nonnull %14, ptr noundef %2) #14
  call void @mpz_init_set(ptr noundef nonnull %15, ptr noundef %4) #14
  %83 = add i32 %76, -101
  %84 = icmp ult i32 %83, -2
  br i1 %84, label %87, label %85, !prof !865

85:                                               ; preds = %82
  call void @mpz_swap(ptr noundef nonnull %12, ptr noundef nonnull %13) #14
  call void @mpz_swap(ptr noundef nonnull %14, ptr noundef nonnull %15) #14
  %86 = call i32 @swap_tree_comparison(i32 noundef %76) #14
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi i32 [ %86, %85 ], [ %76, %82 ]
  %89 = phi ptr [ %1, %85 ], [ %3, %82 ]
  %90 = phi ptr [ %3, %85 ], [ %1, %82 ]
  %91 = icmp eq i8 %17, 0
  br i1 %91, label %92, label %108, !prof !866

92:                                               ; preds = %87
  %93 = call i32 @integer_zerop(ptr noundef %90) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98, !prof !867

95:                                               ; preds = %92
  %96 = call i32 @mpz_cmp(ptr noundef nonnull %14, ptr noundef nonnull %12) #14
  %97 = icmp sgt i32 %96, -1
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ true, %92 ], [ %97, %95 ]
  %100 = call i32 @integer_zerop(ptr noundef %89) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105, !prof !868

102:                                              ; preds = %98
  %103 = call i32 @mpz_cmp(ptr noundef nonnull %15, ptr noundef nonnull %13) #14
  %104 = icmp slt i32 %103, 1
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i1 [ true, %98 ], [ %104, %102 ]
  %107 = select i1 %99, i1 %106, i1 false
  br i1 %107, label %108, label %122, !prof !869

108:                                              ; preds = %87, %105
  call void @mpz_init(ptr noundef nonnull %16) #14
  call void @mpz_sub(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %15) #14
  call void @mpz_add(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %13) #14
  call void @mpz_sub(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %12) #14
  %109 = icmp eq i32 %88, 97
  br i1 %109, label %110, label %111, !prof !870

110:                                              ; preds = %108
  call void @mpz_sub_ui(ptr noundef nonnull %16, ptr noundef nonnull %16, i64 noundef 1) #14
  br label %111

111:                                              ; preds = %110, %108
  br i1 %84, label %116, label %112, !prof !871

112:                                              ; preds = %111
  call void @mpz_neg(ptr noundef nonnull %16, ptr noundef nonnull %16) #14
  %113 = call i32 @mpz_cmp(ptr noundef %8, ptr noundef nonnull %16) #14
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121, !prof !872

115:                                              ; preds = %112
  call void @mpz_set(ptr noundef %8, ptr noundef nonnull %16) #14
  br label %121

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.bounds, ptr %8, i64 0, i32 1
  %118 = call i32 @mpz_cmp(ptr noundef nonnull %16, ptr noundef nonnull %117) #14
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121, !prof !873

120:                                              ; preds = %116
  call void @mpz_set(ptr noundef nonnull %117, ptr noundef nonnull %16) #14
  br label %121

121:                                              ; preds = %116, %120, %112, %115
  call void @mpz_clear(ptr noundef nonnull %16) #14
  br label %122

122:                                              ; preds = %121, %105
  call void @mpz_clear(ptr noundef nonnull %14) #14
  call void @mpz_clear(ptr noundef nonnull %15) #14
  br label %123

123:                                              ; preds = %73, %79, %122
  call void @mpz_clear(ptr noundef nonnull %12) #14
  call void @mpz_clear(ptr noundef nonnull %13) #14
  br label %124

124:                                              ; preds = %29, %9, %54, %58, %35, %25, %18, %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  ret void
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_set_ui(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_set_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mpz_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nowrap_type_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !874 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %19, !prof !875

7:                                                ; preds = %1
  %8 = and i64 %2, 2097152
  %9 = icmp eq i64 %8, 0
  %10 = load i32, ptr @flag_wrapv, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = load i32, ptr @flag_trapv, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  %16 = load i32, ptr @flag_strict_overflow, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %24, label %19, !prof !876

19:                                               ; preds = %1, %7
  %20 = add nsw i32 %4, -10
  %21 = and i32 %20, -3
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %19, %7
  %25 = phi i8 [ 1, %7 ], [ %23, %19 ]
  ret i8 %25
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_mask(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_add_ui(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @get_type_static_bounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mpz_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_swap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_init_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_sub_ui(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_neg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bounds_negate(ptr noundef %0) unnamed_addr #0 !prof !877 !PGOFuncName !878 {
  %2 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.bounds, ptr %0, i64 0, i32 1
  call void @mpz_init_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  call void @mpz_neg(ptr noundef nonnull %3, ptr noundef %0) #14
  call void @mpz_neg(ptr noundef %0, ptr noundef nonnull %2) #14
  call void @mpz_clear(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @number_of_iterations_ne_max(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !807 !PGOFuncName !879 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %28, !prof !880

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !579
  %11 = tail call i32 @multiple_of_p(ptr noundef %10, ptr noundef %2, ptr noundef %3) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !881

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !579
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = tail call ptr @num_ending_zeros(ptr noundef %3) #14
  %19 = tail call i64 @tree_low_cst(ptr noundef %18, i32 noundef 1) #14
  %20 = trunc i64 %19 to i32
  %21 = sub i32 %17, %20
  %22 = tail call { i64, i64 } @double_int_mask(i32 noundef %21) #14
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  tail call void @mpz_set_double_int(ptr noundef %0, i64 %23, i64 %24, i8 noundef zeroext 1) #14
  br label %50

25:                                               ; preds = %8
  %26 = tail call i32 @mpz_sgn(ptr noundef %4) #14
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %30, !prof !882

28:                                               ; preds = %5, %25
  %29 = getelementptr inbounds %struct.bounds, ptr %4, i64 0, i32 1
  tail call void @mpz_set(ptr noundef %0, ptr noundef nonnull %29) #14
  br label %46

30:                                               ; preds = %25
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %38, !prof !883

34:                                               ; preds = %30
  %35 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %2) #14
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  tail call void @mpz_set_double_int(ptr noundef %0, i64 %36, i64 %37, i8 noundef zeroext 1) #14
  br label %46

38:                                               ; preds = %30
  %39 = load ptr, ptr %9, align 8, !tbaa !579
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1023
  %43 = tail call { i64, i64 } @double_int_mask(i32 noundef %42) #14
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  tail call void @mpz_set_double_int(ptr noundef %0, i64 %44, i64 %45, i8 noundef zeroext 1) #14
  br label %46

46:                                               ; preds = %34, %38, %28
  call void @mpz_init(ptr noundef nonnull %6) #14
  %47 = call { i64, i64 } @tree_to_double_int(ptr noundef %3) #14
  %48 = extractvalue { i64, i64 } %47, 0
  %49 = extractvalue { i64, i64 } %47, 1
  call void @mpz_set_double_int(ptr noundef nonnull %6, i64 %48, i64 %49, i8 noundef zeroext 1) #14
  call void @mpz_fdiv_q(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6) #14
  call void @mpz_clear(ptr noundef nonnull %6) #14
  br label %50

50:                                               ; preds = %46, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare { i64, i64 } @mpz_get_double_int(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @num_ending_zeros(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_low_bits_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @inverse(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !884 !PGOFuncName !885 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !579
  %5 = tail call i32 @tree_floor_log2(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1023
  %9 = icmp ult i32 %8, 65
  br i1 %9, label %10, label %34, !prof !886

10:                                               ; preds = %2
  %11 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef nonnull %0) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !887

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 509, ptr noundef nonnull @.str.1) #14
  br label %14

14:                                               ; preds = %10, %13
  %15 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %1) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18, !prof !887

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 510, ptr noundef nonnull @.str.1) #14
  br label %18

18:                                               ; preds = %14, %17
  %19 = tail call i64 @int_cst_value(ptr noundef nonnull %0) #14
  %20 = tail call i64 @int_cst_value(ptr noundef %1) #14
  %21 = icmp eq i32 %5, 0
  br i1 %21, label %30, label %22, !prof !888

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %26, %22 ], [ 1, %18 ]
  %24 = phi i64 [ %27, %22 ], [ %19, %18 ]
  %25 = phi i32 [ %28, %22 ], [ %5, %18 ]
  %26 = mul i64 %23, %24
  %27 = mul i64 %24, %24
  %28 = add i32 %25, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %22, !prof !889, !llvm.loop !890

30:                                               ; preds = %22, %18
  %31 = phi i64 [ 1, %18 ], [ %26, %22 ]
  %32 = and i64 %31, %20
  %33 = tail call ptr @build_int_cst_type(ptr noundef %4, i64 noundef %32) #14
  br label %48

34:                                               ; preds = %2
  %35 = tail call ptr @build_int_cst(ptr noundef nonnull %4, i64 noundef 1) #14
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %42, %37 ], [ %0, %34 ]
  %39 = phi i32 [ %43, %37 ], [ %5, %34 ]
  %40 = phi ptr [ %41, %37 ], [ %35, %34 ]
  %41 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %40, ptr noundef %38, i32 noundef 0) #14
  %42 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %38, ptr noundef %38, i32 noundef 0) #14
  %43 = add i32 %39, -1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37, !llvm.loop !891

45:                                               ; preds = %37, %34
  %46 = phi ptr [ %35, %34 ], [ %41, %37 ]
  %47 = tail call ptr @int_const_binop(i32 noundef 89, ptr noundef %46, ptr noundef %1, i32 noundef 0) #14
  br label %48

48:                                               ; preds = %45, %30
  %49 = phi ptr [ %33, %30 ], [ %47, %45 ]
  ret ptr %49
}

; Function Attrs: optsize
declare i32 @multiple_of_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_fdiv_q(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_floor_log2(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cst_and_fits_in_hwi(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @number_of_iterations_lt_to_ne(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7) unnamed_addr #0 !prof !892 !PGOFuncName !893 {
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !579
  %12 = load ptr, ptr %4, align 8, !tbaa !614
  %13 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %11, ptr noundef %12, ptr noundef %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !614
  %15 = load i64, ptr %0, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %19 [
    i16 10, label %17
    i16 12, label %17
  ], !prof !894

17:                                               ; preds = %8, %8
  %18 = load ptr, ptr @sizetype_tab, align 16, !tbaa !614
  br label %19

19:                                               ; preds = %8, %17
  %20 = phi ptr [ %18, %17 ], [ %0, %8 ]
  %21 = load i64, ptr %13, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 23
  br i1 %23, label %24, label %154, !prof !895

24:                                               ; preds = %19
  %25 = tail call i32 @integer_nonzerop(ptr noundef nonnull %13) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !896

27:                                               ; preds = %24
  %28 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %13) #14
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %28, %27 ], [ %13, %24 ]
  %31 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef %30) #14
  call void @mpz_init(ptr noundef nonnull %9) #14
  %32 = call { i64, i64 } @tree_to_double_int(ptr noundef %30) #14
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  call void @mpz_set_double_int(ptr noundef nonnull %9, i64 %33, i64 %34, i8 noundef zeroext 1) #14
  call void @mpz_neg(ptr noundef nonnull %9, ptr noundef nonnull %9) #14
  %35 = call i32 @integer_zerop(ptr noundef %30) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60, !prof !897

37:                                               ; preds = %29
  %38 = load i64, ptr %0, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %40 [
    i16 10, label %60
    i16 12, label %60
  ], !prof !898

40:                                               ; preds = %37
  %41 = icmp eq i8 %6, 0
  br i1 %41, label %60, label %42, !prof !899

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !749
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !721
  %49 = call i32 @integer_nonzerop(ptr noundef %48) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  %53 = load i8, ptr %52, align 8, !tbaa !749
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !721
  %58 = call i32 @integer_nonzerop(ptr noundef %57) #14
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %46, %55, %51, %40, %29, %37, %37
  %61 = phi i1 [ false, %37 ], [ false, %37 ], [ false, %29 ], [ true, %40 ], [ false, %46 ], [ true, %51 ], [ %59, %55 ]
  %62 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !721
  %64 = call i32 @integer_nonzerop(ptr noundef %63) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %66, !prof !900

66:                                               ; preds = %60
  br i1 %61, label %67, label %76, !prof !901

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 14
  %69 = load ptr, ptr %68, align 8, !tbaa !579
  %70 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %20, ptr noundef %69, ptr noundef %31) #14
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %72 = load ptr, ptr %2, align 8, !tbaa !712
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %71, ptr noundef %72, ptr noundef %70) #14
  %74 = call i32 @integer_zerop(ptr noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %152, !prof !902

76:                                               ; preds = %67, %66
  %77 = phi ptr [ %14, %66 ], [ %73, %67 ]
  %78 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef %7) #14
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82, !prof !903

80:                                               ; preds = %76
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !614
  br label %129

82:                                               ; preds = %76
  %83 = load i64, ptr %0, align 8
  %84 = trunc i64 %83 to i16
  switch i16 %84, label %91 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !904

85:                                               ; preds = %82, %82
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %87 = load ptr, ptr %1, align 8, !tbaa !712
  %88 = load ptr, ptr %2, align 8, !tbaa !712
  %89 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %88, ptr noundef %31) #14
  %90 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %86, ptr noundef %87, ptr noundef %89) #14
  br label %129

91:                                               ; preds = %82
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %93 = load ptr, ptr %1, align 8, !tbaa !712
  %94 = load ptr, ptr %2, align 8, !tbaa !712
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %20, ptr noundef %94, ptr noundef %31) #14
  %96 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %92, ptr noundef %93, ptr noundef %95) #14
  br label %129

97:                                               ; preds = %60
  br i1 %61, label %98, label %107, !prof !845

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 13
  %100 = load ptr, ptr %99, align 8, !tbaa !579
  %101 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %20, ptr noundef %100, ptr noundef %31) #14
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %103 = load ptr, ptr %1, align 8, !tbaa !712
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %102, ptr noundef %103, ptr noundef %101) #14
  %105 = call i32 @integer_zerop(ptr noundef %104) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %152, !prof !845

107:                                              ; preds = %98, %97
  %108 = phi ptr [ %14, %97 ], [ %104, %98 ]
  %109 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef %7) #14
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113, !prof !845

111:                                              ; preds = %107
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !614
  br label %129

113:                                              ; preds = %107
  %114 = load i64, ptr %0, align 8
  %115 = trunc i64 %114 to i16
  switch i16 %115, label %123 [
    i16 10, label %116
    i16 12, label %116
  ]

116:                                              ; preds = %113, %113
  %117 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %118 = load ptr, ptr %1, align 8, !tbaa !712
  %119 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %20, ptr noundef %31) #14
  %120 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %118, ptr noundef %119) #14
  %121 = load ptr, ptr %2, align 8, !tbaa !712
  %122 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %117, ptr noundef %120, ptr noundef %121) #14
  br label %129

123:                                              ; preds = %113
  %124 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %125 = load ptr, ptr %1, align 8, !tbaa !712
  %126 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %20, ptr noundef %125, ptr noundef %31) #14
  %127 = load ptr, ptr %2, align 8, !tbaa !712
  %128 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %124, ptr noundef %126, ptr noundef %127) #14
  br label %129

129:                                              ; preds = %111, %123, %116, %80, %91, %85
  %130 = phi ptr [ %81, %80 ], [ %90, %85 ], [ %96, %91 ], [ %112, %111 ], [ %122, %116 ], [ %128, %123 ]
  %131 = phi ptr [ %77, %80 ], [ %77, %85 ], [ %77, %91 ], [ %108, %111 ], [ %108, %116 ], [ %108, %123 ]
  %132 = call i32 @integer_nonzerop(ptr noundef %131) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138, !prof !905

134:                                              ; preds = %129
  %135 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %136 = load ptr, ptr %3, align 8, !tbaa !701
  %137 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %135, ptr noundef %136, ptr noundef %131) #14
  store ptr %137, ptr %3, align 8, !tbaa !701
  br label %138

138:                                              ; preds = %134, %129
  %139 = call i32 @integer_zerop(ptr noundef %130) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146, !prof !905

141:                                              ; preds = %138
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %143 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !715
  %145 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %142, ptr noundef %144, ptr noundef %130) #14
  store ptr %145, ptr %143, align 8, !tbaa !715
  br label %146

146:                                              ; preds = %141, %138
  %147 = call { i64, i64 } @tree_to_double_int(ptr noundef %30) #14
  %148 = extractvalue { i64, i64 } %147, 0
  %149 = extractvalue { i64, i64 } %147, 1
  call fastcc void @bounds_add(ptr noundef %7, i64 %148, i64 %149, ptr noundef nonnull %0) #15
  %150 = load ptr, ptr %4, align 8, !tbaa !614
  %151 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %11, ptr noundef %150, ptr noundef %30) #14
  store ptr %151, ptr %4, align 8, !tbaa !614
  br label %152

152:                                              ; preds = %98, %67, %146
  %153 = phi i8 [ 1, %146 ], [ 0, %67 ], [ 0, %98 ]
  call void @mpz_clear(ptr noundef nonnull %9) #14
  br label %154

154:                                              ; preds = %19, %152
  %155 = phi i8 [ %153, %152 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  ret i8 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @assert_no_overflow_lt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !prof !906 !PGOFuncName !907 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !579
  %8 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !721
  %10 = tail call i32 @integer_nonzerop(ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12, !prof !908

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !749
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %81, !prof !909

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8, !tbaa !712
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 23
  br i1 %20, label %21, label %29, !prof !910

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !579
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %23) #14
  %25 = load ptr, ptr %1, align 8, !tbaa !712
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %25) #14
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %7, ptr noundef %24, ptr noundef %26) #14
  %28 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %7, ptr noundef %27, ptr noundef nonnull %4) #14
  br label %32

29:                                               ; preds = %16
  %30 = tail call ptr @build_int_cst(ptr noundef %7, i64 noundef 1) #14
  %31 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %7, ptr noundef nonnull %4, ptr noundef %30) #14
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi ptr [ %28, %21 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  br label %57

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  %37 = load i8, ptr %36, align 8, !tbaa !749
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %81, !prof !911

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !tbaa !712
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 23
  br i1 %43, label %44, label %51, !prof !912

44:                                               ; preds = %39
  %45 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef nonnull %40) #14
  %46 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !579
  %48 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %47) #14
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %7, ptr noundef %45, ptr noundef %48) #14
  %50 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %7, ptr noundef %49, ptr noundef nonnull %4) #14
  br label %54

51:                                               ; preds = %39
  %52 = tail call ptr @build_int_cst(ptr noundef %7, i64 noundef 1) #14
  %53 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %7, ptr noundef nonnull %4, ptr noundef %52) #14
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi ptr [ %50, %44 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  br label %57

57:                                               ; preds = %54, %32
  %58 = phi ptr [ %56, %54 ], [ %34, %32 ]
  %59 = phi ptr [ %55, %54 ], [ %33, %32 ]
  %60 = phi i32 [ 63, %54 ], [ 64, %32 ]
  %61 = phi ptr [ %1, %54 ], [ %2, %32 ]
  %62 = phi i32 [ 100, %54 ], [ 98, %32 ]
  %63 = load ptr, ptr %58, align 8, !tbaa !579
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %59) #14
  %65 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %60, ptr noundef %0, ptr noundef %63, ptr noundef %64) #14
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %67 = load ptr, ptr %61, align 8, !tbaa !712
  %68 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %62, ptr noundef %66, ptr noundef %67, ptr noundef %65) #14
  %69 = tail call i32 @integer_zerop(ptr noundef %68) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81, !prof !913

71:                                               ; preds = %57
  %72 = tail call i32 @integer_nonzerop(ptr noundef %68) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78, !prof !914

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %76 = load ptr, ptr %3, align 8, !tbaa !701
  %77 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %75, ptr noundef %76, ptr noundef %68) #14
  store ptr %77, ptr %3, align 8, !tbaa !701
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  store i8 1, ptr %79, align 8, !tbaa !749
  %80 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  store i8 1, ptr %80, align 8, !tbaa !749
  br label %81

81:                                               ; preds = %57, %35, %12, %78
  %82 = phi i8 [ 1, %78 ], [ 1, %12 ], [ 1, %35 ], [ 0, %57 ]
  ret i8 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assert_loop_rolls_lt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !prof !906 !PGOFuncName !915 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !614
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %9 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !721
  %11 = tail call i32 @integer_nonzerop(ptr noundef %10) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13, !prof !908

13:                                               ; preds = %5
  %14 = load ptr, ptr %9, align 8, !tbaa !721
  %15 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %14) #14
  br label %29

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !721
  %19 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %18) #14
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = tail call { i64, i64 } @double_int_sext(i64 %20, i64 %21, i32 noundef %24) #14
  %26 = extractvalue { i64, i64 } %25, 0
  %27 = extractvalue { i64, i64 } %25, 1
  %28 = tail call { i64, i64 } @double_int_neg(i64 %26, i64 %27) #14
  br label %29

29:                                               ; preds = %16, %13
  %30 = phi { i64, i64 } [ %15, %13 ], [ %28, %16 ]
  %31 = extractvalue { i64, i64 } %30, 1
  %32 = extractvalue { i64, i64 } %30, 0
  call void @mpz_init(ptr noundef nonnull %6) #14
  call void @mpz_set_double_int(ptr noundef nonnull %6, i64 %32, i64 %31, i8 noundef zeroext 1) #14
  call void @mpz_neg(ptr noundef nonnull %6, ptr noundef nonnull %6) #14
  call void @mpz_add_ui(ptr noundef nonnull %6, ptr noundef nonnull %6, i64 noundef 1) #14
  %33 = call i32 @mpz_cmp(ptr noundef nonnull %6, ptr noundef %4) #14
  %34 = icmp slt i32 %33, 1
  call void @mpz_init(ptr noundef nonnull %7) #14
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = call { i64, i64 } @double_int_mask(i32 noundef %37) #14
  %39 = extractvalue { i64, i64 } %38, 0
  %40 = extractvalue { i64, i64 } %38, 1
  call void @mpz_set_double_int(ptr noundef nonnull %7, i64 %39, i64 %40, i8 noundef zeroext 1) #14
  call void @mpz_add(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  %41 = getelementptr inbounds %struct.bounds, ptr %4, i64 0, i32 1
  %42 = call i32 @mpz_cmp(ptr noundef nonnull %41, ptr noundef nonnull %7) #14
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %51, label %44, !prof !916

44:                                               ; preds = %29
  %45 = load i64, ptr %0, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 10
  %49 = icmp eq i32 %47, 12
  %50 = or i1 %48, %49
  br label %51

51:                                               ; preds = %44, %29
  %52 = phi i1 [ true, %29 ], [ %50, %44 ]
  call void @mpz_clear(ptr noundef nonnull %6) #14
  call void @mpz_clear(ptr noundef nonnull %7) #14
  %53 = and i1 %34, %52
  br i1 %53, label %123, label %54, !prof !917

54:                                               ; preds = %51
  %55 = load i64, ptr %0, align 8
  %56 = trunc i64 %55 to i16
  switch i16 %56, label %59 [
    i16 10, label %57
    i16 12, label %57
  ], !prof !918

57:                                               ; preds = %54, %54
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !614
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %58, %57 ], [ %0, %54 ]
  %61 = load ptr, ptr %9, align 8, !tbaa !721
  %62 = call i32 @integer_nonzerop(ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64, !prof !919

64:                                               ; preds = %59
  %65 = load ptr, ptr %9, align 8, !tbaa !721
  %66 = call ptr @build_int_cst(ptr noundef %60, i64 noundef 1) #14
  %67 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %60, ptr noundef %65, ptr noundef %66) #14
  %68 = load i64, ptr %0, align 8
  %69 = trunc i64 %68 to i16
  switch i16 %69, label %70 [
    i16 10, label %77
    i16 12, label %77
  ], !prof !920

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %72 = load ptr, ptr %71, align 8, !tbaa !579
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %60, ptr noundef %72, ptr noundef %67) #14
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %75 = load ptr, ptr %1, align 8, !tbaa !712
  %76 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %74, ptr noundef %75, ptr noundef %73) #14
  br label %77

77:                                               ; preds = %64, %64, %70
  %78 = phi ptr [ %8, %64 ], [ %76, %70 ], [ %8, %64 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !712
  %80 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %79) #14
  %81 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %60, ptr noundef %80, ptr noundef %67) #14
  %82 = load ptr, ptr %2, align 8, !tbaa !712
  %83 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %82) #14
  br label %105

84:                                               ; preds = %59
  %85 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !721
  %87 = call ptr @build_int_cst(ptr noundef %60, i64 noundef 1) #14
  %88 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %60, ptr noundef %86, ptr noundef %87) #14
  %89 = load i64, ptr %0, align 8
  %90 = trunc i64 %89 to i16
  switch i16 %90, label %91 [
    i16 10, label %98
    i16 12, label %98
  ], !prof !921

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %93 = load ptr, ptr %92, align 8, !tbaa !579
  %94 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %60, ptr noundef %93, ptr noundef %88) #14
  %95 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %96 = load ptr, ptr %2, align 8, !tbaa !712
  %97 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %95, ptr noundef %96, ptr noundef %94) #14
  br label %98

98:                                               ; preds = %84, %84, %91
  %99 = phi ptr [ %8, %84 ], [ %97, %91 ], [ %8, %84 ]
  %100 = load ptr, ptr %1, align 8, !tbaa !712
  %101 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %100) #14
  %102 = load ptr, ptr %2, align 8, !tbaa !712
  %103 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %102) #14
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %60, ptr noundef %103, ptr noundef %88) #14
  br label %105

105:                                              ; preds = %98, %77
  %106 = phi ptr [ %83, %77 ], [ %104, %98 ]
  %107 = phi ptr [ %81, %77 ], [ %101, %98 ]
  %108 = phi ptr [ %78, %77 ], [ %99, %98 ]
  %109 = call i32 @integer_nonzerop(ptr noundef %108) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115, !prof !922

111:                                              ; preds = %105
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %113 = load ptr, ptr %3, align 8, !tbaa !701
  %114 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %112, ptr noundef %113, ptr noundef %108) #14
  store ptr %114, ptr %3, align 8, !tbaa !701
  br label %115

115:                                              ; preds = %111, %105
  br i1 %34, label %123, label %116, !prof !923

116:                                              ; preds = %115
  %117 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %118 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %117, ptr noundef %107, ptr noundef %106) #14
  %119 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %120 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !715
  %122 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %119, ptr noundef %121, ptr noundef %118) #14
  store ptr %122, ptr %120, align 8, !tbaa !715
  br label %123

123:                                              ; preds = %115, %116, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bounds_add(ptr noundef %0, i64 %1, i64 %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !924 !PGOFuncName !925 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @mpz_init(ptr noundef nonnull %5) #14
  call void @mpz_set_double_int(ptr noundef nonnull %5, i64 %1, i64 %2, i8 noundef zeroext 0) #14
  call void @mpz_init(ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1023
  %10 = call { i64, i64 } @double_int_mask(i32 noundef %9) #14
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  call void @mpz_set_double_int(ptr noundef nonnull %6, i64 %11, i64 %12, i8 noundef zeroext 1) #14
  %13 = getelementptr inbounds %struct.bounds, ptr %0, i64 0, i32 1
  call void @mpz_add(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %5) #14
  call void @mpz_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5) #14
  %14 = call i32 @mpz_cmp(ptr noundef nonnull %13, ptr noundef nonnull %6) #14
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17, !prof !926

16:                                               ; preds = %4
  call void @mpz_set(ptr noundef nonnull %13, ptr noundef nonnull %6) #14
  br label %17

17:                                               ; preds = %16, %4
  call void @mpz_neg(ptr noundef nonnull %6, ptr noundef nonnull %6) #14
  %18 = call i32 @mpz_cmp(ptr noundef %0, ptr noundef nonnull %6) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21, !prof !927

20:                                               ; preds = %17
  call void @mpz_set(ptr noundef %0, ptr noundef nonnull %6) #14
  br label %21

21:                                               ; preds = %20, %17
  call void @mpz_clear(ptr noundef nonnull %5) #14
  call void @mpz_clear(ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !928 !PGOFuncName !929 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #15
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #14
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !928 !PGOFuncName !930 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8, !prof !931

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !614
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !778
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !614
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_simplify_using_condition(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !932 !PGOFuncName !933 {
  %3 = tail call ptr @expand_simple_operations(ptr noundef %0) #15
  %4 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %3, ptr noundef %1) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !934 !PGOFuncName !935 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %121, label %7, !prof !936

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 56
  %9 = trunc i64 %3 to i16
  switch i16 %9, label %42 [
    i16 94, label %10
    i16 93, label %10
    i16 56, label %10
  ]

10:                                               ; preds = %7, %7, %7
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !579
  %13 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %12) #15
  %14 = load ptr, ptr %11, align 8, !tbaa !579
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %17, label %16, !prof !937

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi i8 [ 1, %16 ], [ 0, %10 ]
  %19 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !579
  %21 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %20) #15
  %22 = load ptr, ptr %19, align 8, !tbaa !579
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %25, !prof !937

24:                                               ; preds = %17
  br i1 %8, label %26, label %35, !prof !938

25:                                               ; preds = %17
  br i1 %8, label %26, label %39, !prof !938

26:                                               ; preds = %25, %24
  %27 = phi i8 [ 1, %25 ], [ %18, %24 ]
  %28 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !579
  %30 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %29) #15
  %31 = load ptr, ptr %28, align 8, !tbaa !579
  %32 = icmp eq ptr %31, %30
  %33 = icmp eq i8 %27, 0
  %34 = and i1 %32, %33
  br i1 %34, label %121, label %36, !prof !939

35:                                               ; preds = %24
  br i1 %15, label %121, label %39, !prof !940

36:                                               ; preds = %26
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %38 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %37, ptr noundef %13, ptr noundef %21, ptr noundef %30) #14
  br label %121

39:                                               ; preds = %25, %35
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %41 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %40, ptr noundef %13, ptr noundef %21) #14
  br label %121

42:                                               ; preds = %7
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 101
  br i1 %45, label %46, label %66, !prof !941

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !579
  %49 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !579
  %51 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %1, ptr noundef %48, ptr noundef %50) #15
  %52 = tail call i32 @integer_zerop(ptr noundef %51) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %121, !prof !942

54:                                               ; preds = %46
  %55 = tail call i32 @integer_nonzerop(ptr noundef %51) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %121, !prof !942

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %1, ptr noundef %50, ptr noundef %48) #15
  %59 = tail call i32 @integer_zerop(ptr noundef %58) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %121, !prof !942

61:                                               ; preds = %57
  %62 = tail call i32 @integer_nonzerop(ptr noundef %58) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %121, !prof !942

64:                                               ; preds = %61
  %65 = load i64, ptr %1, align 8
  br label %66

66:                                               ; preds = %64, %42
  %67 = phi i64 [ %65, %64 ], [ %3, %42 ]
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 101
  br i1 %69, label %70, label %84, !prof !943

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !579
  %73 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !579
  %75 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %72, ptr noundef %74) #15
  %76 = tail call i32 @integer_zerop(ptr noundef %75) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %121, !prof !944

78:                                               ; preds = %70
  %79 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %74, ptr noundef %72) #15
  %80 = tail call i32 @integer_zerop(ptr noundef %79) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %121, !prof !945

82:                                               ; preds = %78
  %83 = load i64, ptr %1, align 8
  br label %84

84:                                               ; preds = %82, %66
  %85 = phi i64 [ %83, %82 ], [ %67, %66 ]
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 102
  br i1 %87, label %88, label %104, !prof !946

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !579
  %91 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !579
  %93 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %90, ptr noundef %92) #15
  %94 = tail call i32 @integer_zerop(ptr noundef %93) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !947

96:                                               ; preds = %88
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !614
  br label %121

98:                                               ; preds = %88
  %99 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %92, ptr noundef %90) #15
  %100 = tail call i32 @integer_zerop(ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !948

102:                                              ; preds = %98
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !614
  br label %121

104:                                              ; preds = %98, %84
  %105 = tail call ptr @expand_simple_operations(ptr noundef nonnull %1) #15
  %106 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef nonnull %0) #14
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %108 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 94, ptr noundef %107, ptr noundef %106, ptr noundef %105) #14
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110, !prof !949

110:                                              ; preds = %104
  %111 = tail call i32 @integer_nonzerop(ptr noundef nonnull %108) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121, !prof !950

113:                                              ; preds = %110, %104
  %114 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %115 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 93, ptr noundef %114, ptr noundef nonnull %0, ptr noundef %105) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117, !prof !951

117:                                              ; preds = %113
  %118 = tail call i32 @integer_zerop(ptr noundef nonnull %115) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121, !prof !952

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %26, %35, %117, %110, %78, %70, %57, %61, %46, %54, %39, %36, %2, %120, %102, %96
  %122 = phi ptr [ %97, %96 ], [ %103, %102 ], [ %1, %120 ], [ %1, %2 ], [ %38, %36 ], [ %41, %39 ], [ %51, %54 ], [ %51, %46 ], [ %58, %61 ], [ %58, %57 ], [ %75, %70 ], [ %79, %78 ], [ %108, %110 ], [ %115, %117 ], [ %1, %35 ], [ %1, %26 ]
  ret ptr %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_replace_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !953 !PGOFuncName !954 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5, !prof !955

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %10, label %7, !prof !956

7:                                                ; preds = %5
  %8 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !957

10:                                               ; preds = %7, %5
  %11 = tail call ptr @unshare_expr(ptr noundef %2) #14
  br label %46

12:                                               ; preds = %7
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !573
  %17 = add i32 %16, -4
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %19, label %46, !prof !958

19:                                               ; preds = %12
  %20 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22, !prof !959

22:                                               ; preds = %19
  %23 = zext i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %38
  %25 = phi i64 [ 0, %22 ], [ %40, %38 ]
  %26 = phi ptr [ null, %22 ], [ %39, %38 ]
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !579
  %29 = tail call fastcc ptr @simplify_replace_tree(ptr noundef %28, ptr noundef %1, ptr noundef %2) #15
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %38, label %31, !prof !960

31:                                               ; preds = %24
  %32 = icmp eq ptr %26, null
  br i1 %32, label %33, label %35, !prof !961

33:                                               ; preds = %31
  %34 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #14
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %26, %31 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3, i64 %25
  store ptr %29, ptr %37, align 8, !tbaa !579
  br label %38

38:                                               ; preds = %24, %35
  %39 = phi ptr [ %26, %24 ], [ %36, %35 ]
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %24, !prof !962, !llvm.loop !963

42:                                               ; preds = %38
  %43 = icmp eq ptr %39, null
  br i1 %43, label %46, label %44, !prof !964

44:                                               ; preds = %42
  %45 = tail call ptr @fold(ptr noundef nonnull %39) #14
  br label %46

46:                                               ; preds = %19, %44, %42, %12, %3, %10
  %47 = phi ptr [ %11, %10 ], [ null, %3 ], [ %0, %12 ], [ %45, %44 ], [ %0, %42 ], [ %0, %19 ]
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_loop_niter(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !965 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #14
  store ptr %6, ptr %3, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #16
  store ptr null, ptr %1, align 8, !tbaa !614
  %7 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #15, !range !966
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9, !prof !967

9:                                                ; preds = %2, %46
  %10 = phi i32 [ %48, %46 ], [ 0, %2 ]
  %11 = phi ptr [ %47, %46 ], [ null, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !614
  %13 = load ptr, ptr %12, align 8, !tbaa !621
  %14 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %13) #14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %46, label %16, !prof !968

16:                                               ; preds = %9
  %17 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %5, i8 noundef zeroext 0) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %19, !prof !969

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !715
  %22 = tail call i32 @integer_nonzerop(ptr noundef %21) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !970

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !614
  %26 = tail call ptr @build_int_cst(ptr noundef %25, i64 noundef 0) #14
  store ptr %12, ptr %1, align 8, !tbaa !614
  br label %51

27:                                               ; preds = %19
  %28 = tail call i32 @integer_zerop(ptr noundef %21) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30, !prof !971

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !716
  %33 = icmp eq ptr %11, null
  br i1 %33, label %45, label %34, !prof !972

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 23
  br i1 %37, label %38, label %46, !prof !973

38:                                               ; preds = %34
  %39 = load i64, ptr %11, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %45, !prof !974

42:                                               ; preds = %38
  %43 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %32, ptr noundef nonnull %11) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !975

45:                                               ; preds = %42, %38, %30
  store ptr %12, ptr %1, align 8, !tbaa !614
  br label %46

46:                                               ; preds = %45, %42, %34, %27, %16, %9
  %47 = phi ptr [ %11, %34 ], [ %11, %42 ], [ %11, %27 ], [ %11, %16 ], [ %11, %9 ], [ %32, %45 ]
  %48 = add i32 %10, 1
  %49 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %6, i32 noundef %48, ptr noundef nonnull %4) #15, !range !966
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %9, !prof !976, !llvm.loop !977

51:                                               ; preds = %46, %2, %24
  %52 = phi ptr [ %26, %24 ], [ null, %2 ], [ %47, %46 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #15
  %53 = icmp eq ptr %52, null
  %54 = load ptr, ptr @chrec_dont_know, align 8
  %55 = select i1 %53, ptr %54, ptr %52, !prof !978
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %55
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !979 !PGOFuncName !980 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !981

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !645
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !982

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !614
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !614
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #11 !prof !983 !PGOFuncName !984 {
  %2 = load ptr, ptr %0, align 8, !tbaa !614
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !985

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !614
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @finite_loop_p(ptr noundef %0) local_unnamed_addr #0 !prof !986 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #16
  %5 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !573
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64, !prof !987

7:                                                ; preds = %1
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !614
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 1048576
  %11 = icmp ne i64 %10, 0
  %12 = getelementptr inbounds %struct.tree_function_decl, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 134217728
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %11, i1 true, i1 %15
  %17 = and i32 %13, 268435456
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %30, !prof !988

20:                                               ; preds = %7
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23, !prof !989

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %0, align 8, !tbaa !764
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.29, i32 noundef %28) #15
  br label %64

30:                                               ; preds = %7
  %31 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #14
  store ptr %31, ptr %2, align 8, !tbaa !614
  %32 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %3) #15, !range !966
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %34, !prof !990

34:                                               ; preds = %30, %58
  %35 = phi i32 [ %59, %58 ], [ 0, %30 ]
  %36 = load ptr, ptr %3, align 8, !tbaa !614
  %37 = load ptr, ptr %36, align 8, !tbaa !621
  %38 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %37) #14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %58, label %40, !prof !991

40:                                               ; preds = %34
  %41 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %36, ptr noundef nonnull %4, i8 noundef zeroext 0) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43, !prof !992

43:                                               ; preds = %40
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46, !prof !993

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %0, align 8, !tbaa !764
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.30, i32 noundef %51) #15
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %54 = getelementptr inbounds %struct.tree_niter_desc, ptr %4, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !716
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef %55, i32 noundef 2) #14
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %57 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 7, i64 1, ptr %56)
  br label %62

58:                                               ; preds = %40, %34
  %59 = add i32 %35, 1
  %60 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %31, i32 noundef %59, ptr noundef nonnull %3) #15, !range !966
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %34, !prof !994, !llvm.loop !995

62:                                               ; preds = %58, %30, %43, %46, %50
  %63 = phi i8 [ 1, %50 ], [ 1, %46 ], [ 1, %43 ], [ 0, %30 ], [ 0, %58 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #15
  br label %64

64:                                               ; preds = %20, %23, %27, %1, %62
  %65 = phi i8 [ %63, %62 ], [ 1, %1 ], [ 1, %27 ], [ 1, %23 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i8 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_niter_by_eval(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !996 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = load ptr, ptr %1, align 8, !tbaa !621
  %7 = tail call ptr @last_stmt(ptr noundef %6) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !997

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %7) #15, !range !587
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %12, !prof !998

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !614
  br label %119

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %7) #15, !range !597
  %16 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !706
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !999

20:                                               ; preds = %14
  %21 = tail call i32 @invert_tree_comparison(i32 noundef %15, i8 noundef zeroext 0) #14
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = add i32 %23, -97
  %25 = icmp ult i32 %24, 6
  br i1 %25, label %26, label %30, !prof !1000

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %7) #15
  store ptr %27, ptr %3, align 16, !tbaa !614
  %28 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %7) #15
  %29 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !614
  br label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !614
  br label %119

32:                                               ; preds = %26, %60
  %33 = phi i1 [ true, %26 ], [ false, %60 ]
  %34 = phi i64 [ 0, %26 ], [ 1, %60 ]
  %35 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !614
  %37 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %36) #14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39, !prof !1001

39:                                               ; preds = %32
  %40 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %34
  store ptr %36, ptr %40, align 8, !tbaa !614
  %41 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %34
  store ptr null, ptr %41, align 8, !tbaa !614
  store ptr null, ptr %35, align 8, !tbaa !614
  br label %60

42:                                               ; preds = %32
  %43 = tail call fastcc ptr @get_base_for(ptr noundef %0, ptr noundef %36) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47, !prof !1002

45:                                               ; preds = %42
  %46 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !614
  br label %119

47:                                               ; preds = %42
  %48 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !1003
  %51 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %43, i32 noundef %50) #15
  %52 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %51) #15
  %53 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %34
  store ptr %52, ptr %53, align 8, !tbaa !614
  %54 = tail call ptr @loop_latch_edge(ptr noundef %0) #14
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !1003
  %57 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %43, i32 noundef %56) #15
  %58 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %57) #15
  %59 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %34
  store ptr %58, ptr %59, align 8, !tbaa !614
  br label %60

60:                                               ; preds = %39, %47
  br i1 %33, label %32, label %61, !prof !1004, !llvm.loop !1005

61:                                               ; preds = %60
  tail call void @fold_defer_overflow_warnings() #14
  %62 = load ptr, ptr @compiler_params, align 8, !tbaa !614
  %63 = getelementptr inbounds %struct.param_info, ptr %62, i64 37, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !1006
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %117, label %66, !prof !571

66:                                               ; preds = %61
  %67 = load ptr, ptr %3, align 16, !tbaa !614
  %68 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  br label %71

71:                                               ; preds = %66, %111
  %72 = phi i32 [ 0, %66 ], [ %112, %111 ]
  %73 = load ptr, ptr %4, align 16, !tbaa !614
  %74 = tail call fastcc ptr @get_val_for(ptr noundef %67, ptr noundef %73) #15
  %75 = load ptr, ptr %70, align 8, !tbaa !614
  %76 = tail call fastcc ptr @get_val_for(ptr noundef %69, ptr noundef %75) #15
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %78 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %23, ptr noundef %77, ptr noundef %74, ptr noundef %76) #14
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81, !prof !1008

80:                                               ; preds = %81, %71
  br label %99

81:                                               ; preds = %71
  %82 = tail call i32 @integer_zerop(ptr noundef nonnull %78) #14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %80, label %84, !prof !1009

84:                                               ; preds = %81
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87, !prof !1010

87:                                               ; preds = %84
  %88 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %0, align 8, !tbaa !764
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %85, ptr noundef nonnull @.str.32, i32 noundef %92, i32 noundef %72) #15
  br label %94

94:                                               ; preds = %91, %87, %84
  %95 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !614
  %96 = zext i32 %72 to i64
  %97 = tail call ptr @build_int_cst(ptr noundef %95, i64 noundef %96) #14
  br label %119

98:                                               ; preds = %99
  br i1 %100, label %99, label %111, !prof !1011, !llvm.loop !1012

99:                                               ; preds = %80, %98
  %100 = phi i1 [ false, %98 ], [ true, %80 ]
  %101 = phi i64 [ 1, %98 ], [ 0, %80 ]
  %102 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !614
  %104 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %101
  %105 = load ptr, ptr %104, align 8, !tbaa !614
  %106 = tail call fastcc ptr @get_val_for(ptr noundef %103, ptr noundef %105) #15
  store ptr %106, ptr %104, align 8, !tbaa !614
  %107 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %106) #14
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %98, !prof !1013

109:                                              ; preds = %99
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  %110 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !614
  br label %119

111:                                              ; preds = %98
  %112 = add nuw i32 %72, 1
  %113 = load ptr, ptr @compiler_params, align 8, !tbaa !614
  %114 = getelementptr inbounds %struct.param_info, ptr %113, i64 37, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !1006
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %71, label %117, !prof !1014, !llvm.loop !1015

117:                                              ; preds = %111, %61
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  %118 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !614
  br label %119

119:                                              ; preds = %117, %109, %94, %45, %30, %12
  %120 = phi ptr [ %13, %12 ], [ %31, %30 ], [ %46, %45 ], [ %97, %94 ], [ %110, %109 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %120
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_base_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1016 !PGOFuncName !1017 {
  %3 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %29, !prof !1018

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr noundef %1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !1019

8:                                                ; preds = %5
  %9 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !1003
  %12 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %6, i32 noundef %11) #15
  %13 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %12) #15
  %14 = tail call ptr @loop_latch_edge(ptr noundef %0) #14
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !1003
  %17 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %6, i32 noundef %16) #15
  %18 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %17) #15
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %29, !prof !1020

22:                                               ; preds = %8
  %23 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %13) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !1021

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr noundef nonnull %18) #15
  %27 = icmp eq ptr %26, %6
  %28 = select i1 %27, ptr %6, ptr null, !prof !1022
  br label %29

29:                                               ; preds = %25, %22, %8, %5, %2
  %30 = phi ptr [ null, %2 ], [ null, %5 ], [ null, %8 ], [ null, %22 ], [ %28, %25 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_val_for(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1023 !PGOFuncName !1024 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = phi ptr [ %0, %2 ], [ %23, %22 ]
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !1025

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2107, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %4, null
  br i1 %9, label %32, label %10, !prof !1026

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !579
  %13 = tail call fastcc i32 @gimple_code(ptr noundef %12) #15, !range !587
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %32, label %15, !prof !1027

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %12) #15, !range !637
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !1028

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2116, ptr noundef nonnull @.str.1) #14
  br label %19

19:                                               ; preds = %15, %18
  %20 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %12) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !1029

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  br label %3

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %12) #15, !range !587
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %40, !prof !1028

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %34, label %40

32:                                               ; preds = %64, %58, %10, %8, %34
  %33 = phi ptr [ %39, %34 ], [ %63, %58 ], [ null, %64 ], [ %1, %10 ], [ %1, %8 ]
  ret ptr %33

34:                                               ; preds = %27
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %12) #15, !range !597
  %36 = tail call fastcc ptr @gimple_expr_type(ptr noundef %12) #15
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  %38 = tail call fastcc ptr @get_val_for(ptr noundef %37, ptr noundef %1) #15
  %39 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %35, ptr noundef %36, ptr noundef %38) #14
  br label %32

40:                                               ; preds = %27, %24
  %41 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %12) #15, !range !587
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %64, !prof !1029

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %12) #15
  %46 = load i64, ptr %44, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %51, !prof !1029

49:                                               ; preds = %43
  %50 = tail call fastcc ptr @get_val_for(ptr noundef nonnull %44, ptr noundef %1) #15
  br label %58

51:                                               ; preds = %43
  %52 = load i64, ptr %45, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call fastcc ptr @get_val_for(ptr noundef nonnull %45, ptr noundef %1) #15
  br label %58

57:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2139, ptr noundef nonnull @.str.1) #14
  br label %58

58:                                               ; preds = %55, %57, %49
  %59 = phi ptr [ %50, %49 ], [ %44, %55 ], [ %44, %57 ]
  %60 = phi ptr [ %45, %49 ], [ %56, %55 ], [ %45, %57 ]
  %61 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %12) #15, !range !597
  %62 = tail call fastcc ptr @gimple_expr_type(ptr noundef %12) #15
  %63 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %61, ptr noundef %62, ptr noundef %59, ptr noundef %60) #14
  br label %32

64:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2144, ptr noundef nonnull @.str.1) #14
  br label %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1030 !PGOFuncName !1031 {
  br label %3

3:                                                ; preds = %35, %2
  %4 = phi ptr [ %1, %2 ], [ %36, %35 ]
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !579
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9, !prof !1032

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %7) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12, !prof !1033

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_code(ptr noundef %6) #15, !range !587
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %38 [
    i8 16, label %15
    i8 6, label %20
  ], !prof !1034

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !777
  %18 = icmp eq ptr %7, %17
  %19 = select i1 %18, ptr %6, ptr null, !prof !1035
  br label %38

20:                                               ; preds = %12
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %6) #15, !range !597
  %22 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %6) #15, !range !637
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %38, !prof !1036

24:                                               ; preds = %20
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !573
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %38, label %29, !prof !1037

29:                                               ; preds = %24
  %30 = icmp eq i32 %21, 121
  br i1 %30, label %31, label %35, !prof !1038

31:                                               ; preds = %29
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %6) #15
  %33 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %32) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35, !prof !1039

35:                                               ; preds = %31, %29
  %36 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %6) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %3, !prof !1040

38:                                               ; preds = %12, %35, %20, %24, %31, %3, %9, %15
  %39 = phi ptr [ %19, %15 ], [ null, %9 ], [ null, %3 ], [ null, %31 ], [ null, %24 ], [ null, %20 ], [ null, %35 ], [ null, %12 ]
  ret ptr %39
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1041 !PGOFuncName !1042 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !637
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !1043

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #15
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1044 !PGOFuncName !1045 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #15
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !1046

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #15
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #15
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3, !prof !1040
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1047 !PGOFuncName !1048 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1049 !PGOFuncName !1050 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !637
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1051

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !579
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !1044 !PGOFuncName !1052 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !1053
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1055 !PGOFuncName !1056 {
  %2 = load i8, ptr %0, align 8, !tbaa !1057
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #6 !prof !1055 !PGOFuncName !1058 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1059
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1060

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #15
  %8 = load ptr, ptr %3, align 8, !tbaa !1061
  store ptr %8, ptr %2, align 8, !tbaa !1059
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1063
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1064

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1065
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #15
  %17 = load ptr, ptr %11, align 8, !tbaa !1067
  store ptr %17, ptr %10, align 8, !tbaa !1063
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1057
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !1044 !PGOFuncName !1068 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !1063
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !1059
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7, !prof !1069

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1046

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !1061
  store ptr %11, ptr %5, align 8, !tbaa !1059
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !1057
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1044 !PGOFuncName !1070 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !637
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1069

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !579
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !805 !PGOFuncName !1071 {
  %2 = load ptr, ptr %0, align 8, !tbaa !614
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1072 !PGOFuncName !1073 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 !prof !1074 !PGOFuncName !1075 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !597
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !587
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !1076 !PGOFuncName !1077 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1078

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #15
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !597
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1028

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !579
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #14
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !579
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !614
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !805 !PGOFuncName !1079 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !579
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !579
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !579
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !805 !PGOFuncName !1080 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_loop_niter_by_eval(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !1081 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #14
  store ptr %5, ptr %3, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr null, ptr %1, align 8, !tbaa !614
  %6 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !573
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !1082

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #15
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !614
  br label %43

13:                                               ; preds = %8, %2
  %14 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #15, !range !966
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16, !prof !1083

16:                                               ; preds = %13, %33
  %17 = phi ptr [ %34, %33 ], [ null, %13 ]
  %18 = phi i32 [ %35, %33 ], [ 0, %13 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !614
  %20 = load ptr, ptr %19, align 8, !tbaa !621
  %21 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %20) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23, !prof !1084

23:                                               ; preds = %16
  %24 = tail call ptr @loop_niter_by_eval(ptr noundef %0, ptr noundef nonnull %19) #15
  %25 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %24) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33, !prof !1085

27:                                               ; preds = %23
  %28 = icmp eq ptr %17, null
  br i1 %28, label %32, label %29, !prof !1086

29:                                               ; preds = %27
  %30 = tail call i32 @tree_int_cst_lt(ptr noundef %24, ptr noundef nonnull %17) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %27
  store ptr %19, ptr %1, align 8, !tbaa !614
  br label %33

33:                                               ; preds = %29, %23, %16, %32
  %34 = phi ptr [ %17, %23 ], [ %24, %32 ], [ %17, %29 ], [ %17, %16 ]
  %35 = add i32 %18, 1
  %36 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef %35, ptr noundef nonnull %4) #15, !range !966
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %16, !prof !1087, !llvm.loop !1088

38:                                               ; preds = %33, %13
  %39 = phi ptr [ null, %13 ], [ %34, %33 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #15
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr @chrec_dont_know, align 8
  %42 = select i1 %40, ptr %41, ptr %39, !prof !1089
  br label %43

43:                                               ; preds = %38, %11
  %44 = phi ptr [ %42, %38 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %44
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @array_at_struct_end_p(ptr noundef %0) local_unnamed_addr #0 !prof !1090 {
  %2 = tail call ptr @get_base_address(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4, !prof !1091

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -47
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %43, !prof !1092

10:                                               ; preds = %4
  %11 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #15, !range !637
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13, !prof !1093

13:                                               ; preds = %10, %32
  %14 = phi ptr [ %16, %32 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !579
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 41
  br i1 %19, label %20, label %32, !prof !1094

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !579
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 17
  br i1 %25, label %32, label %26, !prof !1095

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !579
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !579
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %43, !prof !1096

32:                                               ; preds = %13, %26, %20
  %33 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %16) #15, !range !637
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %13, !prof !1097, !llvm.loop !1098

35:                                               ; preds = %32, %10
  %36 = phi ptr [ %0, %10 ], [ %16, %32 ]
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -47
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %43, label %42, !prof !1099

42:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2654, ptr noundef nonnull @.str.1) #14
  br label %43

43:                                               ; preds = %26, %35, %4, %42, %1
  %44 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 1, %35 ], [ 1, %42 ], [ 0, %26 ]
  ret i8 %44
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1100 !PGOFuncName !1101 {
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
  ], !prof !1102

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_numbers_of_iterations_loop(ptr noundef %0) local_unnamed_addr #0 !prof !1103 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.tree_niter_desc, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 4, !tbaa !1104
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %74, !prof !1105

8:                                                ; preds = %1
  store i32 1, ptr %5, align 4, !tbaa !1104
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  store i8 0, ptr %9, align 8, !tbaa !1106
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  store i8 0, ptr %10, align 1, !tbaa !1107
  %11 = tail call ptr @get_loop_exit_edges(ptr noundef nonnull %0) #14
  store ptr %11, ptr %2, align 8, !tbaa !614
  %12 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #15, !range !966
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14, !prof !1108

14:                                               ; preds = %8, %40
  %15 = phi i32 [ %41, %40 ], [ 0, %8 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !614
  %17 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %3, i8 noundef zeroext 0) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %40, label %19, !prof !1109

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %20, align 8, !tbaa !716
  %23 = load ptr, ptr %21, align 8, !tbaa !715
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %32, label %27, !prof !1110

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !579
  %30 = tail call ptr @build_int_cst(ptr noundef %29, i64 noundef 0) #14
  %31 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %29, ptr noundef nonnull %23, ptr noundef %30, ptr noundef %22) #14
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi ptr [ %31, %27 ], [ %22, %19 ]
  %34 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %35 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  %36 = load ptr, ptr %16, align 8, !tbaa !621
  %37 = tail call ptr @last_stmt(ptr noundef %36) #14
  %38 = load i64, ptr %34, align 8
  %39 = load i64, ptr %35, align 8
  tail call fastcc void @record_estimate(ptr noundef %0, ptr noundef %33, i64 %38, i64 %39, ptr noundef %37, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %40

40:                                               ; preds = %14, %32
  %41 = add i32 %15, 1
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %11, i32 noundef %41, ptr noundef nonnull %4) #15, !range !966
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %14, !prof !1111, !llvm.loop !1112

44:                                               ; preds = %40, %8
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #15
  tail call fastcc void @infer_loop_bounds_from_undefined(ptr noundef %0) #15
  %45 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !777
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 8
  %48 = load i64, ptr %47, align 8, !tbaa !1113
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50, !prof !1114

50:                                               ; preds = %44
  %51 = tail call i64 @expected_loop_iterations_unbounded(ptr noundef nonnull %0) #14
  %52 = add nsw i64 %51, 1
  %53 = tail call fastcc { i64, i64 } @gcov_type_to_double_int(i64 noundef %52) #15
  %54 = extractvalue { i64, i64 } %53, 0
  %55 = extractvalue { i64, i64 } %53, 1
  tail call fastcc void @record_niter_bound(ptr noundef nonnull %0, i64 %54, i64 %55, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i8, ptr %9, align 8, !tbaa !1106
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %74, label %59, !prof !1115

59:                                               ; preds = %56
  %60 = load i8, ptr %10, align 1, !tbaa !1107
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62, !prof !1116

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %64 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %65 = load i64, ptr %63, align 8
  %66 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %64, align 8
  %69 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = tail call i32 @double_int_ucmp(i64 %65, i64 %67, i64 %68, i64 %70) #14
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74, !prof !1117

73:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false), !tbaa.struct !741
  br label %74

74:                                               ; preds = %56, %59, %62, %73, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_estimate(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !1118 !PGOFuncName !1119 {
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11, !prof !1120

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = icmp eq i8 %5, 0
  %17 = select i1 %16, ptr @.str.28, ptr @.str.35
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.34, ptr noundef nonnull %17) #15
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !614
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %4, i32 noundef 0, i32 noundef 2) #14
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %21 = icmp eq i8 %7, 0
  %22 = select i1 %21, ptr @.str.37, ptr @.str.28
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.36, ptr noundef nonnull %22) #15
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !614
  tail call void @print_generic_expr(ptr noundef %24, ptr noundef %1, i32 noundef 2) #14
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %26 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 13, i64 1, ptr %25)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !614
  tail call void @dump_double_int(ptr noundef %27, i64 %2, i64 %3, i8 noundef zeroext 1) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %29 = load i32, ptr %0, align 8, !tbaa !764
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %29) #15
  br label %31

31:                                               ; preds = %15, %11, %8
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  %35 = select i1 %34, i8 %6, i8 0, !prof !1121
  %36 = or i8 %35, %7
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %38, !prof !1122

38:                                               ; preds = %31
  %39 = icmp eq i8 %7, 0
  br i1 %39, label %48, label %40, !prof !1123

40:                                               ; preds = %38
  %41 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #14
  %42 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 1
  store i64 %2, ptr %42, align 8, !tbaa.struct !741
  %43 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 1, i32 1
  store i64 %3, ptr %43, align 8, !tbaa.struct !742
  store ptr %4, ptr %41, align 8, !tbaa !1124
  %44 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 2
  store i8 %5, ptr %44, align 8, !tbaa !1126
  %45 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !1127
  %47 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !1128
  store ptr %41, ptr %45, align 8, !tbaa !1127
  br label %48

48:                                               ; preds = %40, %38
  %49 = tail call ptr @single_exit(ptr noundef %0) #14
  %50 = icmp eq i8 %5, 0
  br i1 %50, label %51, label %59, !prof !1129

51:                                               ; preds = %48
  %52 = icmp eq ptr %49, null
  br i1 %52, label %58, label %53, !prof !1130

53:                                               ; preds = %51
  %54 = load ptr, ptr %49, align 8, !tbaa !621
  %55 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #15
  %56 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %54, ptr noundef %55) #14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59, !prof !1131

58:                                               ; preds = %53, %51
  br label %59

59:                                               ; preds = %48, %53, %58
  %60 = phi i64 [ 2, %58 ], [ 1, %53 ], [ 1, %48 ]
  %61 = tail call fastcc i64 @shwi_to_double_int(i64 noundef %60) #15
  %62 = tail call { i64, i64 } @double_int_add(i64 %2, i64 %3, i64 %61, i64 0) #14
  %63 = extractvalue { i64, i64 } %62, 0
  %64 = extractvalue { i64, i64 } %62, 1
  %65 = tail call i32 @double_int_ucmp(i64 %63, i64 %64, i64 %61, i64 0) #14
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %68, label %67, !prof !1132

67:                                               ; preds = %59
  tail call fastcc void @record_niter_bound(ptr noundef %0, i64 %63, i64 %64, i8 noundef zeroext %35, i8 noundef zeroext %7) #15
  br label %68

68:                                               ; preds = %59, %31, %67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_undefined(ptr noundef %0) unnamed_addr #0 !prof !1133 !PGOFuncName !1134 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !662
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7, !prof !1108

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi i64 [ 0, %7 ], [ %26, %25 ]
  %11 = getelementptr inbounds ptr, ptr %3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !614
  %13 = load ptr, ptr %8, align 8, !tbaa !699
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %13, ptr noundef %12) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %12) #15
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !637
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25, !prof !1135

17:                                               ; preds = %9
  %18 = icmp eq i8 %14, 0
  br label %19

19:                                               ; preds = %17, %22
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  tail call fastcc void @infer_loop_bounds_from_array(ptr noundef %0, ptr noundef %20, i8 noundef zeroext %14) #15
  br i1 %18, label %22, label %21, !prof !1136

21:                                               ; preds = %19
  tail call fastcc void @infer_loop_bounds_from_signedness(ptr noundef %0, ptr noundef %20) #15
  br label %22

22:                                               ; preds = %21, %19
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !637
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %19, label %25, !prof !1137, !llvm.loop !1138

25:                                               ; preds = %22, %9
  %26 = add nuw nsw i64 %10, 1
  %27 = load i32, ptr %4, align 4, !tbaa !662
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %9, label %30, !prof !1139, !llvm.loop !1140

30:                                               ; preds = %25, %1
  tail call void @free(ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare i64 @expected_loop_iterations_unbounded(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @gcov_type_to_double_int(i64 noundef %0) unnamed_addr #5 !prof !805 !PGOFuncName !1141 {
  %2 = ashr i64 %0, 63
  %3 = insertvalue { i64, i64 } poison, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_niter_bound(ptr nocapture noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !1118 !PGOFuncName !1142 {
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %21, label %7, !prof !1123

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  %9 = load i8, ptr %8, align 8, !tbaa !1106
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11, !prof !1143

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call i32 @double_int_ucmp(i64 %1, i64 %2, i64 %13, i64 %15) #14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21, !prof !1144

18:                                               ; preds = %11, %7
  store i8 1, ptr %8, align 8, !tbaa !1106
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  store i64 %1, ptr %19, align 8, !tbaa.struct !741
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  store i64 %2, ptr %20, align 8, !tbaa.struct !742
  br label %21

21:                                               ; preds = %18, %11, %5
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %37, label %23, !prof !1145

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  %25 = load i8, ptr %24, align 1, !tbaa !1107
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27, !prof !1146

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = tail call i32 @double_int_ucmp(i64 %1, i64 %2, i64 %29, i64 %31) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37, !prof !1147

34:                                               ; preds = %27, %23
  store i8 1, ptr %24, align 1, !tbaa !1107
  %35 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  store i64 %1, ptr %35, align 8, !tbaa.struct !741
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  store i64 %2, ptr %36, align 8, !tbaa.struct !742
  br label %37

37:                                               ; preds = %34, %27, %21
  ret void
}

; Function Attrs: optsize
declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_array(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1148 !PGOFuncName !1149 {
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #15, !range !637
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6, !prof !1150

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #15
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #15
  %9 = load i64, ptr %7, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !573
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %15, !prof !1151

14:                                               ; preds = %6
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext %2) #15
  br label %15

15:                                               ; preds = %14, %6
  %16 = load i64, ptr %8, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !573
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %50, !prof !1152

21:                                               ; preds = %15
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext %2) #15
  br label %50

22:                                               ; preds = %3
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %1) #15, !range !637
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %50, label %25, !prof !1153

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #15
  %27 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %1) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29, !prof !1154

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !573
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %36, !prof !1155

35:                                               ; preds = %29
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %27, i8 noundef zeroext %2) #15
  br label %36

36:                                               ; preds = %35, %29, %25
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %50, label %38, !prof !1156

38:                                               ; preds = %36, %47
  %39 = phi i32 [ %48, %47 ], [ 0, %36 ]
  %40 = tail call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %39) #15
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !573
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %47, !prof !1157

46:                                               ; preds = %38
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %40, i8 noundef zeroext %2) #15
  br label %47

47:                                               ; preds = %38, %46
  %48 = add nuw i32 %39, 1
  %49 = icmp eq i32 %48, %26
  br i1 %49, label %50, label %38, !prof !1158, !llvm.loop !1159

50:                                               ; preds = %47, %36, %15, %21, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_signedness(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1160 !PGOFuncName !1161 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %1) #15, !range !587
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %57, !prof !1162

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #15
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %57, !prof !1163

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !579
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -6
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %57, !prof !1164

18:                                               ; preds = %10
  %19 = and i64 %13, 2097152
  %20 = icmp eq i64 %19, 0
  %21 = load i32, ptr @flag_wrapv, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = load i32, ptr @flag_trapv, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = load i32, ptr @flag_strict_overflow, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %57, !prof !1165

30:                                               ; preds = %18
  %31 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef nonnull %6) #14
  %32 = tail call fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %31) #15
  %33 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %32) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %57, !prof !1166

35:                                               ; preds = %30
  %36 = load i32, ptr %0, align 8, !tbaa !764
  %37 = tail call ptr @initial_condition_in_loop_num(ptr noundef %32, i32 noundef %36) #14
  %38 = load i32, ptr %0, align 8, !tbaa !764
  %39 = tail call ptr @evolution_part_in_loop_num(ptr noundef %32, i32 noundef %38) #14
  %40 = icmp ne ptr %37, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %57, !prof !1167

43:                                               ; preds = %35
  %44 = load i64, ptr %39, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 23
  br i1 %46, label %47, label %57, !prof !1168

47:                                               ; preds = %43
  %48 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %37, ptr noundef null) #14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %57, !prof !1169

50:                                               ; preds = %47
  %51 = load i32, ptr %0, align 8, !tbaa !764
  %52 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %37, i32 noundef %51) #14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57, !prof !1169

54:                                               ; preds = %50
  %55 = tail call ptr @lower_bound_in_type(ptr noundef nonnull %12, ptr noundef nonnull %12) #14
  %56 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %12, ptr noundef nonnull %12) #14
  tail call fastcc void @record_nonwrapping_iv(ptr noundef nonnull %0, ptr noundef nonnull %37, ptr noundef nonnull %39, ptr noundef %1, ptr noundef %55, ptr noundef %56, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  br label %57

57:                                               ; preds = %10, %35, %43, %47, %50, %30, %18, %5, %2, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !1170 !PGOFuncName !1171 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1172 !PGOFuncName !1173 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ilb_data, align 8
  store ptr %2, ptr %5, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !1174
  %7 = getelementptr inbounds %struct.ilb_data, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !1176
  %8 = getelementptr inbounds %struct.ilb_data, ptr %6, i64 0, i32 2
  store i8 %3, ptr %8, align 8, !tbaa !1177
  %9 = call zeroext i8 @for_each_index(ptr noundef nonnull %5, ptr noundef nonnull @idx_infer_loop_bounds, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1178 !PGOFuncName !1179 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1180 !PGOFuncName !1181 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1180 !PGOFuncName !1182 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1183 !PGOFuncName !1184 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #15
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @idx_infer_loop_bounds(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !prof !1185 !PGOFuncName !1186 {
  %4 = load ptr, ptr %2, align 8, !tbaa !1174
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 45
  br i1 %7, label %8, label %77, !prof !1187

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ilb_data, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !1177
  %11 = tail call zeroext i8 @array_at_struct_end_p(ptr noundef nonnull %0) #15, !range !637
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 %10, i8 0, !prof !1188
  %14 = load ptr, ptr %1, align 8, !tbaa !614
  %15 = tail call ptr @analyze_scalar_evolution(ptr noundef %4, ptr noundef %14) #14
  %16 = tail call fastcc ptr @instantiate_parameters(ptr noundef %4, ptr noundef %15) #15
  %17 = tail call ptr @initial_condition(ptr noundef %16) #14
  %18 = load i32, ptr %4, align 8, !tbaa !764
  %19 = tail call ptr @evolution_part_in_loop_num(ptr noundef %16, i32 noundef %18) #14
  %20 = icmp ne ptr %17, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %77, !prof !1189

23:                                               ; preds = %8
  %24 = load i64, ptr %19, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %77, !prof !1190

27:                                               ; preds = %23
  %28 = tail call i32 @integer_zerop(ptr noundef nonnull %19) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %77, !prof !1191

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %17, ptr noundef null) #14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %77, !prof !1191

33:                                               ; preds = %30
  %34 = load i32, ptr %4, align 8, !tbaa !764
  %35 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %17, i32 noundef %34) #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %77, !prof !1191

37:                                               ; preds = %33
  %38 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #14
  %39 = tail call ptr @array_ref_up_bound(ptr noundef nonnull %0) #14
  %40 = load i64, ptr %38, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  %43 = icmp ne ptr %39, null
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %77, !prof !1192

45:                                               ; preds = %37
  %46 = load i64, ptr %39, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %77, !prof !1191

49:                                               ; preds = %45
  %50 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %19) #14
  %51 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !579
  br i1 %12, label %56, label %53, !prof !1193

53:                                               ; preds = %49
  %54 = tail call i32 @operand_equal_p(ptr noundef nonnull %38, ptr noundef nonnull %39, i32 noundef 0) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77, !prof !1194

56:                                               ; preds = %53, %49
  %57 = tail call i32 @int_fits_type_p(ptr noundef nonnull %39, ptr noundef %52) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59, !prof !1195

59:                                               ; preds = %56
  %60 = tail call i32 @int_fits_type_p(ptr noundef nonnull %38, ptr noundef %52) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62, !prof !1195

62:                                               ; preds = %59
  %63 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %38) #14
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %39) #14
  %65 = and i32 %50, 255
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr %64, ptr %63, !prof !1196
  %68 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 63, ptr noundef %52, ptr noundef %67, ptr noundef nonnull %19) #14
  %69 = tail call i32 @tree_int_cst_compare(ptr noundef %63, ptr noundef %68) #14
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %74, !prof !1197

71:                                               ; preds = %62
  %72 = tail call i32 @tree_int_cst_compare(ptr noundef %68, ptr noundef %64) #14
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %77, label %74, !prof !1198

74:                                               ; preds = %71, %62
  %75 = getelementptr inbounds %struct.ilb_data, ptr %2, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1176
  tail call fastcc void @record_nonwrapping_iv(ptr noundef nonnull %4, ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef %76, ptr noundef %63, ptr noundef %64, i8 noundef zeroext 1, i8 noundef zeroext %13) #15
  br label %77

77:                                               ; preds = %71, %56, %59, %53, %37, %45, %8, %23, %27, %30, %33, %3, %74
  ret i8 1
}

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @initial_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_contains_chrecs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_up_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_nonwrapping_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !1199 !PGOFuncName !1200 {
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !579
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %74, !prof !1201

14:                                               ; preds = %8
  %15 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %74, !prof !1201

17:                                               ; preds = %14
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20, !prof !1201

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !573
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %18)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %27 = load ptr, ptr %9, align 8, !tbaa !579
  tail call void @print_generic_expr(ptr noundef %26, ptr noundef %27, i32 noundef 2) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %29 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 2, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !614
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef nonnull %1, i32 noundef 2) #14
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %32 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 3, i64 1, ptr %31)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !614
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %2, i32 noundef 2) #14
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %35 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 40, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !614
  tail call void @print_gimple_stmt(ptr noundef %36, ptr noundef %3, i32 noundef 0, i32 noundef 2) #14
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !614
  %38 = load i32, ptr %0, align 8, !tbaa !764
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.44, i32 noundef %38) #15
  br label %40

40:                                               ; preds = %24, %20, %17
  %41 = tail call ptr @unsigned_type_for(ptr noundef %10) #14
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %1) #14
  %43 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %2) #14
  %44 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %43) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46, !prof !1202

46:                                               ; preds = %40
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef %4) #14
  %48 = load i64, ptr %42, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 23
  br i1 %50, label %53, label %51, !prof !1203

51:                                               ; preds = %46
  %52 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef %5) #14
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi ptr [ %52, %51 ], [ %42, %46 ]
  %55 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %41, ptr noundef %54, ptr noundef %47) #14
  %56 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %41, ptr noundef %43) #14
  br label %67

57:                                               ; preds = %40
  %58 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef %5) #14
  %59 = load i64, ptr %42, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %64, label %62, !prof !1204

62:                                               ; preds = %57
  %63 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef %4) #14
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi ptr [ %63, %62 ], [ %42, %57 ]
  %66 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %41, ptr noundef %58, ptr noundef %65) #14
  br label %67

67:                                               ; preds = %64, %53
  %68 = phi ptr [ %55, %53 ], [ %66, %64 ]
  %69 = phi ptr [ %56, %53 ], [ %43, %64 ]
  %70 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %41, ptr noundef %68, ptr noundef %69) #14
  %71 = tail call fastcc { i64, i64 } @derive_constant_upper_bound(ptr noundef %70) #15
  %72 = extractvalue { i64, i64 } %71, 0
  %73 = extractvalue { i64, i64 } %71, 1
  tail call fastcc void @record_estimate(ptr noundef %0, ptr noundef %70, i64 %72, i64 %73, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %6, i8 noundef zeroext %7) #15
  br label %74

74:                                               ; preds = %8, %14, %67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound(ptr noundef %0) unnamed_addr #0 !prof !1199 !PGOFuncName !1205 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @extract_ops_from_tree(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !579
  %7 = load ptr, ptr %3, align 8, !tbaa !614
  %8 = load i32, ptr %2, align 4, !tbaa !573
  %9 = load ptr, ptr %4, align 8, !tbaa !614
  %10 = call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret { i64, i64 } %10
}

; Function Attrs: optsize
declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1199 !PGOFuncName !1206 {
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %13, !prof !1207

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !579
  br label %15

13:                                               ; preds = %4
  %14 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %0, ptr noundef nonnull %0) #14
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %12, %10 ], [ %14, %13 ]
  %17 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %16) #14
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  switch i32 %2, label %143 [
    i32 23, label %20
    i32 116, label %22
    i32 113, label %22
    i32 63, label %42
    i32 66, label %42
    i32 64, label %42
    i32 69, label %109
    i32 76, label %109
    i32 89, label %124
    i32 141, label %133
  ], !prof !1208

20:                                               ; preds = %15
  %21 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %1) #14
  br label %143

22:                                               ; preds = %15, %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !579
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 2097152
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i64, ptr %0, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %1) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %143, label %35

35:                                               ; preds = %32, %28, %22
  %36 = tail call fastcc { i64, i64 } @derive_constant_upper_bound(ptr noundef nonnull %1) #15
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  %39 = tail call i32 @double_int_ucmp(i64 %18, i64 %19, i64 %37, i64 %38) #14
  %40 = icmp slt i32 %39, 0
  %41 = select i1 %40, { i64, i64 } %17, { i64, i64 } %36
  br label %143

42:                                               ; preds = %15, %15, %15
  %43 = load i64, ptr %3, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 23
  br i1 %45, label %46, label %143

46:                                               ; preds = %42
  %47 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef %1) #14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %143, label %49

49:                                               ; preds = %46
  %50 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %3) #14
  %51 = extractvalue { i64, i64 } %50, 0
  %52 = extractvalue { i64, i64 } %50, 1
  %53 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1023
  %56 = tail call { i64, i64 } @double_int_sext(i64 %51, i64 %52, i32 noundef %55) #14
  %57 = extractvalue { i64, i64 } %56, 0
  %58 = extractvalue { i64, i64 } %56, 1
  %59 = icmp eq i32 %2, 64
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = tail call { i64, i64 } @double_int_neg(i64 %57, i64 %58) #14
  %62 = extractvalue { i64, i64 } %61, 0
  %63 = extractvalue { i64, i64 } %61, 1
  br label %64

64:                                               ; preds = %60, %49
  %65 = phi i64 [ %62, %60 ], [ %57, %49 ]
  %66 = phi i64 [ %63, %60 ], [ %58, %49 ]
  %67 = tail call fastcc { i64, i64 } @derive_constant_upper_bound(ptr noundef %1) #15
  %68 = extractvalue { i64, i64 } %67, 0
  %69 = extractvalue { i64, i64 } %67, 1
  %70 = tail call zeroext i8 @double_int_negative_p(i64 %65, i64 %66) #14
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %64
  %73 = tail call { i64, i64 } @double_int_neg(i64 %65, i64 %66) #14
  %74 = extractvalue { i64, i64 } %73, 0
  %75 = extractvalue { i64, i64 } %73, 1
  %76 = tail call zeroext i8 @double_int_negative_p(i64 %74, i64 %75) #14
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %143

78:                                               ; preds = %72
  %79 = tail call { i64, i64 } @double_int_neg(i64 %74, i64 %75) #14
  %80 = extractvalue { i64, i64 } %79, 0
  %81 = extractvalue { i64, i64 } %79, 1
  %82 = tail call { i64, i64 } @double_int_add(i64 %18, i64 %19, i64 %80, i64 %81) #14
  %83 = extractvalue { i64, i64 } %82, 0
  %84 = extractvalue { i64, i64 } %82, 1
  %85 = tail call i32 @double_int_ucmp(i64 %68, i64 %69, i64 %83, i64 %84) #14
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %143, label %87

87:                                               ; preds = %78
  %88 = tail call { i64, i64 } @double_int_add(i64 %68, i64 %69, i64 %74, i64 %75) #14
  br label %143

89:                                               ; preds = %64
  %90 = tail call i32 @double_int_ucmp(i64 %68, i64 %69, i64 %65, i64 %66) #14
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %143, label %92

92:                                               ; preds = %89
  %93 = load i64, ptr %0, align 8
  %94 = and i64 %93, 2097152
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %98 = tail call ptr @double_int_to_tree(ptr noundef nonnull %0, i64 %65, i64 %66) #14
  %99 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 100, ptr noundef %97, ptr noundef %1, ptr noundef %98) #14
  %100 = icmp eq ptr %99, null
  br i1 %100, label %143, label %101

101:                                              ; preds = %96
  %102 = tail call i32 @integer_nonzerop(ptr noundef nonnull %99) #14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %101, %92
  %105 = tail call { i64, i64 } @double_int_neg(i64 %65, i64 %66) #14
  %106 = extractvalue { i64, i64 } %105, 0
  %107 = extractvalue { i64, i64 } %105, 1
  %108 = tail call { i64, i64 } @double_int_add(i64 %68, i64 %69, i64 %106, i64 %107) #14
  br label %143

109:                                              ; preds = %15, %15
  %110 = load i64, ptr %3, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 23
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %3) #14
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = tail call fastcc { i64, i64 } @derive_constant_upper_bound(ptr noundef %1) #15
  %118 = extractvalue { i64, i64 } %117, 0
  %119 = extractvalue { i64, i64 } %117, 1
  %120 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %3) #14
  %121 = extractvalue { i64, i64 } %120, 0
  %122 = extractvalue { i64, i64 } %120, 1
  %123 = tail call { i64, i64 } @double_int_udiv(i64 %118, i64 %119, i64 %121, i64 %122, i32 noundef 69) #14
  br label %143

124:                                              ; preds = %15
  %125 = load i64, ptr %3, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 23
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %3) #14
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %3) #14
  br label %143

133:                                              ; preds = %15
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !579
  %136 = tail call fastcc i32 @gimple_code(ptr noundef %135) #15, !range !587
  %137 = icmp eq i32 %136, 6
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %135) #15
  %140 = icmp eq ptr %139, %1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = tail call fastcc { i64, i64 } @derive_constant_upper_bound_assign(ptr noundef %135) #15
  br label %143

143:                                              ; preds = %15, %133, %138, %124, %128, %109, %113, %101, %96, %89, %78, %72, %42, %46, %35, %32, %141, %131, %116, %104, %87, %20
  %144 = phi { i64, i64 } [ %142, %141 ], [ %132, %131 ], [ %123, %116 ], [ %88, %87 ], [ %108, %104 ], [ %21, %20 ], [ %17, %32 ], [ %41, %35 ], [ %17, %46 ], [ %17, %42 ], [ %17, %72 ], [ %17, %78 ], [ %17, %89 ], [ %17, %96 ], [ %17, %101 ], [ %17, %113 ], [ %17, %109 ], [ %17, %128 ], [ %17, %124 ], [ %17, %138 ], [ %17, %133 ], [ %17, %15 ]
  ret { i64, i64 } %144
}

; Function Attrs: optsize
declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_expr_nonnegative_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_udiv(i64, i64, i64, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound_assign(ptr noundef %0) unnamed_addr #0 !prof !805 !PGOFuncName !1209 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !597
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %4 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #15
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !579
  %8 = tail call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %7, ptr noundef %3, i32 noundef %2, ptr noundef %4) #15
  ret { i64, i64 } %8
}

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_numbers_of_iterations() local_unnamed_addr #0 !prof !1210 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  tail call void @fold_defer_overflow_warnings() #14
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !614
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1211

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef nonnull %6) #15
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !614
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !1212, !llvm.loop !1213

9:                                                ; preds = %5, %0
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1214 !PGOFuncName !1215 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !1216
  %4 = load ptr, ptr @cfun, align 8, !tbaa !614
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !1218
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !1219

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !1220
  store ptr null, ptr %1, align 8, !tbaa !614
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #15
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr %0, align 8, !tbaa !1220
  %12 = load ptr, ptr @cfun, align 8, !tbaa !614
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1218
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1221
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !764
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !1223

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !1220
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !1224
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !1225

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !1226
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !1227

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !1228, !llvm.loop !1229

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1230 !PGOFuncName !1231 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !1216
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !1220
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #15, !range !966
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !1232

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !1216
  %13 = load i32, ptr %3, align 4, !tbaa !573
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #15
  store ptr %14, ptr %1, align 8, !tbaa !614
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !1233, !llvm.loop !1234

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #15
  store ptr null, ptr %1, align 8, !tbaa !614
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !1214 !PGOFuncName !1235 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !1214 !PGOFuncName !1236 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !614
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1218
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1219

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1237
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #15
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !1238 !PGOFuncName !1239 {
  %3 = load i32, ptr %0, align 4, !tbaa !1240
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1240
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !573
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1242 !PGOFuncName !1243 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1244
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !1245

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #15
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1246 !PGOFuncName !1247 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1248

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1249
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1251 !PGOFuncName !1252 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !614
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !1230 !PGOFuncName !1253 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1254

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1240
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1223

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !573
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !573
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !1238 !PGOFuncName !1255 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !614
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !1218
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1237
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #11 !prof !1214 !PGOFuncName !1256 {
  %2 = load ptr, ptr %0, align 8, !tbaa !614
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1219

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !614
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_dominates_stmt_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !1257 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #15
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #15
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %0, %1
  %8 = or i1 %7, %6
  br i1 %8, label %30, label %9, !prof !1258

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, %5
  br i1 %10, label %11, label %28, !prof !1259

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %1) #15, !range !587
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %26, label %14, !prof !1260

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !587
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %26, label %17, !prof !1261

17:                                               ; preds = %14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %4) #15
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %26, label %20, !prof !1262

20:                                               ; preds = %17, %23
  %21 = phi ptr [ %24, %23 ], [ %18, %17 ]
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %26, label %23, !prof !1263

23:                                               ; preds = %20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #15
  %24 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %20, !prof !1264, !llvm.loop !1265

26:                                               ; preds = %20, %23, %17, %14, %11
  %27 = phi i8 [ 0, %11 ], [ 1, %14 ], [ 0, %17 ], [ 1, %20 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %30

28:                                               ; preds = %9
  %29 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %5, ptr noundef nonnull %4) #14
  br label %30

30:                                               ; preds = %2, %28, %26
  %31 = phi i8 [ %27, %26 ], [ %29, %28 ], [ 1, %2 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @scev_probably_wraps_p(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !1266 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !579
  %8 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %0) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %60, !prof !1267

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %1) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %60, !prof !1267

13:                                               ; preds = %10
  %14 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60, !prof !1267

16:                                               ; preds = %13
  %17 = icmp eq i8 %4, 0
  br i1 %17, label %23, label %18, !prof !1268

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !579
  %21 = tail call zeroext i8 @nowrap_type_p(ptr noundef %20) #15, !range !637
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %60, !prof !1269

23:                                               ; preds = %18, %16
  %24 = load i64, ptr %1, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %60, !prof !1270

27:                                               ; preds = %23
  tail call void @fold_defer_overflow_warnings() #14
  %28 = tail call ptr @unsigned_type_for(ptr noundef %7) #14
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %0) #14
  %30 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %1) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32, !prof !1271

32:                                               ; preds = %27
  %33 = tail call ptr @lower_bound_in_type(ptr noundef %7, ptr noundef %7) #14
  %34 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %33) #14
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %28, ptr noundef %29, ptr noundef %34) #14
  %36 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %1) #14
  %37 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %28, ptr noundef %36) #14
  br label %43

38:                                               ; preds = %27
  %39 = tail call ptr @upper_bound_in_type(ptr noundef %7, ptr noundef %7) #14
  %40 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %39) #14
  %41 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %28, ptr noundef %40, ptr noundef %29) #14
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %1) #14
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi ptr [ %37, %32 ], [ %42, %38 ]
  %45 = phi ptr [ %35, %32 ], [ %41, %38 ]
  %46 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %28, ptr noundef %45, ptr noundef %44) #14
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef %3) #15
  %47 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !614
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %54, !prof !1272

50:                                               ; preds = %54
  %51 = getelementptr inbounds %struct.nb_iter_bound, ptr %55, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !614
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !1273, !llvm.loop !1274

54:                                               ; preds = %43, %50
  %55 = phi ptr [ %52, %50 ], [ %48, %43 ]
  %56 = tail call fastcc zeroext i8 @n_of_executions_at_most(ptr noundef %2, ptr noundef nonnull %55, ptr noundef %46) #15, !range !637
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %50, label %58, !prof !1275

58:                                               ; preds = %50, %54, %43
  %59 = phi i8 [ 1, %43 ], [ 0, %54 ], [ 1, %50 ]
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %60

60:                                               ; preds = %58, %23, %18, %13, %5, %10
  %61 = phi i8 [ 1, %10 ], [ 1, %5 ], [ 0, %13 ], [ 0, %18 ], [ 1, %23 ], [ %59, %58 ]
  ret i8 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @n_of_executions_at_most(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !1276 !PGOFuncName !1277 {
  %4 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !741
  %6 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa.struct !742
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !579
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2097152
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14, !prof !1278

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 3026, ptr noundef nonnull @.str.1) #14
  br label %14

14:                                               ; preds = %3, %13
  %15 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef nonnull %9, i64 %5, i64 %7) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %61, label %17, !prof !1279

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 2
  %19 = load i8, ptr %18, align 8, !tbaa !1126
  %20 = icmp eq i8 %19, 0
  %21 = icmp eq ptr %0, null
  br i1 %20, label %30, label %22, !prof !1280

22:                                               ; preds = %17
  br i1 %21, label %29, label %23, !prof !1281

23:                                               ; preds = %22
  %24 = load ptr, ptr %1, align 8, !tbaa !1124
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %29, label %26, !prof !1282

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %24, ptr noundef nonnull %0) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49, !prof !1283

29:                                               ; preds = %26, %23, %22
  br label %49

30:                                               ; preds = %17
  br i1 %21, label %39, label %31, !prof !1284

31:                                               ; preds = %30
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %0) #15
  %33 = load ptr, ptr %1, align 8, !tbaa !1124
  %34 = tail call fastcc ptr @gimple_bb(ptr noundef %33) #15
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %49, label %36, !prof !1285

36:                                               ; preds = %31
  %37 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %33, ptr noundef nonnull %0) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49, !prof !1286

39:                                               ; preds = %36, %30
  %40 = tail call fastcc i64 @shwi_to_double_int(i64 noundef 1) #15
  %41 = tail call { i64, i64 } @double_int_add(i64 %5, i64 %7, i64 %40, i64 0) #14
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  %44 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %42, i64 %43) #15, !range !637
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %61, !prof !1287

46:                                               ; preds = %39
  %47 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef nonnull %9, i64 %42, i64 %43) #14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %61, label %49, !prof !1288

49:                                               ; preds = %31, %36, %46, %26, %29
  %50 = phi i32 [ 99, %29 ], [ 100, %26 ], [ 99, %46 ], [ 99, %36 ], [ 99, %31 ]
  %51 = phi i64 [ %5, %29 ], [ %5, %26 ], [ %42, %46 ], [ %5, %36 ], [ %5, %31 ]
  %52 = phi i64 [ %7, %29 ], [ %7, %26 ], [ %43, %46 ], [ %7, %36 ], [ %7, %31 ]
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !614
  %54 = tail call ptr @double_int_to_tree(ptr noundef nonnull %9, i64 %51, i64 %52) #14
  %55 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %50, ptr noundef %53, ptr noundef nonnull %2, ptr noundef %54) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !1289

57:                                               ; preds = %49
  %58 = tail call i32 @integer_nonzerop(ptr noundef nonnull %55) #14
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %49, %57, %39, %46, %14
  %62 = phi i8 [ 0, %14 ], [ 0, %46 ], [ 0, %39 ], [ 0, %49 ], [ %60, %57 ]
  ret i8 %62
}

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_to_tree_p(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #5 !prof !1290 !PGOFuncName !1291 {
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %4, label %7, !prof !1292

4:                                                ; preds = %2
  %5 = icmp eq i64 %1, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i8 [ 0, %2 ], [ %6, %4 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_numbers_of_iterations_estimates_loop(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !1293 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr null, ptr %2, align 8, !tbaa !1294
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 16
  store i32 0, ptr %3, align 4, !tbaa !1104
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !1127
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !1295

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.nb_iter_bound, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1128
  tail call void @ggc_free(ptr noundef nonnull %8) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !prof !1296, !llvm.loop !1297

12:                                               ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !1127
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_numbers_of_iterations_estimates() local_unnamed_addr #0 !prof !1298 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !614
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1299

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @free_numbers_of_iterations_estimates_loop(ptr noundef nonnull %6) #15
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !614
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !1300, !llvm.loop !1301

9:                                                ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @substitute_in_loop_info(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !1302 {
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !1294
  %6 = tail call fastcc ptr @simplify_replace_tree(ptr noundef %5, ptr noundef %1, ptr noundef %2) #15
  store ptr %6, ptr %4, align 8, !tbaa !1294
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!569}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!36 = !{ptr @expand_simple_operations, ptr @is_gimple_min_invariant, i64 737476}
!37 = !{ptr @expand_simple_operations, ptr @tree_operand_length, i64 139619}
!38 = !{ptr @expand_simple_operations, ptr @expand_simple_operations, i64 305517}
!39 = !{ptr @expand_simple_operations, ptr @copy_node_stat, i64 22195}
!40 = !{ptr @expand_simple_operations, ptr @fold_defer_overflow_warnings, i64 22195}
!41 = !{ptr @expand_simple_operations, ptr @fold, i64 22195}
!42 = !{ptr @expand_simple_operations, ptr @fold_undefer_and_ignore_overflow_warnings, i64 22195}
!43 = !{ptr @expand_simple_operations, ptr @gimple_code, i64 267940}
!44 = !{ptr @expand_simple_operations, ptr @gimple_phi_num_args, i64 68973}
!45 = !{ptr @expand_simple_operations, ptr @gimple_phi_arg_imm_use_ptr, i64 6186}
!46 = !{ptr @expand_simple_operations, ptr @get_use_from_ptr, i64 6186}
!47 = !{ptr @expand_simple_operations, ptr @gimple_bb, i64 6186}
!48 = !{ptr @expand_simple_operations, ptr @single_pred, i64 6186}
!49 = !{ptr @expand_simple_operations, ptr @gimple_assign_rhs1, i64 184070}
!50 = !{ptr @expand_simple_operations, ptr @gimple_assign_rhs_code, i64 184070}
!51 = !{ptr @expand_simple_operations, ptr @get_gimple_rhs_class, i64 184070}
!52 = !{ptr @expand_simple_operations, ptr @fold_build1_stat_loc, i64 25643}
!53 = !{ptr @expand_simple_operations, ptr @gimple_assign_rhs2, i64 35548}
!54 = !{ptr @expand_simple_operations, ptr @fold_build2_stat_loc, i64 25316}
!55 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 33856}
!56 = !{ptr @single_pred, ptr @single_pred_edge, i64 6208}
!57 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1163087}
!58 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 211560}
!59 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 211560}
!60 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 128087}
!61 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 36111}
!62 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 36110}
!63 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!64 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 236607}
!65 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!66 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 236607}
!67 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 697855}
!68 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 3175753}
!69 = !{ptr @gimple_op, ptr @gimple_ops, i64 3175752}
!70 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 3185661}
!71 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 3175753}
!72 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!73 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 3175753}
!74 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 3175753}
!75 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 211560}
!76 = !{ptr @loop_only_exit_p, ptr @single_exit, i64 61909}
!77 = !{ptr @loop_only_exit_p, ptr @get_loop_body, i64 37407}
!78 = !{ptr @loop_only_exit_p, ptr @gsi_start_bb, i64 195648}
!79 = !{ptr @loop_only_exit_p, ptr @gsi_end_p, i64 768446}
!80 = !{ptr @loop_only_exit_p, ptr @gsi_stmt, i64 591316}
!81 = !{ptr @loop_only_exit_p, ptr @gimple_code, i64 591316}
!82 = !{ptr @loop_only_exit_p, ptr @gimple_has_side_effects, i64 19571}
!83 = !{ptr @loop_only_exit_p, ptr @gsi_next, i64 572798}
!84 = !{ptr @loop_only_exit_p, ptr @free, i64 37407}
!85 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 640268}
!86 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 640268}
!87 = !{ptr @number_of_iterations_exit, ptr @dominated_by_p, i64 167555}
!88 = !{ptr @number_of_iterations_exit, ptr @last_stmt, i64 146597}
!89 = !{ptr @number_of_iterations_exit, ptr @gimple_code, i64 146596}
!90 = !{ptr @number_of_iterations_exit, ptr @gimple_cond_code, i64 139419}
!91 = !{ptr @number_of_iterations_exit, ptr @invert_tree_comparison, i64 20429}
!92 = !{ptr @number_of_iterations_exit, ptr @gimple_cond_lhs, i64 126611}
!93 = !{ptr @number_of_iterations_exit, ptr @gimple_cond_rhs, i64 126611}
!94 = !{ptr @number_of_iterations_exit, ptr @loop_containing_stmt, i64 175036}
!95 = !{ptr @number_of_iterations_exit, ptr @simple_iv, i64 175036}
!96 = !{ptr @number_of_iterations_exit, ptr @fold_defer_overflow_warnings, i64 38317}
!97 = !{ptr @number_of_iterations_exit, ptr @expand_simple_operations, i64 76634}
!98 = !{ptr @number_of_iterations_exit, ptr @loop_only_exit_p, i64 38317}
!99 = !{ptr @number_of_iterations_exit, ptr @number_of_iterations_cond, i64 38317}
!100 = !{ptr @number_of_iterations_exit, ptr @fold_undefer_and_ignore_overflow_warnings, i64 38317}
!101 = !{ptr @number_of_iterations_exit, ptr @simplify_using_outer_evolutions, i64 114756}
!102 = !{ptr @number_of_iterations_exit, ptr @simplify_using_initial_conditions, i64 76506}
!103 = !{ptr @number_of_iterations_exit, ptr @integer_onep, i64 38343}
!104 = !{ptr @number_of_iterations_exit, ptr @integer_zerop, i64 1111}
!105 = !{ptr @number_of_iterations_exit, ptr @gimple_location, i64 90}
!106 = !{ptr @number_of_iterations_exit, ptr @integer_all_onesp, i64 25}
!107 = !{ptr @number_of_iterations_exit, ptr @expand_location, i64 90}
!108 = !{ptr @number_of_iterations_exit, ptr @warning_at, i64 90}
!109 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 354162}
!110 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 354162}
!111 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 175040}
!112 = !{ptr @number_of_iterations_cond, ptr @shwi_to_double_int, i64 38318}
!113 = !{ptr @number_of_iterations_cond, ptr @integer_zerop, i64 223311}
!114 = !{ptr @number_of_iterations_cond, ptr @swap_tree_comparison, i64 16060}
!115 = !{ptr @number_of_iterations_cond, ptr @tree_int_cst_sign_bit, i64 35311}
!116 = !{ptr @number_of_iterations_cond, ptr @fold_build2_stat_loc, i64 38252}
!117 = !{ptr @number_of_iterations_cond, ptr @unsigned_type_for, i64 12}
!118 = !{ptr @number_of_iterations_cond, ptr @build_int_cst, i64 12}
!119 = !{ptr @number_of_iterations_cond, ptr @bound_difference, i64 38240}
!120 = !{ptr @number_of_iterations_cond, ptr @fancy_abort, i64 2}
!121 = !{ptr @number_of_iterations_cond, ptr @number_of_iterations_ne, i64 9367}
!122 = !{ptr @number_of_iterations_cond, ptr @number_of_iterations_lt, i64 16582}
!123 = !{ptr @number_of_iterations_cond, ptr @number_of_iterations_le, i64 12289}
!124 = !{ptr @number_of_iterations_cond, ptr @mpz_clear, i64 76480}
!125 = !{ptr @simplify_using_outer_evolutions, ptr @is_gimple_min_invariant, i64 124735}
!126 = !{ptr @simplify_using_outer_evolutions, ptr @simplify_using_outer_evolutions, i64 59156}
!127 = !{ptr @simplify_using_outer_evolutions, ptr @fold_build3_stat_loc, i64 172}
!128 = !{ptr @simplify_using_outer_evolutions, ptr @fold_build2_stat_loc, i64 128}
!129 = !{ptr @simplify_using_outer_evolutions, ptr @instantiate_parameters, i64 9802}
!130 = !{ptr @simplify_using_initial_conditions, ptr @single_pred_p, i64 119867}
!131 = !{ptr @simplify_using_initial_conditions, ptr @single_pred_edge, i64 55162}
!132 = !{ptr @simplify_using_initial_conditions, ptr @last_stmt, i64 45849}
!133 = !{ptr @simplify_using_initial_conditions, ptr @gimple_cond_code, i64 45849}
!134 = !{ptr @simplify_using_initial_conditions, ptr @gimple_cond_lhs, i64 45849}
!135 = !{ptr @simplify_using_initial_conditions, ptr @gimple_cond_rhs, i64 45849}
!136 = !{ptr @simplify_using_initial_conditions, ptr @fold_build2_stat_loc, i64 45849}
!137 = !{ptr @simplify_using_initial_conditions, ptr @invert_truthvalue_loc, i64 23853}
!138 = !{ptr @simplify_using_initial_conditions, ptr @tree_simplify_using_condition, i64 45849}
!139 = !{ptr @simplify_using_initial_conditions, ptr @get_immediate_dominator, i64 119867}
!140 = !{ptr @bound_difference, ptr @tree_strip_sign_nop_conversions, i64 76488}
!141 = !{ptr @bound_difference, ptr @mpz_init, i64 305084}
!142 = !{ptr @bound_difference, ptr @split_to_var_and_offset, i64 76488}
!143 = !{ptr @bound_difference, ptr @integer_zerop, i64 91224}
!144 = !{ptr @bound_difference, ptr @operand_equal_p, i64 23508}
!145 = !{ptr @bound_difference, ptr @bound_difference_of_offsetted_base, i64 217}
!146 = !{ptr @bound_difference, ptr @determine_value_range, i64 76054}
!147 = !{ptr @bound_difference, ptr @mpz_sub, i64 76054}
!148 = !{ptr @bound_difference, ptr @mpz_clear, i64 228596}
!149 = !{ptr @bound_difference, ptr @single_pred_p, i64 341369}
!150 = !{ptr @bound_difference, ptr @single_pred_edge, i64 175231}
!151 = !{ptr @bound_difference, ptr @last_stmt, i64 147498}
!152 = !{ptr @bound_difference, ptr @gimple_cond_lhs, i64 147498}
!153 = !{ptr @bound_difference, ptr @gimple_cond_code, i64 147498}
!154 = !{ptr @bound_difference, ptr @gimple_cond_rhs, i64 147498}
!155 = !{ptr @bound_difference, ptr @invert_tree_comparison, i64 62597}
!156 = !{ptr @bound_difference, ptr @refine_bounds_using_guard, i64 147498}
!157 = !{ptr @bound_difference, ptr @get_immediate_dominator, i64 341369}
!158 = !{ptr @number_of_iterations_ne, ptr @unsigned_type_for, i64 9506}
!159 = !{ptr @number_of_iterations_ne, ptr @tree_int_cst_sign_bit, i64 9506}
!160 = !{ptr @number_of_iterations_ne, ptr @fold_build1_stat_loc, i64 7363}
!161 = !{ptr @number_of_iterations_ne, ptr @fold_convert_loc, i64 28518}
!162 = !{ptr @number_of_iterations_ne, ptr @fold_build2_stat_loc, i64 11346}
!163 = !{ptr @number_of_iterations_ne, ptr @bounds_negate, i64 7363}
!164 = !{ptr @number_of_iterations_ne, ptr @mpz_init, i64 9506}
!165 = !{ptr @number_of_iterations_ne, ptr @number_of_iterations_ne_max, i64 9506}
!166 = !{ptr @number_of_iterations_ne, ptr @mpz_get_double_int, i64 9506}
!167 = !{ptr @number_of_iterations_ne, ptr @mpz_clear, i64 9506}
!168 = !{ptr @number_of_iterations_ne, ptr @integer_onep, i64 9506}
!169 = !{ptr @number_of_iterations_ne, ptr @num_ending_zeros, i64 387}
!170 = !{ptr @number_of_iterations_ne, ptr @tree_low_cst, i64 387}
!171 = !{ptr @number_of_iterations_ne, ptr @build_low_bits_mask, i64 387}
!172 = !{ptr @number_of_iterations_ne, ptr @build_int_cst, i64 626}
!173 = !{ptr @number_of_iterations_ne, ptr @fold_binary_to_constant, i64 774}
!174 = !{ptr @number_of_iterations_ne, ptr @integer_nonzerop, i64 239}
!175 = !{ptr @number_of_iterations_ne, ptr @inverse, i64 387}
!176 = !{ptr @number_of_iterations_lt, ptr @unsigned_type_for, i64 28876}
!177 = !{ptr @number_of_iterations_lt, ptr @integer_nonzerop, i64 29739}
!178 = !{ptr @number_of_iterations_lt, ptr @fold_convert_loc, i64 58615}
!179 = !{ptr @number_of_iterations_lt, ptr @fold_build2_stat_loc, i64 40002}
!180 = !{ptr @number_of_iterations_lt, ptr @integer_onep, i64 28876}
!181 = !{ptr @number_of_iterations_lt, ptr @integer_zerop, i64 28016}
!182 = !{ptr @number_of_iterations_lt, ptr @integer_all_onesp, i64 7240}
!183 = !{ptr @number_of_iterations_lt, ptr @mpz_sgn, i64 28013}
!184 = !{ptr @number_of_iterations_lt, ptr @mpz_get_double_int, i64 28736}
!185 = !{ptr @number_of_iterations_lt, ptr @fold_build1_stat_loc, i64 42}
!186 = !{ptr @number_of_iterations_lt, ptr @number_of_iterations_lt_to_ne, i64 863}
!187 = !{ptr @number_of_iterations_lt, ptr @build_int_cst, i64 862}
!188 = !{ptr @number_of_iterations_lt, ptr @number_of_iterations_ne, i64 139}
!189 = !{ptr @number_of_iterations_lt, ptr @assert_no_overflow_lt, i64 724}
!190 = !{ptr @number_of_iterations_lt, ptr @assert_loop_rolls_lt, i64 723}
!191 = !{ptr @number_of_iterations_lt, ptr @mpz_init, i64 1446}
!192 = !{ptr @number_of_iterations_lt, ptr @tree_to_double_int, i64 723}
!193 = !{ptr @number_of_iterations_lt, ptr @mpz_set_double_int, i64 723}
!194 = !{ptr @number_of_iterations_lt, ptr @mpz_add, i64 723}
!195 = !{ptr @number_of_iterations_lt, ptr @mpz_sub_ui, i64 723}
!196 = !{ptr @number_of_iterations_lt, ptr @mpz_fdiv_q, i64 723}
!197 = !{ptr @number_of_iterations_lt, ptr @mpz_clear, i64 1446}
!198 = !{ptr @number_of_iterations_le, ptr @integer_nonzerop, i64 32555}
!199 = !{ptr @number_of_iterations_le, ptr @fold_build2_stat_loc, i64 23162}
!200 = !{ptr @number_of_iterations_le, ptr @integer_zerop, i64 10133}
!201 = !{ptr @number_of_iterations_le, ptr @build_int_cst, i64 12290}
!202 = !{ptr @number_of_iterations_le, ptr @fold_build1_stat_loc, i64 31}
!203 = !{ptr @number_of_iterations_le, ptr @shwi_to_double_int, i64 12290}
!204 = !{ptr @number_of_iterations_le, ptr @bounds_add, i64 12290}
!205 = !{ptr @number_of_iterations_le, ptr @number_of_iterations_lt, i64 12290}
!206 = !{ptr @split_to_var_and_offset, ptr @mpz_set_ui, i64 170000}
!207 = !{ptr @split_to_var_and_offset, ptr @tree_to_double_int, i64 95911}
!208 = !{ptr @split_to_var_and_offset, ptr @double_int_neg, i64 1}
!209 = !{ptr @split_to_var_and_offset, ptr @double_int_sext, i64 19707}
!210 = !{ptr @split_to_var_and_offset, ptr @mpz_set_double_int, i64 95911}
!211 = !{ptr @split_to_var_and_offset, ptr @build_int_cst_type, i64 76204}
!212 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_cmp, i64 216}
!213 = !{ptr @bound_difference_of_offsetted_base, ptr @nowrap_type_p, i64 216}
!214 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_set_ui, i64 2}
!215 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_init, i64 215}
!216 = !{ptr @bound_difference_of_offsetted_base, ptr @double_int_mask, i64 215}
!217 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_set_double_int, i64 215}
!218 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_add_ui, i64 215}
!219 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_sub, i64 219}
!220 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_set, i64 215}
!221 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_add, i64 1}
!222 = !{ptr @bound_difference_of_offsetted_base, ptr @mpz_clear, i64 215}
!223 = !{ptr @determine_value_range, ptr @integer_zerop, i64 76056}
!224 = !{ptr @determine_value_range, ptr @mpz_set, i64 85560}
!225 = !{ptr @determine_value_range, ptr @get_type_static_bounds, i64 33276}
!226 = !{ptr @determine_value_range, ptr @nowrap_type_p, i64 33276}
!227 = !{ptr @determine_value_range, ptr @mpz_sgn, i64 22974}
!228 = !{ptr @determine_value_range, ptr @mpz_add, i64 22974}
!229 = !{ptr @refine_bounds_using_guard, ptr @nowrap_type_p, i64 147503}
!230 = !{ptr @refine_bounds_using_guard, ptr @tree_strip_sign_nop_conversions, i64 86730}
!231 = !{ptr @refine_bounds_using_guard, ptr @useless_type_conversion_p, i64 43365}
!232 = !{ptr @refine_bounds_using_guard, ptr @fold_convert_loc, i64 89984}
!233 = !{ptr @refine_bounds_using_guard, ptr @operand_equal_p, i64 191205}
!234 = !{ptr @refine_bounds_using_guard, ptr @mpz_init, i64 105994}
!235 = !{ptr @refine_bounds_using_guard, ptr @expand_simple_operations, i64 93514}
!236 = !{ptr @refine_bounds_using_guard, ptr @split_to_var_and_offset, i64 93514}
!237 = !{ptr @refine_bounds_using_guard, ptr @mpz_swap, i64 33438}
!238 = !{ptr @refine_bounds_using_guard, ptr @swap_tree_comparison, i64 21421}
!239 = !{ptr @refine_bounds_using_guard, ptr @mpz_init_set, i64 24980}
!240 = !{ptr @refine_bounds_using_guard, ptr @integer_zerop, i64 7970}
!241 = !{ptr @refine_bounds_using_guard, ptr @mpz_cmp, i64 17025}
!242 = !{ptr @refine_bounds_using_guard, ptr @mpz_sub, i64 24960}
!243 = !{ptr @refine_bounds_using_guard, ptr @mpz_add, i64 12480}
!244 = !{ptr @refine_bounds_using_guard, ptr @mpz_sub_ui, i64 9022}
!245 = !{ptr @refine_bounds_using_guard, ptr @mpz_neg, i64 12027}
!246 = !{ptr @refine_bounds_using_guard, ptr @mpz_set, i64 11958}
!247 = !{ptr @refine_bounds_using_guard, ptr @mpz_clear, i64 130974}
!248 = !{ptr @bounds_negate, ptr @mpz_init_set, i64 7364}
!249 = !{ptr @bounds_negate, ptr @mpz_neg, i64 14728}
!250 = !{ptr @bounds_negate, ptr @mpz_clear, i64 7364}
!251 = !{ptr @number_of_iterations_ne_max, ptr @multiple_of_p, i64 5654}
!252 = !{ptr @number_of_iterations_ne_max, ptr @num_ending_zeros, i64 2794}
!253 = !{ptr @number_of_iterations_ne_max, ptr @tree_low_cst, i64 2794}
!254 = !{ptr @number_of_iterations_ne_max, ptr @double_int_mask, i64 2795}
!255 = !{ptr @number_of_iterations_ne_max, ptr @mpz_set_double_int, i64 9521}
!256 = !{ptr @number_of_iterations_ne_max, ptr @mpz_sgn, i64 2860}
!257 = !{ptr @number_of_iterations_ne_max, ptr @mpz_set, i64 6697}
!258 = !{ptr @number_of_iterations_ne_max, ptr @tree_to_double_int, i64 6726}
!259 = !{ptr @number_of_iterations_ne_max, ptr @mpz_init, i64 6712}
!260 = !{ptr @number_of_iterations_ne_max, ptr @mpz_fdiv_q, i64 6712}
!261 = !{ptr @number_of_iterations_ne_max, ptr @mpz_clear, i64 6712}
!262 = !{ptr @inverse, ptr @tree_floor_log2, i64 386}
!263 = !{ptr @inverse, ptr @cst_and_fits_in_hwi, i64 770}
!264 = !{ptr @inverse, ptr @fancy_abort, i64 2}
!265 = !{ptr @inverse, ptr @int_cst_value, i64 770}
!266 = !{ptr @inverse, ptr @build_int_cst_type, i64 385}
!267 = !{ptr @inverse, ptr @build_int_cst, i64 1}
!268 = !{ptr @inverse, ptr @int_const_binop, i64 41}
!269 = !{ptr @number_of_iterations_lt_to_ne, ptr @fold_build2_stat_loc, i64 1117}
!270 = !{ptr @number_of_iterations_lt_to_ne, ptr @integer_nonzerop, i64 416}
!271 = !{ptr @number_of_iterations_lt_to_ne, ptr @fold_convert_loc, i64 139}
!272 = !{ptr @number_of_iterations_lt_to_ne, ptr @mpz_init, i64 139}
!273 = !{ptr @number_of_iterations_lt_to_ne, ptr @tree_to_double_int, i64 276}
!274 = !{ptr @number_of_iterations_lt_to_ne, ptr @mpz_set_double_int, i64 139}
!275 = !{ptr @number_of_iterations_lt_to_ne, ptr @mpz_neg, i64 139}
!276 = !{ptr @number_of_iterations_lt_to_ne, ptr @integer_zerop, i64 299}
!277 = !{ptr @number_of_iterations_lt_to_ne, ptr @mpz_cmp, i64 137}
!278 = !{ptr @number_of_iterations_lt_to_ne, ptr @bounds_add, i64 137}
!279 = !{ptr @number_of_iterations_lt_to_ne, ptr @mpz_clear, i64 139}
!280 = !{ptr @assert_no_overflow_lt, ptr @integer_nonzerop, i64 888}
!281 = !{ptr @assert_no_overflow_lt, ptr @fold_convert_loc, i64 258}
!282 = !{ptr @assert_no_overflow_lt, ptr @fold_build2_stat_loc, i64 671}
!283 = !{ptr @assert_no_overflow_lt, ptr @build_int_cst, i64 119}
!284 = !{ptr @assert_no_overflow_lt, ptr @integer_zerop, i64 166}
!285 = !{ptr @assert_loop_rolls_lt, ptr @integer_nonzerop, i64 1785}
!286 = !{ptr @assert_loop_rolls_lt, ptr @tree_to_double_int, i64 723}
!287 = !{ptr @assert_loop_rolls_lt, ptr @double_int_sext, i64 38}
!288 = !{ptr @assert_loop_rolls_lt, ptr @double_int_neg, i64 38}
!289 = !{ptr @assert_loop_rolls_lt, ptr @mpz_init, i64 1446}
!290 = !{ptr @assert_loop_rolls_lt, ptr @mpz_set_double_int, i64 1446}
!291 = !{ptr @assert_loop_rolls_lt, ptr @mpz_neg, i64 723}
!292 = !{ptr @assert_loop_rolls_lt, ptr @mpz_add_ui, i64 723}
!293 = !{ptr @assert_loop_rolls_lt, ptr @mpz_cmp, i64 1446}
!294 = !{ptr @assert_loop_rolls_lt, ptr @double_int_mask, i64 723}
!295 = !{ptr @assert_loop_rolls_lt, ptr @mpz_add, i64 723}
!296 = !{ptr @assert_loop_rolls_lt, ptr @mpz_clear, i64 1446}
!297 = !{ptr @assert_loop_rolls_lt, ptr @build_int_cst, i64 531}
!298 = !{ptr @assert_loop_rolls_lt, ptr @fold_build2_stat_loc, i64 2574}
!299 = !{ptr @assert_loop_rolls_lt, ptr @fold_convert_loc, i64 1062}
!300 = !{ptr @bounds_add, ptr @mpz_init, i64 24858}
!301 = !{ptr @bounds_add, ptr @mpz_set_double_int, i64 24858}
!302 = !{ptr @bounds_add, ptr @double_int_mask, i64 12429}
!303 = !{ptr @bounds_add, ptr @mpz_add, i64 24858}
!304 = !{ptr @bounds_add, ptr @mpz_cmp, i64 24858}
!305 = !{ptr @bounds_add, ptr @mpz_set, i64 595}
!306 = !{ptr @bounds_add, ptr @mpz_neg, i64 12429}
!307 = !{ptr @bounds_add, ptr @mpz_clear, i64 24858}
!308 = !{ptr @instantiate_parameters, ptr @block_before_loop, i64 179861}
!309 = !{ptr @instantiate_parameters, ptr @instantiate_scev, i64 179861}
!310 = !{ptr @block_before_loop, ptr @loop_preheader_edge, i64 179861}
!311 = !{ptr @tree_simplify_using_condition, ptr @expand_simple_operations, i64 45850}
!312 = !{ptr @tree_simplify_using_condition, ptr @tree_simplify_using_condition_1, i64 45850}
!313 = !{ptr @tree_simplify_using_condition_1, ptr @tree_simplify_using_condition_1, i64 68278}
!314 = !{ptr @tree_simplify_using_condition_1, ptr @fold_build3_stat_loc, i64 88}
!315 = !{ptr @tree_simplify_using_condition_1, ptr @fold_build2_stat_loc, i64 176}
!316 = !{ptr @tree_simplify_using_condition_1, ptr @simplify_replace_tree, i64 9806}
!317 = !{ptr @tree_simplify_using_condition_1, ptr @integer_zerop, i64 10090}
!318 = !{ptr @tree_simplify_using_condition_1, ptr @integer_nonzerop, i64 6535}
!319 = !{ptr @tree_simplify_using_condition_1, ptr @expand_simple_operations, i64 11326}
!320 = !{ptr @tree_simplify_using_condition_1, ptr @invert_truthvalue_loc, i64 11326}
!321 = !{ptr @tree_simplify_using_condition_1, ptr @fold_binary_loc, i64 22651}
!322 = !{ptr @simplify_replace_tree, ptr @operand_equal_p, i64 143904}
!323 = !{ptr @simplify_replace_tree, ptr @unshare_expr, i64 6042}
!324 = !{ptr @simplify_replace_tree, ptr @tree_operand_length, i64 59102}
!325 = !{ptr @simplify_replace_tree, ptr @simplify_replace_tree, i64 99754}
!326 = !{ptr @simplify_replace_tree, ptr @copy_node_stat, i64 6158}
!327 = !{ptr @simplify_replace_tree, ptr @fold, i64 6159}
!328 = !{ptr @find_loop_niter, ptr @get_loop_exit_edges, i64 13287}
!329 = !{ptr @find_loop_niter, ptr @VEC_edge_base_iterate, i64 54017}
!330 = !{ptr @find_loop_niter, ptr @just_once_each_iteration_p, i64 40731}
!331 = !{ptr @find_loop_niter, ptr @number_of_iterations_exit, i64 25520}
!332 = !{ptr @find_loop_niter, ptr @integer_nonzerop, i64 3674}
!333 = !{ptr @find_loop_niter, ptr @build_int_cst, i64 1}
!334 = !{ptr @find_loop_niter, ptr @integer_zerop, i64 3673}
!335 = !{ptr @find_loop_niter, ptr @tree_int_cst_lt, i64 3}
!336 = !{ptr @find_loop_niter, ptr @VEC_edge_heap_free, i64 13287}
!337 = !{ptr @VEC_edge_heap_free, ptr @free, i64 81879}
!338 = !{ptr @finite_loop_p, ptr @get_loop_exit_edges, i64 27541}
!339 = !{ptr @finite_loop_p, ptr @VEC_edge_base_iterate, i64 71202}
!340 = !{ptr @finite_loop_p, ptr @just_once_each_iteration_p, i64 51810}
!341 = !{ptr @finite_loop_p, ptr @number_of_iterations_exit, i64 39783}
!342 = !{ptr @finite_loop_p, ptr @fprintf, i64 1}
!343 = !{ptr @finite_loop_p, ptr @print_generic_expr, i64 1}
!344 = !{ptr @finite_loop_p, ptr @fwrite, i64 1}
!345 = !{ptr @finite_loop_p, ptr @VEC_edge_heap_free, i64 27541}
!346 = !{ptr @loop_niter_by_eval, ptr @last_stmt, i64 36380}
!347 = !{ptr @loop_niter_by_eval, ptr @gimple_code, i64 36379}
!348 = !{ptr @loop_niter_by_eval, ptr @gimple_cond_code, i64 34193}
!349 = !{ptr @loop_niter_by_eval, ptr @invert_tree_comparison, i64 8886}
!350 = !{ptr @loop_niter_by_eval, ptr @gimple_cond_lhs, i64 34192}
!351 = !{ptr @loop_niter_by_eval, ptr @gimple_cond_rhs, i64 34192}
!352 = !{ptr @loop_niter_by_eval, ptr @is_gimple_min_invariant, i64 36423}
!353 = !{ptr @loop_niter_by_eval, ptr @get_base_for, i64 36381}
!354 = !{ptr @loop_niter_by_eval, ptr @loop_preheader_edge, i64 2189}
!355 = !{ptr @loop_niter_by_eval, ptr @gimple_phi_arg_imm_use_ptr, i64 4378}
!356 = !{ptr @loop_niter_by_eval, ptr @get_use_from_ptr, i64 4378}
!357 = !{ptr @loop_niter_by_eval, ptr @loop_latch_edge, i64 2189}
!358 = !{ptr @loop_niter_by_eval, ptr @fold_defer_overflow_warnings, i64 1}
!359 = !{ptr @loop_niter_by_eval, ptr @get_val_for, i64 46}
!360 = !{ptr @loop_niter_by_eval, ptr @fold_binary_loc, i64 12}
!361 = !{ptr @loop_niter_by_eval, ptr @integer_zerop, i64 12}
!362 = !{ptr @loop_niter_by_eval, ptr @fold_undefer_and_ignore_overflow_warnings, i64 1}
!363 = !{ptr @loop_niter_by_eval, ptr @build_int_cst, i64 1}
!364 = !{ptr @get_base_for, ptr @is_gimple_min_invariant, i64 47993}
!365 = !{ptr @get_base_for, ptr @chain_of_csts_start, i64 38698}
!366 = !{ptr @get_base_for, ptr @loop_preheader_edge, i64 11636}
!367 = !{ptr @get_base_for, ptr @gimple_phi_arg_imm_use_ptr, i64 23272}
!368 = !{ptr @get_base_for, ptr @get_use_from_ptr, i64 23272}
!369 = !{ptr @get_base_for, ptr @loop_latch_edge, i64 11636}
!370 = !{ptr @get_val_for, ptr @is_gimple_min_invariant, i64 1340}
!371 = !{ptr @get_val_for, ptr @fancy_abort, i64 3}
!372 = !{ptr @get_val_for, ptr @gimple_code, i64 886}
!373 = !{ptr @get_val_for, ptr @is_gimple_assign, i64 433}
!374 = !{ptr @get_val_for, ptr @gimple_assign_ssa_name_copy_p, i64 433}
!375 = !{ptr @get_val_for, ptr @gimple_assign_rhs1, i64 433}
!376 = !{ptr @get_val_for, ptr @gimple_assign_rhs_class, i64 864}
!377 = !{ptr @get_val_for, ptr @gimple_assign_rhs2, i64 431}
!378 = !{ptr @get_val_for, ptr @get_val_for, i64 430}
!379 = !{ptr @get_val_for, ptr @gimple_assign_rhs_code, i64 431}
!380 = !{ptr @get_val_for, ptr @gimple_expr_type, i64 431}
!381 = !{ptr @get_val_for, ptr @fold_build2_stat_loc, i64 431}
!382 = !{ptr @chain_of_csts_start, ptr @gimple_bb, i64 56930}
!383 = !{ptr @chain_of_csts_start, ptr @flow_bb_inside_loop_p, i64 56464}
!384 = !{ptr @chain_of_csts_start, ptr @gimple_code, i64 52131}
!385 = !{ptr @chain_of_csts_start, ptr @gimple_assign_rhs_code, i64 30421}
!386 = !{ptr @chain_of_csts_start, ptr @gimple_references_memory_p, i64 30421}
!387 = !{ptr @chain_of_csts_start, ptr @gimple_assign_rhs1, i64 13}
!388 = !{ptr @chain_of_csts_start, ptr @is_gimple_min_invariant, i64 13}
!389 = !{ptr @chain_of_csts_start, ptr @single_ssa_tree_operand, i64 12015}
!390 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 25084}
!391 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 25083}
!392 = !{ptr @single_ssa_tree_operand, ptr @op_iter_init_tree, i64 9908}
!393 = !{ptr @single_ssa_tree_operand, ptr @op_iter_done, i64 19815}
!394 = !{ptr @single_ssa_tree_operand, ptr @op_iter_next_tree, i64 9907}
!395 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 60076}
!396 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 34992}
!397 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 9908}
!398 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 9908}
!399 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 11576}
!400 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!401 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 9908}
!402 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 9907}
!403 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 9908}
!404 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1200394}
!405 = !{ptr @gimple_assign_rhs_class, ptr @gimple_assign_rhs_code, i64 866}
!406 = !{ptr @gimple_assign_rhs_class, ptr @get_gimple_rhs_class, i64 866}
!407 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 433}
!408 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 432}
!409 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 1}
!410 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 431}
!411 = !{ptr @find_loop_niter_by_eval, ptr @get_loop_exit_edges, i64 13342}
!412 = !{ptr @find_loop_niter_by_eval, ptr @VEC_edge_base_length, i64 1}
!413 = !{ptr @find_loop_niter_by_eval, ptr @VEC_edge_base_iterate, i64 41681}
!414 = !{ptr @find_loop_niter_by_eval, ptr @just_once_each_iteration_p, i64 28339}
!415 = !{ptr @find_loop_niter_by_eval, ptr @loop_niter_by_eval, i64 17683}
!416 = !{ptr @find_loop_niter_by_eval, ptr @chrec_contains_undetermined, i64 17683}
!417 = !{ptr @find_loop_niter_by_eval, ptr @tree_int_cst_lt, i64 1}
!418 = !{ptr @find_loop_niter_by_eval, ptr @VEC_edge_heap_free, i64 13342}
!419 = !{ptr @array_at_struct_end_p, ptr @get_base_address, i64 113724}
!420 = !{ptr @array_at_struct_end_p, ptr @handled_component_p, i64 289126}
!421 = !{ptr @estimate_numbers_of_iterations_loop, ptr @get_loop_exit_edges, i64 27734}
!422 = !{ptr @estimate_numbers_of_iterations_loop, ptr @VEC_edge_base_iterate, i64 77329}
!423 = !{ptr @estimate_numbers_of_iterations_loop, ptr @number_of_iterations_exit, i64 49595}
!424 = !{ptr @estimate_numbers_of_iterations_loop, ptr @build_int_cst, i64 2211}
!425 = !{ptr @estimate_numbers_of_iterations_loop, ptr @build3_stat, i64 2211}
!426 = !{ptr @estimate_numbers_of_iterations_loop, ptr @last_stmt, i64 10039}
!427 = !{ptr @estimate_numbers_of_iterations_loop, ptr @record_estimate, i64 10039}
!428 = !{ptr @estimate_numbers_of_iterations_loop, ptr @VEC_edge_heap_free, i64 27734}
!429 = !{ptr @estimate_numbers_of_iterations_loop, ptr @infer_loop_bounds_from_undefined, i64 27734}
!430 = !{ptr @estimate_numbers_of_iterations_loop, ptr @expected_loop_iterations_unbounded, i64 1}
!431 = !{ptr @estimate_numbers_of_iterations_loop, ptr @gcov_type_to_double_int, i64 1}
!432 = !{ptr @estimate_numbers_of_iterations_loop, ptr @record_niter_bound, i64 1}
!433 = !{ptr @estimate_numbers_of_iterations_loop, ptr @double_int_ucmp, i64 3240}
!434 = !{ptr @record_estimate, ptr @ggc_alloc_stat, i64 19876}
!435 = !{ptr @record_estimate, ptr @single_exit, i64 23286}
!436 = !{ptr @record_estimate, ptr @gimple_bb, i64 9264}
!437 = !{ptr @record_estimate, ptr @dominated_by_p, i64 9264}
!438 = !{ptr @record_estimate, ptr @shwi_to_double_int, i64 23286}
!439 = !{ptr @record_estimate, ptr @double_int_add, i64 23286}
!440 = !{ptr @record_estimate, ptr @double_int_ucmp, i64 23286}
!441 = !{ptr @record_estimate, ptr @record_niter_bound, i64 23285}
!442 = !{ptr @infer_loop_bounds_from_undefined, ptr @get_loop_body, i64 27734}
!443 = !{ptr @infer_loop_bounds_from_undefined, ptr @dominated_by_p, i64 449732}
!444 = !{ptr @infer_loop_bounds_from_undefined, ptr @gsi_start_bb, i64 449732}
!445 = !{ptr @infer_loop_bounds_from_undefined, ptr @gsi_end_p, i64 1649651}
!446 = !{ptr @infer_loop_bounds_from_undefined, ptr @gsi_stmt, i64 1199919}
!447 = !{ptr @infer_loop_bounds_from_undefined, ptr @infer_loop_bounds_from_array, i64 1199919}
!448 = !{ptr @infer_loop_bounds_from_undefined, ptr @infer_loop_bounds_from_signedness, i64 219394}
!449 = !{ptr @infer_loop_bounds_from_undefined, ptr @gsi_next, i64 1199919}
!450 = !{ptr @infer_loop_bounds_from_undefined, ptr @free, i64 27734}
!451 = !{ptr @record_niter_bound, ptr @double_int_ucmp, i64 12273}
!452 = !{ptr @infer_loop_bounds_from_array, ptr @is_gimple_assign, i64 1199961}
!453 = !{ptr @infer_loop_bounds_from_array, ptr @gimple_assign_lhs, i64 849813}
!454 = !{ptr @infer_loop_bounds_from_array, ptr @gimple_assign_rhs1, i64 849813}
!455 = !{ptr @infer_loop_bounds_from_array, ptr @infer_loop_bounds_from_ref, i64 423708}
!456 = !{ptr @infer_loop_bounds_from_array, ptr @is_gimple_call, i64 350148}
!457 = !{ptr @infer_loop_bounds_from_array, ptr @gimple_call_num_args, i64 84450}
!458 = !{ptr @infer_loop_bounds_from_array, ptr @gimple_call_lhs, i64 84450}
!459 = !{ptr @infer_loop_bounds_from_array, ptr @gimple_call_arg, i64 179541}
!460 = !{ptr @infer_loop_bounds_from_signedness, ptr @gimple_code, i64 219401}
!461 = !{ptr @infer_loop_bounds_from_signedness, ptr @gimple_assign_lhs, i64 154428}
!462 = !{ptr @infer_loop_bounds_from_signedness, ptr @analyze_scalar_evolution, i64 27009}
!463 = !{ptr @infer_loop_bounds_from_signedness, ptr @instantiate_parameters, i64 27009}
!464 = !{ptr @infer_loop_bounds_from_signedness, ptr @chrec_contains_undetermined, i64 27009}
!465 = !{ptr @infer_loop_bounds_from_signedness, ptr @initial_condition_in_loop_num, i64 10106}
!466 = !{ptr @infer_loop_bounds_from_signedness, ptr @evolution_part_in_loop_num, i64 10106}
!467 = !{ptr @infer_loop_bounds_from_signedness, ptr @tree_contains_chrecs, i64 7773}
!468 = !{ptr @infer_loop_bounds_from_signedness, ptr @chrec_contains_symbols_defined_in_loop, i64 7772}
!469 = !{ptr @infer_loop_bounds_from_signedness, ptr @lower_bound_in_type, i64 7771}
!470 = !{ptr @infer_loop_bounds_from_signedness, ptr @upper_bound_in_type, i64 7771}
!471 = !{ptr @infer_loop_bounds_from_signedness, ptr @record_nonwrapping_iv, i64 7771}
!472 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 1004241}
!473 = !{ptr @infer_loop_bounds_from_ref, ptr @for_each_index, i64 423705}
!474 = !{ptr @is_gimple_call, ptr @gimple_code, i64 350148}
!475 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 84449}
!476 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 84449}
!477 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 179541}
!478 = !{ptr @idx_infer_loop_bounds, ptr @array_at_struct_end_p, i64 113725}
!479 = !{ptr @idx_infer_loop_bounds, ptr @analyze_scalar_evolution, i64 113725}
!480 = !{ptr @idx_infer_loop_bounds, ptr @instantiate_parameters, i64 113725}
!481 = !{ptr @idx_infer_loop_bounds, ptr @initial_condition, i64 113725}
!482 = !{ptr @idx_infer_loop_bounds, ptr @evolution_part_in_loop_num, i64 113725}
!483 = !{ptr @idx_infer_loop_bounds, ptr @integer_zerop, i64 10810}
!484 = !{ptr @idx_infer_loop_bounds, ptr @tree_contains_chrecs, i64 10809}
!485 = !{ptr @idx_infer_loop_bounds, ptr @chrec_contains_symbols_defined_in_loop, i64 10808}
!486 = !{ptr @idx_infer_loop_bounds, ptr @array_ref_low_bound, i64 10807}
!487 = !{ptr @idx_infer_loop_bounds, ptr @array_ref_up_bound, i64 10807}
!488 = !{ptr @idx_infer_loop_bounds, ptr @tree_int_cst_sign_bit, i64 10804}
!489 = !{ptr @idx_infer_loop_bounds, ptr @operand_equal_p, i64 6112}
!490 = !{ptr @idx_infer_loop_bounds, ptr @int_fits_type_p, i64 10939}
!491 = !{ptr @idx_infer_loop_bounds, ptr @fold_convert_loc, i64 10936}
!492 = !{ptr @idx_infer_loop_bounds, ptr @fold_binary_loc, i64 5468}
!493 = !{ptr @idx_infer_loop_bounds, ptr @tree_int_cst_compare, i64 10595}
!494 = !{ptr @idx_infer_loop_bounds, ptr @record_nonwrapping_iv, i64 5467}
!495 = !{ptr @record_nonwrapping_iv, ptr @integer_zerop, i64 13247}
!496 = !{ptr @record_nonwrapping_iv, ptr @unsigned_type_for, i64 13246}
!497 = !{ptr @record_nonwrapping_iv, ptr @fold_convert_loc, i64 43548}
!498 = !{ptr @record_nonwrapping_iv, ptr @tree_int_cst_sign_bit, i64 13246}
!499 = !{ptr @record_nonwrapping_iv, ptr @fold_build2_stat_loc, i64 26492}
!500 = !{ptr @record_nonwrapping_iv, ptr @fold_build1_stat_loc, i64 2622}
!501 = !{ptr @record_nonwrapping_iv, ptr @derive_constant_upper_bound, i64 13246}
!502 = !{ptr @record_nonwrapping_iv, ptr @record_estimate, i64 13246}
!503 = !{ptr @derive_constant_upper_bound, ptr @extract_ops_from_tree, i64 13248}
!504 = !{ptr @derive_constant_upper_bound, ptr @derive_constant_upper_bound_ops, i64 13248}
!505 = !{ptr @derive_constant_upper_bound_ops, ptr @upper_bound_in_type, i64 1}
!506 = !{ptr @derive_constant_upper_bound_ops, ptr @tree_to_double_int, i64 26487}
!507 = !{ptr @derive_constant_upper_bound_ops, ptr @derive_constant_upper_bound, i64 3}
!508 = !{ptr @derive_constant_upper_bound_ops, ptr @double_int_ucmp, i64 2}
!509 = !{ptr @derive_constant_upper_bound_ops, ptr @tree_expr_nonnegative_p, i64 1}
!510 = !{ptr @derive_constant_upper_bound_ops, ptr @double_int_sext, i64 1}
!511 = !{ptr @derive_constant_upper_bound_ops, ptr @double_int_negative_p, i64 2}
!512 = !{ptr @derive_constant_upper_bound_ops, ptr @double_int_neg, i64 1}
!513 = !{ptr @derive_constant_upper_bound_ops, ptr @tree_int_cst_sign_bit, i64 1}
!514 = !{ptr @derive_constant_upper_bound_ops, ptr @gimple_code, i64 1}
!515 = !{ptr @estimate_numbers_of_iterations, ptr @fold_defer_overflow_warnings, i64 2627}
!516 = !{ptr @estimate_numbers_of_iterations, ptr @fel_init, i64 2627}
!517 = !{ptr @estimate_numbers_of_iterations, ptr @estimate_numbers_of_iterations_loop, i64 14308}
!518 = !{ptr @estimate_numbers_of_iterations, ptr @fel_next, i64 14308}
!519 = !{ptr @estimate_numbers_of_iterations, ptr @fold_undefer_and_ignore_overflow_warnings, i64 2627}
!520 = !{ptr @fel_init, ptr @number_of_loops, i64 14160}
!521 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 14160}
!522 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 118133}
!523 = !{ptr @fel_init, ptr @loop_outer, i64 73249}
!524 = !{ptr @fel_init, ptr @fel_next, i64 14160}
!525 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 73259}
!526 = !{ptr @fel_next, ptr @get_loop, i64 59097}
!527 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 14162}
!528 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 14161}
!529 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 14160}
!530 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 43735}
!531 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 29574}
!532 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 59097}
!533 = !{ptr @VEC_int_heap_free, ptr @free, i64 14160}
!534 = !{ptr @stmt_dominates_stmt_p, ptr @gimple_bb, i64 46264}
!535 = !{ptr @stmt_dominates_stmt_p, ptr @gimple_code, i64 9620}
!536 = !{ptr @stmt_dominates_stmt_p, ptr @gsi_start_bb, i64 2154}
!537 = !{ptr @stmt_dominates_stmt_p, ptr @gsi_stmt, i64 7892}
!538 = !{ptr @stmt_dominates_stmt_p, ptr @gsi_next, i64 5738}
!539 = !{ptr @stmt_dominates_stmt_p, ptr @dominated_by_p, i64 13508}
!540 = !{ptr @scev_probably_wraps_p, ptr @chrec_contains_undetermined, i64 133005}
!541 = !{ptr @scev_probably_wraps_p, ptr @integer_zerop, i64 66501}
!542 = !{ptr @scev_probably_wraps_p, ptr @nowrap_type_p, i64 60741}
!543 = !{ptr @scev_probably_wraps_p, ptr @fold_defer_overflow_warnings, i64 28078}
!544 = !{ptr @scev_probably_wraps_p, ptr @unsigned_type_for, i64 28078}
!545 = !{ptr @scev_probably_wraps_p, ptr @fold_convert_loc, i64 84234}
!546 = !{ptr @scev_probably_wraps_p, ptr @tree_int_cst_sign_bit, i64 28078}
!547 = !{ptr @scev_probably_wraps_p, ptr @lower_bound_in_type, i64 10266}
!548 = !{ptr @scev_probably_wraps_p, ptr @fold_build2_stat_loc, i64 56156}
!549 = !{ptr @scev_probably_wraps_p, ptr @fold_build1_stat_loc, i64 10266}
!550 = !{ptr @scev_probably_wraps_p, ptr @upper_bound_in_type, i64 17812}
!551 = !{ptr @scev_probably_wraps_p, ptr @estimate_numbers_of_iterations_loop, i64 28078}
!552 = !{ptr @scev_probably_wraps_p, ptr @n_of_executions_at_most, i64 33837}
!553 = !{ptr @scev_probably_wraps_p, ptr @fold_undefer_and_ignore_overflow_warnings, i64 28078}
!554 = !{ptr @n_of_executions_at_most, ptr @fancy_abort, i64 1}
!555 = !{ptr @n_of_executions_at_most, ptr @double_int_fits_to_tree_p, i64 30468}
!556 = !{ptr @n_of_executions_at_most, ptr @stmt_dominates_stmt_p, i64 23128}
!557 = !{ptr @n_of_executions_at_most, ptr @gimple_bb, i64 16320}
!558 = !{ptr @n_of_executions_at_most, ptr @shwi_to_double_int, i64 3612}
!559 = !{ptr @n_of_executions_at_most, ptr @double_int_add, i64 3612}
!560 = !{ptr @n_of_executions_at_most, ptr @double_int_zero_p, i64 3612}
!561 = !{ptr @n_of_executions_at_most, ptr @double_int_to_tree, i64 25702}
!562 = !{ptr @n_of_executions_at_most, ptr @fold_binary_loc, i64 25702}
!563 = !{ptr @n_of_executions_at_most, ptr @integer_nonzerop, i64 24450}
!564 = !{ptr @free_numbers_of_iterations_estimates_loop, ptr @ggc_free, i64 11250}
!565 = !{ptr @free_numbers_of_iterations_estimates, ptr @fel_init, i64 11534}
!566 = !{ptr @free_numbers_of_iterations_estimates, ptr @free_numbers_of_iterations_estimates_loop, i64 44782}
!567 = !{ptr @free_numbers_of_iterations_estimates, ptr @fel_next, i64 44782}
!568 = !{ptr @substitute_in_loop_info, ptr @simplify_replace_tree, i64 119748}
!569 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!570 = !{!"function_entry_count", i64 591589}
!571 = !{!"branch_weights", i32 1, i32 127}
!572 = !{!"branch_weights", i32 409050, i32 182541}
!573 = !{!574, !574, i64 0}
!574 = !{!"int", !575, i64 0}
!575 = !{!"omnipotent char", !576, i64 0}
!576 = !{!"Simple C/C++ TBAA"}
!577 = !{!"branch_weights", i32 1227293572, i32 -1939689948}
!578 = !{!"branch_weights", i32 1, i32 140130}
!579 = !{!575, !575, i64 0}
!580 = !{!"branch_weights", i32 232689, i32 22803}
!581 = !{!"branch_weights", i32 22277, i32 527}
!582 = !{!"branch_weights", i32 140130, i32 115361}
!583 = distinct !{!583, !584}
!584 = !{!"llvm.loop.mustprogress"}
!585 = !{!"branch_weights", i32 1806092427, i32 341391221}
!586 = !{!"branch_weights", i32 268920, i32 1}
!587 = !{i32 0, i32 256}
!588 = !{!"branch_weights", i32 186602496, i32 864009706, i32 -1989176498}
!589 = !{!"branch_weights", i32 6209, i32 63018}
!590 = !{!"branch_weights", i32 6189, i32 21}
!591 = !{!592, !593, i64 24}
!592 = !{!"basic_block_def", !593, i64 0, !593, i64 8, !593, i64 16, !593, i64 24, !575, i64 32, !593, i64 48, !593, i64 56, !575, i64 64, !594, i64 72, !574, i64 80, !574, i64 84, !574, i64 88, !574, i64 92, !574, i64 96}
!593 = !{!"any pointer", !575, i64 0}
!594 = !{!"long", !575, i64 0}
!595 = !{!"branch_weights", i32 1966, i32 4224}
!596 = !{!"branch_weights", i32 127, i32 75723393}
!597 = !{i32 0, i32 65536}
!598 = !{!"branch_weights", i32 112905, i32 71841}
!599 = !{!"branch_weights", i32 112552, i32 354}
!600 = !{!"branch_weights", i32 492, i32 112061}
!601 = !{!"branch_weights", i32 10426, i32 25543, i32 196, i32 28223, i32 2157, i32 5301}
!602 = !{!"branch_weights", i32 10270, i32 25410}
!603 = !{!"function_entry_count", i64 199234}
!604 = !{!"tree-ssa-loop-niter.c:tree_operand_length"}
!605 = !{!"branch_weights", i32 1, i32 199235}
!606 = !{!"function_entry_count", i64 12934978}
!607 = !{!"tree-ssa-loop-niter.c:gimple_code"}
!608 = !{!"function_entry_count", i64 69225}
!609 = !{!"tree-ssa-loop-niter.c:gimple_phi_num_args"}
!610 = !{!"function_entry_count", i64 45432}
!611 = !{!"tree-ssa-loop-niter.c:get_use_from_ptr"}
!612 = !{!613, !593, i64 24}
!613 = !{!"ssa_use_operand_d", !593, i64 0, !593, i64 8, !575, i64 16, !593, i64 24}
!614 = !{!593, !593, i64 0}
!615 = !{!"function_entry_count", i64 33856}
!616 = !{!"tree-ssa-loop-niter.c:gimple_phi_arg_imm_use_ptr"}
!617 = !{!"function_entry_count", i64 300038}
!618 = !{!"tree-ssa-loop-niter.c:gimple_bb"}
!619 = !{!"function_entry_count", i64 6208}
!620 = !{!"tree-ssa-loop-niter.c:single_pred"}
!621 = !{!622, !593, i64 0}
!622 = !{!"edge_def", !593, i64 0, !593, i64 8, !575, i64 16, !593, i64 24, !593, i64 32, !574, i64 40, !574, i64 44, !574, i64 48, !574, i64 52, !594, i64 56}
!623 = !{!"function_entry_count", i64 1163087}
!624 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs1"}
!625 = !{!"function_entry_count", i64 211560}
!626 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs_code"}
!627 = !{!"branch_weights", i32 128088, i32 83474}
!628 = !{!"function_entry_count", i64 397170}
!629 = !{!"tree-ssa-loop-niter.c:get_gimple_rhs_class"}
!630 = !{!"function_entry_count", i64 36111}
!631 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs2"}
!632 = !{!"branch_weights", i32 36112, i32 1}
!633 = !{!"tree-ssa-loop-niter.c:gimple_phi_arg"}
!634 = !{!"branch_weights", i32 1, i32 33857}
!635 = !{!"function_entry_count", i64 236607}
!636 = !{!"tree-ssa-loop-niter.c:single_pred_edge"}
!637 = !{i8 0, i8 2}
!638 = !{!"branch_weights", i32 1, i32 236608}
!639 = !{!592, !593, i64 0}
!640 = !{!"function_entry_count", i64 697855}
!641 = !{!"tree-ssa-loop-niter.c:single_pred_p"}
!642 = !{!"tree-ssa-loop-niter.c:VEC_edge_base_index"}
!643 = !{!"tree-ssa-loop-niter.c:VEC_edge_base_length"}
!644 = !{!"branch_weights", i32 1, i32 697856}
!645 = !{!646, !574, i64 0}
!646 = !{!"VEC_edge_base", !574, i64 0, !574, i64 4, !575, i64 8}
!647 = !{!"function_entry_count", i64 3175753}
!648 = !{!"tree-ssa-loop-niter.c:gimple_op"}
!649 = !{!"branch_weights", i32 1, i32 3175754}
!650 = !{!"function_entry_count", i64 3185661}
!651 = !{!"tree-ssa-loop-niter.c:gimple_has_ops"}
!652 = !{!"tree-ssa-loop-niter.c:gimple_ops"}
!653 = !{!594, !594, i64 0}
!654 = !{!"tree-ssa-loop-niter.c:gimple_statement_structure"}
!655 = !{!"tree-ssa-loop-niter.c:gss_for_code"}
!656 = !{!"tree-ssa-loop-niter.c:gimple_expr_code"}
!657 = !{!"branch_weights", i32 1, i32 846244, i32 2, i32 1}
!658 = !{!"function_entry_count", i64 120560}
!659 = !{!"tree-ssa-loop-niter.c:gimple_num_ops"}
!660 = !{!"function_entry_count", i64 61909}
!661 = !{!"branch_weights", i32 37408, i32 24503}
!662 = !{!663, !574, i64 36}
!663 = !{!"loop", !574, i64 0, !574, i64 4, !593, i64 8, !593, i64 16, !664, i64 24, !574, i64 32, !574, i64 36, !593, i64 40, !593, i64 48, !593, i64 56, !593, i64 64, !593, i64 72, !665, i64 80, !665, i64 96, !575, i64 112, !575, i64 113, !574, i64 116, !593, i64 120, !593, i64 128, !575, i64 136, !593, i64 144}
!664 = !{!"lpt_decision", !574, i64 0, !574, i64 4}
!665 = !{!"", !594, i64 0, !594, i64 8}
!666 = !{!"branch_weights", i32 1, i32 20085}
!667 = !{!"branch_weights", i32 171044, i32 1}
!668 = !{!"branch_weights", i32 18307, i32 534816}
!669 = !{!"branch_weights", i32 985, i32 17323}
!670 = !{!"branch_weights", i32 382078, i32 171044}
!671 = distinct !{!671, !584}
!672 = !{!"branch_weights", i32 168282, i32 20085}
!673 = distinct !{!673, !584}
!674 = !{!"function_entry_count", i64 640268}
!675 = !{!"tree-ssa-loop-niter.c:gsi_start_bb"}
!676 = !{!677, !593, i64 0}
!677 = !{!"", !593, i64 0, !593, i64 8, !593, i64 16}
!678 = !{!677, !593, i64 8}
!679 = !{!677, !593, i64 16}
!680 = !{!"function_entry_count", i64 2373873}
!681 = !{!"tree-ssa-loop-niter.c:gsi_end_p"}
!682 = !{!"function_entry_count", i64 1766725}
!683 = !{!"tree-ssa-loop-niter.c:gsi_stmt"}
!684 = !{!685, !593, i64 0}
!685 = !{!"gimple_seq_node_d", !593, i64 0, !593, i64 8, !593, i64 16}
!686 = !{!"function_entry_count", i64 1741504}
!687 = !{!"tree-ssa-loop-niter.c:gsi_next"}
!688 = !{!685, !593, i64 16}
!689 = !{!"tree-ssa-loop-niter.c:bb_seq"}
!690 = !{!592, !574, i64 96}
!691 = !{!"branch_weights", i32 640269, i32 1}
!692 = !{!"branch_weights", i32 1, i32 640269}
!693 = !{!694, !593, i64 0}
!694 = !{!"gimple_bb_info", !593, i64 0, !593, i64 8}
!695 = !{!"tree-ssa-loop-niter.c:gimple_seq_first"}
!696 = !{!697, !593, i64 0}
!697 = !{!"gimple_seq_d", !593, i64 0, !593, i64 8, !593, i64 16}
!698 = !{!"function_entry_count", i64 167555}
!699 = !{!663, !593, i64 16}
!700 = !{!"branch_weights", i32 20958, i32 146599}
!701 = !{!702, !593, i64 0}
!702 = !{!"tree_niter_desc", !593, i64 0, !593, i64 8, !593, i64 16, !665, i64 24, !703, i64 40, !593, i64 64, !574, i64 72}
!703 = !{!"", !593, i64 0, !593, i64 8, !575, i64 16}
!704 = !{!"branch_weights", i32 1, i32 146599}
!705 = !{!"branch_weights", i32 139423, i32 7177}
!706 = !{!622, !574, i64 48}
!707 = !{!"branch_weights", i32 118994, i32 20430}
!708 = !{!"branch_weights", i32 12809, i32 17799, i32 6591, i32 78065, i32 15411, i32 8753}
!709 = !{!"branch_weights", i32 199551860, i32 -724127988, i32 -1144879365, i32 54641}
!710 = !{!"branch_weights", i32 70887, i32 52078}
!711 = !{!"branch_weights", i32 13760, i32 38319}
!712 = !{!703, !593, i64 0}
!713 = !{!"branch_weights", i32 64, i32 38256}
!714 = !{!"branch_weights", i32 38256, i32 1}
!715 = !{!702, !593, i64 8}
!716 = !{!702, !593, i64 16}
!717 = !{!"branch_weights", i32 1020, i32 37237}
!718 = !{!"branch_weights", i32 1007, i32 14}
!719 = !{!"branch_weights", i32 1007, i32 1}
!720 = !{!"branch_weights", i32 918, i32 90}
!721 = !{!703, !593, i64 8}
!722 = !{!"branch_weights", i32 1, i32 90}
!723 = !{!"branch_weights", i32 21, i32 70}
!724 = !{!"branch_weights", i32 20, i32 51}
!725 = !{!"branch_weights", i32 1, i32 -1}
!726 = !{!"branch_weights", i32 6, i32 15}
!727 = !{!"branch_weights", i32 1, i32 54}
!728 = !{!729, !574, i64 8}
!729 = !{!"", !593, i64 0, !574, i64 8, !574, i64 12, !575, i64 16}
!730 = !{!"branch_weights", i32 90, i32 1}
!731 = !{!"function_entry_count", i64 366970}
!732 = !{!"tree-ssa-loop-niter.c:gimple_cond_code"}
!733 = !{!"function_entry_count", i64 354162}
!734 = !{!"tree-ssa-loop-niter.c:gimple_cond_lhs"}
!735 = !{!"tree-ssa-loop-niter.c:gimple_cond_rhs"}
!736 = !{!"function_entry_count", i64 175040}
!737 = !{!"tree-ssa-loop-niter.c:loop_containing_stmt"}
!738 = !{!"branch_weights", i32 1, i32 175041}
!739 = !{!"function_entry_count", i64 38318}
!740 = !{!"tree-ssa-loop-niter.c:number_of_iterations_cond"}
!741 = !{i64 0, i64 8, !653, i64 8, i64 8, !653}
!742 = !{i64 0, i64 8, !653}
!743 = !{!702, !593, i64 64}
!744 = !{!702, !574, i64 72}
!745 = !{!"branch_weights", i32 508695352, i32 734597048}
!746 = !{!"branch_weights", i32 9402, i32 13241}
!747 = !{!"branch_weights", i32 9021, i32 382}
!748 = !{!"branch_weights", i32 1354460809, i32 55831668, i32 36803}
!749 = !{!703, !575, i64 16}
!750 = !{!"branch_weights", i32 24378, i32 13942}
!751 = !{!"branch_weights", i32 12826, i32 1117}
!752 = !{!"branch_weights", i32 7399, i32 5428}
!753 = !{!"branch_weights", i32 1117, i32 7399}
!754 = !{!"branch_weights", i32 31847, i32 6473}
!755 = !{!"branch_weights", i32 1, i32 31847}
!756 = !{!"branch_weights", i32 6420, i32 54}
!757 = !{!"branch_weights", i32 9371, i32 28896}
!758 = !{!"branch_weights", i32 1, i32 28896}
!759 = !{!"branch_weights", i32 28886, i32 11}
!760 = !{!"branch_weights", i32 6420, i32 22467}
!761 = !{!"branch_weights", i32 1, i32 6420}
!762 = !{!"branch_weights", i32 38245, i32 12}
!763 = !{!"branch_weights", i32 38245, i32 1}
!764 = !{!663, !574, i64 0}
!765 = !{!"branch_weights", i32 1, i32 9369, i32 16586, i32 12292}
!766 = !{!"branch_weights", i32 1, i32 9369}
!767 = !{!"function_entry_count", i64 114933}
!768 = !{!"tree-ssa-loop-niter.c:simplify_using_outer_evolutions"}
!769 = !{!"branch_weights", i32 39210, i32 75725}
!770 = !{!"branch_weights", i32 1, i32 85}
!771 = !{!"branch_weights", i32 2138051070, i32 -2138051070}
!772 = !{!"branch_weights", i32 2138051070, i32 9432578}
!773 = !{!"branch_weights", i32 39126, i32 1}
!774 = !{!"function_entry_count", i64 76510}
!775 = !{!"tree-ssa-loop-niter.c:simplify_using_initial_conditions"}
!776 = !{!"branch_weights", i32 66731, i32 9781}
!777 = !{!663, !593, i64 8}
!778 = !{!779, !593, i64 8}
!779 = !{!"function", !593, i64 0, !593, i64 8, !593, i64 16, !593, i64 24, !593, i64 32, !593, i64 40, !593, i64 48, !593, i64 56, !593, i64 64, !593, i64 72, !593, i64 80, !593, i64 88, !593, i64 96, !574, i64 104, !574, i64 108, !574, i64 112, !574, i64 116, !574, i64 120, !574, i64 124, !593, i64 128, !574, i64 136, !574, i64 137, !574, i64 138, !574, i64 138, !574, i64 138, !574, i64 138, !574, i64 138, !574, i64 138, !574, i64 138, !574, i64 139, !574, i64 139, !574, i64 139, !574, i64 139, !574, i64 139, !574, i64 139, !574, i64 139}
!780 = !{!781, !593, i64 0}
!781 = !{!"control_flow_graph", !593, i64 0, !593, i64 8, !593, i64 16, !574, i64 24, !574, i64 28, !574, i64 32, !593, i64 40, !574, i64 48, !575, i64 52, !575, i64 60, !574, i64 68, !574, i64 72}
!782 = !{!"branch_weights", i32 1, i32 9780}
!783 = !{!"branch_weights", i32 64707, i32 55164}
!784 = !{!"branch_weights", i32 9314, i32 45851}
!785 = !{!"branch_weights", i32 21997, i32 23855}
!786 = !{!"branch_weights", i32 123048, i32 6603}
!787 = !{!"branch_weights", i32 110090, i32 9780}
!788 = distinct !{!788, !584}
!789 = !{!"function_entry_count", i64 89}
!790 = !{!"tree-ssa-loop-niter.c:gimple_location"}
!791 = !{!"function_entry_count", i64 77519}
!792 = !{!"tree-ssa-loop-niter.c:shwi_to_double_int"}
!793 = !{!"function_entry_count", i64 38244}
!794 = !{!"tree-ssa-loop-niter.c:bound_difference"}
!795 = !{!"branch_weights", i32 23509, i32 14737}
!796 = !{!"branch_weights", i32 23293, i32 217}
!797 = !{!"branch_weights", i32 6040, i32 8698}
!798 = !{!"branch_weights", i32 1, i32 29547}
!799 = !{!"branch_weights", i32 166144, i32 175237}
!800 = !{!"branch_weights", i32 27734, i32 147504}
!801 = !{!"branch_weights", i32 84905, i32 62600}
!802 = !{!"branch_weights", i32 352194, i32 18734}
!803 = !{!"branch_weights", i32 311833, i32 29547}
!804 = distinct !{!804, !584}
!805 = !{!"function_entry_count", i64 0}
!806 = !{!"tree-ssa-loop-niter.c:dump_affine_iv"}
!807 = !{!"function_entry_count", i64 9506}
!808 = !{!"tree-ssa-loop-niter.c:number_of_iterations_ne"}
!809 = !{i64 0, i64 8, !614, i64 8, i64 8, !614, i64 16, i64 1, !579}
!810 = !{!"branch_weights", i32 2143, i32 7365}
!811 = !{!"branch_weights", i32 387, i32 9121}
!812 = !{!"branch_weights", i32 240, i32 148}
!813 = !{!"branch_weights", i32 202, i32 39}
!814 = !{!"function_entry_count", i64 28876}
!815 = !{!"tree-ssa-loop-niter.c:number_of_iterations_lt"}
!816 = !{!"branch_weights", i32 6420, i32 22458}
!817 = !{!"branch_weights", i32 7240, i32 21638}
!818 = !{!"branch_weights", i32 1, i32 21638}
!819 = !{!"branch_weights", i32 862, i32 6379}
!820 = !{!"branch_weights", i32 1, i32 6379}
!821 = !{!"branch_weights", i32 8958, i32 19059}
!822 = !{!"branch_weights", i32 42, i32 821}
!823 = !{!"branch_weights", i32 724, i32 139}
!824 = !{!"branch_weights", i32 1, i32 724}
!825 = !{!"function_entry_count", i64 12291}
!826 = !{!"tree-ssa-loop-niter.c:number_of_iterations_le"}
!827 = !{!"branch_weights", i32 150381169, i32 367920, i32 12263}
!828 = !{!"branch_weights", i32 10153, i32 2140}
!829 = !{!"branch_weights", i32 102758769, i32 172346, i32 10137}
!830 = !{!"branch_weights", i32 4612, i32 5526}
!831 = !{!"branch_weights", i32 10137, i32 1}
!832 = !{!"branch_weights", i32 739, i32 9399}
!833 = !{!"branch_weights", i32 5414, i32 6879}
!834 = !{!"branch_weights", i32 47320641, i32 6880, i32 6879}
!835 = !{!"branch_weights", i32 28998225, i32 161580, i32 5385}
!836 = !{!"function_entry_count", i64 170000}
!837 = !{!"tree-ssa-loop-niter.c:split_to_var_and_offset"}
!838 = !{!"branch_weights", i32 74023, i32 22, i32 17627, i32 2127, i32 76206}
!839 = !{!"branch_weights", i32 19707, i32 68}
!840 = !{!"branch_weights", i32 19707, i32 1}
!841 = !{!"function_entry_count", i64 216}
!842 = !{!"tree-ssa-loop-niter.c:bound_difference_of_offsetted_base"}
!843 = !{!"branch_weights", i32 1, i32 217}
!844 = !{!"branch_weights", i32 5, i32 213}
!845 = !{!"branch_weights", i32 5, i32 1}
!846 = !{!"function_entry_count", i64 76056}
!847 = !{!"tree-ssa-loop-niter.c:determine_value_range"}
!848 = !{!"branch_weights", i32 33277, i32 42781}
!849 = !{!"branch_weights", i32 10303, i32 22975}
!850 = !{!"branch_weights", i32 8166, i32 14810}
!851 = !{!"function_entry_count", i64 147503}
!852 = !{!"tree-ssa-loop-niter.c:refine_bounds_using_guard"}
!853 = !{!"branch_weights", i32 38681, i32 4352, i32 10254, i32 13042, i32 15719, i32 65462}
!854 = !{!"branch_weights", i32 10833, i32 32532}
!855 = !{!"branch_weights", i32 59294, i32 6169}
!856 = !{!"branch_weights", i32 -1187975353, i32 74085846}
!857 = !{!"branch_weights", i32 44996, i32 12919}
!858 = !{!"branch_weights", i32 1, i32 44996}
!859 = !{!"branch_weights", i32 31213, i32 13784}
!860 = !{!"branch_weights", i32 1, i32 31213}
!861 = !{!"branch_weights", i32 30771, i32 443}
!862 = !{!"branch_weights", i32 37354, i32 9404}
!863 = !{!"branch_weights", i32 25267, i32 21491}
!864 = !{!"branch_weights", i32 9001, i32 12491}
!865 = !{!"branch_weights", i32 1794089, i32 45600559}
!866 = !{!"branch_weights", i32 3986, i32 8506}
!867 = !{!"branch_weights", i32 616, i32 3371}
!868 = !{!"branch_weights", i32 3931, i32 56}
!869 = !{!"branch_weights", i32 155550663, i32 399465}
!870 = !{!"branch_weights", i32 9009, i32 3453}
!871 = !{!"branch_weights", i32 452, i32 12010}
!872 = !{!"branch_weights", i32 11809, i32 202}
!873 = !{!"branch_weights", i32 133, i32 320}
!874 = !{!"function_entry_count", i64 270980}
!875 = !{!"branch_weights", i32 -2088861460, i32 164340219}
!876 = !{!"branch_weights", i32 -1823234033, i32 1389379689}
!877 = !{!"function_entry_count", i64 7364}
!878 = !{!"tree-ssa-loop-niter.c:bounds_negate"}
!879 = !{!"tree-ssa-loop-niter.c:number_of_iterations_ne_max"}
!880 = !{!"branch_weights", i32 21788715, i32 14845609}
!881 = !{!"branch_weights", i32 2795, i32 2861}
!882 = !{!"branch_weights", i32 2847, i32 15}
!883 = !{!"branch_weights", i32 15, i32 1}
!884 = !{!"function_entry_count", i64 386}
!885 = !{!"tree-ssa-loop-niter.c:inverse"}
!886 = !{!"branch_weights", i32 387, i32 1}
!887 = !{!"branch_weights", i32 1, i32 387}
!888 = !{!"branch_weights", i32 1, i32 386}
!889 = !{!"branch_weights", i32 386, i32 10523}
!890 = distinct !{!890, !584}
!891 = distinct !{!891, !584}
!892 = !{!"function_entry_count", i64 861}
!893 = !{!"tree-ssa-loop-niter.c:number_of_iterations_lt_to_ne"}
!894 = !{!"branch_weights", i32 93025, i32 170748, i32 305}
!895 = !{!"branch_weights", i32 139, i32 724}
!896 = !{!"branch_weights", i32 117, i32 23}
!897 = !{!"branch_weights", i32 23, i32 117}
!898 = !{!"branch_weights", i32 529, i32 24, i32 23}
!899 = !{!"branch_weights", i32 23, i32 1}
!900 = !{!"branch_weights", i32 5, i32 135}
!901 = !{!"branch_weights", i32 19, i32 117}
!902 = !{!"branch_weights", i32 19, i32 1}
!903 = !{!"branch_weights", i32 111, i32 25}
!904 = !{!"branch_weights", i32 1, i32 50, i32 1}
!905 = !{!"branch_weights", i32 1, i32 139}
!906 = !{!"function_entry_count", i64 723}
!907 = !{!"tree-ssa-loop-niter.c:assert_no_overflow_lt"}
!908 = !{!"branch_weights", i32 38, i32 687}
!909 = !{!"branch_weights", i32 142, i32 546}
!910 = !{!"branch_weights", i32 46, i32 97}
!911 = !{!"branch_weights", i32 25, i32 14}
!912 = !{!"branch_weights", i32 1, i32 25}
!913 = !{!"branch_weights", i32 166, i32 1}
!914 = !{!"branch_weights", i32 130, i32 37}
!915 = !{!"tree-ssa-loop-niter.c:assert_loop_rolls_lt"}
!916 = !{!"branch_weights", i32 545, i32 180}
!917 = !{!"branch_weights", i32 39758, i32 110317}
!918 = !{!"branch_weights", i32 29241, i32 62264, i32 171}
!919 = !{!"branch_weights", i32 5, i32 528}
!920 = !{!"branch_weights", i32 29241, i32 61576, i32 171}
!921 = !{!"branch_weights", i32 1, i32 10, i32 1}
!922 = !{!"branch_weights", i32 138, i32 395}
!923 = !{!"branch_weights", i32 14, i32 519}
!924 = !{!"function_entry_count", i64 12429}
!925 = !{!"tree-ssa-loop-niter.c:bounds_add"}
!926 = !{!"branch_weights", i32 594, i32 11837}
!927 = !{!"branch_weights", i32 1, i32 12430}
!928 = !{!"function_entry_count", i64 179861}
!929 = !{!"tree-ssa-loop-niter.c:instantiate_parameters"}
!930 = !{!"tree-ssa-loop-niter.c:block_before_loop"}
!931 = !{!"branch_weights", i32 1, i32 179862}
!932 = !{!"function_entry_count", i64 45850}
!933 = !{!"tree-ssa-loop-niter.c:tree_simplify_using_condition"}
!934 = !{!"function_entry_count", i64 46232}
!935 = !{!"tree-ssa-loop-niter.c:tree_simplify_using_condition_1"}
!936 = !{!"branch_weights", i32 831, i32 45403}
!937 = !{!"branch_weights", i32 192, i32 1}
!938 = !{!"branch_weights", i32 1, i32 192}
!939 = !{!"branch_weights", i32 2143297520, i32 -2143297520}
!940 = !{!"branch_weights", i32 -2147483648, i32 0}
!941 = !{!"branch_weights", i32 12295, i32 32918}
!942 = !{!"branch_weights", i32 12295, i32 1}
!943 = !{!"branch_weights", i32 4008, i32 41205}
!944 = !{!"branch_weights", i32 3995, i32 14}
!945 = !{!"branch_weights", i32 3995, i32 1}
!946 = !{!"branch_weights", i32 3273, i32 41927}
!947 = !{!"branch_weights", i32 3197, i32 77}
!948 = !{!"branch_weights", i32 3197, i32 1}
!949 = !{!"branch_weights", i32 43678, i32 1446}
!950 = !{!"branch_weights", i32 1444, i32 3}
!951 = !{!"branch_weights", i32 43992, i32 1130}
!952 = !{!"branch_weights", i32 984, i32 147}
!953 = !{!"function_entry_count", i64 258563}
!954 = !{!"tree-ssa-loop-niter.c:simplify_replace_tree"}
!955 = !{!"branch_weights", i32 112896, i32 145669}
!956 = !{!"branch_weights", i32 1764, i32 143906}
!957 = !{!"branch_weights", i32 139629, i32 4278}
!958 = !{!"branch_weights", i32 1746700512, i32 -1915182419}
!959 = !{!"branch_weights", i32 1, i32 59104}
!960 = !{!"branch_weights", i32 93601, i32 6159}
!961 = !{!"branch_weights", i32 6159, i32 1}
!962 = !{!"branch_weights", i32 59104, i32 40655}
!963 = distinct !{!963, !584}
!964 = !{!"branch_weights", i32 1923706442, i32 223777206}
!965 = !{!"function_entry_count", i64 13287}
!966 = !{i32 0, i32 2}
!967 = !{!"branch_weights", i32 1, i32 13287}
!968 = !{!"branch_weights", i32 15213, i32 25524}
!969 = !{!"branch_weights", i32 21850, i32 3675}
!970 = !{!"branch_weights", i32 3675, i32 1}
!971 = !{!"branch_weights", i32 791, i32 2885}
!972 = !{!"branch_weights", i32 2869, i32 17}
!973 = !{!"branch_weights", i32 9, i32 9}
!974 = !{!"branch_weights", i32 3, i32 7}
!975 = !{!"branch_weights", i32 3, i32 1}
!976 = !{!"branch_weights", i32 13287, i32 27449}
!977 = distinct !{!977, !584}
!978 = !{!"branch_weights", i32 10420, i32 2869}
!979 = !{!"function_entry_count", i64 239173}
!980 = !{!"tree-ssa-loop-niter.c:VEC_edge_base_iterate"}
!981 = !{!"branch_weights", i32 27, i32 239148}
!982 = !{!"branch_weights", i32 164471, i32 74678}
!983 = !{!"function_entry_count", i64 81906}
!984 = !{!"tree-ssa-loop-niter.c:VEC_edge_heap_free"}
!985 = !{!"branch_weights", i32 27, i32 81881}
!986 = !{!"function_entry_count", i64 27597}
!987 = !{!"branch_weights", i32 27598, i32 1}
!988 = !{!"branch_weights", i32 4739411, i32 -1921384068}
!989 = !{!"branch_weights", i32 55, i32 1}
!990 = !{!"branch_weights", i32 1, i32 20340}
!991 = !{!"branch_weights", i32 10632, i32 35168}
!992 = !{!"branch_weights", i32 27965, i32 7204}
!993 = !{!"branch_weights", i32 7204, i32 1}
!994 = !{!"branch_weights", i32 20340, i32 25459}
!995 = distinct !{!995, !584}
!996 = !{!"function_entry_count", i64 36380}
!997 = !{!"branch_weights", i32 1, i32 36381}
!998 = !{!"branch_weights", i32 34196, i32 2186}
!999 = !{!"branch_weights", i32 25310, i32 8887}
!1000 = !{!"branch_weights", i32 34201, i32 1}
!1001 = !{!"branch_weights", i32 36375, i32 20}
!1002 = !{!"branch_weights", i32 34187, i32 2189}
!1003 = !{!622, !574, i64 44}
!1004 = !{!"branch_weights", i32 36384, i32 10}
!1005 = distinct !{!1005, !584}
!1006 = !{!1007, !574, i64 8}
!1007 = !{!"param_info", !593, i64 0, !574, i64 8, !575, i64 12, !574, i64 16, !574, i64 20, !593, i64 24}
!1008 = !{!"branch_weights", i32 1, i32 232}
!1009 = !{!"branch_weights", i32 223, i32 10}
!1010 = !{!"branch_weights", i32 10, i32 1}
!1011 = !{!"branch_weights", i32 222, i32 223}
!1012 = distinct !{!1012, !584}
!1013 = !{!"branch_weights", i32 1, i32 445}
!1014 = !{!"branch_weights", i32 29569, i32 127}
!1015 = distinct !{!1015, !584}
!1016 = !{!"function_entry_count", i64 36374}
!1017 = !{!"tree-ssa-loop-niter.c:get_base_for"}
!1018 = !{!"branch_weights", i32 36375, i32 1}
!1019 = !{!"branch_weights", i32 24739, i32 11637}
!1020 = !{!"branch_weights", i32 11621, i32 17}
!1021 = !{!"branch_weights", i32 9296, i32 2326}
!1022 = !{!"branch_weights", i32 2189, i32 138}
!1023 = !{!"function_entry_count", i64 1339}
!1024 = !{!"tree-ssa-loop-niter.c:get_val_for"}
!1025 = !{!"branch_weights", i32 1, i32 1340}
!1026 = !{!"branch_weights", i32 454, i32 887}
!1027 = !{!"branch_weights", i32 454, i32 434}
!1028 = !{!"branch_weights", i32 1, i32 434}
!1029 = !{!"branch_weights", i32 434, i32 1}
!1030 = !{!"function_entry_count", i64 46939}
!1031 = !{!"tree-ssa-loop-niter.c:chain_of_csts_start"}
!1032 = !{!"branch_weights", i32 385, i32 46556}
!1033 = !{!"branch_weights", i32 3572, i32 42985}
!1034 = !{!"branch_weights", i32 69863420, i32 424497780, i32 692697190}
!1035 = !{!"branch_weights", i32 13825, i32 1548}
!1036 = !{!"branch_weights", i32 9919, i32 15167}
!1037 = !{!"branch_weights", i32 1, i32 9919}
!1038 = !{!"branch_weights", i32 11, i32 9909}
!1039 = !{!"branch_weights", i32 11, i32 1}
!1040 = !{!"branch_weights", i32 1669, i32 8241}
!1041 = !{!"function_entry_count", i64 25084}
!1042 = !{!"tree-ssa-loop-niter.c:gimple_references_memory_p"}
!1043 = !{!"branch_weights", i32 1, i32 25085}
!1044 = !{!"function_entry_count", i64 9908}
!1045 = !{!"tree-ssa-loop-niter.c:single_ssa_tree_operand"}
!1046 = !{!"branch_weights", i32 9909, i32 1}
!1047 = !{!"function_entry_count", i64 60076}
!1048 = !{!"tree-ssa-loop-niter.c:gimple_has_mem_ops"}
!1049 = !{!"function_entry_count", i64 34992}
!1050 = !{!"tree-ssa-loop-niter.c:gimple_vuse"}
!1051 = !{!"branch_weights", i32 1, i32 34993}
!1052 = !{!"tree-ssa-loop-niter.c:op_iter_init_tree"}
!1053 = !{!1054, !574, i64 4}
!1054 = !{!"ssa_operand_iterator_d", !575, i64 0, !574, i64 4, !593, i64 8, !593, i64 16, !574, i64 24, !574, i64 28, !593, i64 32}
!1055 = !{!"function_entry_count", i64 19816}
!1056 = !{!"tree-ssa-loop-niter.c:op_iter_done"}
!1057 = !{!1054, !575, i64 0}
!1058 = !{!"tree-ssa-loop-niter.c:op_iter_next_tree"}
!1059 = !{!1054, !593, i64 16}
!1060 = !{!"branch_weights", i32 8241, i32 11577}
!1061 = !{!1062, !593, i64 0}
!1062 = !{!"use_optype_d", !593, i64 0, !613, i64 8}
!1063 = !{!1054, !593, i64 8}
!1064 = !{!"branch_weights", i32 8241, i32 1}
!1065 = !{!1066, !593, i64 8}
!1066 = !{!"def_optype_d", !593, i64 0, !593, i64 8}
!1067 = !{!1066, !593, i64 0}
!1068 = !{!"tree-ssa-loop-niter.c:op_iter_init"}
!1069 = !{!"branch_weights", i32 1, i32 9909}
!1070 = !{!"tree-ssa-loop-niter.c:gimple_use_ops"}
!1071 = !{!"tree-ssa-loop-niter.c:get_def_from_ptr"}
!1072 = !{!"function_entry_count", i64 1200394}
!1073 = !{!"tree-ssa-loop-niter.c:is_gimple_assign"}
!1074 = !{!"function_entry_count", i64 866}
!1075 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs_class"}
!1076 = !{!"function_entry_count", i64 433}
!1077 = !{!"tree-ssa-loop-niter.c:gimple_expr_type"}
!1078 = !{!"branch_weights", i32 1, i32 2, i32 1736, i32 1}
!1079 = !{!"tree-ssa-loop-niter.c:gimple_call_return_type"}
!1080 = !{!"tree-ssa-loop-niter.c:gimple_call_fn"}
!1081 = !{!"function_entry_count", i64 13342}
!1082 = !{!"branch_weights", i32 1, i32 13343}
!1083 = !{!"branch_weights", i32 1, i32 13342}
!1084 = !{!"branch_weights", i32 10657, i32 17686}
!1085 = !{!"branch_weights", i32 8, i32 17679}
!1086 = !{!"branch_weights", i32 8, i32 1}
!1087 = !{!"branch_weights", i32 13342, i32 15000}
!1088 = distinct !{!1088, !584}
!1089 = !{!"branch_weights", i32 13336, i32 8}
!1090 = !{!"function_entry_count", i64 113724}
!1091 = !{!"branch_weights", i32 1, i32 113725}
!1092 = !{!"branch_weights", i32 -1083422226, i32 1551328215}
!1093 = !{!"branch_weights", i32 1, i32 74175}
!1094 = !{!"branch_weights", i32 135779, i32 76752}
!1095 = !{!"branch_weights", i32 59443, i32 76337}
!1096 = !{!"branch_weights", i32 73831, i32 2507}
!1097 = !{!"branch_weights", i32 74175, i32 138355}
!1098 = distinct !{!1098, !584}
!1099 = !{!"branch_weights", i32 296707, i32 1}
!1100 = !{!"function_entry_count", i64 286704}
!1101 = !{!"tree-ssa-loop-niter.c:handled_component_p"}
!1102 = !{!"branch_weights", i32 74176, i32 1, i32 135779, i32 76752, i32 1, i32 1, i32 1, i32 1}
!1103 = !{!"function_entry_count", i64 55686}
!1104 = !{!663, !574, i64 116}
!1105 = !{!"branch_weights", i32 27735, i32 27953}
!1106 = !{!663, !575, i64 112}
!1107 = !{!663, !575, i64 113}
!1108 = !{!"branch_weights", i32 1, i32 27734}
!1109 = !{!"branch_weights", i32 39558, i32 10040}
!1110 = !{!"branch_weights", i32 7830, i32 2211}
!1111 = !{!"branch_weights", i32 27734, i32 21863}
!1112 = distinct !{!1112, !584}
!1113 = !{!592, !594, i64 72}
!1114 = !{!"branch_weights", i32 27735, i32 1}
!1115 = !{!"branch_weights", i32 15766, i32 11970}
!1116 = !{!"branch_weights", i32 8730, i32 3241}
!1117 = !{!"branch_weights", i32 2, i32 3240}
!1118 = !{!"function_entry_count", i64 23287}
!1119 = !{!"tree-ssa-loop-niter.c:record_estimate"}
!1120 = !{!"branch_weights", i32 23288, i32 1}
!1121 = !{!"branch_weights", i32 15402, i32 7887}
!1122 = !{!"branch_weights", i32 3410, i32 79435369}
!1123 = !{!"branch_weights", i32 3410, i32 19879}
!1124 = !{!1125, !593, i64 0}
!1125 = !{!"nb_iter_bound", !593, i64 0, !665, i64 8, !575, i64 24, !593, i64 32}
!1126 = !{!1125, !575, i64 24}
!1127 = !{!663, !593, i64 120}
!1128 = !{!1125, !593, i64 32}
!1129 = !{!"branch_weights", i32 13249, i32 10040}
!1130 = !{!"branch_weights", i32 3984, i32 9266}
!1131 = !{!"branch_weights", i32 5301, i32 3966}
!1132 = !{!"branch_weights", i32 1, i32 23288}
!1133 = !{!"function_entry_count", i64 27734}
!1134 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_undefined"}
!1135 = !{!"branch_weights", i32 449747, i32 1}
!1136 = !{!"branch_weights", i32 980561, i32 219402}
!1137 = !{!"branch_weights", i32 750215, i32 449747}
!1138 = distinct !{!1138, !584}
!1139 = !{!"branch_weights", i32 422014, i32 27734}
!1140 = distinct !{!1140, !584}
!1141 = !{!"tree-ssa-loop-niter.c:gcov_type_to_double_int"}
!1142 = !{!"tree-ssa-loop-niter.c:record_niter_bound"}
!1143 = !{!"branch_weights", i32 11970, i32 7910}
!1144 = !{!"branch_weights", i32 722, i32 7189}
!1145 = !{!"branch_weights", i32 15663, i32 7626}
!1146 = !{!"branch_weights", i32 3262, i32 4365}
!1147 = !{!"branch_weights", i32 26, i32 4340}
!1148 = !{!"function_entry_count", i64 1199961}
!1149 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_array"}
!1150 = !{!"branch_weights", i32 350149, i32 849814}
!1151 = !{!"branch_weights", i32 72143, i32 777672}
!1152 = !{!"branch_weights", i32 351526, i32 498289}
!1153 = !{!"branch_weights", i32 265700, i32 84450}
!1154 = !{!"branch_weights", i32 45142, i32 39309}
!1155 = !{!"branch_weights", i32 5, i32 39305}
!1156 = !{!"branch_weights", i32 1, i32 84449}
!1157 = !{!"branch_weights", i32 35, i32 179508}
!1158 = !{!"branch_weights", i32 84449, i32 95093}
!1159 = distinct !{!1159, !584}
!1160 = !{!"function_entry_count", i64 219401}
!1161 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_signedness"}
!1162 = !{!"branch_weights", i32 154429, i32 64974}
!1163 = !{!"branch_weights", i32 143993, i32 10437}
!1164 = !{!"branch_weights", i32 -968355205, i32 2117772550}
!1165 = !{!"branch_weights", i32 991793824, i32 -2056068956}
!1166 = !{!"branch_weights", i32 10108, i32 16906}
!1167 = !{!"branch_weights", i32 78721104, i32 23470777}
!1168 = !{!"branch_weights", i32 7777, i32 12}
!1169 = !{!"branch_weights", i32 7777, i32 1}
!1170 = !{!"function_entry_count", i64 1004241}
!1171 = !{!"tree-ssa-loop-niter.c:gimple_assign_lhs"}
!1172 = !{!"function_entry_count", i64 423705}
!1173 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_ref"}
!1174 = !{!1175, !593, i64 0}
!1175 = !{!"ilb_data", !593, i64 0, !593, i64 8, !575, i64 16}
!1176 = !{!1175, !593, i64 8}
!1177 = !{!1175, !575, i64 16}
!1178 = !{!"function_entry_count", i64 350148}
!1179 = !{!"tree-ssa-loop-niter.c:is_gimple_call"}
!1180 = !{!"function_entry_count", i64 84449}
!1181 = !{!"tree-ssa-loop-niter.c:gimple_call_num_args"}
!1182 = !{!"tree-ssa-loop-niter.c:gimple_call_lhs"}
!1183 = !{!"function_entry_count", i64 179541}
!1184 = !{!"tree-ssa-loop-niter.c:gimple_call_arg"}
!1185 = !{!"function_entry_count", i64 494970}
!1186 = !{!"tree-ssa-loop-niter.c:idx_infer_loop_bounds"}
!1187 = !{!"branch_weights", i32 113725, i32 381247}
!1188 = !{!"branch_weights", i32 39550, i32 74176}
!1189 = !{!"branch_weights", i32 -1119651571, i32 -1003481483}
!1190 = !{!"branch_weights", i32 10810, i32 45033}
!1191 = !{!"branch_weights", i32 10810, i32 1}
!1192 = !{!"branch_weights", i32 116856100, i32 21621}
!1193 = !{!"branch_weights", i32 4695, i32 6116}
!1194 = !{!"branch_weights", i32 779, i32 5338}
!1195 = !{!"branch_weights", i32 1, i32 5473}
!1196 = !{!"branch_weights", i32 5071, i32 403}
!1197 = !{!"branch_weights", i32 5133, i32 341}
!1198 = !{!"branch_weights", i32 1, i32 5133}
!1199 = !{!"function_entry_count", i64 13248}
!1200 = !{!"tree-ssa-loop-niter.c:record_nonwrapping_iv"}
!1201 = !{!"branch_weights", i32 13249, i32 1}
!1202 = !{!"branch_weights", i32 10627, i32 2623}
!1203 = !{!"branch_weights", i32 179, i32 2445}
!1204 = !{!"branch_weights", i32 9260, i32 1368}
!1205 = !{!"tree-ssa-loop-niter.c:derive_constant_upper_bound"}
!1206 = !{!"tree-ssa-loop-niter.c:derive_constant_upper_bound_ops"}
!1207 = !{!"branch_weights", i32 -2039542272, i32 170207}
!1208 = !{!"branch_weights", i32 1, i32 13249, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1209 = !{!"tree-ssa-loop-niter.c:derive_constant_upper_bound_assign"}
!1210 = !{!"function_entry_count", i64 2627}
!1211 = !{!"branch_weights", i32 1, i32 2627}
!1212 = !{!"branch_weights", i32 2627, i32 11686}
!1213 = distinct !{!1213, !584}
!1214 = !{!"function_entry_count", i64 14161}
!1215 = !{!"tree-ssa-loop-niter.c:fel_init"}
!1216 = !{!1217, !574, i64 8}
!1217 = !{!"", !593, i64 0, !574, i64 8}
!1218 = !{!779, !593, i64 32}
!1219 = !{!"branch_weights", i32 1, i32 14162}
!1220 = !{!1217, !593, i64 0}
!1221 = !{!1222, !593, i64 24}
!1222 = !{!"loops", !574, i64 0, !593, i64 8, !593, i64 16, !593, i64 24}
!1223 = !{!"branch_weights", i32 59098, i32 14162}
!1224 = !{!663, !593, i64 48}
!1225 = !{!"branch_weights", i32 43685, i32 29575}
!1226 = !{!663, !593, i64 56}
!1227 = !{!"branch_weights", i32 43736, i32 43685}
!1228 = !{!"branch_weights", i32 14162, i32 59097}
!1229 = distinct !{!1229, !584}
!1230 = !{!"function_entry_count", i64 73258}
!1231 = !{!"tree-ssa-loop-niter.c:fel_next"}
!1232 = !{!"branch_weights", i32 14162, i32 59098}
!1233 = !{!"branch_weights", i32 1, i32 59098}
!1234 = distinct !{!1234, !584}
!1235 = !{!"tree-ssa-loop-niter.c:VEC_int_heap_alloc"}
!1236 = !{!"tree-ssa-loop-niter.c:number_of_loops"}
!1237 = !{!1222, !593, i64 8}
!1238 = !{!"function_entry_count", i64 59097}
!1239 = !{!"tree-ssa-loop-niter.c:VEC_int_base_quick_push"}
!1240 = !{!1241, !574, i64 0}
!1241 = !{!"VEC_int_base", !574, i64 0, !574, i64 4, !575, i64 8}
!1242 = !{!"function_entry_count", i64 43735}
!1243 = !{!"tree-ssa-loop-niter.c:loop_outer"}
!1244 = !{!663, !593, i64 40}
!1245 = !{!"branch_weights", i32 14162, i32 29575}
!1246 = !{!"function_entry_count", i64 57896}
!1247 = !{!"tree-ssa-loop-niter.c:VEC_loop_p_base_length"}
!1248 = !{!"branch_weights", i32 14162, i32 43736}
!1249 = !{!1250, !574, i64 0}
!1250 = !{!"VEC_loop_p_base", !574, i64 0, !574, i64 4, !575, i64 8}
!1251 = !{!"function_entry_count", i64 88671}
!1252 = !{!"tree-ssa-loop-niter.c:VEC_loop_p_base_index"}
!1253 = !{!"tree-ssa-loop-niter.c:VEC_int_base_iterate"}
!1254 = !{!"branch_weights", i32 1, i32 73259}
!1255 = !{!"tree-ssa-loop-niter.c:get_loop"}
!1256 = !{!"tree-ssa-loop-niter.c:VEC_int_heap_free"}
!1257 = !{!"function_entry_count", i64 23132}
!1258 = !{!"branch_weights", i32 45308159, i32 439950625}
!1259 = !{!"branch_weights", i32 7466, i32 13510}
!1260 = !{!"branch_weights", i32 5311, i32 2156}
!1261 = !{!"branch_weights", i32 1, i32 2156}
!1262 = !{!"branch_weights", i32 1, i32 2155}
!1263 = !{!"branch_weights", i32 1, i32 5745}
!1264 = !{!"branch_weights", i32 2155, i32 3590}
!1265 = distinct !{!1265, !584}
!1266 = !{!"function_entry_count", i64 66503}
!1267 = !{!"branch_weights", i32 66504, i32 1}
!1268 = !{!"branch_weights", i32 5759, i32 60746}
!1269 = !{!"branch_weights", i32 22357, i32 38390}
!1270 = !{!"branch_weights", i32 28080, i32 36}
!1271 = !{!"branch_weights", i32 17814, i32 10267}
!1272 = !{!"branch_weights", i32 1, i32 20482}
!1273 = !{!"branch_weights", i32 20482, i32 6376}
!1274 = distinct !{!1274, !584}
!1275 = !{!"branch_weights", i32 19261, i32 7598}
!1276 = !{!"function_entry_count", i64 26857}
!1277 = !{!"tree-ssa-loop-niter.c:n_of_executions_at_most"}
!1278 = !{!"branch_weights", i32 1, i32 26858}
!1279 = !{!"branch_weights", i32 40, i32 26819}
!1280 = !{!"branch_weights", i32 8554, i32 18266}
!1281 = !{!"branch_weights", i32 812, i32 17455}
!1282 = !{!"branch_weights", i32 1, i32 17455}
!1283 = !{!"branch_weights", i32 16143, i32 1313}
!1284 = !{!"branch_weights", i32 393, i32 8162}
!1285 = !{!"branch_weights", i32 2484, i32 5679}
!1286 = !{!"branch_weights", i32 3221, i32 2459}
!1287 = !{!"branch_weights", i32 3613, i32 1}
!1288 = !{!"branch_weights", i32 1115, i32 2499}
!1289 = !{!"branch_weights", i32 1252, i32 24454}
!1290 = !{!"function_entry_count", i64 3612}
!1291 = !{!"tree-ssa-loop-niter.c:double_int_zero_p"}
!1292 = !{!"branch_weights", i32 1, i32 3613}
!1293 = !{!"function_entry_count", i64 45202}
!1294 = !{!663, !593, i64 72}
!1295 = !{!"branch_weights", i32 33953, i32 11250}
!1296 = !{!"branch_weights", i32 11250, i32 0}
!1297 = distinct !{!1297, !584}
!1298 = !{!"function_entry_count", i64 11534}
!1299 = !{!"branch_weights", i32 1, i32 11534}
!1300 = !{!"branch_weights", i32 11534, i32 33252}
!1301 = distinct !{!1301, !584}
!1302 = !{!"function_entry_count", i64 119748}
