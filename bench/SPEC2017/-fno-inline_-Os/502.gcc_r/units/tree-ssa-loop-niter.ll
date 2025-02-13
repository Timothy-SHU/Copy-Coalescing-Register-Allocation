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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.nb_iter_bound = type { ptr, %struct.double_int, i8, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.ilb_data = type { ptr, ptr, i8 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [39 x i8] c"assuming that the loop is not infinite\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot optimize possibly infinite loops\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"assuming that the loop counter does not overflow\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"cannot optimize loop, the loop counter may overflow\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"Found loop %i to be finite: it is within pure or const function.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Found loop %i to be finite: iterating \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" times\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [58 x i8] c"Proved that loop %d iterates %d times using brute force.\0A\00", align 1
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-niter.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Analyzing # of iterations of loop %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"  exit condition \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"  bounds on difference of bases: \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" ... \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"  result:\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"    under assumptions \00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"    zero if \00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"    # of iterations \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c", bounded by \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"  failed\0A\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c", + , \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"]%s\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"(no_overflow)\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_simple_operations(ptr noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %80, label %3

3:                                                ; preds = %1, %65
  %4 = phi ptr [ %66, %65 ], [ %0, %1 ]
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %4) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %80

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %14, label %41

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %4) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %80, label %17

17:                                               ; preds = %14
  %18 = zext i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %33
  %20 = phi i64 [ 0, %17 ], [ %35, %33 ]
  %21 = phi ptr [ null, %17 ], [ %34, %33 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = tail call ptr @expand_simple_operations(ptr noundef %23) #15
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = icmp eq ptr %21, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #14
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %21, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3, i64 %20
  store ptr %24, ptr %32, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %19, %30
  %34 = phi ptr [ %21, %19 ], [ %31, %30 ]
  %35 = add nuw nsw i64 %20, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %37, label %19, !llvm.loop !58

37:                                               ; preds = %33
  %38 = icmp eq ptr %34, null
  br i1 %38, label %80, label %39

39:                                               ; preds = %37
  tail call void @fold_defer_overflow_warnings() #14
  %40 = tail call ptr @fold(ptr noundef nonnull %34) #14
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %80

41:                                               ; preds = %7
  %42 = icmp eq i64 %9, 141
  br i1 %42, label %43, label %80

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %45) #15, !range !60
  %47 = trunc i32 %46 to i8
  switch i8 %47, label %80 [
    i8 16, label %48
    i8 6, label %68
  ]

48:                                               ; preds = %43
  %49 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %45) #15
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %45, i32 noundef 0) #15
  %53 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %52) #15
  %54 = tail call fastcc ptr @gimple_bb(ptr noundef %45) #15
  %55 = tail call fastcc ptr @single_pred(ptr noundef %54) #15
  %56 = load i64, ptr %53, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %51, %59, %76
  %66 = phi ptr [ %69, %76 ], [ %53, %59 ], [ %53, %51 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %3

68:                                               ; preds = %43
  %69 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #15
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %45) #15, !range !65
  %71 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %70) #15, !range !60
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %69) #14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = icmp eq i32 %70, 141
  br i1 %77, label %65, label %80

78:                                               ; preds = %68
  %79 = trunc i32 %70 to i16
  switch i16 %79, label %80 [
    i16 116, label %82
    i16 113, label %82
    i16 63, label %87
    i16 64, label %87
    i16 66, label %87
  ]

80:                                               ; preds = %78, %87, %37, %39, %1, %14, %65, %3, %41, %59, %48, %73, %76, %43, %91, %82
  %81 = phi ptr [ %86, %82 ], [ %95, %91 ], [ %40, %39 ], [ %4, %37 ], [ %4, %87 ], [ %4, %78 ], [ null, %1 ], [ %4, %14 ], [ %4, %43 ], [ %4, %76 ], [ %69, %73 ], [ %4, %48 ], [ %4, %59 ], [ %4, %41 ], [ %4, %3 ], [ null, %65 ]
  ret ptr %81

82:                                               ; preds = %78, %78
  %83 = tail call ptr @expand_simple_operations(ptr noundef %69) #15
  %84 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  %86 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %70, ptr noundef %85, ptr noundef %83) #14
  br label %80

87:                                               ; preds = %78, %78, %78
  %88 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %45) #15
  %89 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %88) #14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %80, label %91

91:                                               ; preds = %87
  %92 = tail call ptr @expand_simple_operations(ptr noundef %69) #15
  %93 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !57
  %95 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %70, ptr noundef %94, ptr noundef %92, ptr noundef %88) #14
  br label %80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !52 !PGOFuncName !66 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !57
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !57
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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !67 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !57
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !52 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !73 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !52 !PGOFuncName !75 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !78 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !79 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !65
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !60
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 !prof !52 !PGOFuncName !80 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !57
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !81 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

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
define dso_local noundef zeroext i8 @loop_only_exit_p(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !52 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = tail call ptr @single_exit(ptr noundef %0) #14
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %6, %27
  %12 = phi i64 [ %28, %27 ], [ 0, %6 ]
  %13 = getelementptr inbounds ptr, ptr %7, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %14) #15
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15, !range !86
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11, %24
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %19 = tail call fastcc i32 @gimple_code(ptr noundef %18) #15, !range !60
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %18) #14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %17
  call fastcc void @gsi_next(ptr noundef nonnull %3) #15
  %25 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15, !range !86
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %17, label %27, !llvm.loop !87

27:                                               ; preds = %24, %11
  %28 = add nuw nsw i64 %12, 1
  %29 = load i32, ptr %8, align 4, !tbaa !82
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %11, label %32, !llvm.loop !88

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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !52 !PGOFuncName !89 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !52 !PGOFuncName !94 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !52 !PGOFuncName !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !52 !PGOFuncName !98 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  store ptr %4, ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !52 {
  %5 = alloca %struct.affine_iv, align 8
  %6 = alloca %struct.affine_iv, align 8
  %7 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = load ptr, ptr %1, align 8, !tbaa !76
  %11 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %9, ptr noundef %10) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %133, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !72
  store ptr %14, ptr %2, align 8, !tbaa !101
  %15 = load ptr, ptr %1, align 8, !tbaa !76
  %16 = tail call ptr @last_stmt(ptr noundef %15) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %133, label %18

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %16) #15, !range !60
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %133

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %16) #15, !range !65
  %23 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !104
  %25 = and i32 %24, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

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
  ]

31:                                               ; preds = %29, %29, %29, %29, %29
  %32 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %16) #15
  %33 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %16) #15
  %34 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %133 [
    i16 8, label %38
    i16 10, label %38
    i16 12, label %38
  ]

38:                                               ; preds = %31, %31, %31
  %39 = tail call fastcc ptr @loop_containing_stmt(ptr noundef nonnull %16) #15
  %40 = call zeroext i8 @simple_iv(ptr noundef nonnull %0, ptr noundef %39, ptr noundef nonnull %32, ptr noundef nonnull %5, i8 noundef zeroext 0) #14
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %133, label %42

42:                                               ; preds = %38
  %43 = call fastcc ptr @loop_containing_stmt(ptr noundef nonnull %16) #15
  %44 = call zeroext i8 @simple_iv(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %33, ptr noundef nonnull %6, i8 noundef zeroext 0) #14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %133, label %46

46:                                               ; preds = %42
  call void @fold_defer_overflow_warnings() #14
  %47 = load ptr, ptr %5, align 8, !tbaa !105
  %48 = call ptr @expand_simple_operations(ptr noundef %47) #15
  store ptr %48, ptr %5, align 8, !tbaa !105
  %49 = load ptr, ptr %6, align 8, !tbaa !105
  %50 = call ptr @expand_simple_operations(ptr noundef %49) #15
  store ptr %50, ptr %6, align 8, !tbaa !105
  %51 = call zeroext i8 @loop_only_exit_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #15, !range !86
  %52 = call fastcc zeroext i8 @number_of_iterations_cond(ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %5, i32 noundef %30, ptr noundef nonnull %6, ptr noundef nonnull %2, i8 noundef zeroext %51) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %133

55:                                               ; preds = %46
  %56 = load i32, ptr @optimize, align 4, !tbaa !53
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load ptr, ptr %2, align 8, !tbaa !101
  %60 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef nonnull %0, ptr noundef %59) #15
  store ptr %60, ptr %2, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !106
  %63 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef nonnull %0, ptr noundef %62) #15
  store ptr %63, ptr %61, align 8, !tbaa !106
  %64 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !107
  %66 = call fastcc ptr @simplify_using_outer_evolutions(ptr noundef nonnull %0, ptr noundef %65) #15
  store ptr %66, ptr %64, align 8, !tbaa !107
  br label %67

67:                                               ; preds = %58, %55
  %68 = load ptr, ptr %2, align 8, !tbaa !101
  %69 = call fastcc ptr @simplify_using_initial_conditions(ptr noundef nonnull %0, ptr noundef %68) #15
  store ptr %69, ptr %2, align 8, !tbaa !101
  %70 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !106
  %72 = call fastcc ptr @simplify_using_initial_conditions(ptr noundef nonnull %0, ptr noundef %71) #15
  store ptr %72, ptr %70, align 8, !tbaa !106
  call void @fold_undefer_and_ignore_overflow_warnings() #14
  %73 = load ptr, ptr %2, align 8, !tbaa !101
  %74 = call i32 @integer_onep(ptr noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %67
  %77 = load ptr, ptr %2, align 8, !tbaa !101
  %78 = call i32 @integer_zerop(ptr noundef %77) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %133

80:                                               ; preds = %76
  %81 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !53
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !72
  store ptr %84, ptr %2, align 8, !tbaa !101
  br label %85

85:                                               ; preds = %83, %80
  %86 = icmp eq i8 %3, 0
  br i1 %86, label %130, label %87

87:                                               ; preds = %85
  %88 = call fastcc i32 @gimple_location(ptr noundef nonnull %16) #15
  %89 = getelementptr inbounds %struct.affine_iv, ptr %6, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = call i32 @integer_zerop(ptr noundef %90) #14
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.affine_iv, ptr %5, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !108
  br i1 %92, label %95, label %106

95:                                               ; preds = %87
  %96 = call i32 @integer_zerop(ptr noundef %94) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %89, align 8, !tbaa !108
  %100 = call i32 @integer_onep(ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load ptr, ptr %89, align 8, !tbaa !108
  %104 = call i32 @integer_all_onesp(ptr noundef %103) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %117, label %113

106:                                              ; preds = %87
  %107 = call i32 @integer_onep(ptr noundef %94) #14
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load ptr, ptr %93, align 8, !tbaa !108
  %111 = call i32 @integer_all_onesp(ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109, %106, %102, %98
  %114 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !53
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, ptr @.str.1, ptr @.str
  br label %121

117:                                              ; preds = %109, %102, %95
  %118 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !53
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.3, ptr @.str.2
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi ptr [ %116, %113 ], [ %120, %117 ]
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %88) #14
  %123 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !109
  %125 = icmp sgt i32 %124, 0
  %126 = load i32, ptr @input_location, align 4
  %127 = select i1 %125, i32 %88, i32 %126
  %128 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %127, i32 noundef 216, ptr noundef nonnull @.str.4, ptr noundef nonnull %122) #14
  %129 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !53
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
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !111 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !112 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !113 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !52 !PGOFuncName !114 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @number_of_iterations_cond(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !prof !52 !PGOFuncName !115 {
  %8 = alloca %struct.bounds, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !72
  store ptr %9, ptr %5, align 8, !tbaa !101
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 3
  %14 = tail call fastcc i64 @shwi_to_double_int(i64 noundef 0) #15
  store i64 %14, ptr %13, align 8, !tbaa.struct !116
  %15 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 3, i32 1
  store i64 0, ptr %15, align 8, !tbaa.struct !118
  %16 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 5
  store ptr null, ptr %16, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 6
  store i32 0, ptr %17, align 8, !tbaa !120
  %18 = add i32 %3, -99
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %27, label %20

20:                                               ; preds = %7
  %21 = icmp eq i32 %3, 102
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

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
  ]

35:                                               ; preds = %29, %29
  %36 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 2
  store i8 1, ptr %36, align 8, !tbaa !121
  %37 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 2
  store i8 1, ptr %37, align 8, !tbaa !121
  br label %38

38:                                               ; preds = %29, %35
  %39 = icmp eq i8 %6, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  %43 = tail call i32 @integer_zerop(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 2
  %47 = load i8, ptr %46, align 8, !tbaa !121
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %40
  %50 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !108
  %52 = tail call i32 @integer_zerop(ptr noundef %51) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 2
  %56 = load i8, ptr %55, align 8, !tbaa !121
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %54, %45, %49, %38
  %60 = phi i8 [ 0, %49 ], [ 0, %38 ], [ 1, %45 ], [ %58, %54 ]
  %61 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !108
  %63 = tail call i32 @integer_zerop(ptr noundef %62) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !108
  %68 = tail call i32 @integer_zerop(ptr noundef %67) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = icmp eq i32 %31, 102
  br i1 %71, label %72, label %211

72:                                               ; preds = %70
  %73 = load ptr, ptr %61, align 8, !tbaa !108
  %74 = load ptr, ptr %66, align 8, !tbaa !108
  %75 = tail call ptr @fold_binary_to_constant(i32 noundef 64, ptr noundef nonnull %1, ptr noundef %73, ptr noundef %74) #14
  store ptr %75, ptr %61, align 8, !tbaa !108
  %76 = getelementptr inbounds %struct.affine_iv, ptr %32, i64 0, i32 2
  store i8 0, ptr %76, align 8, !tbaa !121
  %77 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 0) #14
  store ptr %77, ptr %66, align 8, !tbaa !108
  %78 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 2
  store i8 1, ptr %78, align 8, !tbaa !121
  br label %79

79:                                               ; preds = %72, %65, %59
  %80 = load ptr, ptr %61, align 8, !tbaa !108
  %81 = tail call i32 @integer_zerop(ptr noundef %80) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !108
  %86 = tail call i32 @integer_zerop(ptr noundef %85) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %211

88:                                               ; preds = %83, %79
  %89 = icmp eq i32 %31, 102
  br i1 %89, label %105, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %61, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %91) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %211

96:                                               ; preds = %93, %90
  %97 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !108
  %99 = tail call i32 @integer_zerop(ptr noundef %98) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load ptr, ptr %97, align 8, !tbaa !108
  %103 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %102) #14
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %211, label %105

105:                                              ; preds = %96, %101, %88
  %106 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %107 = load ptr, ptr %32, align 8, !tbaa !105
  %108 = load ptr, ptr %30, align 8, !tbaa !105
  %109 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %31, ptr noundef %106, ptr noundef %107, ptr noundef %108) #14
  %110 = tail call i32 @integer_zerop(ptr noundef %109) #14
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = tail call ptr @unsigned_type_for(ptr noundef nonnull %1) #14
  %114 = tail call ptr @build_int_cst(ptr noundef %113, i64 noundef 0) #14
  store ptr %114, ptr %12, align 8, !tbaa !107
  store i64 %14, ptr %13, align 8, !tbaa.struct !116
  store i64 0, ptr %15, align 8, !tbaa.struct !118
  br label %211

115:                                              ; preds = %105
  %116 = load ptr, ptr %30, align 8, !tbaa !105
  %117 = load ptr, ptr %32, align 8, !tbaa !105
  call fastcc void @bound_difference(ptr noundef %0, ptr noundef %116, ptr noundef %117, ptr noundef nonnull %8) #15
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %119 = icmp eq ptr %118, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %0, align 8, !tbaa !122
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %118, ptr noundef nonnull @.str.13, i32 noundef %125) #15
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %128 = call i64 @fwrite(ptr nonnull @.str.14, i64 17, i64 1, ptr %127)
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !72
  call fastcc void @dump_affine_iv(ptr noundef %129, ptr noundef nonnull %32) #15
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %131 = icmp eq i32 %31, 97
  %132 = select i1 %131, ptr @.str.17, ptr @.str.18
  %133 = select i1 %89, ptr @.str.16, ptr %132
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.15, ptr noundef nonnull %133) #15
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !72
  call fastcc void @dump_affine_iv(ptr noundef %135, ptr noundef nonnull %30) #15
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %137 = call i32 @fputc(i32 10, ptr %136)
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %139 = call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr %138)
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %141 = call i64 @mpz_out_str(ptr noundef %140, i32 noundef 10, ptr noundef nonnull %8) #14
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %143 = call i64 @fwrite(ptr nonnull @.str.21, i64 5, i64 1, ptr %142)
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %145 = getelementptr inbounds %struct.bounds, ptr %8, i64 0, i32 1
  %146 = call i64 @mpz_out_str(ptr noundef %144, i32 noundef 10, ptr noundef nonnull %145) #14
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %148 = call i32 @fputc(i32 10, ptr %147)
  br label %149

149:                                              ; preds = %124, %120, %115
  switch i32 %31, label %162 [
    i32 102, label %150
    i32 97, label %158
    i32 98, label %160
  ]

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.affine_iv, ptr %30, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !108
  %153 = call i32 @integer_zerop(ptr noundef %152) #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1314, ptr noundef nonnull @.str.10) #14
  br label %156

156:                                              ; preds = %150, %155
  %157 = load ptr, ptr %30, align 8, !tbaa !105
  call fastcc void @number_of_iterations_ne(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %157, ptr noundef nonnull %5, i8 noundef zeroext %60, ptr noundef nonnull %8) #15
  br label %163

158:                                              ; preds = %149
  %159 = call fastcc zeroext i8 @number_of_iterations_lt(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %30, ptr noundef nonnull %5, i8 noundef zeroext %60, ptr noundef nonnull %8) #15, !range !86
  br label %163

160:                                              ; preds = %149
  %161 = call fastcc zeroext i8 @number_of_iterations_le(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %30, ptr noundef nonnull %5, i8 noundef zeroext %60, ptr noundef nonnull %8) #15, !range !86
  br label %163

162:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1330, ptr noundef nonnull @.str.10) #14
  br label %163

163:                                              ; preds = %162, %160, %158, %156
  %164 = phi i8 [ undef, %162 ], [ %161, %160 ], [ %159, %158 ], [ 1, %156 ]
  %165 = getelementptr inbounds %struct.bounds, ptr %8, i64 0, i32 1
  call void @mpz_clear(ptr noundef nonnull %165) #14
  call void @mpz_clear(ptr noundef nonnull %8) #14
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %167 = icmp eq ptr %166, null
  br i1 %167, label %211, label %168

168:                                              ; preds = %163
  %169 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %170 = and i32 %169, 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %211, label %172

172:                                              ; preds = %168
  %173 = icmp eq i8 %164, 0
  br i1 %173, label %209, label %174

174:                                              ; preds = %172
  %175 = call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr nonnull %166)
  %176 = load ptr, ptr %5, align 8, !tbaa !101
  %177 = call i32 @integer_nonzerop(ptr noundef %176) #14
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %181 = call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %183 = load ptr, ptr %5, align 8, !tbaa !101
  call void @print_generic_expr(ptr noundef %182, ptr noundef %183, i32 noundef 2) #14
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %185 = call i32 @fputc(i32 10, ptr %184)
  br label %186

186:                                              ; preds = %179, %174
  %187 = load ptr, ptr %11, align 8, !tbaa !106
  %188 = call i32 @integer_zerop(ptr noundef %187) #14
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %192 = call i64 @fwrite(ptr nonnull @.str.24, i64 12, i64 1, ptr %191)
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %194 = load ptr, ptr %11, align 8, !tbaa !106
  call void @print_generic_expr(ptr noundef %193, ptr noundef %194, i32 noundef 2) #14
  %195 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %196 = call i32 @fputc(i32 10, ptr %195)
  br label %197

197:                                              ; preds = %190, %186
  %198 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %199 = call i64 @fwrite(ptr nonnull @.str.25, i64 20, i64 1, ptr %198)
  %200 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %201 = load ptr, ptr %12, align 8, !tbaa !107
  call void @print_generic_expr(ptr noundef %200, ptr noundef %201, i32 noundef 2) #14
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %203 = call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr %202)
  %204 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %205 = load i64, ptr %13, align 8
  %206 = load i64, ptr %15, align 8
  call void @dump_double_int(ptr noundef %204, i64 %205, i64 %206, i8 noundef zeroext 1) #14
  %207 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %208 = call i32 @fputc(i32 10, ptr %207)
  br label %211

209:                                              ; preds = %172
  %210 = call i64 @fwrite(ptr nonnull @.str.27, i64 10, i64 1, ptr nonnull %166)
  br label %211

211:                                              ; preds = %163, %168, %209, %197, %101, %93, %83, %70, %112
  %212 = phi i8 [ 1, %112 ], [ 0, %70 ], [ 0, %83 ], [ 0, %93 ], [ 0, %101 ], [ 1, %197 ], [ 0, %209 ], [ %164, %168 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  ret i8 %212
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !123 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %42

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
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %13) #15
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = icmp eq ptr %15, %14
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %18) #15
  %20 = load ptr, ptr %17, align 8, !tbaa !57
  %21 = icmp eq ptr %20, %19
  %22 = select i1 %21, i1 %16, i1 false
  br i1 %11, label %23, label %30

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = tail call fastcc ptr @simplify_using_outer_evolutions(ptr noundef %0, ptr noundef %25) #15
  %27 = load ptr, ptr %24, align 8, !tbaa !57
  %28 = icmp eq ptr %27, %26
  %29 = select i1 %28, i1 %22, i1 false
  br i1 %29, label %42, label %31

30:                                               ; preds = %10
  br i1 %22, label %42, label %34

31:                                               ; preds = %23
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %33 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %32, ptr noundef %14, ptr noundef %19, ptr noundef %26) #14
  br label %42

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %35, ptr noundef %14, ptr noundef %19) #14
  br label %42

37:                                               ; preds = %8
  %38 = tail call fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef nonnull %1) #15
  %39 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %38) #14
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %1, ptr %38
  br label %42

42:                                               ; preds = %23, %30, %37, %34, %31, %2
  %43 = phi ptr [ %1, %2 ], [ %33, %31 ], [ %36, %34 ], [ %41, %37 ], [ %1, %30 ], [ %1, %23 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_using_initial_conditions(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !124 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = load ptr, ptr @cfun, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %54, label %14

14:                                               ; preds = %6, %43
  %15 = phi i32 [ %45, %43 ], [ 0, %6 ]
  %16 = phi ptr [ %46, %43 ], [ %8, %6 ]
  %17 = phi ptr [ %44, %43 ], [ %1, %6 ]
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %16) #15, !range !86
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc ptr @single_pred_edge(ptr noundef %16) #15
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !104
  %24 = and i32 %23, 3072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !76
  %28 = tail call ptr @last_stmt(ptr noundef %27) #14
  %29 = tail call fastcc i32 @gimple_cond_code(ptr noundef %28) #15, !range !65
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %31 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %28) #15
  %32 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %28) #15
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32) #14
  %34 = load i32, ptr %22, align 8, !tbaa !104
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

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
  %47 = load ptr, ptr @cfun, align 8, !tbaa !72
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !126
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  %51 = icmp ne ptr %46, %50
  %52 = icmp slt i32 %45, 8
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %14, label %54, !llvm.loop !130

54:                                               ; preds = %43, %6, %2
  %55 = phi ptr [ %1, %2 ], [ %1, %6 ], [ %44, %43 ]
  ret ptr %55
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !131 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_loop_niter(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !52 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #14
  store ptr %6, ptr %3, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #16
  store ptr null, ptr %1, align 8, !tbaa !72
  %7 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #15, !range !132
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 1
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %5, i64 0, i32 2
  br label %12

12:                                               ; preds = %9, %47
  %13 = phi i32 [ 0, %9 ], [ %49, %47 ]
  %14 = phi ptr [ null, %9 ], [ %48, %47 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !72
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %16) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %5, i8 noundef zeroext 0) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8, !tbaa !106
  %24 = tail call i32 @integer_nonzerop(ptr noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !72
  %28 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #14
  store ptr %15, ptr %1, align 8, !tbaa !72
  br label %52

29:                                               ; preds = %22
  %30 = tail call i32 @integer_zerop(ptr noundef %23) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %11, align 8, !tbaa !107
  %34 = icmp eq ptr %14, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %33, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i64, ptr %14, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %33, ptr noundef nonnull %14) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %39, %32
  store ptr %15, ptr %1, align 8, !tbaa !72
  br label %47

47:                                               ; preds = %46, %43, %35, %29, %19, %12
  %48 = phi ptr [ %14, %35 ], [ %14, %43 ], [ %14, %29 ], [ %14, %19 ], [ %14, %12 ], [ %33, %46 ]
  %49 = add i32 %13, 1
  %50 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %6, i32 noundef %49, ptr noundef nonnull %4) #15, !range !132
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %12, !llvm.loop !133

52:                                               ; preds = %47, %2, %26
  %53 = phi ptr [ %28, %26 ], [ null, %2 ], [ %48, %47 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #15
  %54 = icmp eq ptr %53, null
  %55 = load ptr, ptr @chrec_dont_know, align 8
  %56 = select i1 %54, ptr %55, ptr %53
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !52 !PGOFuncName !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !135
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !72
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !52 !PGOFuncName !137 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @finite_loop_p(ptr noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.tree_niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #16
  %5 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %1
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !72
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
  br i1 %19, label %20, label %30

20:                                               ; preds = %7
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %0, align 8, !tbaa !122
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.5, i32 noundef %28) #15
  br label %64

30:                                               ; preds = %7
  %31 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #14
  store ptr %31, ptr %2, align 8, !tbaa !72
  %32 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %3) #15, !range !132
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %30, %58
  %35 = phi i32 [ %59, %58 ], [ 0, %30 ]
  %36 = load ptr, ptr %3, align 8, !tbaa !72
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %37) #14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %34
  %41 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %36, ptr noundef nonnull %4, i8 noundef zeroext 0) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %0, align 8, !tbaa !122
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.6, i32 noundef %51) #15
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %54 = getelementptr inbounds %struct.tree_niter_desc, ptr %4, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !107
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef %55, i32 noundef 2) #14
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %57 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 7, i64 1, ptr %56)
  br label %62

58:                                               ; preds = %40, %34
  %59 = add i32 %35, 1
  %60 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %31, i32 noundef %59, ptr noundef nonnull %3) #15, !range !132
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %34, !llvm.loop !138

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

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_niter_by_eval(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !52 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = load ptr, ptr %1, align 8, !tbaa !76
  %7 = tail call ptr @last_stmt(ptr noundef %6) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %7) #15, !range !60
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !72
  br label %119

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %7) #15, !range !65
  %16 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !104
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @invert_tree_comparison(i32 noundef %15, i8 noundef zeroext 0) #14
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = add i32 %23, -97
  %25 = icmp ult i32 %24, 6
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %7) #15
  store ptr %27, ptr %3, align 16, !tbaa !72
  %28 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %7) #15
  %29 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !72
  br label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !72
  br label %119

32:                                               ; preds = %26, %60
  %33 = phi i1 [ true, %26 ], [ false, %60 ]
  %34 = phi i64 [ 0, %26 ], [ 1, %60 ]
  %35 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %36) #14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %34
  store ptr %36, ptr %40, align 8, !tbaa !72
  %41 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %34
  store ptr null, ptr %41, align 8, !tbaa !72
  store ptr null, ptr %35, align 8, !tbaa !72
  br label %60

42:                                               ; preds = %32
  %43 = tail call fastcc ptr @get_base_for(ptr noundef %0, ptr noundef %36) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !72
  br label %119

47:                                               ; preds = %42
  %48 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !139
  %51 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %43, i32 noundef %50) #15
  %52 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %51) #15
  %53 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %34
  store ptr %52, ptr %53, align 8, !tbaa !72
  %54 = tail call ptr @loop_latch_edge(ptr noundef %0) #14
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !139
  %57 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %43, i32 noundef %56) #15
  %58 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %57) #15
  %59 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %34
  store ptr %58, ptr %59, align 8, !tbaa !72
  br label %60

60:                                               ; preds = %39, %47
  br i1 %33, label %32, label %61, !llvm.loop !140

61:                                               ; preds = %60
  tail call void @fold_defer_overflow_warnings() #14
  %62 = load ptr, ptr @compiler_params, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.param_info, ptr %62, i64 37, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !141
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %117, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %3, align 16, !tbaa !72
  %68 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  br label %71

71:                                               ; preds = %66, %111
  %72 = phi i32 [ 0, %66 ], [ %112, %111 ]
  %73 = load ptr, ptr %4, align 16, !tbaa !72
  %74 = tail call fastcc ptr @get_val_for(ptr noundef %67, ptr noundef %73) #15
  %75 = load ptr, ptr %70, align 8, !tbaa !72
  %76 = tail call fastcc ptr @get_val_for(ptr noundef %69, ptr noundef %75) #15
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %78 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %23, ptr noundef %77, ptr noundef %74, ptr noundef %76) #14
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %81, %71
  br label %99

81:                                               ; preds = %71
  %82 = tail call i32 @integer_zerop(ptr noundef nonnull %78) #14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %80, label %84

84:                                               ; preds = %81
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %0, align 8, !tbaa !122
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %85, ptr noundef nonnull @.str.8, i32 noundef %92, i32 noundef %72) #15
  br label %94

94:                                               ; preds = %91, %87, %84
  %95 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !72
  %96 = zext i32 %72 to i64
  %97 = tail call ptr @build_int_cst(ptr noundef %95, i64 noundef %96) #14
  br label %119

98:                                               ; preds = %99
  br i1 %100, label %99, label %111, !llvm.loop !143

99:                                               ; preds = %80, %98
  %100 = phi i1 [ false, %98 ], [ true, %80 ]
  %101 = phi i64 [ 1, %98 ], [ 0, %80 ]
  %102 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !72
  %104 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %101
  %105 = load ptr, ptr %104, align 8, !tbaa !72
  %106 = tail call fastcc ptr @get_val_for(ptr noundef %103, ptr noundef %105) #15
  store ptr %106, ptr %104, align 8, !tbaa !72
  %107 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %106) #14
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %98

109:                                              ; preds = %99
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  %110 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !72
  br label %119

111:                                              ; preds = %98
  %112 = add nuw i32 %72, 1
  %113 = load ptr, ptr @compiler_params, align 8, !tbaa !72
  %114 = getelementptr inbounds %struct.param_info, ptr %113, i64 37, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !141
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %71, label %117, !llvm.loop !144

117:                                              ; preds = %111, %61
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  %118 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !72
  br label %119

119:                                              ; preds = %117, %109, %94, %45, %30, %12
  %120 = phi ptr [ %13, %12 ], [ %31, %30 ], [ %46, %45 ], [ %97, %94 ], [ %110, %109 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %120
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_base_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !145 {
  %3 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr noundef %1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !139
  %12 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %6, i32 noundef %11) #15
  %13 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %12) #15
  %14 = tail call ptr @loop_latch_edge(ptr noundef %0) #14
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !139
  %17 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %6, i32 noundef %16) #15
  %18 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %17) #15
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %29

22:                                               ; preds = %8
  %23 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %13) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr noundef nonnull %18) #15
  %27 = icmp eq ptr %26, %6
  %28 = select i1 %27, ptr %6, ptr null
  br label %29

29:                                               ; preds = %25, %22, %8, %5, %2
  %30 = phi ptr [ null, %2 ], [ null, %5 ], [ null, %8 ], [ null, %22 ], [ %28, %25 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_val_for(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !146 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = phi ptr [ %0, %2 ], [ %23, %22 ]
  %5 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2107, ptr noundef nonnull @.str.10) #14
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %4, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = tail call fastcc i32 @gimple_code(ptr noundef %12) #15, !range !60
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %12) #15, !range !86
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2116, ptr noundef nonnull @.str.10) #14
  br label %19

19:                                               ; preds = %15, %18
  %20 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %12) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  br label %3

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %12) #15, !range !60
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %40

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
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %12) #15, !range !65
  %36 = tail call fastcc ptr @gimple_expr_type(ptr noundef %12) #15
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  %38 = tail call fastcc ptr @get_val_for(ptr noundef %37, ptr noundef %1) #15
  %39 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %35, ptr noundef %36, ptr noundef %38) #14
  br label %32

40:                                               ; preds = %27, %24
  %41 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %12) #15, !range !60
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %12) #15
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %12) #15
  %46 = load i64, ptr %44, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %51

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2139, ptr noundef nonnull @.str.10) #14
  br label %58

58:                                               ; preds = %55, %57, %49
  %59 = phi ptr [ %50, %49 ], [ %44, %55 ], [ %44, %57 ]
  %60 = phi ptr [ %45, %49 ], [ %56, %55 ], [ %45, %57 ]
  %61 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %12) #15, !range !65
  %62 = tail call fastcc ptr @gimple_expr_type(ptr noundef %12) #15
  %63 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %61, ptr noundef %62, ptr noundef %59, ptr noundef %60) #14
  br label %32

64:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2144, ptr noundef nonnull @.str.10) #14
  br label %32
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_loop_niter_by_eval(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !52 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #14
  store ptr %5, ptr %3, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr null, ptr %1, align 8, !tbaa !72
  %6 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #15
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !72
  br label %43

13:                                               ; preds = %8, %2
  %14 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #15, !range !132
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13, %33
  %17 = phi ptr [ %34, %33 ], [ null, %13 ]
  %18 = phi i32 [ %35, %33 ], [ 0, %13 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !72
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef %20) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @loop_niter_by_eval(ptr noundef %0, ptr noundef nonnull %19) #15
  %25 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %24) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = icmp eq ptr %17, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = tail call i32 @tree_int_cst_lt(ptr noundef %24, ptr noundef nonnull %17) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %27
  store ptr %19, ptr %1, align 8, !tbaa !72
  br label %33

33:                                               ; preds = %29, %23, %16, %32
  %34 = phi ptr [ %17, %23 ], [ %24, %32 ], [ %17, %29 ], [ %17, %16 ]
  %35 = add i32 %18, 1
  %36 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef %35, ptr noundef nonnull %4) #15, !range !132
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %16, !llvm.loop !147

38:                                               ; preds = %33, %13
  %39 = phi ptr [ null, %13 ], [ %34, %33 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #15
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr @chrec_dont_know, align 8
  %42 = select i1 %40, ptr %41, ptr %39
  br label %43

43:                                               ; preds = %38, %11
  %44 = phi ptr [ %42, %38 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !148 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !135
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @array_at_struct_end_p(ptr noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = tail call ptr @get_base_address(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -47
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %43

10:                                               ; preds = %4
  %11 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #15, !range !86
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %10, %32
  %14 = phi ptr [ %16, %32 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 41
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 17
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %13, %26, %20
  %33 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %16) #15, !range !86
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %13, !llvm.loop !149

35:                                               ; preds = %32, %10
  %36 = phi ptr [ %0, %10 ], [ %16, %32 ]
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -47
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2654, ptr noundef nonnull @.str.10) #14
  br label %43

43:                                               ; preds = %26, %35, %4, %42, %1
  %44 = phi i8 [ 0, %4 ], [ 0, %1 ], [ 1, %35 ], [ 1, %42 ], [ 0, %26 ]
  ret i8 %44
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !150 {
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
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_numbers_of_iterations_loop(ptr noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.tree_niter_desc, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 4, !tbaa !151
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %1
  store i32 1, ptr %5, align 4, !tbaa !151
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  store i8 0, ptr %9, align 8, !tbaa !152
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  store i8 0, ptr %10, align 1, !tbaa !153
  %11 = tail call ptr @get_loop_exit_edges(ptr noundef nonnull %0) #14
  store ptr %11, ptr %2, align 8, !tbaa !72
  %12 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #15, !range !132
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %18 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  br label %19

19:                                               ; preds = %14, %41
  %20 = phi i32 [ 0, %14 ], [ %42, %41 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !72
  %22 = call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %3, i8 noundef zeroext 0) #15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %15, align 8, !tbaa !107
  %26 = load ptr, ptr %16, align 8, !tbaa !106
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 23
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = tail call ptr @build_int_cst(ptr noundef %32, i64 noundef 0) #14
  %34 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %32, ptr noundef nonnull %26, ptr noundef %33, ptr noundef %25) #14
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi ptr [ %34, %30 ], [ %25, %24 ]
  %37 = load ptr, ptr %21, align 8, !tbaa !76
  %38 = tail call ptr @last_stmt(ptr noundef %37) #14
  %39 = load i64, ptr %17, align 8
  %40 = load i64, ptr %18, align 8
  tail call fastcc void @record_estimate(ptr noundef %0, ptr noundef %36, i64 %39, i64 %40, ptr noundef %38, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %41

41:                                               ; preds = %19, %35
  %42 = add i32 %20, 1
  %43 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %11, i32 noundef %42, ptr noundef nonnull %4) #15, !range !132
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %19, !llvm.loop !154

45:                                               ; preds = %41, %8
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #15
  tail call fastcc void @infer_loop_bounds_from_undefined(ptr noundef %0) #15
  %46 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !125
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !155
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = tail call i64 @expected_loop_iterations_unbounded(ptr noundef nonnull %0) #14
  %53 = add nsw i64 %52, 1
  %54 = tail call fastcc { i64, i64 } @gcov_type_to_double_int(i64 noundef %53) #15
  %55 = extractvalue { i64, i64 } %54, 0
  %56 = extractvalue { i64, i64 } %54, 1
  tail call fastcc void @record_niter_bound(ptr noundef nonnull %0, i64 %55, i64 %56, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i8, ptr %9, align 8, !tbaa !152
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = load i8, ptr %10, align 1, !tbaa !153
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %65 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %66 = load i64, ptr %64, align 8
  %67 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = load i64, ptr %65, align 8
  %70 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = tail call i32 @double_int_ucmp(i64 %66, i64 %68, i64 %69, i64 %71) #14
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !116
  br label %75

75:                                               ; preds = %57, %60, %63, %74, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_estimate(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !52 !PGOFuncName !156 {
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = icmp eq i8 %5, 0
  %17 = select i1 %16, ptr @.str.32, ptr @.str.35
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.34, ptr noundef nonnull %17) #15
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !72
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %4, i32 noundef 0, i32 noundef 2) #14
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %21 = icmp eq i8 %7, 0
  %22 = select i1 %21, ptr @.str.37, ptr @.str.32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.36, ptr noundef nonnull %22) #15
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !72
  tail call void @print_generic_expr(ptr noundef %24, ptr noundef %1, i32 noundef 2) #14
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %26 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 13, i64 1, ptr %25)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !72
  tail call void @dump_double_int(ptr noundef %27, i64 %2, i64 %3, i8 noundef zeroext 1) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %29 = load i32, ptr %0, align 8, !tbaa !122
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %29) #15
  br label %31

31:                                               ; preds = %15, %11, %8
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  %35 = select i1 %34, i8 %6, i8 0
  %36 = or i8 %35, %7
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %31
  %39 = icmp eq i8 %7, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #14
  %42 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 1
  store i64 %2, ptr %42, align 8, !tbaa.struct !116
  %43 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 1, i32 1
  store i64 %3, ptr %43, align 8, !tbaa.struct !118
  store ptr %4, ptr %41, align 8, !tbaa !157
  %44 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 2
  store i8 %5, ptr %44, align 8, !tbaa !159
  %45 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !160
  %47 = getelementptr inbounds %struct.nb_iter_bound, ptr %41, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !161
  store ptr %41, ptr %45, align 8, !tbaa !160
  br label %48

48:                                               ; preds = %40, %38
  %49 = tail call ptr @single_exit(ptr noundef %0) #14
  %50 = icmp eq i8 %5, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = icmp eq ptr %49, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %49, align 8, !tbaa !76
  %55 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #15
  %56 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %54, ptr noundef %55) #14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

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
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  tail call fastcc void @record_niter_bound(ptr noundef %0, i64 %63, i64 %64, i8 noundef zeroext %35, i8 noundef zeroext %7) #15
  br label %68

68:                                               ; preds = %59, %31, %67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_undefined(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !162 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = tail call ptr @get_loop_body(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi i64 [ 0, %7 ], [ %26, %25 ]
  %11 = getelementptr inbounds ptr, ptr %3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load ptr, ptr %8, align 8, !tbaa !100
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %13, ptr noundef %12) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %12) #15
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !86
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = icmp eq i8 %14, 0
  br label %19

19:                                               ; preds = %17, %22
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  tail call fastcc void @infer_loop_bounds_from_array(ptr noundef %0, ptr noundef %20, i8 noundef zeroext %14) #15
  br i1 %18, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @infer_loop_bounds_from_signedness(ptr noundef %0, ptr noundef %20) #15
  br label %22

22:                                               ; preds = %21, %19
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !86
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %19, label %25, !llvm.loop !163

25:                                               ; preds = %22, %9
  %26 = add nuw nsw i64 %10, 1
  %27 = load i32, ptr %4, align 4, !tbaa !82
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %9, label %30, !llvm.loop !164

30:                                               ; preds = %25, %1
  tail call void @free(ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare i64 @expected_loop_iterations_unbounded(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @gcov_type_to_double_int(i64 noundef %0) unnamed_addr #5 !prof !52 !PGOFuncName !165 {
  %2 = ashr i64 %0, 63
  %3 = insertvalue { i64, i64 } poison, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_niter_bound(ptr nocapture noundef %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !52 !PGOFuncName !166 {
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  %9 = load i8, ptr %8, align 8, !tbaa !152
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call i32 @double_int_ucmp(i64 %1, i64 %2, i64 %13, i64 %15) #14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %7
  store i8 1, ptr %8, align 8, !tbaa !152
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  store i64 %1, ptr %19, align 8, !tbaa.struct !116
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  store i64 %2, ptr %20, align 8, !tbaa.struct !118
  br label %21

21:                                               ; preds = %18, %11, %5
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  %25 = load i8, ptr %24, align 1, !tbaa !153
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = tail call i32 @double_int_ucmp(i64 %1, i64 %2, i64 %29, i64 %31) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %23
  store i8 1, ptr %24, align 1, !tbaa !153
  %35 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  store i64 %1, ptr %35, align 8, !tbaa.struct !116
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  store i64 %2, ptr %36, align 8, !tbaa.struct !118
  br label %37

37:                                               ; preds = %34, %27, %21
  ret void
}

; Function Attrs: optsize
declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @estimate_numbers_of_iterations() local_unnamed_addr #0 !prof !52 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  tail call void @fold_defer_overflow_warnings() #14
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef nonnull %6) #15
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !167

9:                                                ; preds = %5, %0
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !168 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !170
  %4 = load ptr, ptr @cfun, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !173

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !174
  store ptr null, ptr %1, align 8, !tbaa !72
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #15
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr %0, align 8, !tbaa !174
  %12 = load ptr, ptr @cfun, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !122
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !173

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !174
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !177
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !178

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !179
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !180

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !181, !llvm.loop !182

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !168 !PGOFuncName !183 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !170
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !174
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #15, !range !132
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !178

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !170
  %13 = load i32, ptr %3, align 4, !tbaa !53
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #15
  store ptr %14, ptr %1, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !184

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #15
  store ptr null, ptr %1, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_dominates_stmt_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !52 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #15
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #15
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %0, %1
  %8 = or i1 %7, %6
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, %5
  br i1 %10, label %11, label %28

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %1) #15, !range !60
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %4) #15
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %23
  %21 = phi ptr [ %24, %23 ], [ %18, %17 ]
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #15
  %24 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %20, !llvm.loop !185

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nowrap_type_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !52 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %19

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
  br i1 %18, label %24, label %19

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @scev_probably_wraps_p(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !52 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %0) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %1) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = icmp eq i8 %4, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = tail call zeroext i8 @nowrap_type_p(ptr noundef %20) #15, !range !86
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18, %16
  %24 = load i64, ptr %1, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  tail call void @fold_defer_overflow_warnings() #14
  %28 = tail call ptr @unsigned_type_for(ptr noundef %7) #14
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef %0) #14
  %30 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %1) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

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
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %54

50:                                               ; preds = %54
  %51 = getelementptr inbounds %struct.nb_iter_bound, ptr %55, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !llvm.loop !186

54:                                               ; preds = %43, %50
  %55 = phi ptr [ %52, %50 ], [ %48, %43 ]
  %56 = tail call fastcc zeroext i8 @n_of_executions_at_most(ptr noundef %2, ptr noundef nonnull %55, ptr noundef %46) #15, !range !86
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %50, label %58

58:                                               ; preds = %50, %54, %43
  %59 = phi i8 [ 1, %43 ], [ 0, %54 ], [ 1, %50 ]
  tail call void @fold_undefer_and_ignore_overflow_warnings() #14
  br label %60

60:                                               ; preds = %58, %23, %18, %13, %5, %10
  %61 = phi i8 [ 1, %10 ], [ 1, %5 ], [ 0, %13 ], [ 0, %18 ], [ 1, %23 ], [ %59, %58 ]
  ret i8 %61
}

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @n_of_executions_at_most(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !52 !PGOFuncName !187 {
  %4 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !116
  %6 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa.struct !118
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2097152
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3026, ptr noundef nonnull @.str.10) #14
  br label %14

14:                                               ; preds = %3, %13
  %15 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef nonnull %9, i64 %5, i64 %7) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 2
  %19 = load i8, ptr %18, align 8, !tbaa !159
  %20 = icmp eq i8 %19, 0
  %21 = icmp eq ptr %0, null
  br i1 %20, label %30, label %22

22:                                               ; preds = %17
  br i1 %21, label %29, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %1, align 8, !tbaa !157
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %24, ptr noundef nonnull %0) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26, %23, %22
  br label %49

30:                                               ; preds = %17
  br i1 %21, label %39, label %31

31:                                               ; preds = %30
  %32 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %0) #15
  %33 = load ptr, ptr %1, align 8, !tbaa !157
  %34 = tail call fastcc ptr @gimple_bb(ptr noundef %33) #15
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = tail call zeroext i8 @stmt_dominates_stmt_p(ptr noundef %33, ptr noundef nonnull %0) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36, %30
  %40 = tail call fastcc i64 @shwi_to_double_int(i64 noundef 1) #15
  %41 = tail call { i64, i64 } @double_int_add(i64 %5, i64 %7, i64 %40, i64 0) #14
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  %44 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %42, i64 %43) #15, !range !86
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef nonnull %9, i64 %42, i64 %43) #14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %31, %36, %46, %26, %29
  %50 = phi i32 [ 99, %29 ], [ 100, %26 ], [ 99, %46 ], [ 99, %36 ], [ 99, %31 ]
  %51 = phi i64 [ %5, %29 ], [ %5, %26 ], [ %42, %46 ], [ %5, %36 ], [ %5, %31 ]
  %52 = phi i64 [ %7, %29 ], [ %7, %26 ], [ %43, %46 ], [ %7, %36 ], [ %7, %31 ]
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %54 = tail call ptr @double_int_to_tree(ptr noundef nonnull %9, i64 %51, i64 %52) #14
  %55 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %50, ptr noundef %53, ptr noundef nonnull %2, ptr noundef %54) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = tail call i32 @integer_nonzerop(ptr noundef nonnull %55) #14
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %49, %57, %39, %46, %14
  %62 = phi i8 [ 0, %14 ], [ 0, %46 ], [ 0, %39 ], [ 0, %49 ], [ %60, %57 ]
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_numbers_of_iterations_estimates_loop(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  store ptr null, ptr %2, align 8, !tbaa !188
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 16
  store i32 0, ptr %3, align 4, !tbaa !151
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.nb_iter_bound, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  tail call void @ggc_free(ptr noundef nonnull %8) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !189

12:                                               ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !160
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_numbers_of_iterations_estimates() local_unnamed_addr #0 !prof !168 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !190

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call void @free_numbers_of_iterations_estimates_loop(ptr noundef nonnull %6) #15
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !191, !llvm.loop !192

9:                                                ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @substitute_in_loop_info(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !52 {
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = tail call fastcc ptr @simplify_replace_tree(ptr noundef %5, ptr noundef %1, ptr noundef %2) #15
  store ptr %6, ptr %4, align 8, !tbaa !188
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_replace_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !52 !PGOFuncName !193 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %5
  %11 = tail call ptr @unshare_expr(ptr noundef %2) #14
  br label %46

12:                                               ; preds = %7
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !53
  %17 = add i32 %16, -4
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %19, label %46

19:                                               ; preds = %12
  %20 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %19
  %23 = zext i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %38
  %25 = phi i64 [ 0, %22 ], [ %40, %38 ]
  %26 = phi ptr [ null, %22 ], [ %39, %38 ]
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = tail call fastcc ptr @simplify_replace_tree(ptr noundef %28, ptr noundef %1, ptr noundef %2) #15
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = icmp eq ptr %26, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #14
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %26, %31 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3, i64 %25
  store ptr %29, ptr %37, align 8, !tbaa !57
  br label %38

38:                                               ; preds = %24, %35
  %39 = phi ptr [ %26, %24 ], [ %36, %35 ]
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %24, !llvm.loop !194

42:                                               ; preds = %38
  %43 = icmp eq ptr %39, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = tail call ptr @fold(ptr noundef nonnull %39) #14
  br label %46

46:                                               ; preds = %19, %44, %42, %12, %3, %10
  %47 = phi ptr [ %11, %10 ], [ null, %3 ], [ %0, %12 ], [ %45, %44 ], [ %0, %42 ], [ %0, %19 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !195 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3103, ptr noundef nonnull @.str.10) #14
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !52 !PGOFuncName !196 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !86
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 655, ptr noundef nonnull @.str.10) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !197
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6) #15
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !52 !PGOFuncName !198 {
  %2 = load ptr, ptr %0, align 8, !tbaa !197
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !199 {
  %2 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !200 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !86
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !201 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !52 !PGOFuncName !202 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !117
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.10) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !203 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !52 !PGOFuncName !204 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !53
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !52 !PGOFuncName !205 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1446, ptr noundef nonnull @.str.10) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !206 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !57
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !52 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !208
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !209
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !211 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !212
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @shwi_to_double_int(i64 noundef %0) unnamed_addr #5 !prof !52 !PGOFuncName !214 {
  ret i64 %0
}

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bound_difference(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !52 !PGOFuncName !215 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca [1 x %struct.__mpz_struct], align 16
  %11 = alloca [1 x %struct.__mpz_struct], align 16
  %12 = alloca [1 x %struct.__mpz_struct], align 16
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
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
  %18 = load ptr, ptr %5, align 8, !tbaa !72
  %19 = call i32 @integer_zerop(ptr noundef %18) #14
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %6, align 8
  br i1 %20, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 @operand_equal_p(ptr noundef %18, ptr noundef %21, i32 noundef 0) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

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
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 @integer_zerop(ptr noundef %21) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %30, %27
  %34 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !125
  %36 = load ptr, ptr @cfun, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = load ptr, ptr %38, align 8, !tbaa !128
  %40 = icmp eq ptr %35, %39
  br i1 %40, label %76, label %41

41:                                               ; preds = %33, %66
  %42 = phi i32 [ %67, %66 ], [ 0, %33 ]
  %43 = phi ptr [ %68, %66 ], [ %35, %33 ]
  %44 = call fastcc zeroext i8 @single_pred_p(ptr noundef %43) #15, !range !86
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = call fastcc ptr @single_pred_edge(ptr noundef %43) #15
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !104
  %50 = and i32 %49, 3072
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %47, align 8, !tbaa !76
  %54 = call ptr @last_stmt(ptr noundef %53) #14
  %55 = call fastcc ptr @gimple_cond_lhs(ptr noundef %54) #15
  %56 = call fastcc i32 @gimple_cond_code(ptr noundef %54) #15, !range !65
  %57 = call fastcc ptr @gimple_cond_rhs(ptr noundef %54) #15
  %58 = load i32, ptr %48, align 8, !tbaa !104
  %59 = and i32 %58, 2048
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

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
  %69 = load ptr, ptr @cfun, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !126
  %72 = load ptr, ptr %71, align 8, !tbaa !128
  %73 = icmp ne ptr %68, %72
  %74 = icmp slt i32 %67, 8
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %41, label %76, !llvm.loop !216

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_affine_iv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !52 !PGOFuncName !217 {
  %3 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = tail call i32 @integer_zerop(ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @fputc(i32 91, ptr %0)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %11 = load ptr, ptr %1, align 8, !tbaa !105
  tail call void @print_generic_expr(ptr noundef %10, ptr noundef %11, i32 noundef 2) #14
  %12 = load ptr, ptr %3, align 8, !tbaa !108
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 6, i64 1, ptr %0)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %18 = load ptr, ptr %3, align 8, !tbaa !108
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %18, i32 noundef 2) #14
  %19 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !121
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr @.str.32, ptr @.str.31
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %22) #15
  br label %24

24:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: optsize
declare i64 @mpz_out_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @number_of_iterations_ne(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !52 !PGOFuncName !218 {
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = tail call ptr @unsigned_type_for(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %9 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !219
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  store i32 102, ptr %11, align 8, !tbaa !120
  %12 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %13) #14
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %12, align 8, !tbaa !108
  br i1 %15, label %24, label %17

17:                                               ; preds = %6
  %18 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %16) #14
  %19 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %18) #14
  %20 = load ptr, ptr %1, align 8, !tbaa !105
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %20) #14
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %2) #14
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %8, ptr noundef %21, ptr noundef %22) #14
  tail call fastcc void @bounds_negate(ptr noundef %5) #15
  br label %30

24:                                               ; preds = %6
  %25 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %16) #14
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %2) #14
  %27 = load ptr, ptr %1, align 8, !tbaa !105
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %27) #14
  %29 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %8, ptr noundef %26, ptr noundef %28) #14
  br label %30

30:                                               ; preds = %24, %17
  %31 = phi ptr [ %23, %17 ], [ %29, %24 ]
  %32 = phi ptr [ %19, %17 ], [ %25, %24 ]
  call void @mpz_init(ptr noundef nonnull %7) #14
  %33 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %34 = load i8, ptr %33, align 8, !tbaa !121
  call fastcc void @number_of_iterations_ne_max(ptr noundef nonnull %7, i8 noundef zeroext %34, ptr noundef %31, ptr noundef %32, ptr noundef %5) #15
  %35 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %36 = call { i64, i64 } @mpz_get_double_int(ptr noundef %8, ptr noundef nonnull %7, i8 noundef zeroext 0) #14
  %37 = extractvalue { i64, i64 } %36, 0
  %38 = extractvalue { i64, i64 } %36, 1
  store i64 %37, ptr %35, align 8, !tbaa.struct !116
  %39 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %38, ptr %39, align 8, !tbaa.struct !118
  call void @mpz_clear(ptr noundef nonnull %7) #14
  %40 = call i32 @integer_onep(ptr noundef %32) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %71

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
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef nonnull %8, ptr noundef %31, ptr noundef %52) #14
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %58 = call ptr @build_int_cst(ptr noundef nonnull %8, i64 noundef 0) #14
  %59 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %57, ptr noundef %56, ptr noundef %58) #14
  %60 = call i32 @integer_nonzerop(ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %64 = load ptr, ptr %3, align 8, !tbaa !101
  %65 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %63, ptr noundef %64, ptr noundef %59) #14
  store ptr %65, ptr %3, align 8, !tbaa !101
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
  store ptr %72, ptr %73, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @number_of_iterations_lt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !52 !PGOFuncName !220 {
  %7 = alloca ptr, align 8
  %8 = alloca [1 x %struct.__mpz_struct], align 16
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = alloca %struct.affine_iv, align 8
  %11 = tail call ptr @unsigned_type_for(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %12 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = tail call i32 @integer_nonzerop(ptr noundef %13) #14
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  %17 = select i1 %15, ptr %2, ptr %1
  %18 = select i1 %15, i32 99, i32 97
  %19 = select i1 %15, ptr %1, ptr %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  store i32 %18, ptr %21, align 8
  %22 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %2, align 8, !tbaa !105
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %23) #14
  %25 = load ptr, ptr %1, align 8, !tbaa !105
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %25) #14
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %11, ptr noundef %24, ptr noundef %26) #14
  store ptr %27, ptr %7, align 8, !tbaa !72
  %28 = load ptr, ptr %12, align 8, !tbaa !108
  %29 = tail call i32 @integer_onep(ptr noundef %28) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = tail call i32 @integer_zerop(ptr noundef %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31, %6
  %37 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = tail call i32 @integer_all_onesp(ptr noundef %38) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %12, align 8, !tbaa !108
  %43 = tail call i32 @integer_zerop(ptr noundef %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %41, %31
  %46 = tail call i32 @mpz_sgn(ptr noundef %5) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %50 = load ptr, ptr %2, align 8, !tbaa !105
  %51 = load ptr, ptr %1, align 8, !tbaa !105
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 97, ptr noundef %49, ptr noundef %50, ptr noundef %51) #14
  %53 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !106
  br label %54

54:                                               ; preds = %48, %45
  %55 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %27, ptr %55, align 8, !tbaa !107
  %56 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3
  %57 = getelementptr inbounds %struct.bounds, ptr %5, i64 0, i32 1
  %58 = tail call { i64, i64 } @mpz_get_double_int(ptr noundef %11, ptr noundef nonnull %57, i8 noundef zeroext 0) #14
  %59 = extractvalue { i64, i64 } %58, 0
  %60 = extractvalue { i64, i64 } %58, 1
  store i64 %59, ptr %56, align 8, !tbaa.struct !116
  %61 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %60, ptr %61, align 8, !tbaa.struct !118
  br label %100

62:                                               ; preds = %41, %36
  %63 = load ptr, ptr %12, align 8, !tbaa !108
  %64 = tail call i32 @integer_nonzerop(ptr noundef %63) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %12, align 8, !tbaa !108
  br label %71

68:                                               ; preds = %62
  %69 = load ptr, ptr %37, align 8, !tbaa !108
  %70 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %69) #14
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi ptr [ %70, %68 ], [ %67, %66 ]
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef %72) #14
  %74 = call fastcc zeroext i8 @number_of_iterations_lt_to_ne(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %73, i8 noundef zeroext %4, ptr noundef %5) #15, !range !86
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %77 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 0) #14
  store ptr %77, ptr %10, align 8, !tbaa !105
  %78 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 1
  store ptr %73, ptr %78, align 8, !tbaa !108
  %79 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 2
  store i8 1, ptr %79, align 8, !tbaa !121
  %80 = load ptr, ptr %7, align 8, !tbaa !72
  call fastcc void @number_of_iterations_ne(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %80, ptr noundef nonnull %3, i8 noundef zeroext 1, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  br label %100

81:                                               ; preds = %71
  %82 = tail call fastcc zeroext i8 @assert_no_overflow_lt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %73) #15, !range !86
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  tail call fastcc void @assert_loop_rolls_lt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #15
  %85 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 1) #14
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %11, ptr noundef %73, ptr noundef %85) #14
  %87 = load ptr, ptr %7, align 8, !tbaa !72
  %88 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %11, ptr noundef %87, ptr noundef %86) #14
  %89 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 69, ptr noundef %11, ptr noundef %88, ptr noundef %73) #14
  %90 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  store ptr %89, ptr %90, align 8, !tbaa !107
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
  store i64 %97, ptr %95, align 8, !tbaa.struct !116
  %99 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 3, i32 1
  store i64 %98, ptr %99, align 8, !tbaa.struct !118
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
define internal fastcc noundef zeroext i8 @number_of_iterations_le(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !52 !PGOFuncName !221 {
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %11 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = load ptr, ptr @sizetype_tab, align 16, !tbaa !72
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %0, %6 ]
  %13 = icmp eq i8 %4, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  switch i16 %8, label %15 [
    i16 10, label %37
    i16 12, label %37
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = tail call i32 @integer_nonzerop(ptr noundef %17) #14
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %23 = select i1 %19, ptr %21, ptr %22
  %24 = select i1 %19, ptr %1, ptr %2
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = load ptr, ptr %23, align 8, !tbaa !57
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %20, ptr noundef %25, ptr noundef %26) #14
  %28 = tail call i32 @integer_zerop(ptr noundef %27) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %15
  %31 = tail call i32 @integer_nonzerop(ptr noundef %27) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %35 = load ptr, ptr %3, align 8, !tbaa !101
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %34, ptr noundef %35, ptr noundef %27) #14
  store ptr %36, ptr %3, align 8, !tbaa !101
  br label %37

37:                                               ; preds = %14, %14, %30, %33, %11
  %38 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !108
  %40 = tail call i32 @integer_nonzerop(ptr noundef %39) #14
  %41 = icmp eq i32 %40, 0
  %42 = load i64, ptr %0, align 8
  %43 = trunc i64 %42 to i16
  br i1 %41, label %53, label %44

44:                                               ; preds = %37
  switch i16 %43, label %49 [
    i16 10, label %45
    i16 12, label %45
  ]

45:                                               ; preds = %44, %44
  %46 = load ptr, ptr %2, align 8, !tbaa !105
  %47 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %47) #14
  store ptr %48, ptr %2, align 8, !tbaa !105
  br label %63

49:                                               ; preds = %44
  %50 = load ptr, ptr %2, align 8, !tbaa !105
  %51 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %12, ptr noundef %50, ptr noundef %51) #14
  store ptr %52, ptr %2, align 8, !tbaa !105
  br label %63

53:                                               ; preds = %37
  switch i16 %43, label %59 [
    i16 10, label %54
    i16 12, label %54
  ]

54:                                               ; preds = %53, %53
  %55 = load ptr, ptr %1, align 8, !tbaa !105
  %56 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %57 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %56) #14
  %58 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %55, ptr noundef %57) #14
  store ptr %58, ptr %1, align 8, !tbaa !105
  br label %63

59:                                               ; preds = %53
  %60 = load ptr, ptr %1, align 8, !tbaa !105
  %61 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef 1) #14
  %62 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %12, ptr noundef %60, ptr noundef %61) #14
  store ptr %62, ptr %1, align 8, !tbaa !105
  br label %63

63:                                               ; preds = %54, %59, %45, %49
  %64 = tail call fastcc i64 @shwi_to_double_int(i64 noundef 1) #15
  tail call fastcc void @bounds_add(ptr noundef %5, i64 %64, i64 0, ptr noundef %12) #15
  %65 = tail call fastcc zeroext i8 @number_of_iterations_lt(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) #15, !range !86
  br label %66

66:                                               ; preds = %15, %63
  %67 = phi i8 [ %65, %63 ], [ 0, %15 ]
  ret i8 %67
}

; Function Attrs: optsize
declare void @mpz_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_strip_sign_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_to_var_and_offset(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 !prof !52 !PGOFuncName !222 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  store ptr %0, ptr %1, align 8, !tbaa !72
  tail call void @mpz_set_ui(ptr noundef %2, i64 noundef 0) #14
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %44 [
    i16 64, label %8
    i16 63, label %9
    i16 66, label %9
    i16 23, label %35
  ]

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %3, %3, %8
  %10 = phi i1 [ true, %3 ], [ true, %3 ], [ false, %8 ]
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  store ptr %18, ptr %1, align 8, !tbaa !72
  %19 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %12) #14
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  br i1 %10, label %26, label %22

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
  store ptr %36, ptr %1, align 8, !tbaa !72
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
define internal fastcc void @bound_difference_of_offsetted_base(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !52 !PGOFuncName !223 {
  %5 = alloca [1 x %struct.__mpz_struct], align 16
  %6 = tail call i32 @mpz_cmp(ptr noundef %1, ptr noundef %2) #14
  %7 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0) #15, !range !86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %11

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
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = icmp sgt i32 %6, 0
  br i1 %21, label %22, label %23

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
define internal fastcc void @determine_value_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !52 !PGOFuncName !224 {
  %6 = tail call i32 @integer_zerop(ptr noundef %1) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @mpz_set(ptr noundef %3, ptr noundef %2) #14
  tail call void @mpz_set(ptr noundef %4, ptr noundef %2) #14
  br label %17

9:                                                ; preds = %5
  tail call void @get_type_static_bounds(ptr noundef %0, ptr noundef %3, ptr noundef %4) #14
  %10 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0) #15, !range !86
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @mpz_sgn(ptr noundef %2) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

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
define internal fastcc void @refine_bounds_using_guard(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !prof !52 !PGOFuncName !225 {
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
  %17 = tail call zeroext i8 @nowrap_type_p(ptr noundef %0) #15, !range !86
  switch i32 %6, label %124 [
    i32 97, label %18
    i32 98, label %18
    i32 99, label %18
    i32 100, label %18
    i32 102, label %25
  ]

18:                                               ; preds = %9, %9, %9, %9
  %19 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %5) #14
  %20 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %7) #14
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %22, ptr noundef %0) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %124, label %61

25:                                               ; preds = %9
  %26 = load i64, ptr %7, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %29, label %124

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -6
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %124

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %39
  %43 = and i32 %42, 1023
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %124

45:                                               ; preds = %35
  %46 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %7) #14
  %48 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @operand_equal_p(ptr noundef %47, ptr noundef nonnull %49, i32 noundef 0) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51, %45
  %55 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %124, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @operand_equal_p(ptr noundef %47, ptr noundef nonnull %56, i32 noundef 0) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %124, label %61

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
  %67 = load ptr, ptr %11, align 8, !tbaa !72
  %68 = call i32 @operand_equal_p(ptr noundef %1, ptr noundef %67, i32 noundef 0) #14
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr %10, align 8, !tbaa !72
  br i1 %69, label %73, label %71

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
  br i1 %78, label %123, label %79

79:                                               ; preds = %73
  %80 = call i32 @operand_equal_p(ptr noundef %3, ptr noundef %74, i32 noundef 0) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %123, label %82

82:                                               ; preds = %79
  call void @mpz_init_set(ptr noundef nonnull %14, ptr noundef %2) #14
  call void @mpz_init_set(ptr noundef nonnull %15, ptr noundef %4) #14
  %83 = add i32 %76, -101
  %84 = icmp ult i32 %83, -2
  br i1 %84, label %87, label %85

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
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = call i32 @integer_zerop(ptr noundef %90) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = call i32 @mpz_cmp(ptr noundef nonnull %14, ptr noundef nonnull %12) #14
  %97 = icmp sgt i32 %96, -1
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ true, %92 ], [ %97, %95 ]
  %100 = call i32 @integer_zerop(ptr noundef %89) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = call i32 @mpz_cmp(ptr noundef nonnull %15, ptr noundef nonnull %13) #14
  %104 = icmp slt i32 %103, 1
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i1 [ true, %98 ], [ %104, %102 ]
  %107 = select i1 %99, i1 %106, i1 false
  br i1 %107, label %108, label %122

108:                                              ; preds = %87, %105
  call void @mpz_init(ptr noundef nonnull %16) #14
  call void @mpz_sub(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %15) #14
  call void @mpz_add(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %13) #14
  call void @mpz_sub(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %12) #14
  %109 = icmp eq i32 %88, 97
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  call void @mpz_sub_ui(ptr noundef nonnull %16, ptr noundef nonnull %16, i64 noundef 1) #14
  br label %111

111:                                              ; preds = %110, %108
  br i1 %84, label %116, label %112

112:                                              ; preds = %111
  call void @mpz_neg(ptr noundef nonnull %16, ptr noundef nonnull %16) #14
  %113 = call i32 @mpz_cmp(ptr noundef %8, ptr noundef nonnull %16) #14
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  call void @mpz_set(ptr noundef %8, ptr noundef nonnull %16) #14
  br label %121

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.bounds, ptr %8, i64 0, i32 1
  %118 = call i32 @mpz_cmp(ptr noundef nonnull %16, ptr noundef nonnull %117) #14
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

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
declare void @mpz_swap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_init_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_sub_ui(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mpz_neg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bounds_negate(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !226 {
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
define internal fastcc void @number_of_iterations_ne_max(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !52 !PGOFuncName !227 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call i32 @multiple_of_p(ptr noundef %10, ptr noundef %2, ptr noundef %3) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !57
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
  br i1 %27, label %28, label %30

28:                                               ; preds = %5, %25
  %29 = getelementptr inbounds %struct.bounds, ptr %4, i64 0, i32 1
  tail call void @mpz_set(ptr noundef %0, ptr noundef nonnull %29) #14
  br label %46

30:                                               ; preds = %25
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %2) #14
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  tail call void @mpz_set_double_int(ptr noundef %0, i64 %36, i64 %37, i8 noundef zeroext 1) #14
  br label %46

38:                                               ; preds = %30
  %39 = load ptr, ptr %9, align 8, !tbaa !57
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
define internal fastcc ptr @inverse(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !228 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call i32 @tree_floor_log2(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1023
  %9 = icmp ult i32 %8, 65
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef nonnull %0) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 509, ptr noundef nonnull @.str.10) #14
  br label %14

14:                                               ; preds = %10, %13
  %15 = tail call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %1) #14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 510, ptr noundef nonnull @.str.10) #14
  br label %18

18:                                               ; preds = %14, %17
  %19 = tail call i64 @int_cst_value(ptr noundef nonnull %0) #14
  %20 = tail call i64 @int_cst_value(ptr noundef %1) #14
  %21 = icmp eq i32 %5, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %26, %22 ], [ 1, %18 ]
  %24 = phi i64 [ %27, %22 ], [ %19, %18 ]
  %25 = phi i32 [ %28, %22 ], [ %5, %18 ]
  %26 = mul i64 %23, %24
  %27 = mul i64 %24, %24
  %28 = add i32 %25, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %22, !llvm.loop !229

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
  br i1 %44, label %45, label %37, !llvm.loop !230

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
define internal fastcc noundef zeroext i8 @number_of_iterations_lt_to_ne(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7) unnamed_addr #0 !prof !52 !PGOFuncName !231 {
  %9 = alloca [1 x %struct.__mpz_struct], align 16
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = load ptr, ptr %4, align 8, !tbaa !72
  %13 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 73, ptr noundef %11, ptr noundef %12, ptr noundef %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !72
  %15 = load i64, ptr %0, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %19 [
    i16 10, label %17
    i16 12, label %17
  ]

17:                                               ; preds = %8, %8
  %18 = load ptr, ptr @sizetype_tab, align 16, !tbaa !72
  br label %19

19:                                               ; preds = %8, %17
  %20 = phi ptr [ %18, %17 ], [ %0, %8 ]
  %21 = load i64, ptr %13, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 23
  br i1 %23, label %24, label %154

24:                                               ; preds = %19
  %25 = tail call i32 @integer_nonzerop(ptr noundef nonnull %13) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

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
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load i64, ptr %0, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %40 [
    i16 10, label %60
    i16 12, label %60
  ]

40:                                               ; preds = %37
  %41 = icmp eq i8 %6, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !121
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !108
  %49 = call i32 @integer_nonzerop(ptr noundef %48) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  %53 = load i8, ptr %52, align 8, !tbaa !121
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !108
  %58 = call i32 @integer_nonzerop(ptr noundef %57) #14
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %46, %55, %51, %40, %29, %37, %37
  %61 = phi i1 [ false, %37 ], [ false, %37 ], [ false, %29 ], [ true, %40 ], [ false, %46 ], [ true, %51 ], [ %59, %55 ]
  %62 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !108
  %64 = call i32 @integer_nonzerop(ptr noundef %63) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %60
  br i1 %61, label %67, label %76

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 14
  %69 = load ptr, ptr %68, align 8, !tbaa !57
  %70 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %20, ptr noundef %69, ptr noundef %31) #14
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %72 = load ptr, ptr %2, align 8, !tbaa !105
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %71, ptr noundef %72, ptr noundef %70) #14
  %74 = call i32 @integer_zerop(ptr noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %67, %66
  %77 = phi ptr [ %14, %66 ], [ %73, %67 ]
  %78 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef %7) #14
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !72
  br label %129

82:                                               ; preds = %76
  %83 = load i64, ptr %0, align 8
  %84 = trunc i64 %83 to i16
  switch i16 %84, label %91 [
    i16 10, label %85
    i16 12, label %85
  ]

85:                                               ; preds = %82, %82
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %87 = load ptr, ptr %1, align 8, !tbaa !105
  %88 = load ptr, ptr %2, align 8, !tbaa !105
  %89 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %88, ptr noundef %31) #14
  %90 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %86, ptr noundef %87, ptr noundef %89) #14
  br label %129

91:                                               ; preds = %82
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %93 = load ptr, ptr %1, align 8, !tbaa !105
  %94 = load ptr, ptr %2, align 8, !tbaa !105
  %95 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %20, ptr noundef %94, ptr noundef %31) #14
  %96 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %92, ptr noundef %93, ptr noundef %95) #14
  br label %129

97:                                               ; preds = %60
  br i1 %61, label %98, label %107

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 13
  %100 = load ptr, ptr %99, align 8, !tbaa !57
  %101 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %20, ptr noundef %100, ptr noundef %31) #14
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %103 = load ptr, ptr %1, align 8, !tbaa !105
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %102, ptr noundef %103, ptr noundef %101) #14
  %105 = call i32 @integer_zerop(ptr noundef %104) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %98, %97
  %108 = phi ptr [ %14, %97 ], [ %104, %98 ]
  %109 = call i32 @mpz_cmp(ptr noundef nonnull %9, ptr noundef %7) #14
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !72
  br label %129

113:                                              ; preds = %107
  %114 = load i64, ptr %0, align 8
  %115 = trunc i64 %114 to i16
  switch i16 %115, label %123 [
    i16 10, label %116
    i16 12, label %116
  ]

116:                                              ; preds = %113, %113
  %117 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %118 = load ptr, ptr %1, align 8, !tbaa !105
  %119 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %20, ptr noundef %31) #14
  %120 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %0, ptr noundef %118, ptr noundef %119) #14
  %121 = load ptr, ptr %2, align 8, !tbaa !105
  %122 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %117, ptr noundef %120, ptr noundef %121) #14
  br label %129

123:                                              ; preds = %113
  %124 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %125 = load ptr, ptr %1, align 8, !tbaa !105
  %126 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %20, ptr noundef %125, ptr noundef %31) #14
  %127 = load ptr, ptr %2, align 8, !tbaa !105
  %128 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %124, ptr noundef %126, ptr noundef %127) #14
  br label %129

129:                                              ; preds = %111, %123, %116, %80, %91, %85
  %130 = phi ptr [ %81, %80 ], [ %90, %85 ], [ %96, %91 ], [ %112, %111 ], [ %122, %116 ], [ %128, %123 ]
  %131 = phi ptr [ %77, %80 ], [ %77, %85 ], [ %77, %91 ], [ %108, %111 ], [ %108, %116 ], [ %108, %123 ]
  %132 = call i32 @integer_nonzerop(ptr noundef %131) #14
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %136 = load ptr, ptr %3, align 8, !tbaa !101
  %137 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %135, ptr noundef %136, ptr noundef %131) #14
  store ptr %137, ptr %3, align 8, !tbaa !101
  br label %138

138:                                              ; preds = %134, %129
  %139 = call i32 @integer_zerop(ptr noundef %130) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %143 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !106
  %145 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %142, ptr noundef %144, ptr noundef %130) #14
  store ptr %145, ptr %143, align 8, !tbaa !106
  br label %146

146:                                              ; preds = %141, %138
  %147 = call { i64, i64 } @tree_to_double_int(ptr noundef %30) #14
  %148 = extractvalue { i64, i64 } %147, 0
  %149 = extractvalue { i64, i64 } %147, 1
  call fastcc void @bounds_add(ptr noundef %7, i64 %148, i64 %149, ptr noundef nonnull %0) #15
  %150 = load ptr, ptr %4, align 8, !tbaa !72
  %151 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %11, ptr noundef %150, ptr noundef %30) #14
  store ptr %151, ptr %4, align 8, !tbaa !72
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
define internal fastcc noundef zeroext i8 @assert_no_overflow_lt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !prof !52 !PGOFuncName !232 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = tail call i32 @integer_nonzerop(ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !121
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8, !tbaa !105
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 23
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %23) #14
  %25 = load ptr, ptr %1, align 8, !tbaa !105
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
  %37 = load i8, ptr %36, align 8, !tbaa !121
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8, !tbaa !105
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 23
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef nonnull %40) #14
  %46 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !57
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
  %63 = load ptr, ptr %58, align 8, !tbaa !57
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %59) #14
  %65 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %60, ptr noundef %0, ptr noundef %63, ptr noundef %64) #14
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %67 = load ptr, ptr %61, align 8, !tbaa !105
  %68 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %62, ptr noundef %66, ptr noundef %67, ptr noundef %65) #14
  %69 = tail call i32 @integer_zerop(ptr noundef %68) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %57
  %72 = tail call i32 @integer_nonzerop(ptr noundef %68) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %76 = load ptr, ptr %3, align 8, !tbaa !101
  %77 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %75, ptr noundef %76, ptr noundef %68) #14
  store ptr %77, ptr %3, align 8, !tbaa !101
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 2
  store i8 1, ptr %79, align 8, !tbaa !121
  %80 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 2
  store i8 1, ptr %80, align 8, !tbaa !121
  br label %81

81:                                               ; preds = %57, %35, %12, %78
  %82 = phi i8 [ 1, %78 ], [ 1, %12 ], [ 1, %35 ], [ 0, %57 ]
  ret i8 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assert_loop_rolls_lt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 !prof !52 !PGOFuncName !233 {
  %6 = alloca [1 x %struct.__mpz_struct], align 16
  %7 = alloca [1 x %struct.__mpz_struct], align 16
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %9 = getelementptr inbounds %struct.affine_iv, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = tail call i32 @integer_nonzerop(ptr noundef %10) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %9, align 8, !tbaa !108
  %15 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %14) #14
  br label %29

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !108
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
  br i1 %43, label %51, label %44

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
  br i1 %53, label %123, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %0, align 8
  %56 = trunc i64 %55 to i16
  switch i16 %56, label %59 [
    i16 10, label %57
    i16 12, label %57
  ]

57:                                               ; preds = %54, %54
  %58 = load ptr, ptr @sizetype_tab, align 16, !tbaa !72
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %58, %57 ], [ %0, %54 ]
  %61 = load ptr, ptr %9, align 8, !tbaa !108
  %62 = call i32 @integer_nonzerop(ptr noundef %61) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %9, align 8, !tbaa !108
  %66 = call ptr @build_int_cst(ptr noundef %60, i64 noundef 1) #14
  %67 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %60, ptr noundef %65, ptr noundef %66) #14
  %68 = load i64, ptr %0, align 8
  %69 = trunc i64 %68 to i16
  switch i16 %69, label %70 [
    i16 10, label %77
    i16 12, label %77
  ]

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %60, ptr noundef %72, ptr noundef %67) #14
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %75 = load ptr, ptr %1, align 8, !tbaa !105
  %76 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %74, ptr noundef %75, ptr noundef %73) #14
  br label %77

77:                                               ; preds = %64, %64, %70
  %78 = phi ptr [ %8, %64 ], [ %76, %70 ], [ %8, %64 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !105
  %80 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %79) #14
  %81 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %60, ptr noundef %80, ptr noundef %67) #14
  %82 = load ptr, ptr %2, align 8, !tbaa !105
  %83 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %82) #14
  br label %105

84:                                               ; preds = %59
  %85 = getelementptr inbounds %struct.affine_iv, ptr %2, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !108
  %87 = call ptr @build_int_cst(ptr noundef %60, i64 noundef 1) #14
  %88 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %60, ptr noundef %86, ptr noundef %87) #14
  %89 = load i64, ptr %0, align 8
  %90 = trunc i64 %89 to i16
  switch i16 %90, label %91 [
    i16 10, label %98
    i16 12, label %98
  ]

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %93 = load ptr, ptr %92, align 8, !tbaa !57
  %94 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %60, ptr noundef %93, ptr noundef %88) #14
  %95 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %96 = load ptr, ptr %2, align 8, !tbaa !105
  %97 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %95, ptr noundef %96, ptr noundef %94) #14
  br label %98

98:                                               ; preds = %84, %84, %91
  %99 = phi ptr [ %8, %84 ], [ %97, %91 ], [ %8, %84 ]
  %100 = load ptr, ptr %1, align 8, !tbaa !105
  %101 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %100) #14
  %102 = load ptr, ptr %2, align 8, !tbaa !105
  %103 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %60, ptr noundef %102) #14
  %104 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %60, ptr noundef %103, ptr noundef %88) #14
  br label %105

105:                                              ; preds = %98, %77
  %106 = phi ptr [ %83, %77 ], [ %104, %98 ]
  %107 = phi ptr [ %81, %77 ], [ %101, %98 ]
  %108 = phi ptr [ %78, %77 ], [ %99, %98 ]
  %109 = call i32 @integer_nonzerop(ptr noundef %108) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %113 = load ptr, ptr %3, align 8, !tbaa !101
  %114 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %112, ptr noundef %113, ptr noundef %108) #14
  store ptr %114, ptr %3, align 8, !tbaa !101
  br label %115

115:                                              ; preds = %111, %105
  br i1 %34, label %123, label %116

116:                                              ; preds = %115
  %117 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %118 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 99, ptr noundef %117, ptr noundef %107, ptr noundef %106) #14
  %119 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %120 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !106
  %122 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 94, ptr noundef %119, ptr noundef %121, ptr noundef %118) #14
  store ptr %122, ptr %120, align 8, !tbaa !106
  br label %123

123:                                              ; preds = %115, %116, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bounds_add(ptr noundef %0, i64 %1, i64 %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !52 !PGOFuncName !234 {
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  call void @mpz_set(ptr noundef nonnull %13, ptr noundef nonnull %6) #14
  br label %17

17:                                               ; preds = %16, %4
  call void @mpz_neg(ptr noundef nonnull %6, ptr noundef nonnull %6) #14
  %18 = call i32 @mpz_cmp(ptr noundef %0, ptr noundef nonnull %6) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

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
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !235 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #15
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #14
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !236 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_simplify_using_condition(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !237 {
  %3 = tail call ptr @expand_simple_operations(ptr noundef %0) #15
  %4 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %3, ptr noundef %1) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !238 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %115, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %3 to i16
  switch i16 %8, label %36 [
    i16 94, label %9
    i16 93, label %9
    i16 56, label %9
  ]

9:                                                ; preds = %7, %7, %7
  %10 = icmp eq i32 %5, 56
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %12) #15
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = icmp eq ptr %14, %13
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %17) #15
  %19 = load ptr, ptr %16, align 8, !tbaa !57
  %20 = icmp eq ptr %19, %18
  %21 = select i1 %20, i1 %15, i1 false
  br i1 %10, label %22, label %29

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = tail call fastcc ptr @tree_simplify_using_condition_1(ptr noundef %0, ptr noundef %24) #15
  %26 = load ptr, ptr %23, align 8, !tbaa !57
  %27 = icmp eq ptr %26, %25
  %28 = select i1 %27, i1 %21, i1 false
  br i1 %28, label %115, label %30

29:                                               ; preds = %9
  br i1 %21, label %115, label %33

30:                                               ; preds = %22
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %32 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef %31, ptr noundef %13, ptr noundef %18, ptr noundef %25) #14
  br label %115

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %34, ptr noundef %13, ptr noundef %18) #14
  br label %115

36:                                               ; preds = %7
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 101
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %1, ptr noundef %42, ptr noundef %44) #15
  %46 = tail call i32 @integer_zerop(ptr noundef %45) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %115

48:                                               ; preds = %40
  %49 = tail call i32 @integer_nonzerop(ptr noundef %45) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %115

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %1, ptr noundef %44, ptr noundef %42) #15
  %53 = tail call i32 @integer_zerop(ptr noundef %52) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %115

55:                                               ; preds = %51
  %56 = tail call i32 @integer_nonzerop(ptr noundef %52) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %115

58:                                               ; preds = %55
  %59 = load i64, ptr %1, align 8
  br label %60

60:                                               ; preds = %58, %36
  %61 = phi i64 [ %59, %58 ], [ %3, %36 ]
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 101
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %66, ptr noundef %68) #15
  %70 = tail call i32 @integer_zerop(ptr noundef %69) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %64
  %73 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %68, ptr noundef %66) #15
  %74 = tail call i32 @integer_zerop(ptr noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = load i64, ptr %1, align 8
  br label %78

78:                                               ; preds = %76, %60
  %79 = phi i64 [ %77, %76 ], [ %61, %60 ]
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 102
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !57
  %85 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !57
  %87 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %84, ptr noundef %86) #15
  %88 = tail call i32 @integer_zerop(ptr noundef %87) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !72
  br label %115

92:                                               ; preds = %82
  %93 = tail call fastcc ptr @simplify_replace_tree(ptr noundef nonnull %0, ptr noundef %86, ptr noundef %84) #15
  %94 = tail call i32 @integer_zerop(ptr noundef %93) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !72
  br label %115

98:                                               ; preds = %92, %78
  %99 = tail call ptr @expand_simple_operations(ptr noundef nonnull %1) #15
  %100 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef nonnull %0) #14
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %102 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 94, ptr noundef %101, ptr noundef %100, ptr noundef %99) #14
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = tail call i32 @integer_nonzerop(ptr noundef nonnull %102) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104, %98
  %108 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  %109 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 93, ptr noundef %108, ptr noundef nonnull %0, ptr noundef %99) #14
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = tail call i32 @integer_zerop(ptr noundef nonnull %109) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %22, %29, %111, %104, %72, %64, %51, %55, %40, %48, %33, %30, %2, %114, %96, %90
  %116 = phi ptr [ %91, %90 ], [ %97, %96 ], [ %1, %114 ], [ %1, %2 ], [ %32, %30 ], [ %35, %33 ], [ %45, %48 ], [ %45, %40 ], [ %52, %55 ], [ %52, %51 ], [ %69, %64 ], [ %73, %72 ], [ %102, %104 ], [ %109, %111 ], [ %1, %29 ], [ %1, %22 ]
  ret ptr %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chain_of_csts_start(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !52 !PGOFuncName !239 {
  br label %3

3:                                                ; preds = %35, %2
  %4 = phi ptr [ %1, %2 ], [ %36, %35 ]
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %7) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_code(ptr noundef %6) #15, !range !60
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %38 [
    i8 16, label %15
    i8 6, label %20
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !125
  %18 = icmp eq ptr %7, %17
  %19 = select i1 %18, ptr %6, ptr null
  br label %38

20:                                               ; preds = %12
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %6) #15, !range !65
  %22 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %6) #15, !range !86
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !53
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %21, 121
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %6) #15
  %33 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %32) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %29
  %36 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %6) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %3

38:                                               ; preds = %12, %35, %20, %24, %31, %3, %9, %15
  %39 = phi ptr [ %19, %15 ], [ null, %9 ], [ null, %3 ], [ null, %31 ], [ null, %24 ], [ null, %20 ], [ null, %35 ], [ null, %12 ]
  ret ptr %39
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !240 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !86
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

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
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !52 !PGOFuncName !241 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #15
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #15
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #15
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !242 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !243 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !86
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !52 !PGOFuncName !244 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !245
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !247 {
  %2 = load i8, ptr %0, align 8, !tbaa !248
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #6 !prof !52 !PGOFuncName !249 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #15
  %8 = load ptr, ptr %3, align 8, !tbaa !251
  store ptr %8, ptr %2, align 8, !tbaa !250
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !253
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !254
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #15
  %17 = load ptr, ptr %11, align 8, !tbaa !256
  store ptr %17, ptr %10, align 8, !tbaa !253
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !248
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !52 !PGOFuncName !257 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !253
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !250
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !251
  store ptr %11, ptr %5, align 8, !tbaa !250
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !248
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !258 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !86
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !259 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !260 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !261 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !65
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !60
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !262 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #15
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !65
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #14
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !72
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !263 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !264 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_array(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !52 !PGOFuncName !265 {
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #15, !range !86
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #15
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #15
  %9 = load i64, ptr %7, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext %2) #15
  br label %15

15:                                               ; preds = %14, %6
  %16 = load i64, ptr %8, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext %2) #15
  br label %50

22:                                               ; preds = %3
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %1) #15, !range !86
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #15
  %27 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %1) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %27, i8 noundef zeroext %2) #15
  br label %36

36:                                               ; preds = %35, %29, %25
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %36, %47
  %39 = phi i32 [ %48, %47 ], [ 0, %36 ]
  %40 = tail call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %39) #15
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !53
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  tail call fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %40, i8 noundef zeroext %2) #15
  br label %47

47:                                               ; preds = %38, %46
  %48 = add nuw i32 %39, 1
  %49 = icmp eq i32 %48, %26
  br i1 %49, label %50, label %38, !llvm.loop !266

50:                                               ; preds = %47, %36, %15, %21, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_signedness(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !267 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %1) #15, !range !60
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %57

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #15
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %57

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -6
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %57

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
  br i1 %29, label %30, label %57

30:                                               ; preds = %18
  %31 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef nonnull %6) #14
  %32 = tail call fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %31) #15
  %33 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %32) #14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i32, ptr %0, align 8, !tbaa !122
  %37 = tail call ptr @initial_condition_in_loop_num(ptr noundef %32, i32 noundef %36) #14
  %38 = load i32, ptr %0, align 8, !tbaa !122
  %39 = tail call ptr @evolution_part_in_loop_num(ptr noundef %32, i32 noundef %38) #14
  %40 = icmp ne ptr %37, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i64, ptr %39, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 23
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %37, ptr noundef null) #14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, ptr %0, align 8, !tbaa !122
  %52 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %37, i32 noundef %51) #14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = tail call ptr @lower_bound_in_type(ptr noundef nonnull %12, ptr noundef nonnull %12) #14
  %56 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %12, ptr noundef nonnull %12) #14
  tail call fastcc void @record_nonwrapping_iv(ptr noundef nonnull %0, ptr noundef nonnull %37, ptr noundef nonnull %39, ptr noundef %1, ptr noundef %55, ptr noundef %56, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  br label %57

57:                                               ; preds = %10, %35, %43, %47, %50, %30, %18, %5, %2, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !268 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @infer_loop_bounds_from_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !52 !PGOFuncName !269 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ilb_data, align 8
  store ptr %2, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %struct.ilb_data, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !272
  %8 = getelementptr inbounds %struct.ilb_data, ptr %6, i64 0, i32 2
  store i8 %3, ptr %8, align 8, !tbaa !273
  %9 = call zeroext i8 @for_each_index(ptr noundef nonnull %5, ptr noundef nonnull @idx_infer_loop_bounds, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !274 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !60
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !52 !PGOFuncName !275 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !276 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !52 !PGOFuncName !277 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #15
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @idx_infer_loop_bounds(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !prof !52 !PGOFuncName !278 {
  %4 = load ptr, ptr %2, align 8, !tbaa !270
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 45
  br i1 %7, label %8, label %77

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ilb_data, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !273
  %11 = tail call zeroext i8 @array_at_struct_end_p(ptr noundef nonnull %0) #15, !range !86
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 %10, i8 0
  %14 = load ptr, ptr %1, align 8, !tbaa !72
  %15 = tail call ptr @analyze_scalar_evolution(ptr noundef %4, ptr noundef %14) #14
  %16 = tail call fastcc ptr @instantiate_parameters(ptr noundef %4, ptr noundef %15) #15
  %17 = tail call ptr @initial_condition(ptr noundef %16) #14
  %18 = load i32, ptr %4, align 8, !tbaa !122
  %19 = tail call ptr @evolution_part_in_loop_num(ptr noundef %16, i32 noundef %18) #14
  %20 = icmp ne ptr %17, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %77

23:                                               ; preds = %8
  %24 = load i64, ptr %19, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = tail call i32 @integer_zerop(ptr noundef nonnull %19) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %17, ptr noundef null) #14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %30
  %34 = load i32, ptr %4, align 8, !tbaa !122
  %35 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef nonnull %17, i32 noundef %34) #14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %33
  %38 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #14
  %39 = tail call ptr @array_ref_up_bound(ptr noundef nonnull %0) #14
  %40 = load i64, ptr %38, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  %43 = icmp ne ptr %39, null
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %77

45:                                               ; preds = %37
  %46 = load i64, ptr %39, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %19) #14
  %51 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  br i1 %12, label %56, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @operand_equal_p(ptr noundef nonnull %38, ptr noundef nonnull %39, i32 noundef 0) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53, %49
  %57 = tail call i32 @int_fits_type_p(ptr noundef nonnull %39, ptr noundef %52) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @int_fits_type_p(ptr noundef nonnull %38, ptr noundef %52) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %38) #14
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %39) #14
  %65 = and i32 %50, 255
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr %64, ptr %63
  %68 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef 63, ptr noundef %52, ptr noundef %67, ptr noundef nonnull %19) #14
  %69 = tail call i32 @tree_int_cst_compare(ptr noundef %63, ptr noundef %68) #14
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = tail call i32 @tree_int_cst_compare(ptr noundef %68, ptr noundef %64) #14
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71, %62
  %75 = getelementptr inbounds %struct.ilb_data, ptr %2, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !272
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
define internal fastcc void @record_nonwrapping_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !52 !PGOFuncName !279 {
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %74

14:                                               ; preds = %8
  %15 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %18)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %27 = load ptr, ptr %9, align 8, !tbaa !57
  tail call void @print_generic_expr(ptr noundef %26, ptr noundef %27, i32 noundef 2) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %29 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 2, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !72
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef nonnull %1, i32 noundef 2) #14
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %32 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 3, i64 1, ptr %31)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !72
  tail call void @print_generic_expr(ptr noundef %33, ptr noundef nonnull %2, i32 noundef 2) #14
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %35 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 40, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !72
  tail call void @print_gimple_stmt(ptr noundef %36, ptr noundef %3, i32 noundef 0, i32 noundef 2) #14
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !72
  %38 = load i32, ptr %0, align 8, !tbaa !122
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.44, i32 noundef %38) #15
  br label %40

40:                                               ; preds = %24, %20, %17
  %41 = tail call ptr @unsigned_type_for(ptr noundef %10) #14
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %1) #14
  %43 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %2) #14
  %44 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %43) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef %4) #14
  %48 = load i64, ptr %42, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 23
  br i1 %50, label %53, label %51

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
  br i1 %61, label %64, label %62

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
define internal fastcc { i64, i64 } @derive_constant_upper_bound(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !280 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @extract_ops_from_tree(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = load ptr, ptr %3, align 8, !tbaa !72
  %8 = load i32, ptr %2, align 4, !tbaa !53
  %9 = load ptr, ptr %4, align 8, !tbaa !72
  %10 = call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret { i64, i64 } %10
}

; Function Attrs: optsize
declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !52 !PGOFuncName !281 {
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !57
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
  ]

20:                                               ; preds = %15
  %21 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %1) #14
  br label %143

22:                                               ; preds = %15, %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
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
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !72
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
  %135 = load ptr, ptr %134, align 8, !tbaa !57
  %136 = tail call fastcc i32 @gimple_code(ptr noundef %135) #15, !range !60
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
declare zeroext i8 @tree_expr_nonnegative_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_udiv(i64, i64, i64, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i64, i64 } @derive_constant_upper_bound_assign(ptr noundef %0) unnamed_addr #0 !prof !52 !PGOFuncName !282 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !65
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %4 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #15
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call fastcc { i64, i64 } @derive_constant_upper_bound_ops(ptr noundef %7, ptr noundef %3, i32 noundef %2, ptr noundef %4) #15
  ret { i64, i64 } %8
}

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !168 !PGOFuncName !283 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !168 !PGOFuncName !284 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !173

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !285
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #15
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !52 !PGOFuncName !286 {
  %3 = load i32, ptr %0, align 4, !tbaa !287
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !287
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !168 !PGOFuncName !289 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !178

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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !291 !PGOFuncName !292 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !180

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !293
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !52 !PGOFuncName !295 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !168 !PGOFuncName !296 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !173

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !287
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !173

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !53
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !53
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !52 !PGOFuncName !297 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !285
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !168 !PGOFuncName !298 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !173

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_to_tree_p(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #5 !prof !52 !PGOFuncName !299 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

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
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @fel_init, ptr @number_of_loops, i64 42}
!36 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 42}
!37 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 2}
!38 = !{ptr @fel_init, ptr @loop_outer, i64 42}
!39 = !{ptr @fel_init, ptr @fel_next, i64 42}
!40 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 44}
!41 = !{ptr @fel_next, ptr @get_loop, i64 1}
!42 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 43}
!43 = !{ptr @free_numbers_of_iterations_estimates, ptr @fel_init, i64 43}
!44 = !{ptr @free_numbers_of_iterations_estimates, ptr @free_numbers_of_iterations_estimates_loop, i64 1}
!45 = !{ptr @free_numbers_of_iterations_estimates, ptr @fel_next, i64 1}
!46 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 43}
!47 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 42}
!48 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 43}
!49 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 1}
!50 = !{ptr @VEC_int_heap_free, ptr @free, i64 42}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!55, !55, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{i32 0, i32 256}
!61 = !{!62, !63, i64 24}
!62 = !{!"basic_block_def", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !55, i64 32, !63, i64 48, !63, i64 56, !55, i64 64, !64, i64 72, !54, i64 80, !54, i64 84, !54, i64 88, !54, i64 92, !54, i64 96}
!63 = !{!"any pointer", !55, i64 0}
!64 = !{!"long", !55, i64 0}
!65 = !{i32 0, i32 65536}
!66 = !{!"tree-ssa-loop-niter.c:tree_operand_length"}
!67 = !{!"tree-ssa-loop-niter.c:gimple_code"}
!68 = !{!"tree-ssa-loop-niter.c:gimple_phi_num_args"}
!69 = !{!"tree-ssa-loop-niter.c:get_use_from_ptr"}
!70 = !{!71, !63, i64 24}
!71 = !{!"ssa_use_operand_d", !63, i64 0, !63, i64 8, !55, i64 16, !63, i64 24}
!72 = !{!63, !63, i64 0}
!73 = !{!"tree-ssa-loop-niter.c:gimple_phi_arg_imm_use_ptr"}
!74 = !{!"tree-ssa-loop-niter.c:gimple_bb"}
!75 = !{!"tree-ssa-loop-niter.c:single_pred"}
!76 = !{!77, !63, i64 0}
!77 = !{!"edge_def", !63, i64 0, !63, i64 8, !55, i64 16, !63, i64 24, !63, i64 32, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !64, i64 56}
!78 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs1"}
!79 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs_code"}
!80 = !{!"tree-ssa-loop-niter.c:get_gimple_rhs_class"}
!81 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs2"}
!82 = !{!83, !54, i64 36}
!83 = !{!"loop", !54, i64 0, !54, i64 4, !63, i64 8, !63, i64 16, !84, i64 24, !54, i64 32, !54, i64 36, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !85, i64 80, !85, i64 96, !55, i64 112, !55, i64 113, !54, i64 116, !63, i64 120, !63, i64 128, !55, i64 136, !63, i64 144}
!84 = !{!"lpt_decision", !54, i64 0, !54, i64 4}
!85 = !{!"", !64, i64 0, !64, i64 8}
!86 = !{i8 0, i8 2}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = !{!"tree-ssa-loop-niter.c:gsi_start_bb"}
!90 = !{!91, !63, i64 0}
!91 = !{!"", !63, i64 0, !63, i64 8, !63, i64 16}
!92 = !{!91, !63, i64 8}
!93 = !{!91, !63, i64 16}
!94 = !{!"tree-ssa-loop-niter.c:gsi_end_p"}
!95 = !{!"tree-ssa-loop-niter.c:gsi_stmt"}
!96 = !{!97, !63, i64 0}
!97 = !{!"gimple_seq_node_d", !63, i64 0, !63, i64 8, !63, i64 16}
!98 = !{!"tree-ssa-loop-niter.c:gsi_next"}
!99 = !{!97, !63, i64 16}
!100 = !{!83, !63, i64 16}
!101 = !{!102, !63, i64 0}
!102 = !{!"tree_niter_desc", !63, i64 0, !63, i64 8, !63, i64 16, !85, i64 24, !103, i64 40, !63, i64 64, !54, i64 72}
!103 = !{!"", !63, i64 0, !63, i64 8, !55, i64 16}
!104 = !{!77, !54, i64 48}
!105 = !{!103, !63, i64 0}
!106 = !{!102, !63, i64 8}
!107 = !{!102, !63, i64 16}
!108 = !{!103, !63, i64 8}
!109 = !{!110, !54, i64 8}
!110 = !{!"", !63, i64 0, !54, i64 8, !54, i64 12, !55, i64 16}
!111 = !{!"tree-ssa-loop-niter.c:gimple_cond_code"}
!112 = !{!"tree-ssa-loop-niter.c:gimple_cond_lhs"}
!113 = !{!"tree-ssa-loop-niter.c:gimple_cond_rhs"}
!114 = !{!"tree-ssa-loop-niter.c:loop_containing_stmt"}
!115 = !{!"tree-ssa-loop-niter.c:number_of_iterations_cond"}
!116 = !{i64 0, i64 8, !117, i64 8, i64 8, !117}
!117 = !{!64, !64, i64 0}
!118 = !{i64 0, i64 8, !117}
!119 = !{!102, !63, i64 64}
!120 = !{!102, !54, i64 72}
!121 = !{!103, !55, i64 16}
!122 = !{!83, !54, i64 0}
!123 = !{!"tree-ssa-loop-niter.c:simplify_using_outer_evolutions"}
!124 = !{!"tree-ssa-loop-niter.c:simplify_using_initial_conditions"}
!125 = !{!83, !63, i64 8}
!126 = !{!127, !63, i64 8}
!127 = !{!"function", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !54, i64 104, !54, i64 108, !54, i64 112, !54, i64 116, !54, i64 120, !54, i64 124, !63, i64 128, !54, i64 136, !54, i64 137, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 138, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139, !54, i64 139}
!128 = !{!129, !63, i64 0}
!129 = !{!"control_flow_graph", !63, i64 0, !63, i64 8, !63, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !63, i64 40, !54, i64 48, !55, i64 52, !55, i64 60, !54, i64 68, !54, i64 72}
!130 = distinct !{!130, !59}
!131 = !{!"tree-ssa-loop-niter.c:gimple_location"}
!132 = !{i32 0, i32 2}
!133 = distinct !{!133, !59}
!134 = !{!"tree-ssa-loop-niter.c:VEC_edge_base_iterate"}
!135 = !{!136, !54, i64 0}
!136 = !{!"VEC_edge_base", !54, i64 0, !54, i64 4, !55, i64 8}
!137 = !{!"tree-ssa-loop-niter.c:VEC_edge_heap_free"}
!138 = distinct !{!138, !59}
!139 = !{!77, !54, i64 44}
!140 = distinct !{!140, !59}
!141 = !{!142, !54, i64 8}
!142 = !{!"param_info", !63, i64 0, !54, i64 8, !55, i64 12, !54, i64 16, !54, i64 20, !63, i64 24}
!143 = distinct !{!143, !59}
!144 = distinct !{!144, !59}
!145 = !{!"tree-ssa-loop-niter.c:get_base_for"}
!146 = !{!"tree-ssa-loop-niter.c:get_val_for"}
!147 = distinct !{!147, !59}
!148 = !{!"tree-ssa-loop-niter.c:VEC_edge_base_length"}
!149 = distinct !{!149, !59}
!150 = !{!"tree-ssa-loop-niter.c:handled_component_p"}
!151 = !{!83, !54, i64 116}
!152 = !{!83, !55, i64 112}
!153 = !{!83, !55, i64 113}
!154 = distinct !{!154, !59}
!155 = !{!62, !64, i64 72}
!156 = !{!"tree-ssa-loop-niter.c:record_estimate"}
!157 = !{!158, !63, i64 0}
!158 = !{!"nb_iter_bound", !63, i64 0, !85, i64 8, !55, i64 24, !63, i64 32}
!159 = !{!158, !55, i64 24}
!160 = !{!83, !63, i64 120}
!161 = !{!158, !63, i64 32}
!162 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_undefined"}
!163 = distinct !{!163, !59}
!164 = distinct !{!164, !59}
!165 = !{!"tree-ssa-loop-niter.c:gcov_type_to_double_int"}
!166 = !{!"tree-ssa-loop-niter.c:record_niter_bound"}
!167 = distinct !{!167, !59}
!168 = !{!"function_entry_count", i64 43}
!169 = !{!"tree-ssa-loop-niter.c:fel_init"}
!170 = !{!171, !54, i64 8}
!171 = !{!"", !63, i64 0, !54, i64 8}
!172 = !{!127, !63, i64 32}
!173 = !{!"branch_weights", i32 1, i32 44}
!174 = !{!171, !63, i64 0}
!175 = !{!176, !63, i64 24}
!176 = !{!"loops", !54, i64 0, !63, i64 8, !63, i64 16, !63, i64 24}
!177 = !{!83, !63, i64 48}
!178 = !{!"branch_weights", i32 44, i32 1}
!179 = !{!83, !63, i64 56}
!180 = !{!"branch_weights", i32 44, i32 44}
!181 = !{!"branch_weights", i32 44, i32 0}
!182 = distinct !{!182, !59}
!183 = !{!"tree-ssa-loop-niter.c:fel_next"}
!184 = distinct !{!184, !59}
!185 = distinct !{!185, !59}
!186 = distinct !{!186, !59}
!187 = !{!"tree-ssa-loop-niter.c:n_of_executions_at_most"}
!188 = !{!83, !63, i64 72}
!189 = distinct !{!189, !59}
!190 = !{!"branch_weights", i32 43, i32 1}
!191 = !{!"branch_weights", i32 1, i32 0}
!192 = distinct !{!192, !59}
!193 = !{!"tree-ssa-loop-niter.c:simplify_replace_tree"}
!194 = distinct !{!194, !59}
!195 = !{!"tree-ssa-loop-niter.c:gimple_phi_arg"}
!196 = !{!"tree-ssa-loop-niter.c:single_pred_edge"}
!197 = !{!62, !63, i64 0}
!198 = !{!"tree-ssa-loop-niter.c:single_pred_p"}
!199 = !{!"tree-ssa-loop-niter.c:VEC_edge_base_index"}
!200 = !{!"tree-ssa-loop-niter.c:gimple_op"}
!201 = !{!"tree-ssa-loop-niter.c:gimple_has_ops"}
!202 = !{!"tree-ssa-loop-niter.c:gimple_ops"}
!203 = !{!"tree-ssa-loop-niter.c:gimple_statement_structure"}
!204 = !{!"tree-ssa-loop-niter.c:gss_for_code"}
!205 = !{!"tree-ssa-loop-niter.c:gimple_expr_code"}
!206 = !{!"tree-ssa-loop-niter.c:gimple_num_ops"}
!207 = !{!"tree-ssa-loop-niter.c:bb_seq"}
!208 = !{!62, !54, i64 96}
!209 = !{!210, !63, i64 0}
!210 = !{!"gimple_bb_info", !63, i64 0, !63, i64 8}
!211 = !{!"tree-ssa-loop-niter.c:gimple_seq_first"}
!212 = !{!213, !63, i64 0}
!213 = !{!"gimple_seq_d", !63, i64 0, !63, i64 8, !63, i64 16}
!214 = !{!"tree-ssa-loop-niter.c:shwi_to_double_int"}
!215 = !{!"tree-ssa-loop-niter.c:bound_difference"}
!216 = distinct !{!216, !59}
!217 = !{!"tree-ssa-loop-niter.c:dump_affine_iv"}
!218 = !{!"tree-ssa-loop-niter.c:number_of_iterations_ne"}
!219 = !{i64 0, i64 8, !72, i64 8, i64 8, !72, i64 16, i64 1, !57}
!220 = !{!"tree-ssa-loop-niter.c:number_of_iterations_lt"}
!221 = !{!"tree-ssa-loop-niter.c:number_of_iterations_le"}
!222 = !{!"tree-ssa-loop-niter.c:split_to_var_and_offset"}
!223 = !{!"tree-ssa-loop-niter.c:bound_difference_of_offsetted_base"}
!224 = !{!"tree-ssa-loop-niter.c:determine_value_range"}
!225 = !{!"tree-ssa-loop-niter.c:refine_bounds_using_guard"}
!226 = !{!"tree-ssa-loop-niter.c:bounds_negate"}
!227 = !{!"tree-ssa-loop-niter.c:number_of_iterations_ne_max"}
!228 = !{!"tree-ssa-loop-niter.c:inverse"}
!229 = distinct !{!229, !59}
!230 = distinct !{!230, !59}
!231 = !{!"tree-ssa-loop-niter.c:number_of_iterations_lt_to_ne"}
!232 = !{!"tree-ssa-loop-niter.c:assert_no_overflow_lt"}
!233 = !{!"tree-ssa-loop-niter.c:assert_loop_rolls_lt"}
!234 = !{!"tree-ssa-loop-niter.c:bounds_add"}
!235 = !{!"tree-ssa-loop-niter.c:instantiate_parameters"}
!236 = !{!"tree-ssa-loop-niter.c:block_before_loop"}
!237 = !{!"tree-ssa-loop-niter.c:tree_simplify_using_condition"}
!238 = !{!"tree-ssa-loop-niter.c:tree_simplify_using_condition_1"}
!239 = !{!"tree-ssa-loop-niter.c:chain_of_csts_start"}
!240 = !{!"tree-ssa-loop-niter.c:gimple_references_memory_p"}
!241 = !{!"tree-ssa-loop-niter.c:single_ssa_tree_operand"}
!242 = !{!"tree-ssa-loop-niter.c:gimple_has_mem_ops"}
!243 = !{!"tree-ssa-loop-niter.c:gimple_vuse"}
!244 = !{!"tree-ssa-loop-niter.c:op_iter_init_tree"}
!245 = !{!246, !54, i64 4}
!246 = !{!"ssa_operand_iterator_d", !55, i64 0, !54, i64 4, !63, i64 8, !63, i64 16, !54, i64 24, !54, i64 28, !63, i64 32}
!247 = !{!"tree-ssa-loop-niter.c:op_iter_done"}
!248 = !{!246, !55, i64 0}
!249 = !{!"tree-ssa-loop-niter.c:op_iter_next_tree"}
!250 = !{!246, !63, i64 16}
!251 = !{!252, !63, i64 0}
!252 = !{!"use_optype_d", !63, i64 0, !71, i64 8}
!253 = !{!246, !63, i64 8}
!254 = !{!255, !63, i64 8}
!255 = !{!"def_optype_d", !63, i64 0, !63, i64 8}
!256 = !{!255, !63, i64 0}
!257 = !{!"tree-ssa-loop-niter.c:op_iter_init"}
!258 = !{!"tree-ssa-loop-niter.c:gimple_use_ops"}
!259 = !{!"tree-ssa-loop-niter.c:get_def_from_ptr"}
!260 = !{!"tree-ssa-loop-niter.c:is_gimple_assign"}
!261 = !{!"tree-ssa-loop-niter.c:gimple_assign_rhs_class"}
!262 = !{!"tree-ssa-loop-niter.c:gimple_expr_type"}
!263 = !{!"tree-ssa-loop-niter.c:gimple_call_return_type"}
!264 = !{!"tree-ssa-loop-niter.c:gimple_call_fn"}
!265 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_array"}
!266 = distinct !{!266, !59}
!267 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_signedness"}
!268 = !{!"tree-ssa-loop-niter.c:gimple_assign_lhs"}
!269 = !{!"tree-ssa-loop-niter.c:infer_loop_bounds_from_ref"}
!270 = !{!271, !63, i64 0}
!271 = !{!"ilb_data", !63, i64 0, !63, i64 8, !55, i64 16}
!272 = !{!271, !63, i64 8}
!273 = !{!271, !55, i64 16}
!274 = !{!"tree-ssa-loop-niter.c:is_gimple_call"}
!275 = !{!"tree-ssa-loop-niter.c:gimple_call_num_args"}
!276 = !{!"tree-ssa-loop-niter.c:gimple_call_lhs"}
!277 = !{!"tree-ssa-loop-niter.c:gimple_call_arg"}
!278 = !{!"tree-ssa-loop-niter.c:idx_infer_loop_bounds"}
!279 = !{!"tree-ssa-loop-niter.c:record_nonwrapping_iv"}
!280 = !{!"tree-ssa-loop-niter.c:derive_constant_upper_bound"}
!281 = !{!"tree-ssa-loop-niter.c:derive_constant_upper_bound_ops"}
!282 = !{!"tree-ssa-loop-niter.c:derive_constant_upper_bound_assign"}
!283 = !{!"tree-ssa-loop-niter.c:VEC_int_heap_alloc"}
!284 = !{!"tree-ssa-loop-niter.c:number_of_loops"}
!285 = !{!176, !63, i64 8}
!286 = !{!"tree-ssa-loop-niter.c:VEC_int_base_quick_push"}
!287 = !{!288, !54, i64 0}
!288 = !{!"VEC_int_base", !54, i64 0, !54, i64 4, !55, i64 8}
!289 = !{!"tree-ssa-loop-niter.c:loop_outer"}
!290 = !{!83, !63, i64 40}
!291 = !{!"function_entry_count", i64 86}
!292 = !{!"tree-ssa-loop-niter.c:VEC_loop_p_base_length"}
!293 = !{!294, !54, i64 0}
!294 = !{!"VEC_loop_p_base", !54, i64 0, !54, i64 4, !55, i64 8}
!295 = !{!"tree-ssa-loop-niter.c:VEC_loop_p_base_index"}
!296 = !{!"tree-ssa-loop-niter.c:VEC_int_base_iterate"}
!297 = !{!"tree-ssa-loop-niter.c:get_loop"}
!298 = !{!"tree-ssa-loop-niter.c:VEC_int_heap_free"}
!299 = !{!"tree-ssa-loop-niter.c:double_int_zero_p"}
