; ModuleID = 'lambda-code.c'
source_filename = "lambda-code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.lambda_body_vector_s = type { ptr, i32, i32 }
%struct.lambda_trans_matrix_s = type { ptr, i32, i32, i32 }
%struct.lambda_linear_expression_s = type { ptr, i32, ptr, i32, ptr }
%struct.lambda_loop_s = type { ptr, ptr, ptr, i32 }
%struct.lambda_loopnest_s = type { ptr, i32, i32 }
%struct.lambda_lattice_s = type { ptr, i32, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_lambda_loop_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.access_matrix = type { ptr, i32, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_source_location_base = type { i32, i32, [1 x i32] }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"lambda-code.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09Linear expression: \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" constant: %d \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  invariants: \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  denominator: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"  step size = %d \0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"  linear offset: \0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"  lower bound: \0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"  upper bound: \0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Loop %c\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [54 x i8] c"Not a perfect loop nest and couldn't convert to one.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Successfully converted loop nest to perfect loop nest.\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Inverse of transformation matrix:\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"lnivtmp\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"./lambda.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [89 x i8] c"Unable to convert loop: Cannot determine exit condition or induction variable for loop.\0A\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Unable to convert loop: Cannot find PHI node for induction variable\0A\00", align 1
@.str.26 = private unnamed_addr constant [79 x i8] c"Unable to convert loop: Access function for induction variable phi is unknown\0A\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"Unable to convert loop: Cannot determine step of loop.\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"Unable to convert loop: Step of loop is not integer.\0A\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"Unable to convert loop: PHI node for induction variable has >2 arguments\0A\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"Unable to convert loop: PHI edges both inside loop, or both outside loop.\0A\00", align 1
@.str.31 = private unnamed_addr constant [73 x i8] c"Unable to convert loop: Cannot convert lower bound to linear expression\0A\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"Unable to convert loop: Cannot convert upper bound to linear expression\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"lletmp\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.35 = private unnamed_addr constant [7 x i8] c"lbvtmp\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"perfectiv\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"uboundvar\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"perfecttmp\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"./tree-data-ref.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_body_vector_new(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 5
  store i64 16, ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull %1, i32 noundef 16) #24
  %13 = load i64, ptr %3, align 8, !tbaa !35
  %14 = load ptr, ptr %6, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %7, %2 ], [ %14, %12 ]
  %17 = phi i64 [ 16, %2 ], [ %13, %12 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 10
  %24 = load i8, ptr %23, align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %15, %22
  %27 = ptrtoint ptr %20 to i64
  store i64 %27, ptr %3, align 8, !tbaa !35
  %28 = ptrtoint ptr %18 to i64
  %29 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !45
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %28
  %33 = xor i32 %30, -1
  %34 = sext i32 %33 to i64
  %35 = and i64 %32, %34
  %36 = inttoptr i64 %35 to ptr
  store ptr %36, ptr %6, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.obstack, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %35, %39
  %41 = load ptr, ptr %4, align 8, !tbaa !42
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store ptr %41, ptr %6, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %26, %45
  %47 = phi ptr [ %36, %26 ], [ %41, %45 ]
  store ptr %47, ptr %19, align 8, !tbaa !44
  %48 = tail call fastcc ptr @lambda_vector_new(i32 noundef %0) #25
  store ptr %48, ptr %20, align 8, !tbaa !47
  %49 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %20, i64 0, i32 1
  store i32 %0, ptr %49, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %20, i64 0, i32 2
  store i32 1, ptr %50, align 4, !tbaa !50
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lambda_vector_new(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !51 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 2
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lambda_body_vector_compute_new(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #24
  %10 = load i32, ptr %4, align 8, !tbaa !52
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i32 [ %5, %3 ], [ %10, %9 ]
  %13 = tail call ptr @lambda_body_vector_new(i32 noundef %12, ptr noundef %2) #25
  %14 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !55
  %18 = mul nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %13, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !50
  %20 = load ptr, ptr %1, align 8, !tbaa !47
  %21 = load ptr, ptr %0, align 8, !tbaa !56
  %22 = load ptr, ptr %13, align 8, !tbaa !47
  tail call fastcc void @lambda_vector_matrix_mult(ptr noundef %20, i32 noundef %12, ptr noundef %21, i32 noundef %12, ptr noundef %22) #25
  %23 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %13, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !49
  ret ptr %13
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lambda_vector_matrix_mult(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #3 !prof !34 !PGOFuncName !57 {
  tail call fastcc void @lambda_vector_clear(ptr noundef %4, i32 noundef %3) #25
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp sgt i32 %1, 0
  %9 = zext nneg i32 %3 to i64
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %7, %29
  %12 = phi i64 [ 0, %7 ], [ %30, %29 ]
  br i1 %8, label %13, label %29

13:                                               ; preds = %11
  %14 = getelementptr inbounds i32, ptr %4, i64 %12
  %15 = load i32, ptr %14, align 4, !tbaa !58
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %27, %16 ]
  %18 = phi i32 [ %15, %13 ], [ %26, %16 ]
  %19 = getelementptr inbounds ptr, ptr %2, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds i32, ptr %20, i64 %12
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = getelementptr inbounds i32, ptr %0, i64 %17
  %24 = load i32, ptr %23, align 4, !tbaa !58
  %25 = mul nsw i32 %24, %22
  %26 = add nsw i32 %18, %25
  store i32 %26, ptr %14, align 4, !tbaa !58
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %16, !llvm.loop !60

29:                                               ; preds = %16, %11
  %30 = add nuw nsw i64 %12, 1
  %31 = icmp eq i64 %30, %9
  br i1 %31, label %32, label %11, !llvm.loop !62

32:                                               ; preds = %29, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_lambda_body_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !49
  tail call fastcc void @print_lambda_vector(ptr noundef %0, ptr noundef %3, i32 noundef %5) #25
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_lambda_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !prof !34 !PGOFuncName !63 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %10) #25
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7, !llvm.loop !64

14:                                               ; preds = %7, %3
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 5
  store i64 40, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 40
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull %2, i32 noundef 40) #24
  %14 = load i64, ptr %4, align 8, !tbaa !35
  %15 = load ptr, ptr %7, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi ptr [ %8, %3 ], [ %15, %13 ]
  %18 = phi i64 [ 40, %3 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %16, %23
  %28 = ptrtoint ptr %21 to i64
  store i64 %28, ptr %4, align 8, !tbaa !35
  %29 = ptrtoint ptr %19 to i64
  %30 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !45
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %29
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr %7, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %36, %40
  %42 = load ptr, ptr %5, align 8, !tbaa !42
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %43, %40
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store ptr %42, ptr %7, align 8, !tbaa !43
  br label %47

47:                                               ; preds = %27, %46
  %48 = phi ptr [ %37, %27 ], [ %42, %46 ]
  store ptr %48, ptr %20, align 8, !tbaa !44
  %49 = tail call fastcc ptr @lambda_vector_new(i32 noundef %0) #25
  store ptr %49, ptr %21, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %21, i64 0, i32 1
  store i32 0, ptr %50, align 8, !tbaa !67
  %51 = tail call fastcc ptr @lambda_vector_new(i32 noundef %1) #25
  %52 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %21, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %21, i64 0, i32 3
  store i32 1, ptr %53, align 8, !tbaa !69
  %54 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %21, i64 0, i32 4
  store ptr null, ptr %54, align 8, !tbaa !70
  ret ptr %21
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_lambda_linear_expression(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #4 !prof !34 {
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !65
  tail call fastcc void @print_linear_expression(ptr noundef %0, ptr noundef %7, i32 noundef %2, i8 noundef signext %4) #25
  %8 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %9) #25
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %0)
  %12 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  tail call fastcc void @print_linear_expression(ptr noundef %0, ptr noundef %13, i32 noundef %3, i8 noundef signext 65) #25
  %14 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !69
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %15) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_linear_expression(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef signext %3) unnamed_addr #4 !prof !34 !PGOFuncName !71 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %4
  %7 = sext i8 %3 to i64
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %6, %37
  %10 = phi i64 [ 0, %6 ], [ %39, %37 ]
  %11 = phi i8 [ 1, %6 ], [ %38, %37 ]
  %12 = getelementptr inbounds i32, ptr %1, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !58
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = icmp eq i8 %11, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = icmp slt i32 %13, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = tail call i32 @fputc(i32 45, ptr %0)
  br label %27

21:                                               ; preds = %15
  %22 = icmp sgt i32 %13, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 3, i64 1, ptr %0)
  br label %27

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %0)
  br label %27

27:                                               ; preds = %17, %19, %23, %25
  %28 = load i32, ptr %12, align 4, !tbaa !58
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = icmp eq i32 %29, 1
  %31 = add i64 %10, %7
  %32 = trunc i64 %31 to i32
  br i1 %30, label %33, label %35

33:                                               ; preds = %27
  %34 = tail call i32 @fputc(i32 %32, ptr %0)
  br label %37

35:                                               ; preds = %27
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %29, i32 noundef %32) #25
  br label %37

37:                                               ; preds = %9, %35, %33
  %38 = phi i8 [ 0, %33 ], [ 0, %35 ], [ %11, %9 ]
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %41, label %9, !llvm.loop !72

41:                                               ; preds = %37, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_lambda_loop(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #0 !prof !34 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 307, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %5, %7
  %9 = getelementptr inbounds %struct.lambda_loop_s, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.lambda_loop_s, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !75
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %12) #25
  %14 = icmp eq ptr %10, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %0)
  tail call void @print_lambda_linear_expression(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) #25
  br label %17

17:                                               ; preds = %15, %8
  %18 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 16, i64 1, ptr %0)
  %19 = load ptr, ptr %1, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %17 ]
  tail call void @print_lambda_linear_expression(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) #25
  %23 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !76

26:                                               ; preds = %21, %17
  %27 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr %0)
  %28 = getelementptr inbounds %struct.lambda_loop_s, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %34, %31 ], [ %29, %26 ]
  tail call void @print_lambda_linear_expression(ptr noundef %0, ptr noundef nonnull %32, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) #25
  %33 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %31, !llvm.loop !77

36:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_loopnest_new(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 5
  store i64 16, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull %2, i32 noundef 16) #24
  %14 = load i64, ptr %4, align 8, !tbaa !35
  %15 = load ptr, ptr %7, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi ptr [ %8, %3 ], [ %15, %13 ]
  %18 = phi i64 [ 16, %3 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %16, %23
  %28 = ptrtoint ptr %19 to i64
  %29 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !45
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %28
  %33 = xor i32 %30, -1
  %34 = sext i32 %33 to i64
  %35 = and i64 %32, %34
  %36 = inttoptr i64 %35 to ptr
  store ptr %36, ptr %7, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %35, %39
  %41 = load ptr, ptr %5, align 8, !tbaa !42
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  store ptr %41, ptr %7, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %27, %45
  %47 = phi i64 [ %42, %45 ], [ %35, %27 ]
  %48 = phi ptr [ %41, %45 ], [ %36, %27 ]
  store ptr %48, ptr %20, align 8, !tbaa !44
  %49 = sext i32 %0 to i64
  %50 = shl nsw i64 %49, 3
  store i64 %50, ptr %4, align 8, !tbaa !35
  %51 = sub i64 %42, %47
  %52 = icmp slt i64 %51, %50
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = trunc i64 %50 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %2, i32 noundef %54) #24
  %55 = load i64, ptr %4, align 8, !tbaa !35
  %56 = load ptr, ptr %7, align 8, !tbaa !43
  %57 = load ptr, ptr %20, align 8, !tbaa !44
  br label %58

58:                                               ; preds = %46, %53
  %59 = phi ptr [ %48, %46 ], [ %57, %53 ]
  %60 = phi ptr [ %48, %46 ], [ %56, %53 ]
  %61 = phi i64 [ %50, %46 ], [ %55, %53 ]
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %66 = load i8, ptr %65, align 8
  %67 = or i8 %66, 2
  store i8 %67, ptr %65, align 8
  br label %68

68:                                               ; preds = %58, %64
  %69 = ptrtoint ptr %59 to i64
  store i64 %69, ptr %4, align 8, !tbaa !35
  %70 = ptrtoint ptr %62 to i64
  %71 = load i32, ptr %29, align 8, !tbaa !45
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = xor i32 %71, -1
  %75 = sext i32 %74 to i64
  %76 = and i64 %73, %75
  %77 = inttoptr i64 %76 to ptr
  %78 = load ptr, ptr %37, align 8, !tbaa !46
  %79 = ptrtoint ptr %78 to i64
  %80 = sub i64 %76, %79
  %81 = load ptr, ptr %5, align 8, !tbaa !42
  %82 = ptrtoint ptr %81 to i64
  %83 = sub i64 %82, %79
  %84 = icmp sgt i64 %80, %83
  %85 = select i1 %84, ptr %81, ptr %77
  store ptr %85, ptr %7, align 8
  store ptr %85, ptr %20, align 8, !tbaa !44
  store ptr %59, ptr %21, align 8, !tbaa !78
  %86 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %21, i64 0, i32 1
  store i32 %0, ptr %86, align 8, !tbaa !80
  %87 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %21, i64 0, i32 2
  store i32 %1, ptr %87, align 4, !tbaa !81
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_lambda_loopnest(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = sext i8 %2 to i64
  %9 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %21, %10 ]
  %12 = add i64 %11, %8
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %13) #25
  %15 = load ptr, ptr %1, align 8, !tbaa !78
  %16 = getelementptr inbounds ptr, ptr %15, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = load i32, ptr %4, align 8, !tbaa !80
  %19 = load i32, ptr %9, align 4, !tbaa !81
  tail call void @print_lambda_loop(ptr noundef %0, ptr noundef %17, i32 noundef %18, i32 noundef %19, i8 noundef signext 105) #25
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  %21 = add nuw nsw i64 %11, 1
  %22 = load i32, ptr %4, align 8, !tbaa !80
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %10, label %25, !llvm.loop !82

25:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @least_common_multiple(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !34 {
  %3 = mul nsw i32 %1, %0
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %5 = tail call fastcc i32 @gcd(i32 noundef %0, i32 noundef %1) #25, !range !83
  %6 = udiv i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @gcd(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !84 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %10, %7 ], [ %6, %5 ]
  %9 = phi i32 [ %8, %7 ], [ %3, %5 ]
  %10 = urem i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %7, !llvm.loop !85

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %3, %2 ], [ %8, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lambda_loopnest_transform(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = tail call fastcc ptr @lambda_vector_new(i32 noundef %5) #25
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !78
  %12 = zext nneg i32 %5 to i64
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 0, %10 ], [ %22, %13 ]
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.lambda_loop_s, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = icmp slt i32 %18, 1
  %20 = select i1 %19, i32 -1, i32 1
  %21 = getelementptr inbounds i32, ptr %8, i64 %14
  store i32 %20, ptr %21, align 4
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %24, label %13, !llvm.loop !86

24:                                               ; preds = %13, %3
  %25 = tail call fastcc ptr @lambda_lattice_compute_base(ptr noundef nonnull %0, ptr noundef %2) #25
  %26 = tail call ptr @lambda_trans_matrix_new(i32 noundef %5, i32 noundef %5) #24
  %27 = load ptr, ptr %1, align 8, !tbaa !56
  %28 = load ptr, ptr %25, align 8, !tbaa !87
  %29 = load ptr, ptr %26, align 8, !tbaa !56
  tail call void @lambda_matrix_mult(ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %5, i32 noundef %5, i32 noundef %5) #24
  %30 = tail call ptr @lambda_trans_matrix_new(i32 noundef %5, i32 noundef %5) #24
  %31 = tail call ptr @lambda_trans_matrix_new(i32 noundef %5, i32 noundef %5) #24
  %32 = load ptr, ptr %26, align 8, !tbaa !56
  %33 = load ptr, ptr %30, align 8, !tbaa !56
  %34 = load ptr, ptr %31, align 8, !tbaa !56
  tail call void @lambda_matrix_hermite(ptr noundef %32, i32 noundef %5, ptr noundef %33, ptr noundef %34) #24
  %35 = tail call fastcc ptr @lambda_compute_auxillary_space(ptr noundef nonnull %0, ptr noundef nonnull %31, ptr noundef %2) #25
  %36 = tail call fastcc ptr @lambda_compute_step_signs(ptr noundef nonnull %26, ptr noundef %8) #25
  %37 = tail call fastcc ptr @lambda_compute_target_space(ptr noundef %35, ptr noundef nonnull %30, ptr noundef %36, ptr noundef %2) #25
  %38 = tail call fastcc ptr @lambda_vector_new(i32 noundef %5) #25
  %39 = tail call ptr @lambda_matrix_new(i32 noundef %5, i32 noundef %7) #24
  %40 = load ptr, ptr %1, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.lambda_lattice_s, ptr %25, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  tail call void @lambda_matrix_vector_mult(ptr noundef %40, i32 noundef %5, i32 noundef %5, ptr noundef %42, ptr noundef %38) #24
  %43 = load ptr, ptr %1, align 8, !tbaa !56
  %44 = getelementptr inbounds %struct.lambda_lattice_s, ptr %25, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  tail call void @lambda_matrix_mult(ptr noundef %43, ptr noundef %45, ptr noundef %39, i32 noundef %5, i32 noundef %5, i32 noundef %7) #24
  br i1 %9, label %46, label %89

46:                                               ; preds = %24
  %47 = load ptr, ptr %37, align 8, !tbaa !78
  %48 = icmp sgt i32 %7, 0
  %49 = zext nneg i32 %5 to i64
  %50 = zext nneg i32 %7 to i64
  br label %51

51:                                               ; preds = %46, %86
  %52 = phi i64 [ 0, %46 ], [ %87, %86 ]
  %53 = getelementptr inbounds ptr, ptr %47, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = getelementptr inbounds %struct.lambda_loop_s, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = tail call fastcc zeroext i8 @lambda_vector_zerop(ptr noundef %57, i32 noundef %5) #25, !range !91
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %56, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !69
  br label %63

63:                                               ; preds = %51, %60
  %64 = phi i32 [ %62, %60 ], [ 1, %51 ]
  %65 = getelementptr inbounds i32, ptr %38, i64 %52
  %66 = load i32, ptr %65, align 4, !tbaa !58
  %67 = mul nsw i32 %66, %64
  %68 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %56, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !67
  %70 = add nsw i32 %69, %67
  store i32 %70, ptr %68, align 8, !tbaa !67
  br i1 %48, label %71, label %86

71:                                               ; preds = %63
  %72 = getelementptr inbounds ptr, ptr %39, i64 %52
  %73 = load ptr, ptr %72, align 8, !tbaa !59
  %74 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %56, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !68
  br label %76

76:                                               ; preds = %71, %76
  %77 = phi i64 [ 0, %71 ], [ %84, %76 ]
  %78 = getelementptr inbounds i32, ptr %73, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !58
  %80 = mul nsw i32 %79, %64
  %81 = getelementptr inbounds i32, ptr %75, i64 %77
  %82 = load i32, ptr %81, align 4, !tbaa !58
  %83 = add nsw i32 %82, %80
  store i32 %83, ptr %81, align 4, !tbaa !58
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %50
  br i1 %85, label %86, label %76, !llvm.loop !92

86:                                               ; preds = %76, %63
  %87 = add nuw nsw i64 %52, 1
  %88 = icmp eq i64 %87, %49
  br i1 %88, label %89, label %51, !llvm.loop !93

89:                                               ; preds = %86, %24
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @lambda_lattice_compute_base(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !94 {
  %3 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !81
  %7 = tail call fastcc ptr @lambda_lattice_new(i32 noundef %4, i32 noundef %6, ptr noundef %1) #25
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %109

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lambda_lattice_s, ptr %7, i64 0, i32 2
  %12 = icmp sgt i32 %6, 0
  %13 = getelementptr inbounds %struct.lambda_lattice_s, ptr %7, i64 0, i32 3
  %14 = add nsw i32 %4, -2
  %15 = zext nneg i32 %4 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = zext i32 %6 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = zext nneg i32 %4 to i64
  br label %20

20:                                               ; preds = %10, %106
  %21 = phi i64 [ 0, %10 ], [ %107, %106 ]
  %22 = shl nuw nsw i64 %21, 2
  %23 = add nuw nsw i64 %22, 4
  %24 = trunc i64 %21 to i32
  %25 = sub i32 %14, %24
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 2
  %28 = add nuw nsw i64 %27, 4
  %29 = load ptr, ptr %0, align 8, !tbaa !78
  %30 = getelementptr inbounds ptr, ptr %29, i64 %21
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @.str.1) #24
  br label %34

34:                                               ; preds = %20, %33
  %35 = getelementptr inbounds %struct.lambda_loop_s, ptr %31, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !75
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds ptr, ptr %8, i64 %21
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr align 4 %40, i8 0, i64 %16, i1 false), !tbaa !58
  %41 = getelementptr inbounds i32, ptr %40, i64 %21
  store i32 1, ptr %41, align 4, !tbaa !58
  %42 = load ptr, ptr %11, align 8, !tbaa !89
  %43 = getelementptr inbounds i32, ptr %42, i64 %21
  store i32 0, ptr %43, align 4, !tbaa !58
  br i1 %12, label %44, label %106

44:                                               ; preds = %38
  %45 = load ptr, ptr %13, align 8, !tbaa !90
  %46 = getelementptr inbounds ptr, ptr %45, i64 %21
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr align 4 %47, i8 0, i64 %18, i1 false), !tbaa !58
  br label %106

48:                                               ; preds = %34
  %49 = load ptr, ptr %31, align 8, !tbaa !95
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %49, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %49, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !69
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51, %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @.str.1) #24
  br label %60

60:                                               ; preds = %55, %59
  %61 = icmp eq i64 %21, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = load ptr, ptr %8, align 8, !tbaa !59
  br label %81

64:                                               ; preds = %60
  %65 = load ptr, ptr %49, align 8, !tbaa !65
  %66 = load ptr, ptr %0, align 8, !tbaa !78
  %67 = getelementptr inbounds ptr, ptr %8, i64 %21
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  br label %69

69:                                               ; preds = %64, %69
  %70 = phi i64 [ 0, %64 ], [ %79, %69 ]
  %71 = getelementptr inbounds i32, ptr %65, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !58
  %73 = getelementptr inbounds ptr, ptr %66, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !59
  %75 = getelementptr inbounds %struct.lambda_loop_s, ptr %74, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !75
  %77 = mul nsw i32 %76, %72
  %78 = getelementptr inbounds i32, ptr %68, i64 %70
  store i32 %77, ptr %78, align 4, !tbaa !58
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, %21
  br i1 %80, label %81, label %69, !llvm.loop !96

81:                                               ; preds = %69, %62
  %82 = phi ptr [ %63, %62 ], [ %68, %69 ]
  %83 = getelementptr inbounds i32, ptr %82, i64 %21
  store i32 %36, ptr %83, align 4, !tbaa !58
  %84 = add nuw nsw i64 %21, 1
  %85 = icmp ult i64 %84, %19
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %82, i64 %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %87, i8 0, i64 %28, i1 false), !tbaa !58
  br label %88

88:                                               ; preds = %86, %81
  %89 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %49, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !67
  %91 = load ptr, ptr %11, align 8, !tbaa !89
  %92 = getelementptr inbounds i32, ptr %91, i64 %21
  store i32 %90, ptr %92, align 4, !tbaa !58
  br i1 %12, label %93, label %106

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %49, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !68
  %96 = load ptr, ptr %13, align 8, !tbaa !90
  %97 = getelementptr inbounds ptr, ptr %96, i64 %21
  %98 = load ptr, ptr %97, align 8, !tbaa !59
  br label %99

99:                                               ; preds = %93, %99
  %100 = phi i64 [ 0, %93 ], [ %104, %99 ]
  %101 = getelementptr inbounds i32, ptr %95, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !58
  %103 = getelementptr inbounds i32, ptr %98, i64 %100
  store i32 %102, ptr %103, align 4, !tbaa !58
  %104 = add nuw nsw i64 %100, 1
  %105 = icmp eq i64 %104, %17
  br i1 %105, label %106, label %99, !llvm.loop !97

106:                                              ; preds = %99, %44, %88, %38
  %107 = add nuw nsw i64 %21, 1
  %108 = icmp eq i64 %107, %15
  br i1 %108, label %109, label %20, !llvm.loop !98

109:                                              ; preds = %106, %2
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @lambda_trans_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_mult(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_hermite(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lambda_compute_auxillary_space(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !99 {
  %4 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %5) #24
  %9 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %7) #24
  %10 = tail call fastcc ptr @lambda_vector_new(i32 noundef 128) #25
  %11 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %5) #24
  %12 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %7) #24
  %13 = tail call fastcc ptr @lambda_vector_new(i32 noundef 128) #25
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %15, label %164

15:                                               ; preds = %3
  %16 = icmp sgt i32 %7, 0
  %17 = zext nneg i32 %5 to i64
  %18 = zext nneg i32 %7 to i64
  %19 = zext nneg i32 %7 to i64
  %20 = zext nneg i32 %7 to i64
  br label %21

21:                                               ; preds = %15, %160
  %22 = phi i64 [ 0, %15 ], [ %162, %160 ]
  %23 = phi i32 [ 0, %15 ], [ %161, %160 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !78
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.lambda_loop_s, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !75
  %29 = icmp sgt i32 %28, 0
  %30 = getelementptr inbounds %struct.lambda_loop_s, ptr %26, i64 0, i32 1
  %31 = select i1 %29, ptr %26, ptr %30
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %97, label %34

34:                                               ; preds = %21
  %35 = icmp eq i64 %22, 0
  %36 = sext i32 %23 to i64
  br label %37

37:                                               ; preds = %34, %90
  %38 = phi i64 [ %36, %34 ], [ %87, %90 ]
  %39 = phi ptr [ %32, %34 ], [ %92, %90 ]
  br i1 %35, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %39, align 8, !tbaa !65
  %42 = getelementptr inbounds ptr, ptr %8, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  br label %50

44:                                               ; preds = %50, %37
  br i1 %16, label %45, label %64

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %39, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = getelementptr inbounds ptr, ptr %9, i64 %38
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  br label %57

50:                                               ; preds = %40, %50
  %51 = phi i64 [ 0, %40 ], [ %55, %50 ]
  %52 = getelementptr inbounds i32, ptr %41, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !58
  %54 = getelementptr inbounds i32, ptr %43, i64 %51
  store i32 %53, ptr %54, align 4, !tbaa !58
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %22
  br i1 %56, label %44, label %50, !llvm.loop !100

57:                                               ; preds = %45, %57
  %58 = phi i64 [ 0, %45 ], [ %62, %57 ]
  %59 = getelementptr inbounds i32, ptr %47, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !58
  %61 = getelementptr inbounds i32, ptr %49, i64 %58
  store i32 %60, ptr %61, align 4, !tbaa !58
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, %18
  br i1 %63, label %64, label %57, !llvm.loop !101

64:                                               ; preds = %57, %44
  %65 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %39, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !67
  %67 = getelementptr inbounds i32, ptr %10, i64 %38
  store i32 %66, ptr %67, align 4, !tbaa !58
  %68 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %39, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !69
  %70 = sub nsw i32 0, %69
  %71 = getelementptr inbounds ptr, ptr %8, i64 %38
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  %73 = getelementptr inbounds i32, ptr %72, i64 %22
  store i32 %70, ptr %73, align 4, !tbaa !58
  %74 = load i32, ptr %67, align 4, !tbaa !58
  %75 = sub nsw i32 0, %74
  store i32 %75, ptr %67, align 4, !tbaa !58
  br i1 %16, label %76, label %86

76:                                               ; preds = %64
  %77 = getelementptr inbounds ptr, ptr %9, i64 %38
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi i64 [ 0, %76 ], [ %84, %79 ]
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !58
  %83 = sub nsw i32 0, %82
  store i32 %83, ptr %81, align 4, !tbaa !58
  %84 = add nuw nsw i64 %80, 1
  %85 = icmp eq i64 %84, %19
  br i1 %85, label %86, label %79, !llvm.loop !102

86:                                               ; preds = %79, %64
  %87 = add i64 %38, 1
  %88 = icmp slt i64 %38, 127
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 702, ptr noundef nonnull @.str.1) #24
  br label %90

90:                                               ; preds = %86, %89
  %91 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %39, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %37, !llvm.loop !103

94:                                               ; preds = %90
  %95 = trunc i64 %87 to i32
  %96 = load i32, ptr %27, align 8, !tbaa !75
  br label %97

97:                                               ; preds = %94, %21
  %98 = phi i32 [ %28, %21 ], [ %96, %94 ]
  %99 = phi i32 [ %23, %21 ], [ %95, %94 ]
  %100 = icmp sgt i32 %98, 0
  %101 = select i1 %100, ptr %30, ptr %26
  %102 = load ptr, ptr %101, align 8, !tbaa !59
  %103 = icmp eq ptr %102, null
  br i1 %103, label %160, label %104

104:                                              ; preds = %97
  %105 = icmp eq i64 %22, 0
  %106 = sext i32 %99 to i64
  br label %107

107:                                              ; preds = %104, %154
  %108 = phi i64 [ %106, %104 ], [ %151, %154 ]
  %109 = phi ptr [ %102, %104 ], [ %156, %154 ]
  br i1 %105, label %114, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %109, align 8, !tbaa !65
  %112 = getelementptr inbounds ptr, ptr %8, i64 %108
  %113 = load ptr, ptr %112, align 8, !tbaa !59
  br label %120

114:                                              ; preds = %120, %107
  br i1 %16, label %115, label %134

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %109, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !68
  %118 = getelementptr inbounds ptr, ptr %9, i64 %108
  %119 = load ptr, ptr %118, align 8, !tbaa !59
  br label %127

120:                                              ; preds = %110, %120
  %121 = phi i64 [ 0, %110 ], [ %125, %120 ]
  %122 = getelementptr inbounds i32, ptr %111, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !58
  %124 = getelementptr inbounds i32, ptr %113, i64 %121
  store i32 %123, ptr %124, align 4, !tbaa !58
  %125 = add nuw nsw i64 %121, 1
  %126 = icmp eq i64 %125, %22
  br i1 %126, label %114, label %120, !llvm.loop !104

127:                                              ; preds = %115, %127
  %128 = phi i64 [ 0, %115 ], [ %132, %127 ]
  %129 = getelementptr inbounds i32, ptr %117, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !58
  %131 = getelementptr inbounds i32, ptr %119, i64 %128
  store i32 %130, ptr %131, align 4, !tbaa !58
  %132 = add nuw nsw i64 %128, 1
  %133 = icmp eq i64 %132, %20
  br i1 %133, label %134, label %127, !llvm.loop !105

134:                                              ; preds = %127, %114
  %135 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %109, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !67
  %137 = getelementptr inbounds i32, ptr %10, i64 %108
  store i32 %136, ptr %137, align 4, !tbaa !58
  %138 = getelementptr inbounds ptr, ptr %8, i64 %108
  %139 = load ptr, ptr %138, align 8, !tbaa !59
  br i1 %105, label %147, label %140

140:                                              ; preds = %134, %140
  %141 = phi i64 [ %145, %140 ], [ 0, %134 ]
  %142 = getelementptr inbounds i32, ptr %139, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !58
  %144 = sub nsw i32 0, %143
  store i32 %144, ptr %142, align 4, !tbaa !58
  %145 = add nuw nsw i64 %141, 1
  %146 = icmp eq i64 %145, %22
  br i1 %146, label %147, label %140, !llvm.loop !106

147:                                              ; preds = %140, %134
  %148 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %109, i64 0, i32 3
  %149 = load i32, ptr %148, align 8, !tbaa !69
  %150 = getelementptr inbounds i32, ptr %139, i64 %22
  store i32 %149, ptr %150, align 4, !tbaa !58
  %151 = add i64 %108, 1
  %152 = icmp slt i64 %108, 127
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 731, ptr noundef nonnull @.str.1) #24
  br label %154

154:                                              ; preds = %147, %153
  %155 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %109, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !59
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %107, !llvm.loop !107

158:                                              ; preds = %154
  %159 = trunc i64 %151 to i32
  br label %160

160:                                              ; preds = %158, %97
  %161 = phi i32 [ %99, %97 ], [ %159, %158 ]
  %162 = add nuw nsw i64 %22, 1
  %163 = icmp eq i64 %162, %17
  br i1 %163, label %164, label %21, !llvm.loop !108

164:                                              ; preds = %160, %3
  %165 = phi i32 [ 0, %3 ], [ %161, %160 ]
  %166 = tail call fastcc ptr @lambda_lattice_compute_base(ptr noundef %0, ptr noundef %2) #25
  %167 = load ptr, ptr %166, align 8, !tbaa !87
  tail call void @lambda_matrix_mult(ptr noundef %8, ptr noundef %167, ptr noundef %11, i32 noundef %165, i32 noundef %5, i32 noundef %5) #24
  %168 = getelementptr inbounds %struct.lambda_lattice_s, ptr %166, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !89
  tail call void @lambda_matrix_vector_mult(ptr noundef %8, i32 noundef %165, i32 noundef %5, ptr noundef %169, ptr noundef %13) #24
  tail call fastcc void @lambda_vector_add_mc(ptr noundef %10, i32 noundef 1, ptr noundef %13, i32 noundef -1, ptr noundef %13, i32 noundef %165) #25
  %170 = getelementptr inbounds %struct.lambda_lattice_s, ptr %166, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !90
  tail call void @lambda_matrix_mult(ptr noundef %8, ptr noundef %171, ptr noundef %12, i32 noundef %165, i32 noundef %5, i32 noundef %7) #24
  tail call void @lambda_matrix_add_mc(ptr noundef %9, i32 noundef 1, ptr noundef %12, i32 noundef -1, ptr noundef %12, i32 noundef %165, i32 noundef %7) #24
  %172 = tail call ptr @lambda_matrix_new(i32 noundef %5, i32 noundef %5) #24
  %173 = load ptr, ptr %1, align 8, !tbaa !56
  %174 = tail call i32 @lambda_matrix_inverse(ptr noundef %173, ptr noundef %172, i32 noundef %5) #24
  tail call void @lambda_matrix_mult(ptr noundef %11, ptr noundef %172, ptr noundef %8, i32 noundef %165, i32 noundef %5, i32 noundef %5) #24
  %175 = tail call fastcc ptr @compute_nest_using_fourier_motzkin(i32 noundef %165, i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %12, ptr noundef %13, ptr noundef %2) #25
  ret ptr %175
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @lambda_compute_step_signs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !109 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = tail call ptr @lambda_matrix_new(i32 noundef %5, i32 noundef %5) #24
  %7 = tail call fastcc ptr @lambda_vector_new(i32 noundef %5) #25
  tail call fastcc void @lambda_vector_copy(ptr noundef %1, ptr noundef %7, i32 noundef %5) #25
  tail call void @lambda_matrix_copy(ptr noundef %3, ptr noundef %6, i32 noundef %5, i32 noundef %5) #24
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %2
  %10 = zext nneg i32 %5 to i64
  %11 = zext nneg i32 %5 to i64
  br label %15

12:                                               ; preds = %40, %20
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %21, %11
  br i1 %14, label %59, label %15, !llvm.loop !110

15:                                               ; preds = %9, %12
  %16 = phi i64 [ 1, %9 ], [ %13, %12 ]
  %17 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  br label %30

20:                                               ; preds = %37
  %21 = add nuw nsw i64 %17, 1
  %22 = trunc i64 %21 to i32
  %23 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef nonnull %19, i32 noundef %5, i32 noundef %22) #25
  %24 = icmp slt i32 %23, %5
  br i1 %24, label %25, label %12

25:                                               ; preds = %20
  %26 = getelementptr inbounds i32, ptr %7, i64 %17
  %27 = icmp ult i64 %21, %10
  %28 = getelementptr inbounds i32, ptr %19, i64 %17
  %29 = trunc i64 %17 to i32
  br label %43

30:                                               ; preds = %15, %37
  %31 = phi i64 [ %17, %15 ], [ %38, %37 ]
  %32 = getelementptr inbounds i32, ptr %19, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !58
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = trunc i64 %31 to i32
  tail call void @lambda_matrix_col_negate(ptr noundef %6, i32 noundef %5, i32 noundef %36) #24
  br label %37

37:                                               ; preds = %30, %35
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, %11
  br i1 %39, label %20, label %30, !llvm.loop !111

40:                                               ; preds = %49, %43
  %41 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef %19, i32 noundef %5, i32 noundef %22) #25
  %42 = icmp slt i32 %41, %5
  br i1 %42, label %43, label %12, !llvm.loop !112

43:                                               ; preds = %25, %40
  %44 = tail call fastcc i32 @lambda_vector_min_nz(ptr noundef %19, i32 noundef %5, i32 noundef %29) #25
  tail call void @lambda_matrix_col_exchange(ptr noundef %6, i32 noundef %5, i32 noundef %29, i32 noundef %44) #24
  %45 = load i32, ptr %26, align 4, !tbaa !58
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, ptr %7, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !58
  store i32 %48, ptr %26, align 4, !tbaa !58
  store i32 %45, ptr %47, align 4, !tbaa !58
  br i1 %27, label %49, label %40

49:                                               ; preds = %43, %49
  %50 = phi i64 [ %57, %49 ], [ %16, %43 ]
  %51 = getelementptr inbounds i32, ptr %19, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !58
  %53 = load i32, ptr %28, align 4, !tbaa !58
  %54 = sdiv i32 %52, %53
  %55 = sub nsw i32 0, %54
  %56 = trunc i64 %50 to i32
  tail call void @lambda_matrix_col_add(ptr noundef %6, i32 noundef %5, i32 noundef %29, i32 noundef %56, i32 noundef %55) #24
  %57 = add nuw nsw i64 %50, 1
  %58 = icmp eq i64 %57, %11
  br i1 %58, label %40, label %49, !llvm.loop !113

59:                                               ; preds = %12, %2
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lambda_compute_target_space(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !114 {
  %5 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.lambda_loopnest_s, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !81
  %9 = tail call ptr @lambda_matrix_new(i32 noundef %6, i32 noundef %6) #24
  %10 = load ptr, ptr %1, align 8, !tbaa !56
  %11 = tail call i32 @lambda_matrix_inverse(ptr noundef %10, ptr noundef %9, i32 noundef %6) #24
  %12 = tail call ptr @lambda_matrix_new(i32 noundef %6, i32 noundef %6) #24
  %13 = load ptr, ptr %1, align 8, !tbaa !56
  tail call void @lambda_matrix_copy(ptr noundef %13, ptr noundef %12, i32 noundef %6, i32 noundef %6) #24
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = zext nneg i32 %6 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %22, %17 ]
  %19 = getelementptr inbounds ptr, ptr %12, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds i32, ptr %20, i64 %18
  store i32 0, ptr %21, align 4, !tbaa !58
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, %16
  br i1 %23, label %24, label %17, !llvm.loop !115

24:                                               ; preds = %17, %4
  %25 = tail call ptr @lambda_matrix_new(i32 noundef %6, i32 noundef %6) #24
  tail call void @lambda_matrix_mult(ptr noundef %12, ptr noundef %9, ptr noundef %25, i32 noundef %6, i32 noundef %6, i32 noundef %6) #24
  %26 = tail call ptr @lambda_loopnest_new(i32 noundef %6, i32 noundef %8, ptr noundef %3) #25
  br i1 %14, label %27, label %244

27:                                               ; preds = %24
  %28 = zext nneg i32 %6 to i64
  br label %35

29:                                               ; preds = %53
  br i1 %14, label %30, label %244

30:                                               ; preds = %29
  %31 = icmp sgt i32 %8, 0
  %32 = zext nneg i32 %6 to i64
  %33 = zext nneg i32 %8 to i64
  %34 = zext nneg i32 %8 to i64
  br label %68

35:                                               ; preds = %27, %53
  %36 = phi i64 [ 0, %27 ], [ %63, %53 ]
  %37 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #24
  %38 = load ptr, ptr %26, align 8, !tbaa !78
  %39 = getelementptr inbounds ptr, ptr %38, i64 %36
  store ptr %37, ptr %39, align 8, !tbaa !59
  %40 = getelementptr inbounds ptr, ptr %25, i64 %36
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = trunc i64 %36 to i32
  %43 = tail call fastcc i32 @lambda_vector_gcd(ptr noundef %41, i32 noundef %42) #25
  %44 = tail call fastcc i32 @gcd(i32 noundef %43, i32 noundef %11) #25, !range !83
  %45 = icmp eq i64 %36, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %35, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %35 ]
  %48 = getelementptr inbounds i32, ptr %41, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !58
  %50 = sdiv i32 %49, %44
  store i32 %50, ptr %48, align 4, !tbaa !58
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %36
  br i1 %52, label %53, label %46, !llvm.loop !116

53:                                               ; preds = %46, %35
  %54 = tail call ptr @lambda_linear_expression_new(i32 noundef %6, i32 noundef %8, ptr noundef %3) #25
  %55 = load ptr, ptr %40, align 8, !tbaa !59
  %56 = load ptr, ptr %54, align 8, !tbaa !65
  tail call fastcc void @lambda_vector_copy(ptr noundef %55, ptr noundef %56, i32 noundef %6) #25
  %57 = sdiv i32 %11, %44
  %58 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %54, i64 0, i32 3
  store i32 %57, ptr %58, align 8, !tbaa !69
  %59 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %54, i64 0, i32 1
  store i32 0, ptr %59, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %54, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_clear(ptr noundef %61, i32 noundef %8) #25
  %62 = getelementptr inbounds %struct.lambda_loop_s, ptr %37, i64 0, i32 2
  store ptr %54, ptr %62, align 8, !tbaa !73
  %63 = add nuw nsw i64 %36, 1
  %64 = icmp eq i64 %63, %28
  br i1 %64, label %29, label %35, !llvm.loop !117

65:                                               ; preds = %224
  br i1 %14, label %66, label %244

66:                                               ; preds = %65
  %67 = zext nneg i32 %6 to i64
  br label %227

68:                                               ; preds = %30, %224
  %69 = phi i64 [ 0, %30 ], [ %225, %224 ]
  %70 = load ptr, ptr %0, align 8, !tbaa !78
  %71 = getelementptr inbounds ptr, ptr %70, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  %73 = load ptr, ptr %26, align 8, !tbaa !78
  %74 = getelementptr inbounds ptr, ptr %73, i64 %69
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  %76 = load ptr, ptr %1, align 8, !tbaa !56
  %77 = getelementptr inbounds ptr, ptr %76, i64 %69
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = getelementptr inbounds i32, ptr %78, i64 %69
  %80 = load i32, ptr %79, align 4, !tbaa !58
  %81 = getelementptr inbounds %struct.lambda_loop_s, ptr %75, i64 0, i32 3
  store i32 %80, ptr %81, align 8, !tbaa !75
  %82 = load ptr, ptr %72, align 8, !tbaa !59
  %83 = icmp eq ptr %82, null
  br i1 %83, label %151, label %84

84:                                               ; preds = %68, %147
  %85 = phi ptr [ %149, %147 ], [ %82, %68 ]
  %86 = tail call ptr @lambda_linear_expression_new(i32 noundef %6, i32 noundef %8, ptr noundef %3) #25
  %87 = load ptr, ptr %85, align 8, !tbaa !65
  %88 = load ptr, ptr %86, align 8, !tbaa !65
  tail call fastcc void @lambda_vector_matrix_mult(ptr noundef %87, i32 noundef %6, ptr noundef %9, i32 noundef %6, ptr noundef %88) #25
  %89 = load ptr, ptr %86, align 8, !tbaa !65
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %89, ptr noundef %89, i32 noundef %6, i32 noundef %80) #25
  %90 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %85, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !67
  %92 = mul nsw i32 %91, %80
  %93 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %86, i64 0, i32 1
  store i32 %92, ptr %93, align 8, !tbaa !67
  %94 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %85, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !68
  %96 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %86, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_copy(ptr noundef %95, ptr noundef %97, i32 noundef %8) #25
  %98 = load ptr, ptr %96, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %98, ptr noundef %98, i32 noundef %8, i32 noundef %80) #25
  %99 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %85, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !69
  %101 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %86, i64 0, i32 3
  store i32 %100, ptr %101, align 8, !tbaa !69
  %102 = load ptr, ptr %86, align 8, !tbaa !65
  %103 = tail call fastcc zeroext i8 @lambda_vector_zerop(ptr noundef %102, i32 noundef %6) #25, !range !91
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %84
  %106 = load i32, ptr %93, align 8, !tbaa !67
  %107 = mul nsw i32 %106, %11
  store i32 %107, ptr %93, align 8, !tbaa !67
  %108 = load ptr, ptr %96, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %108, ptr noundef %108, i32 noundef %8, i32 noundef %11) #25
  %109 = load i32, ptr %101, align 8, !tbaa !69
  %110 = mul nsw i32 %109, %11
  store i32 %110, ptr %101, align 8, !tbaa !69
  %111 = load ptr, ptr %86, align 8, !tbaa !65
  br label %112

112:                                              ; preds = %84, %105
  %113 = phi i32 [ %110, %105 ], [ %100, %84 ]
  %114 = phi ptr [ %111, %105 ], [ %102, %84 ]
  %115 = tail call fastcc i32 @lambda_vector_gcd(ptr noundef %114, i32 noundef %6) #25
  %116 = load ptr, ptr %96, align 8, !tbaa !68
  %117 = tail call fastcc i32 @lambda_vector_gcd(ptr noundef %116, i32 noundef %8) #25
  %118 = tail call fastcc i32 @gcd(i32 noundef %115, i32 noundef %117) #25, !range !83
  %119 = load i32, ptr %93, align 8, !tbaa !67
  %120 = tail call fastcc i32 @gcd(i32 noundef %118, i32 noundef %119) #25, !range !83
  %121 = tail call fastcc i32 @gcd(i32 noundef %120, i32 noundef %113) #25, !range !83
  br label %123

122:                                              ; preds = %123
  br i1 %31, label %130, label %137

123:                                              ; preds = %112, %123
  %124 = phi i64 [ 0, %112 ], [ %128, %123 ]
  %125 = getelementptr inbounds i32, ptr %114, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !58
  %127 = sdiv i32 %126, %121
  store i32 %127, ptr %125, align 4, !tbaa !58
  %128 = add nuw nsw i64 %124, 1
  %129 = icmp eq i64 %128, %32
  br i1 %129, label %122, label %123, !llvm.loop !118

130:                                              ; preds = %122, %130
  %131 = phi i64 [ %135, %130 ], [ 0, %122 ]
  %132 = getelementptr inbounds i32, ptr %116, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !58
  %134 = sdiv i32 %133, %121
  store i32 %134, ptr %132, align 4, !tbaa !58
  %135 = add nuw nsw i64 %131, 1
  %136 = icmp eq i64 %135, %33
  br i1 %136, label %137, label %130, !llvm.loop !119

137:                                              ; preds = %130, %122
  %138 = load i32, ptr %93, align 8, !tbaa !67
  %139 = sdiv i32 %138, %121
  store i32 %139, ptr %93, align 8, !tbaa !67
  %140 = load i32, ptr %101, align 8, !tbaa !69
  %141 = sdiv i32 %140, %121
  store i32 %141, ptr %101, align 8, !tbaa !69
  %142 = load ptr, ptr %75, align 8, !tbaa !95
  %143 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %142, ptr noundef nonnull %86, i32 noundef %6, i32 noundef %8) #25, !range !91
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %86, i64 0, i32 4
  store ptr %142, ptr %146, align 8, !tbaa !70
  store ptr %86, ptr %75, align 8, !tbaa !95
  br label %147

147:                                              ; preds = %137, %145
  %148 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %85, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !59
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %84, !llvm.loop !120

151:                                              ; preds = %147, %68
  %152 = getelementptr inbounds %struct.lambda_loop_s, ptr %72, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !59
  %154 = icmp eq ptr %153, null
  br i1 %154, label %224, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.lambda_loop_s, ptr %75, i64 0, i32 1
  br label %157

157:                                              ; preds = %155, %220
  %158 = phi ptr [ %153, %155 ], [ %222, %220 ]
  %159 = tail call ptr @lambda_linear_expression_new(i32 noundef %6, i32 noundef %8, ptr noundef %3) #25
  %160 = load ptr, ptr %158, align 8, !tbaa !65
  %161 = load ptr, ptr %159, align 8, !tbaa !65
  tail call fastcc void @lambda_vector_matrix_mult(ptr noundef %160, i32 noundef %6, ptr noundef %9, i32 noundef %6, ptr noundef %161) #25
  %162 = load ptr, ptr %159, align 8, !tbaa !65
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %162, ptr noundef %162, i32 noundef %6, i32 noundef %80) #25
  %163 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %158, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !67
  %165 = mul nsw i32 %164, %80
  %166 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %159, i64 0, i32 1
  store i32 %165, ptr %166, align 8, !tbaa !67
  %167 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %158, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !68
  %169 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %159, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_copy(ptr noundef %168, ptr noundef %170, i32 noundef %8) #25
  %171 = load ptr, ptr %169, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %171, ptr noundef %171, i32 noundef %8, i32 noundef %80) #25
  %172 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %158, i64 0, i32 3
  %173 = load i32, ptr %172, align 8, !tbaa !69
  %174 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %159, i64 0, i32 3
  store i32 %173, ptr %174, align 8, !tbaa !69
  %175 = load ptr, ptr %159, align 8, !tbaa !65
  %176 = tail call fastcc zeroext i8 @lambda_vector_zerop(ptr noundef %175, i32 noundef %6) #25, !range !91
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %157
  %179 = load i32, ptr %166, align 8, !tbaa !67
  %180 = mul nsw i32 %179, %11
  store i32 %180, ptr %166, align 8, !tbaa !67
  %181 = load ptr, ptr %169, align 8, !tbaa !68
  tail call fastcc void @lambda_vector_mult_const(ptr noundef %181, ptr noundef %181, i32 noundef %8, i32 noundef %11) #25
  %182 = load i32, ptr %174, align 8, !tbaa !69
  %183 = mul nsw i32 %182, %11
  store i32 %183, ptr %174, align 8, !tbaa !69
  %184 = load ptr, ptr %159, align 8, !tbaa !65
  br label %185

185:                                              ; preds = %157, %178
  %186 = phi i32 [ %183, %178 ], [ %173, %157 ]
  %187 = phi ptr [ %184, %178 ], [ %175, %157 ]
  %188 = tail call fastcc i32 @lambda_vector_gcd(ptr noundef %187, i32 noundef %6) #25
  %189 = load ptr, ptr %169, align 8, !tbaa !68
  %190 = tail call fastcc i32 @lambda_vector_gcd(ptr noundef %189, i32 noundef %8) #25
  %191 = tail call fastcc i32 @gcd(i32 noundef %188, i32 noundef %190) #25, !range !83
  %192 = load i32, ptr %166, align 8, !tbaa !67
  %193 = tail call fastcc i32 @gcd(i32 noundef %191, i32 noundef %192) #25, !range !83
  %194 = tail call fastcc i32 @gcd(i32 noundef %193, i32 noundef %186) #25, !range !83
  br label %196

195:                                              ; preds = %196
  br i1 %31, label %203, label %210

196:                                              ; preds = %185, %196
  %197 = phi i64 [ 0, %185 ], [ %201, %196 ]
  %198 = getelementptr inbounds i32, ptr %187, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !58
  %200 = sdiv i32 %199, %194
  store i32 %200, ptr %198, align 4, !tbaa !58
  %201 = add nuw nsw i64 %197, 1
  %202 = icmp eq i64 %201, %32
  br i1 %202, label %195, label %196, !llvm.loop !121

203:                                              ; preds = %195, %203
  %204 = phi i64 [ %208, %203 ], [ 0, %195 ]
  %205 = getelementptr inbounds i32, ptr %189, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !58
  %207 = sdiv i32 %206, %194
  store i32 %207, ptr %205, align 4, !tbaa !58
  %208 = add nuw nsw i64 %204, 1
  %209 = icmp eq i64 %208, %34
  br i1 %209, label %210, label %203, !llvm.loop !122

210:                                              ; preds = %203, %195
  %211 = load i32, ptr %166, align 8, !tbaa !67
  %212 = sdiv i32 %211, %194
  store i32 %212, ptr %166, align 8, !tbaa !67
  %213 = load i32, ptr %174, align 8, !tbaa !69
  %214 = sdiv i32 %213, %194
  store i32 %214, ptr %174, align 8, !tbaa !69
  %215 = load ptr, ptr %156, align 8, !tbaa !123
  %216 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %215, ptr noundef nonnull %159, i32 noundef %6, i32 noundef %8) #25, !range !91
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %159, i64 0, i32 4
  store ptr %215, ptr %219, align 8, !tbaa !70
  store ptr %159, ptr %156, align 8, !tbaa !123
  br label %220

220:                                              ; preds = %210, %218
  %221 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %158, i64 0, i32 4
  %222 = load ptr, ptr %221, align 8, !tbaa !59
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %157, !llvm.loop !124

224:                                              ; preds = %220, %151
  %225 = add nuw nsw i64 %69, 1
  %226 = icmp eq i64 %225, %32
  br i1 %226, label %65, label %68, !llvm.loop !125

227:                                              ; preds = %66, %241
  %228 = phi i64 [ 0, %66 ], [ %242, %241 ]
  %229 = getelementptr inbounds i32, ptr %2, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !58
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %227
  %233 = load ptr, ptr %26, align 8, !tbaa !78
  %234 = getelementptr inbounds ptr, ptr %233, i64 %228
  %235 = load ptr, ptr %234, align 8, !tbaa !59
  %236 = getelementptr inbounds %struct.lambda_loop_s, ptr %235, i64 0, i32 3
  %237 = load i32, ptr %236, align 8, !tbaa !75
  %238 = sub nsw i32 0, %237
  store i32 %238, ptr %236, align 8, !tbaa !75
  %239 = load <2 x ptr>, ptr %235, align 8, !tbaa !59
  %240 = shufflevector <2 x ptr> %239, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %240, ptr %235, align 8, !tbaa !59
  br label %241

241:                                              ; preds = %227, %232
  %242 = add nuw nsw i64 %228, 1
  %243 = icmp eq i64 %242, %67
  br i1 %243, label %244, label %227, !llvm.loop !126

244:                                              ; preds = %241, %24, %29, %65
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @lambda_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_vector_mult(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @lambda_vector_zerop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !127 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !128

9:                                                ; preds = %4, %6
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !58
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %6, %2
  %15 = phi i8 [ 1, %2 ], [ 1, %6 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_induction_var_from_exit_cond(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %2) #25, !range !129
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %2) #25
  %9 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %2) #25
  %10 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %8) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %0, ptr noundef %9) #24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %9, %7 ], [ %8, %12 ]
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 141
  %20 = select i1 %19, ptr %16, ptr null
  br label %21

21:                                               ; preds = %15, %12, %4, %1
  %22 = phi ptr [ null, %1 ], [ null, %4 ], [ null, %12 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @get_loop_exit_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !130 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !131 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !132 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #25
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gcc_loopnest_to_lambda_loopnest(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call fastcc i32 @depth_of_nest(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  store ptr null, ptr %7, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  store ptr null, ptr %10, align 8, !tbaa !59
  %12 = tail call zeroext i8 @perfect_nest_p(ptr noundef %0) #25
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = tail call fastcc zeroext i8 @can_convert_to_perfect_nest(ptr noundef %0) #25, !range !91
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %14, %4
  %18 = icmp eq ptr %0, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %17, %24
  %20 = phi ptr [ %27, %24 ], [ %0, %17 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !59
  %22 = call fastcc ptr @gcc_loop_to_lambda_loop(ptr noundef nonnull %20, i32 noundef %11, ptr noundef %2, ptr noundef nonnull %10, ptr noundef %21, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef %3) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %61, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %10, align 8, !tbaa !59
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %1, ptr noundef %25) #25
  call fastcc void @VEC_lambda_loop_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %22) #25
  %26 = getelementptr inbounds %struct.loop, ptr %20, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !137

29:                                               ; preds = %24, %17
  %30 = phi ptr [ undef, %17 ], [ %22, %24 ]
  store ptr %30, ptr %9, align 8, !tbaa !59
  br i1 %13, label %31, label %46

31:                                               ; preds = %29
  %32 = load ptr, ptr %7, align 8, !tbaa !59
  %33 = load ptr, ptr %6, align 8, !tbaa !59
  %34 = load ptr, ptr %8, align 8, !tbaa !59
  %35 = load ptr, ptr %1, align 8, !tbaa !59
  %36 = tail call fastcc zeroext i8 @perfect_nestify(ptr noundef %0, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35) #25
  %37 = icmp eq i8 %36, 0
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %37, label %40, label %43

40:                                               ; preds = %31
  br i1 %39, label %61, label %41

41:                                               ; preds = %40
  %42 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 53, i64 1, ptr nonnull %38)
  br label %61

43:                                               ; preds = %31
  br i1 %39, label %46, label %44

44:                                               ; preds = %43
  %45 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 55, i64 1, ptr nonnull %38)
  br label %46

46:                                               ; preds = %44, %43, %29
  %47 = shl nsw i32 %11, 1
  %48 = tail call ptr @lambda_loopnest_new(i32 noundef %11, i32 noundef %47, ptr noundef %3) #25
  %49 = load ptr, ptr %5, align 8
  %50 = call fastcc i32 @VEC_lambda_loop_base_iterate(ptr noundef %49, i32 noundef 0, ptr noundef nonnull %9) #25, !range !138
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ %57, %52 ], [ 0, %46 ]
  %54 = load ptr, ptr %9, align 8, !tbaa !59
  %55 = load ptr, ptr %48, align 8, !tbaa !78
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  store ptr %54, ptr %56, align 8, !tbaa !59
  %57 = add i64 %53, 1
  %58 = trunc i64 %57 to i32
  %59 = call fastcc i32 @VEC_lambda_loop_base_iterate(ptr noundef %49, i32 noundef %58, ptr noundef nonnull %9) #25, !range !138
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %52, !llvm.loop !139

61:                                               ; preds = %19, %52, %46, %40, %41, %14
  %62 = phi ptr [ null, %41 ], [ null, %40 ], [ null, %14 ], [ %48, %46 ], [ %48, %52 ], [ null, %19 ]
  call fastcc void @VEC_lambda_loop_heap_free(ptr noundef nonnull %5) #25
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %6) #25
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %7) #25
  call fastcc void @VEC_int_heap_free(ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  ret ptr %62
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @depth_of_nest(ptr noundef readonly %0) unnamed_addr #10 !prof !34 !PGOFuncName !140 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  %5 = phi ptr [ %8, %3 ], [ %0, %1 ]
  %6 = add i32 %4, 1
  %7 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %3, !llvm.loop !141

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @perfect_nest_p(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1, %49
  %7 = phi ptr [ %51, %49 ], [ %3, %1 ]
  %8 = phi ptr [ %50, %49 ], [ %0, %1 ]
  %9 = tail call ptr @get_loop_body(ptr noundef nonnull %8) #24
  %10 = tail call ptr @get_loop_exit_condition(ptr noundef nonnull %8) #24
  %11 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !142
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %6, %44
  %15 = phi i32 [ %45, %44 ], [ %12, %6 ]
  %16 = phi i64 [ %46, %44 ], [ 0, %6 ]
  %17 = getelementptr inbounds ptr, ptr %9, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %18) #25
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !91
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22, %39
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %27 = tail call fastcc i32 @gimple_code(ptr noundef %26) #25, !range !129
  %28 = icmp ne i32 %27, 1
  %29 = icmp eq ptr %10, %26
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  br i1 %29, label %39, label %32

32:                                               ; preds = %31
  %33 = tail call fastcc zeroext i8 @not_interesting_stmt(ptr noundef %26) #25, !range !91
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %8, ptr noundef %26) #25, !range !91
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25, %35
  tail call void @free(ptr noundef %9) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  br label %54

39:                                               ; preds = %35, %32, %31
  call fastcc void @gsi_next(ptr noundef nonnull %2) #25
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !91
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %25, label %42, !llvm.loop !145

42:                                               ; preds = %39, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  %43 = load i32, ptr %11, align 4, !tbaa !142
  br label %44

44:                                               ; preds = %42, %14
  %45 = phi i32 [ %43, %42 ], [ %15, %14 ]
  %46 = add nuw nsw i64 %16, 1
  %47 = zext i32 %45 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %14, label %49, !llvm.loop !146

49:                                               ; preds = %44, %6
  tail call void @free(ptr noundef %9) #25
  %50 = load ptr, ptr %7, align 8, !tbaa !133
  %51 = getelementptr inbounds %struct.loop, ptr %50, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !133
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %6

54:                                               ; preds = %49, %1, %38
  %55 = phi i8 [ 0, %38 ], [ 1, %1 ], [ 1, %49 ]
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_convert_to_perfect_nest(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !147 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #24
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !142
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10, %28
  %16 = phi i32 [ %29, %28 ], [ %13, %10 ]
  %17 = phi i64 [ %30, %28 ], [ 0, %10 ]
  %18 = getelementptr inbounds ptr, ptr %11, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !143
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = tail call fastcc zeroext i8 @cannot_convert_bb_to_perfect_nest(ptr noundef nonnull %19, ptr noundef nonnull %0) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, ptr %12, align 4, !tbaa !142
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i32 [ %27, %26 ], [ %16, %15 ]
  %30 = add nuw nsw i64 %17, 1
  %31 = zext i32 %29 to i64
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %15, label %33, !llvm.loop !148

33:                                               ; preds = %28, %10
  %34 = tail call ptr @single_exit(ptr noundef nonnull %0) #24
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !149
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %36) #24
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !91
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %43
  %40 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25
  %41 = call fastcc i32 @gimple_phi_num_args(ptr noundef %40) #25
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  call fastcc void @gsi_next(ptr noundef nonnull %2) #25
  %44 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #25, !range !91
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %39, label %46, !llvm.loop !151

46:                                               ; preds = %23, %39, %43, %33
  %47 = phi i8 [ 1, %33 ], [ 1, %43 ], [ 0, %39 ], [ 0, %23 ]
  call void @free(ptr noundef %11) #25
  br label %48

48:                                               ; preds = %46, %1, %6
  %49 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret i8 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gcc_loop_to_lambda_loop(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr noundef %8) unnamed_addr #0 !prof !34 !PGOFuncName !152 {
  %10 = tail call ptr @find_induction_var_from_exit_cond(ptr noundef %0) #25
  %11 = tail call ptr @get_loop_exit_condition(ptr noundef %0) #24
  %12 = icmp eq ptr %10, null
  %13 = icmp eq ptr %11, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %229, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %229, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 88, i64 1, ptr nonnull %16)
  br label %229

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %229, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %229, label %35

35:                                               ; preds = %31
  %36 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 68, i64 1, ptr nonnull %29)
  br label %229

37:                                               ; preds = %24
  %38 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %26) #25, !range !129
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef nonnull %26, i32 noundef 1) #25
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %45 = icmp eq ptr %44, null
  br i1 %45, label %229, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %229, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 68, i64 1, ptr nonnull %44)
  br label %229

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !153
  %55 = tail call fastcc i32 @gimple_code(ptr noundef %54) #25, !range !129
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %59 = icmp eq ptr %58, null
  br i1 %59, label %229, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %229, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 68, i64 1, ptr nonnull %58)
  br label %229

66:                                               ; preds = %52, %37
  %67 = phi ptr [ %26, %37 ], [ %54, %52 ]
  %68 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %67) #25
  %69 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %68) #25
  store ptr %69, ptr %3, align 8, !tbaa !59
  %70 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %68) #25
  %71 = tail call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %70) #24
  %72 = tail call fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %71) #25
  %73 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !59
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %77 = icmp eq ptr %76, null
  br i1 %77, label %229, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %229, label %82

82:                                               ; preds = %78
  %83 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 78, i64 1, ptr nonnull %76)
  br label %229

84:                                               ; preds = %66
  %85 = load i32, ptr %0, align 8, !tbaa !154
  %86 = tail call ptr @evolution_part_in_loop_num(ptr noundef %72, i32 noundef %85) #24
  %87 = icmp eq ptr %86, null
  %88 = load ptr, ptr @chrec_dont_know, align 8
  %89 = icmp eq ptr %86, %88
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %93 = icmp eq ptr %92, null
  br i1 %93, label %229, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %96 = and i32 %95, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %229, label %98

98:                                               ; preds = %94
  %99 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 55, i64 1, ptr nonnull %92)
  br label %229

100:                                              ; preds = %84
  %101 = load i64, ptr %86, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 23
  br i1 %103, label %113, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %106 = icmp eq ptr %105, null
  br i1 %106, label %229, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %229, label %111

111:                                              ; preds = %107
  %112 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 53, i64 1, ptr nonnull %105)
  br label %229

113:                                              ; preds = %100
  %114 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !153
  %116 = trunc i64 %115 to i32
  %117 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #25
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %128, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %121 = icmp eq ptr %120, null
  br i1 %121, label %229, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %229, label %126

126:                                              ; preds = %122
  %127 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 73, i64 1, ptr nonnull %120)
  br label %229

128:                                              ; preds = %113
  %129 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %67, i64 noundef 0) #25
  %130 = load ptr, ptr %129, align 8, !tbaa !155
  %131 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %130) #24
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %128
  %134 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %67, i64 noundef 1) #25
  %135 = load ptr, ptr %134, align 8, !tbaa !155
  %136 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %135) #24
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %140 = icmp eq ptr %139, null
  br i1 %140, label %229, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %143 = and i32 %142, 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %229, label %145

145:                                              ; preds = %141
  %146 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 74, i64 1, ptr nonnull %139)
  br label %229

147:                                              ; preds = %133, %128
  %148 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %67, i64 noundef 0) #25
  %149 = load ptr, ptr %148, align 8, !tbaa !155
  %150 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %149) #24
  %151 = icmp ne i8 %150, 0
  %152 = zext i1 %151 to i32
  %153 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %67, i32 noundef %152) #25
  %154 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %153) #25
  %155 = load ptr, ptr %2, align 8, !tbaa !59
  %156 = tail call fastcc ptr @gcc_tree_to_linear_expression(i32 noundef %1, ptr noundef %154, ptr noundef %4, ptr noundef %155, i32 noundef 0, ptr noundef %8) #25
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %147
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %160 = icmp eq ptr %159, null
  br i1 %160, label %229, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %163 = and i32 %162, 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %229, label %165

165:                                              ; preds = %161
  %166 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 72, i64 1, ptr nonnull %159)
  br label %229

167:                                              ; preds = %147
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef nonnull %2, i32 noundef 1) #25
  %168 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %11) #25
  %169 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %11) #25
  %170 = load i64, ptr %169, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 141
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = tail call fastcc zeroext i8 @invariant_in_loop_and_outer_loops(ptr noundef nonnull %0, ptr noundef nonnull %169) #25, !range !91
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173, %167
  %177 = load i64, ptr %168, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 141
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = tail call fastcc zeroext i8 @invariant_in_loop_and_outer_loops(ptr noundef nonnull %0, ptr noundef nonnull %168) #25, !range !91
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180, %173
  %184 = phi ptr [ %169, %173 ], [ %168, %180 ]
  %185 = load ptr, ptr %2, align 8, !tbaa !59
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %185, ptr noundef nonnull %184) #25
  br label %186

186:                                              ; preds = %183, %176, %180
  %187 = icmp eq ptr %168, %10
  %188 = select i1 %187, ptr %169, ptr %168
  %189 = load ptr, ptr %2, align 8, !tbaa !59
  %190 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %189) #25
  %191 = shl nsw i32 %1, 1
  %192 = icmp ugt i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1398, ptr noundef nonnull @.str.1) #24
  br label %194

194:                                              ; preds = %186, %193
  %195 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %11) #25, !range !156
  %196 = trunc i32 %195 to i16
  switch i16 %196, label %203 [
    i16 97, label %197
    i16 102, label %199
    i16 99, label %201
  ]

197:                                              ; preds = %194
  %198 = sub nsw i32 0, %116
  br label %206

199:                                              ; preds = %194
  %200 = sub nsw i32 0, %116
  br label %206

201:                                              ; preds = %194
  %202 = sub nsw i32 0, %116
  br label %206

203:                                              ; preds = %194
  %204 = icmp eq i32 %195, 101
  %205 = select i1 %204, i32 %116, i32 0
  br label %206

206:                                              ; preds = %203, %199, %201, %197
  %207 = phi i32 [ %198, %197 ], [ %200, %199 ], [ %202, %201 ], [ %205, %203 ]
  %208 = load ptr, ptr %2, align 8, !tbaa !59
  %209 = tail call fastcc ptr @gcc_tree_to_linear_expression(i32 noundef %1, ptr noundef %188, ptr noundef %4, ptr noundef %208, i32 noundef %207, ptr noundef %8) #25
  %210 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !153
  %212 = sext i32 %207 to i64
  %213 = tail call ptr @build_int_cst(ptr noundef %211, i64 noundef %212) #24
  %214 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %211, ptr noundef %188, ptr noundef %213) #24
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %6, ptr noundef %214) #25
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %5, ptr noundef %154) #25
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef %7, i32 noundef %116) #25
  %215 = icmp eq ptr %209, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %206
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %218 = icmp eq ptr %217, null
  br i1 %218, label %229, label %219

219:                                              ; preds = %216
  %220 = load i32, ptr @dump_flags, align 4, !tbaa !58
  %221 = and i32 %220, 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %219
  %224 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 72, i64 1, ptr nonnull %217)
  br label %229

225:                                              ; preds = %206
  %226 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #24
  %227 = getelementptr inbounds %struct.lambda_loop_s, ptr %226, i64 0, i32 3
  store i32 %116, ptr %227, align 8, !tbaa !75
  store ptr %156, ptr %226, align 8, !tbaa !95
  %228 = getelementptr inbounds %struct.lambda_loop_s, ptr %226, i64 0, i32 1
  store ptr %209, ptr %228, align 8, !tbaa !123
  br label %229

229:                                              ; preds = %57, %60, %64, %43, %46, %50, %216, %219, %223, %158, %161, %165, %138, %141, %145, %119, %122, %126, %104, %107, %111, %91, %94, %98, %75, %78, %82, %28, %31, %35, %15, %18, %22, %225
  %230 = phi ptr [ %226, %225 ], [ null, %22 ], [ null, %18 ], [ null, %15 ], [ null, %35 ], [ null, %31 ], [ null, %28 ], [ null, %82 ], [ null, %78 ], [ null, %75 ], [ null, %98 ], [ null, %94 ], [ null, %91 ], [ null, %111 ], [ null, %107 ], [ null, %104 ], [ null, %126 ], [ null, %122 ], [ null, %119 ], [ null, %145 ], [ null, %141 ], [ null, %138 ], [ null, %165 ], [ null, %161 ], [ null, %158 ], [ null, %223 ], [ null, %219 ], [ null, %216 ], [ null, %50 ], [ null, %46 ], [ null, %43 ], [ null, %64 ], [ null, %60 ], [ null, %57 ]
  ret ptr %230
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !157 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0, i32 noundef 1) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lambda_loop_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !158 {
  tail call fastcc void @VEC_lambda_loop_heap_reserve(ptr noundef %0) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  tail call fastcc void @VEC_lambda_loop_base_quick_push(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @perfect_nestify(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !34 !PGOFuncName !159 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca %struct.gimple_stmt_iterator, align 8
  %17 = alloca %struct.gimple_stmt_iterator, align 8
  %18 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #26
  store ptr null, ptr %11, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #26
  store ptr null, ptr %12, align 8, !tbaa !59
  %19 = tail call ptr @single_exit(ptr noundef %0) #24
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !149
  %22 = tail call ptr @single_exit(ptr noundef %0) #24
  %23 = tail call ptr @split_edge(ptr noundef %22) #24
  %24 = load ptr, ptr @cfun, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !160
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !164
  %31 = tail call ptr @create_empty_bb(ptr noundef %30) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %21) #24
  %32 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %5, %34
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  call fastcc void @VEC_tree_heap_reserve(ptr noundef nonnull %11, i32 noundef 2) #25
  call fastcc void @VEC_source_location_heap_reserve(ptr noundef nonnull %12) #25
  %36 = load ptr, ptr %11, align 8
  %37 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %35) #25
  %38 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %37) #25
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %36, ptr noundef %38) #25
  %39 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %35, i32 noundef 0) #25
  %40 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %39) #25
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %36, ptr noundef %40) #25
  %41 = load ptr, ptr %12, align 8
  %42 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %35) #25
  call fastcc void @VEC_source_location_base_quick_push(ptr noundef %41, i32 noundef %42) #25
  call fastcc void @gsi_next(ptr noundef nonnull %6) #25
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %34, label %45, !llvm.loop !165

45:                                               ; preds = %34, %5
  %46 = phi ptr [ null, %5 ], [ %41, %34 ]
  %47 = phi ptr [ null, %5 ], [ %36, %34 ]
  %48 = call fastcc ptr @single_succ_edge(ptr noundef %23) #25
  %49 = call ptr @redirect_edge_and_branch(ptr noundef %48, ptr noundef %31) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #26
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %21) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #26
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %55, %45
  %53 = call fastcc i32 @VEC_tree_base_length(ptr noundef %47) #25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %58

55:                                               ; preds = %45, %55
  call void @remove_phi_node(ptr noundef nonnull %6, i8 noundef zeroext 0) #24
  %56 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %55, label %52, !llvm.loop !167

58:                                               ; preds = %52, %58
  %59 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %47) #25
  %60 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %47) #25
  %61 = call fastcc i32 @VEC_source_location_base_pop(ptr noundef %46) #25
  %62 = call ptr @create_phi_node(ptr noundef %60, ptr noundef %23) #24
  %63 = call fastcc ptr @single_pred_edge(ptr noundef %23) #25
  call void @add_phi_arg(ptr noundef %62, ptr noundef %59, ptr noundef %63, i32 noundef %61) #24
  %64 = call fastcc i32 @VEC_tree_base_length(ptr noundef %47) #25
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %58, !llvm.loop !168

66:                                               ; preds = %58, %52
  call void @flush_pending_stmts(ptr noundef %49) #24
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %11) #25
  %67 = load ptr, ptr @cfun, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !160
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !162
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !164
  %74 = call ptr @create_empty_bb(ptr noundef %73) #24
  %75 = load ptr, ptr @cfun, align 8, !tbaa !59
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !160
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !162
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !164
  %82 = call ptr @create_empty_bb(ptr noundef %81) #24
  %83 = call ptr @make_edge(ptr noundef %31, ptr noundef %74, i32 noundef 1) #24
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !59
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !59
  %86 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %84, ptr noundef %85, ptr noundef null, ptr noundef null) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %14, ptr noundef %74) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #26
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %86, i32 noundef 0) #24
  %87 = call ptr @make_edge(ptr noundef %74, ptr noundef %21, i32 noundef 2048) #24
  %88 = call ptr @make_edge(ptr noundef %74, ptr noundef %82, i32 noundef 1024) #24
  %89 = call ptr @make_edge(ptr noundef %82, ptr noundef %31, i32 noundef 1) #24
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !143
  %92 = call ptr @duplicate_loop(ptr noundef %0, ptr noundef %91) #24
  %93 = getelementptr inbounds %struct.loop, ptr %92, i64 0, i32 2
  store ptr %31, ptr %93, align 8, !tbaa !169
  %94 = getelementptr inbounds %struct.loop, ptr %92, i64 0, i32 3
  store ptr %82, ptr %94, align 8, !tbaa !170
  call void @add_bb_to_loop(ptr noundef %82, ptr noundef %92) #24
  call void @add_bb_to_loop(ptr noundef %74, ptr noundef %92) #24
  call void @add_bb_to_loop(ptr noundef %31, ptr noundef %92) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %74, ptr noundef %31) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %31, ptr noundef %23) #24
  %95 = call ptr @single_exit(ptr noundef %0) #24
  %96 = load ptr, ptr %95, align 8, !tbaa !155
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %23, ptr noundef %96) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %82, ptr noundef %74) #24
  %97 = call ptr @recompute_dominator(i32 noundef 1, ptr noundef %21) #24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %21, ptr noundef %97) #24
  %98 = call fastcc ptr @VEC_tree_base_index(ptr noundef %4, i32 noundef 0) #25
  %99 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !153
  %101 = call ptr @create_tmp_var(ptr noundef %100, ptr noundef nonnull @.str.36) #24
  store ptr %101, ptr %9, align 8, !tbaa !59
  %102 = call zeroext i8 @add_referenced_var(ptr noundef %101) #24
  call void @standard_iv_increment_position(ptr noundef %92, ptr noundef nonnull %6, ptr noundef nonnull %8) #24
  %103 = call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef 0) #25
  %104 = load ptr, ptr %99, align 8, !tbaa !153
  %105 = call fastcc i32 @VEC_int_base_index(ptr noundef %3) #25
  %106 = sext i32 %105 to i64
  %107 = call ptr @build_int_cst(ptr noundef %104, i64 noundef %106) #24
  %108 = load i8, ptr %8, align 1, !tbaa !153
  call void @create_iv(ptr noundef %103, ptr noundef %107, ptr noundef %101, ptr noundef %92, ptr noundef nonnull %6, i8 noundef zeroext %108, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  %109 = call ptr @get_loop_exit_condition(ptr noundef %92) #24
  %110 = call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef 0) #25
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !153
  %113 = call ptr @create_tmp_var(ptr noundef %112, ptr noundef nonnull @.str.37) #24
  %114 = call zeroext i8 @add_referenced_var(ptr noundef %113) #24
  %115 = call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef 0) #25
  %116 = call ptr @gimple_build_assign_stat(ptr noundef %113, ptr noundef %115) #24
  %117 = call fastcc ptr @make_ssa_name(ptr noundef %113, ptr noundef %116) #25
  call fastcc void @gimple_assign_set_lhs(ptr noundef %116, ptr noundef %117) #25
  %118 = load i8, ptr %8, align 1, !tbaa !153
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %66
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %116, i32 noundef 1) #24
  br label %122

121:                                              ; preds = %66
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %116, i32 noundef 1) #24
  br label %122

122:                                              ; preds = %121, %120
  call fastcc void @update_stmt(ptr noundef %116) #25
  %123 = load ptr, ptr %10, align 8, !tbaa !59
  call fastcc void @gimple_cond_set_condition(ptr noundef %109, i32 noundef 100, ptr noundef %117, ptr noundef %123) #25
  call fastcc void @update_stmt(ptr noundef %109) #25
  %124 = call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #24
  %125 = call ptr @get_loop_body_in_dom_order(ptr noundef %0) #24
  %126 = call fastcc ptr @VEC_tree_base_index(ptr noundef %4, i32 noundef 0) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %74) #25
  %127 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %128 = load i32, ptr %127, align 4, !tbaa !142
  %129 = add i32 %128, -1
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %198

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %133 = zext nneg i32 %129 to i64
  br label %134

134:                                              ; preds = %131, %195
  %135 = phi i64 [ %133, %131 ], [ %196, %195 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #26
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef %74) #25
  %136 = getelementptr inbounds ptr, ptr %125, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !59
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !143
  %140 = icmp eq ptr %139, %0
  br i1 %140, label %141, label %195

141:                                              ; preds = %134
  %142 = load ptr, ptr %132, align 8, !tbaa !133
  %143 = getelementptr inbounds %struct.loop, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !169
  %145 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %144, ptr noundef nonnull %137) #24
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %169, label %147

147:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #26
  %148 = load ptr, ptr %132, align 8, !tbaa !133
  %149 = getelementptr inbounds %struct.loop, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !169
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %16, ptr noundef %150) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #26
  %151 = load ptr, ptr %136, align 8, !tbaa !59
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %17, ptr noundef %151) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #26
  %152 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %147, %165
  %155 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %156 = icmp eq ptr %155, %109
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = call fastcc zeroext i8 @not_interesting_stmt(ptr noundef %155) #25, !range !91
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr noundef %155) #25, !range !91
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160, %157, %154
  call fastcc void @gsi_next(ptr noundef nonnull %6) #25
  br label %165, !llvm.loop !171

164:                                              ; preds = %160
  call void @gsi_move_before(ptr noundef nonnull %6, ptr noundef nonnull %16) #24
  br label %165

165:                                              ; preds = %164, %163
  %166 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %154, label %168

168:                                              ; preds = %165, %147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #26
  br label %195

169:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #26
  %170 = load ptr, ptr %136, align 8, !tbaa !59
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %18, ptr noundef %170) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #26
  %171 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %169, %192
  %174 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25
  %175 = icmp eq ptr %174, %109
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = call fastcc zeroext i8 @not_interesting_stmt(ptr noundef %174) #25, !range !91
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr noundef %174) #25, !range !91
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179, %176, %173
  call fastcc void @gsi_next(ptr noundef nonnull %6) #25
  br label %192, !llvm.loop !172

183:                                              ; preds = %179
  %184 = call fastcc i32 @VEC_int_base_index(ptr noundef %3) #25
  %185 = load ptr, ptr %9, align 8, !tbaa !59
  %186 = call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef 0) #25
  call fastcc void @replace_uses_equiv_to_x_with_y(ptr noundef %0, ptr noundef %174, ptr noundef %126, i32 noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %124, ptr noundef nonnull %7) #25
  call void @gsi_move_before(ptr noundef nonnull %6, ptr noundef nonnull %15) #24
  %187 = call fastcc ptr @gimple_vuse(ptr noundef %174) #25
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %183
  %190 = load ptr, ptr @cfun, align 8, !tbaa !59
  %191 = call fastcc ptr @gimple_vop(ptr noundef %190) #25
  call void @mark_sym_for_renaming(ptr noundef %191) #24
  br label %192

192:                                              ; preds = %183, %189, %182
  %193 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #25, !range !91
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %173, label %195

195:                                              ; preds = %192, %169, %168, %134
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #26
  %196 = add nsw i64 %135, -1
  %197 = icmp sgt i64 %135, 0
  br i1 %197, label %134, label %198, !llvm.loop !173

198:                                              ; preds = %195, %122
  call void @free(ptr noundef %125) #25
  call void @htab_delete(ptr noundef %124) #24
  %199 = call zeroext i8 @perfect_nest_p(ptr noundef %0) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  ret i8 %199
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_lambda_loop_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !34 !PGOFuncName !174 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !175
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_lambda_loop_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !59
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_lambda_loop_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !34 !PGOFuncName !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #25
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !34 !PGOFuncName !178 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #25
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !34 !PGOFuncName !179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #25
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_iv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %4 = call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %6, %37
  %10 = phi i64 [ %38, %37 ], [ 0, %6 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  %11 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %10) #25
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef nonnull %11) #25
  %17 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #25, !range !91
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15, %27
  %20 = phi i8 [ %28, %27 ], [ 0, %15 ]
  %21 = phi ptr [ %29, %27 ], [ %16, %15 ]
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %21) #25, !range !91
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i8 1, i8 %20
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8 [ %20, %19 ], [ %26, %23 ]
  %29 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #25
  %30 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #25, !range !91
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %19, label %32, !llvm.loop !180

32:                                               ; preds = %27
  %33 = icmp eq i8 %28, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15, %32
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !153
  call void @remove_iv(ptr noundef %36) #25
  br label %37

37:                                               ; preds = %32, %34, %9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  %38 = add nuw nsw i64 %10, 1
  %39 = call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #25
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %9, label %42, !llvm.loop !181

42:                                               ; preds = %37, %6
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  br label %44

43:                                               ; preds = %1
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #24
  call void @release_defs(ptr noundef %0) #24
  br label %44

44:                                               ; preds = %43, %42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !182 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !153
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !183 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #25
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #25
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !184 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !185
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  store ptr %6, ptr %0, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #25, !range !91
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #25
  %11 = load ptr, ptr %0, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !190 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !191 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !192 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  store ptr %4, ptr %0, align 8, !tbaa !189
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #25, !range !91
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !194
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #25
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #25
  %12 = load ptr, ptr %0, align 8, !tbaa !189
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lambda_loopnest_to_gcc_loopnest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !prof !34 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca %struct.immediate_use_iterator_d, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #26
  %19 = tail call ptr @lambda_trans_matrix_inverse(ptr noundef %5) #24
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 34, i64 1, ptr nonnull %20)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !59
  tail call void @print_lambda_trans_matrix(ptr noundef %24, ptr noundef %19) #24
  br label %25

25:                                               ; preds = %22, %7
  %26 = tail call fastcc i32 @depth_of_nest(ptr noundef %0) #25
  %27 = icmp eq ptr %0, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %105, %25
  %29 = phi ptr [ null, %25 ], [ %60, %105 ]
  %30 = phi ptr [ undef, %25 ], [ %37, %105 ]
  store ptr %30, ptr %9, align 8, !tbaa !59
  %31 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %9) #25, !range !138
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %193, label %112

33:                                               ; preds = %25, %105
  %34 = phi ptr [ %110, %105 ], [ %0, %25 ]
  %35 = phi i64 [ %108, %105 ], [ 0, %25 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #26
  %36 = trunc i64 %35 to i32
  %37 = call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %36) #25
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !153
  %40 = call ptr @create_tmp_var(ptr noundef %39, ptr noundef nonnull @.str.15) #24
  store ptr %40, ptr %11, align 8, !tbaa !59
  %41 = call zeroext i8 @add_referenced_var(ptr noundef %40) #24
  %42 = load ptr, ptr %11, align 8, !tbaa !59
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %8, ptr noundef %42) #25
  %43 = load ptr, ptr %4, align 8, !tbaa !78
  %44 = getelementptr inbounds ptr, ptr %43, i64 %35
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.lambda_loop_s, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !69
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %33
  %52 = load ptr, ptr %47, align 8, !tbaa !65
  %53 = call fastcc zeroext i8 @lambda_vector_zerop(ptr noundef %52, i32 noundef %26) #25, !range !91
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %33
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1747, ptr noundef nonnull @.str.1) #24
  %56 = load ptr, ptr %46, align 8, !tbaa !73
  br label %57

57:                                               ; preds = %51, %55
  %58 = phi ptr [ %47, %51 ], [ %56, %55 ]
  store ptr null, ptr %12, align 8, !tbaa !59
  %59 = load ptr, ptr %45, align 8, !tbaa !95
  %60 = load ptr, ptr %8, align 8
  %61 = call fastcc ptr @lle_to_gcc_expression(ptr noundef %59, ptr noundef %58, ptr noundef %39, ptr noundef %60, ptr noundef %2, i32 noundef 81, ptr noundef nonnull %12) #25
  %62 = load ptr, ptr %12, align 8, !tbaa !59
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = call ptr @loop_preheader_edge(ptr noundef nonnull %34) #24
  %66 = load ptr, ptr %12, align 8, !tbaa !59
  call void @gsi_insert_seq_on_edge(ptr noundef %65, ptr noundef %66) #24
  call void @gsi_commit_edge_inserts() #24
  br label %67

67:                                               ; preds = %64, %57
  store ptr null, ptr %12, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.lambda_loop_s, ptr %45, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !123
  %70 = load ptr, ptr %46, align 8, !tbaa !73
  %71 = call fastcc ptr @lle_to_gcc_expression(ptr noundef %69, ptr noundef %70, ptr noundef %39, ptr noundef %60, ptr noundef %2, i32 noundef 80, ptr noundef nonnull %12) #25
  %72 = call ptr @single_exit(ptr noundef nonnull %34) #24
  %73 = call ptr @get_loop_exit_condition(ptr noundef nonnull %34) #24
  %74 = call fastcc ptr @gimple_bb(ptr noundef %73) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #26
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %14, ptr noundef %74) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #26
  %75 = load ptr, ptr %12, align 8, !tbaa !59
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  call void @gsi_insert_seq_before(ptr noundef nonnull %10, ptr noundef nonnull %75, i32 noundef 0) #24
  br label %78

78:                                               ; preds = %77, %67
  call void @standard_iv_increment_position(ptr noundef nonnull %34, ptr noundef nonnull %10, ptr noundef nonnull %13) #24
  %79 = getelementptr inbounds %struct.lambda_loop_s, ptr %45, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !75
  %81 = sext i32 %80 to i64
  %82 = call ptr @build_int_cst(ptr noundef %39, i64 noundef %81) #24
  %83 = load ptr, ptr %11, align 8, !tbaa !59
  %84 = load i8, ptr %13, align 1, !tbaa !153
  call void @create_iv(ptr noundef %61, ptr noundef %82, ptr noundef %83, ptr noundef nonnull %34, ptr noundef nonnull %10, i8 noundef zeroext %84, ptr noundef nonnull %11, ptr noundef null) #24
  %85 = load ptr, ptr %11, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !153
  %88 = load i32, ptr %79, align 8, !tbaa !75
  %89 = sext i32 %88 to i64
  %90 = call ptr @build_int_cst(ptr noundef %39, i64 noundef %89) #24
  %91 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %87, ptr noundef %85, ptr noundef %90) #24
  %92 = load ptr, ptr %11, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !153
  %95 = call fastcc ptr @make_ssa_name(ptr noundef %94, ptr noundef %91) #25
  call fastcc void @gimple_assign_set_lhs(ptr noundef %91, ptr noundef %95) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #26
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef %73) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #26
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %91, i32 noundef 1) #24
  %96 = load i32, ptr %79, align 8, !tbaa !75
  %97 = icmp sgt i32 %96, -1
  %98 = select i1 %97, i32 98, i32 100
  %99 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !195
  %101 = and i32 %100, 2048
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %78
  %104 = call i32 @swap_tree_comparison(i32 noundef %98) #24
  br label %105

105:                                              ; preds = %103, %78
  %106 = phi i32 [ %104, %103 ], [ %98, %78 ]
  call fastcc void @gimple_cond_set_condition(ptr noundef %73, i32 noundef %106, ptr noundef %71, ptr noundef %95) #25
  call fastcc void @update_stmt(ptr noundef %73) #25
  %107 = load ptr, ptr %11, align 8, !tbaa !59
  call fastcc void @VEC_tree_base_replace(ptr noundef %60, i32 noundef %36, ptr noundef %107) #25
  %108 = add i64 %35, 1
  %109 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  %111 = icmp eq ptr %110, null
  br i1 %111, label %28, label %33, !llvm.loop !196

112:                                              ; preds = %28, %188
  %113 = phi i64 [ %189, %188 ], [ 0, %28 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #26
  %114 = load ptr, ptr %9, align 8, !tbaa !59
  %115 = getelementptr inbounds %struct.tree_ssa_name, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !153
  %117 = call fastcc i32 @gimple_code(ptr noundef %116) #25, !range !129
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %116) #25
  %121 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %120) #25
  br label %124

122:                                              ; preds = %112
  %123 = call fastcc ptr @single_ssa_tree_operand(ptr noundef %116, i32 noundef 2) #25
  br label %124

124:                                              ; preds = %122, %119
  %125 = phi ptr [ %121, %119 ], [ %123, %122 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1834, ptr noundef nonnull @.str.1) #24
  br label %128

128:                                              ; preds = %124, %127
  %129 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %16, ptr noundef %125) #25
  %130 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %16) #25, !range !91
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %188

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  br label %134

134:                                              ; preds = %132, %184
  %135 = phi ptr [ %129, %132 ], [ %185, %184 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #26
  %136 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %135) #25, !range !91
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %184

138:                                              ; preds = %134
  %139 = call fastcc i32 @VEC_tree_base_length(ptr noundef %29) #25
  %140 = call ptr @lambda_body_vector_new(i32 noundef %139, ptr noundef %6) #25
  %141 = load ptr, ptr %140, align 8, !tbaa !47
  %142 = getelementptr inbounds i32, ptr %141, i64 %113
  store i32 1, ptr %142, align 4, !tbaa !58
  %143 = call ptr @lambda_body_vector_compute_new(ptr noundef %19, ptr noundef nonnull %140, ptr noundef %6) #25
  store ptr null, ptr %17, align 8, !tbaa !59
  %144 = load ptr, ptr %133, align 8, !tbaa !153
  %145 = call fastcc ptr @lbv_to_gcc_expression(ptr noundef %143, ptr noundef %144, ptr noundef %29, ptr noundef nonnull %17) #25
  %146 = load ptr, ptr %17, align 8, !tbaa !59
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %138
  %149 = call fastcc i32 @gimple_code(ptr noundef %135) #25, !range !129
  %150 = icmp eq i32 %149, 16
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #26
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %18, ptr noundef %135) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #26
  %152 = load ptr, ptr %17, align 8, !tbaa !59
  call void @gsi_insert_seq_before(ptr noundef nonnull %10, ptr noundef %152, i32 noundef 1) #24
  br label %153

153:                                              ; preds = %151, %148, %138
  %154 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %16) #25
  %155 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %16) #25, !range !91
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153, %157
  %158 = phi ptr [ %159, %157 ], [ %154, %153 ]
  call void @propagate_value(ptr noundef %158, ptr noundef %145) #24
  %159 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %16) #25
  %160 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %16) #25, !range !91
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %157, label %162, !llvm.loop !197

162:                                              ; preds = %157, %153
  %163 = load ptr, ptr %17, align 8, !tbaa !59
  %164 = icmp eq ptr %163, null
  br i1 %164, label %183, label %165

165:                                              ; preds = %162
  %166 = call fastcc i32 @gimple_code(ptr noundef %135) #25, !range !129
  %167 = icmp eq i32 %166, 16
  br i1 %167, label %168, label %183

168:                                              ; preds = %165
  %169 = call fastcc i32 @gimple_phi_num_args(ptr noundef %135) #25
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %168, %178
  %172 = phi i64 [ %179, %178 ], [ 0, %168 ]
  %173 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %135, i64 noundef %172) #25
  %174 = icmp eq ptr %173, %145
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %135, i64 noundef %172) #25
  %177 = load ptr, ptr %17, align 8, !tbaa !59
  call void @gsi_insert_seq_on_edge(ptr noundef %176, ptr noundef %177) #24
  br label %178

178:                                              ; preds = %171, %175
  %179 = add nuw nsw i64 %172, 1
  %180 = call fastcc i32 @gimple_phi_num_args(ptr noundef %135) #25
  %181 = zext i32 %180 to i64
  %182 = icmp ult i64 %179, %181
  br i1 %182, label %171, label %183, !llvm.loop !198

183:                                              ; preds = %178, %168, %165, %162
  call fastcc void @update_stmt(ptr noundef %135) #25
  br label %184

184:                                              ; preds = %134, %183
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #26
  %185 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %16) #25
  %186 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %16) #25, !range !91
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %134, label %188, !llvm.loop !199

188:                                              ; preds = %184, %128
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %3, ptr noundef %116) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #26
  %189 = add i64 %113, 1
  %190 = trunc i64 %189 to i32
  %191 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %190, ptr noundef nonnull %9) #25, !range !138
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %112, !llvm.loop !200

193:                                              ; preds = %188, %28
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  ret void
}

; Function Attrs: optsize
declare ptr @lambda_trans_matrix_inverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_lambda_trans_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !201 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lle_to_gcc_expression(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 !prof !34 !PGOFuncName !202 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  store ptr null, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %5, 81
  %11 = and i32 %5, -2
  %12 = icmp eq i32 %11, 80
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1590, ptr noundef nonnull @.str.1) #24
  br label %14

14:                                               ; preds = %7, %13
  %15 = icmp eq ptr %0, null
  br i1 %15, label %59, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 1
  %18 = select i1 %10, i32 68, i32 69
  br label %19

19:                                               ; preds = %16, %51
  %20 = phi ptr [ %0, %16 ], [ %55, %51 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = tail call fastcc ptr @build_linear_expr(ptr noundef %2, ptr noundef %21, ptr noundef %3) #25
  %23 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = tail call fastcc ptr @build_linear_expr(ptr noundef %2, ptr noundef %24, ptr noundef %4) #25
  %26 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %22, ptr noundef %25) #24
  %27 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !67
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = sext i32 %28 to i64
  %32 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %31) #24
  %33 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %26, ptr noundef %32) #24
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi ptr [ %33, %30 ], [ %26, %19 ]
  %36 = load i32, ptr %17, align 8, !tbaa !67
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = sext i32 %36 to i64
  %40 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %39) #24
  %41 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %2, ptr noundef %35, ptr noundef %40) #24
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %35, %34 ]
  %44 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !69
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = sext i32 %45 to i64
  %49 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef %48) #24
  %50 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %18, ptr noundef %2, ptr noundef %43, ptr noundef %49) #24
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi ptr [ %50, %47 ], [ %43, %42 ]
  %53 = tail call ptr @fold(ptr noundef %52) #24
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %8, ptr noundef %53) #25
  %54 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %20, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %19, !llvm.loop !203

57:                                               ; preds = %51
  %58 = icmp eq ptr %53, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %14, %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1618, ptr noundef nonnull @.str.1) #24
  br label %60

60:                                               ; preds = %57, %59
  %61 = phi ptr [ %53, %57 ], [ null, %59 ]
  %62 = load ptr, ptr %8, align 8
  %63 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %62) #25
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %62, i32 noundef 0) #25
  %67 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %62, i32 noundef 1, ptr noundef nonnull %9) #25, !range !138
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65, %69
  %70 = phi i32 [ %74, %69 ], [ 1, %65 ]
  %71 = phi ptr [ %73, %69 ], [ %66, %65 ]
  %72 = load ptr, ptr %9, align 8, !tbaa !59
  %73 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %2, ptr noundef %71, ptr noundef %72) #24
  %74 = add i32 %70, 1
  %75 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %62, i32 noundef %74, ptr noundef nonnull %9) #25, !range !138
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %69, !llvm.loop !204

77:                                               ; preds = %69, %65
  %78 = phi ptr [ %66, %65 ], [ %73, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  br label %79

79:                                               ; preds = %77, %60
  %80 = phi ptr [ %78, %77 ], [ %61, %60 ]
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %8) #25
  %81 = tail call ptr @create_tmp_var(ptr noundef %2, ptr noundef nonnull @.str.34) #24
  %82 = tail call zeroext i8 @add_referenced_var(ptr noundef %81) #24
  %83 = tail call ptr @fold(ptr noundef %80) #24
  %84 = tail call ptr @force_gimple_operand(ptr noundef %83, ptr noundef %6, i8 noundef zeroext 1, ptr noundef %81) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  ret ptr %84
}

; Function Attrs: optsize
declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 !prof !34 !PGOFuncName !206 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #25
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25, !range !91
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #25, !range !129
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #25
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #25, !range !91
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !207

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @standard_iv_increment_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !208 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !59
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !209 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #25
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !153
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_condition(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !210 {
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef %1) #25
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #25
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !211 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #24
  tail call void @update_stmt_operands(ptr noundef %0) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #11 !prof !34 !PGOFuncName !212 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !34 !PGOFuncName !213 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !214
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !59
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !216 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #14 !prof !34 !PGOFuncName !217 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !218 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %4 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #25
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #25
  %9 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #25
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr null, ptr %4
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ null, %2 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !219 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !214
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lbv_to_gcc_expression(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !220 {
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = tail call fastcc ptr @build_linear_expr(ptr noundef %1, ptr noundef %5, ptr noundef %2) #25
  %7 = getelementptr inbounds %struct.lambda_body_vector_s, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !50
  switch i32 %8, label %10 [
    i32 0, label %9
    i32 1, label %14
  ]

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1555, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %9, %4
  %11 = sext i32 %8 to i64
  %12 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef %11) #24
  %13 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 68, ptr noundef %1, ptr noundef %6, ptr noundef %12) #24
  br label %14

14:                                               ; preds = %4, %10
  %15 = phi ptr [ %13, %10 ], [ %6, %4 ]
  %16 = tail call ptr @create_tmp_var(ptr noundef %1, ptr noundef nonnull @.str.35) #24
  %17 = tail call zeroext i8 @add_referenced_var(ptr noundef %16) #24
  %18 = tail call ptr @fold(ptr noundef %15) #24
  %19 = tail call ptr @force_gimple_operand(ptr noundef %18, ptr noundef %3, i8 noundef zeroext 1, ptr noundef %16) #24
  ret ptr %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #15 !prof !34 !PGOFuncName !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !222
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !223 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #15 !prof !34 !PGOFuncName !224 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  store ptr %3, ptr %0, align 8, !tbaa !189
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #25, !range !91
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !188
  store ptr %8, ptr %2, align 8, !tbaa !222
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #16 !prof !34 !PGOFuncName !225 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #25
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #25
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !227 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 !prof !34 !PGOFuncName !228 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #25
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #25
  store ptr %4, ptr %0, align 8, !tbaa !229
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !231
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !34 !PGOFuncName !233 {
  %2 = load ptr, ptr %0, align 8, !tbaa !229
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #16 !prof !34 !PGOFuncName !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !229
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @not_interesting_stmt(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !237 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %4 [
    i8 4, label %6
    i8 3, label %6
    i8 1, label %6
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #25, !range !91
  br label %6

6:                                                ; preds = %1, %1, %1, %4
  %7 = phi i8 [ 1, %1 ], [ %5, %4 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !238 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  %4 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %1, i32 noundef 2) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %8 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6, %24
  %11 = phi ptr [ %25, %24 ], [ %7, %6 ]
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = tail call fastcc i32 @gimple_code(ptr noundef %13) #25, !range !129
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i8 @phi_loop_edge_uses_def(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %4) #25, !range !91
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %13) #25
  %21 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %20) #25
  %22 = tail call fastcc zeroext i8 @stmt_uses_phi_result(ptr noundef %1, ptr noundef %21) #25, !range !91
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10, %19, %16
  %25 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #25
  %26 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %10, label %28, !llvm.loop !239

28:                                               ; preds = %19, %24, %6, %2
  %29 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %19 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret i8 %29
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #15 !prof !34 !PGOFuncName !240 {
  %2 = load ptr, ptr %0, align 8, !tbaa !229
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  store ptr %4, ptr %0, align 8, !tbaa !229
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lambda_transform_legal_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !54
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.lambda_trans_matrix_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2608, ptr noundef nonnull @.str.1) #24
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call fastcc i32 @VEC_ddr_p_base_length(ptr noundef %2) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @VEC_ddr_p_base_index(ptr noundef %2) #25
  store ptr %17, ptr %4, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %70, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.data_dependence_relation, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !242
  %22 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !59
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %70, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @lambda_vector_new(i32 noundef %1) #25
  %26 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %4) #25, !range !138
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %24, %66
  %29 = phi i32 [ %67, %66 ], [ 0, %24 ]
  %30 = load ptr, ptr %4, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.data_dependence_relation, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !242
  %33 = load ptr, ptr @chrec_known, align 8, !tbaa !59
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %66, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %30, align 8, !tbaa !244
  %37 = getelementptr inbounds %struct.data_reference, ptr %36, i64 0, i32 3
  %38 = load i8, ptr %37, align 8, !tbaa !245
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.data_dependence_relation, ptr %30, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !250
  %43 = getelementptr inbounds %struct.data_reference, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 8, !tbaa !245
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %40, %35
  %47 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !59
  %48 = icmp eq ptr %32, %47
  br i1 %48, label %70, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.data_dependence_relation, ptr %30, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !251
  %52 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %51) #25
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %59

54:                                               ; preds = %59
  %55 = add nuw i32 %61, 1
  %56 = load ptr, ptr %50, align 8, !tbaa !251
  %57 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %56) #25
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %66, !llvm.loop !252

59:                                               ; preds = %49, %54
  %60 = phi ptr [ %56, %54 ], [ %51, %49 ]
  %61 = phi i32 [ %55, %54 ], [ 0, %49 ]
  %62 = load ptr, ptr %0, align 8, !tbaa !56
  %63 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %60, i32 noundef %61) #25
  tail call void @lambda_matrix_vector_mult(ptr noundef %62, i32 noundef %1, i32 noundef %1, ptr noundef %63, ptr noundef %25) #24
  %64 = tail call fastcc zeroext i8 @lambda_vector_lexico_pos(ptr noundef %25, i32 noundef %1) #25, !range !91
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %54

66:                                               ; preds = %54, %28, %40
  %67 = add i32 %29, 1
  %68 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %2, i32 noundef %67, ptr noundef nonnull %4) #25, !range !138
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %28, !llvm.loop !253

70:                                               ; preds = %46, %49, %66, %59, %24, %19, %16, %13
  %71 = phi i8 [ 1, %13 ], [ 1, %16 ], [ 0, %19 ], [ 1, %24 ], [ 0, %59 ], [ 0, %46 ], [ 0, %49 ], [ 1, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret i8 %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !254 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !255
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_ddr_p_base_index(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !257 {
  %2 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !34 !PGOFuncName !258 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !255
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !59
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_vector_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !259 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !260
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lambda_vector_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !262 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lambda_vector_lexico_pos(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !263 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %17, label %9, !llvm.loop !264

9:                                                ; preds = %4, %6
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !58
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %12, -1
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %6, %2, %14
  %18 = phi i8 [ %16, %14 ], [ 1, %2 ], [ 1, %6 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lambda_collect_parameters(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @pointer_set_create() #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %5 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #25, !range !138
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %22
  %8 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.data_reference, ptr %9, i64 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !265
  %12 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %11) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7, %14
  %15 = phi ptr [ %19, %14 ], [ %11, %7 ]
  %16 = phi i32 [ %18, %14 ], [ 0, %7 ]
  %17 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %15, i32 noundef %16) #25
  tail call fastcc void @lambda_collect_parameters_from_af(ptr noundef %17, ptr noundef %4, ptr noundef %1) #25
  %18 = add nuw i32 %16, 1
  %19 = load ptr, ptr %10, align 8, !tbaa !265
  %20 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %19) #25
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !266

22:                                               ; preds = %14, %7
  %23 = add i32 %8, 1
  %24 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %3) #25, !range !138
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %7, !llvm.loop !267

26:                                               ; preds = %22, %2
  tail call void @pointer_set_destroy(ptr noundef %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !34 !PGOFuncName !268 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !269
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !59
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lambda_collect_parameters_from_af(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !271 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = tail call i32 @pointer_set_contains(ptr noundef %1, ptr noundef nonnull %0) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @pointer_set_insert(ptr noundef %1, ptr noundef nonnull %0) #24
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %2, ptr noundef nonnull %0) #25
  br label %25

14:                                               ; preds = %9, %5
  %15 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #25
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %23, %19 ]
  %21 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  tail call fastcc void @lambda_collect_parameters_from_af(ptr noundef %22, ptr noundef %1, ptr noundef %2) #25
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %18
  br i1 %24, label %25, label %19, !llvm.loop !272

25:                                               ; preds = %19, %14, %3, %12
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @lambda_compute_access_matrices(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #25, !range !138
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %11

7:                                                ; preds = %11
  %8 = add i32 %12, 1
  %9 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %4) #25, !range !138
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !llvm.loop !273

11:                                               ; preds = %3, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !59
  %14 = tail call fastcc zeroext i8 @build_access_matrix(ptr noundef %13, ptr noundef %1, ptr noundef %2) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %7

16:                                               ; preds = %11, %7, %3
  %17 = phi i8 [ 1, %3 ], [ 1, %7 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @build_access_matrix(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !274 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #24
  %5 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !265
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #25
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %2) #25
  store ptr %2, ptr %4, align 8, !tbaa !275
  %9 = getelementptr inbounds %struct.access_matrix, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !277
  %10 = getelementptr inbounds %struct.access_matrix, ptr %4, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !278
  %11 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #25
  %12 = add i32 %8, 1
  %13 = add i32 %12, %11
  %14 = tail call fastcc ptr @VEC_lambda_vector_gc_alloc(i32 noundef %7) #25
  %15 = getelementptr inbounds %struct.access_matrix, ptr %4, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !279
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3, %24
  %18 = phi i32 [ %26, %24 ], [ 0, %3 ]
  %19 = tail call fastcc ptr @lambda_vector_new(i32 noundef %13) #25
  %20 = load ptr, ptr %5, align 8, !tbaa !265
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %18) #25
  %22 = tail call fastcc zeroext i8 @av_for_af(ptr noundef %21, ptr noundef %19, ptr noundef nonnull %4) #25, !range !91
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %15, align 8, !tbaa !279
  tail call fastcc void @VEC_lambda_vector_base_quick_push(ptr noundef %25, ptr noundef %19) #25
  %26 = add nuw i32 %18, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %17, !llvm.loop !280

28:                                               ; preds = %24, %3
  %29 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 7
  store ptr %4, ptr %29, align 8, !tbaa !281
  br label %30

30:                                               ; preds = %17, %28
  %31 = phi i8 [ 1, %28 ], [ 0, %17 ]
  ret i8 %31
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @lambda_vector_clear(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #18 !prof !34 !PGOFuncName !282 {
  %3 = sext i32 %1 to i64
  %4 = shl nsw i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %4, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lambda_lattice_new(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !283 {
  %4 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 5
  store i64 40, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 40
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull %2, i32 noundef 40) #24
  %14 = load i64, ptr %4, align 8, !tbaa !35
  %15 = load ptr, ptr %7, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi ptr [ %8, %3 ], [ %15, %13 ]
  %18 = phi i64 [ 40, %3 ], [ %14, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 10
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %16, %23
  %28 = ptrtoint ptr %21 to i64
  store i64 %28, ptr %4, align 8, !tbaa !35
  %29 = ptrtoint ptr %19 to i64
  %30 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !45
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %29
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr %7, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.obstack, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %36, %40
  %42 = load ptr, ptr %5, align 8, !tbaa !42
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %43, %40
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store ptr %42, ptr %7, align 8, !tbaa !43
  br label %47

47:                                               ; preds = %27, %46
  %48 = phi ptr [ %37, %27 ], [ %42, %46 ]
  store ptr %48, ptr %20, align 8, !tbaa !44
  %49 = tail call ptr @lambda_matrix_new(i32 noundef %0, i32 noundef %0) #24
  store ptr %49, ptr %21, align 8, !tbaa !87
  %50 = tail call fastcc ptr @lambda_vector_new(i32 noundef %0) #25
  %51 = getelementptr inbounds %struct.lambda_lattice_s, ptr %21, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !89
  %52 = tail call ptr @lambda_matrix_new(i32 noundef %0, i32 noundef %1) #24
  %53 = getelementptr inbounds %struct.lambda_lattice_s, ptr %21, i64 0, i32 3
  store ptr %52, ptr %53, align 8, !tbaa !90
  %54 = getelementptr inbounds %struct.lambda_lattice_s, ptr %21, i64 0, i32 1
  store i32 %0, ptr %54, align 8, !tbaa !284
  %55 = getelementptr inbounds %struct.lambda_lattice_s, ptr %21, i64 0, i32 4
  store i32 %1, ptr %55, align 8, !tbaa !285
  ret ptr %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_add_mc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #20 !prof !34 !PGOFuncName !286 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %20, %10 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !58
  %14 = mul nsw i32 %13, %1
  %15 = getelementptr inbounds i32, ptr %2, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !58
  %17 = mul nsw i32 %16, %3
  %18 = add nsw i32 %17, %14
  %19 = getelementptr inbounds i32, ptr %4, i64 %11
  store i32 %18, ptr %19, align 4, !tbaa !58
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !llvm.loop !287

22:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: optsize
declare void @lambda_matrix_add_mc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lambda_matrix_inverse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_nest_using_fourier_motzkin(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 !prof !34 !PGOFuncName !288 {
  %8 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %1) #24
  %9 = tail call ptr @lambda_matrix_new(i32 noundef 128, i32 noundef %2) #24
  %10 = tail call fastcc ptr @lambda_vector_new(i32 noundef 128) #25
  %11 = tail call ptr @lambda_loopnest_new(i32 noundef %1, i32 noundef %2, ptr noundef %6) #25
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %204

13:                                               ; preds = %7
  %14 = icmp sgt i32 %2, 0
  %15 = add nsw i32 %1, -1
  %16 = zext nneg i32 %15 to i64
  %17 = zext nneg i32 %1 to i64
  %18 = zext nneg i32 %2 to i64
  %19 = zext nneg i32 %2 to i64
  br label %24

20:                                               ; preds = %200, %24, %44
  %21 = phi i32 [ 0, %44 ], [ 0, %24 ], [ %201, %200 ]
  %22 = icmp sgt i64 %25, 1
  %23 = add nsw i64 %26, -1
  br i1 %22, label %24, label %204, !llvm.loop !289

24:                                               ; preds = %13, %20
  %25 = phi i64 [ %17, %13 ], [ %34, %20 ]
  %26 = phi i64 [ %16, %13 ], [ %23, %20 ]
  %27 = phi ptr [ %10, %13 ], [ %33, %20 ]
  %28 = phi i32 [ %0, %13 ], [ %21, %20 ]
  %29 = phi ptr [ %9, %13 ], [ %32, %20 ]
  %30 = phi ptr [ %8, %13 ], [ %31, %20 ]
  %31 = phi ptr [ %3, %13 ], [ %30, %20 ]
  %32 = phi ptr [ %4, %13 ], [ %29, %20 ]
  %33 = phi ptr [ %5, %13 ], [ %27, %20 ]
  %34 = add nsw i64 %25, -1
  %35 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #24
  %36 = load ptr, ptr %11, align 8, !tbaa !78
  %37 = getelementptr inbounds ptr, ptr %36, i64 %34
  store ptr %35, ptr %37, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.lambda_loop_s, ptr %35, i64 0, i32 3
  store i32 1, ptr %38, align 8, !tbaa !75
  %39 = icmp sgt i32 %28, 0
  br i1 %39, label %40, label %20

40:                                               ; preds = %24
  %41 = icmp ugt i64 %25, 1
  %42 = getelementptr inbounds %struct.lambda_loop_s, ptr %35, i64 0, i32 1
  %43 = zext nneg i32 %28 to i64
  br label %47

44:                                               ; preds = %136
  br i1 %39, label %45, label %20

45:                                               ; preds = %44
  %46 = zext nneg i32 %28 to i64
  br label %139

47:                                               ; preds = %40, %136
  %48 = phi i64 [ 0, %40 ], [ %137, %136 ]
  %49 = getelementptr inbounds ptr, ptr %31, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds i32, ptr %50, i64 %34
  %52 = load i32, ptr %51, align 4, !tbaa !58
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %47
  %55 = tail call ptr @lambda_linear_expression_new(i32 noundef %1, i32 noundef %2, ptr noundef %6) #25
  br i1 %41, label %56, label %59

56:                                               ; preds = %54
  %57 = load ptr, ptr %49, align 8, !tbaa !59
  %58 = load ptr, ptr %55, align 8, !tbaa !65
  br label %65

59:                                               ; preds = %65, %54
  br i1 %14, label %60, label %80

60:                                               ; preds = %59
  %61 = getelementptr inbounds ptr, ptr %32, i64 %48
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %55, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  br label %72

65:                                               ; preds = %56, %65
  %66 = phi i64 [ 0, %56 ], [ %70, %65 ]
  %67 = getelementptr inbounds i32, ptr %57, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !58
  %69 = getelementptr inbounds i32, ptr %58, i64 %66
  store i32 %68, ptr %69, align 4, !tbaa !58
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, %26
  br i1 %71, label %59, label %65, !llvm.loop !290

72:                                               ; preds = %60, %72
  %73 = phi i64 [ 0, %60 ], [ %78, %72 ]
  %74 = getelementptr inbounds i32, ptr %62, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !58
  %76 = sub nsw i32 0, %75
  %77 = getelementptr inbounds i32, ptr %64, i64 %73
  store i32 %76, ptr %77, align 4, !tbaa !58
  %78 = add nuw nsw i64 %73, 1
  %79 = icmp eq i64 %78, %19
  br i1 %79, label %80, label %72, !llvm.loop !291

80:                                               ; preds = %72, %59
  %81 = load ptr, ptr %49, align 8, !tbaa !59
  %82 = getelementptr inbounds i32, ptr %81, i64 %34
  %83 = load i32, ptr %82, align 4, !tbaa !58
  %84 = sub nsw i32 0, %83
  %85 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %55, i64 0, i32 3
  store i32 %84, ptr %85, align 8, !tbaa !69
  %86 = getelementptr inbounds i32, ptr %33, i64 %48
  %87 = load i32, ptr %86, align 4, !tbaa !58
  %88 = sub nsw i32 0, %87
  %89 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %55, i64 0, i32 1
  store i32 %88, ptr %89, align 8, !tbaa !67
  %90 = load ptr, ptr %35, align 8, !tbaa !95
  %91 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %90, ptr noundef %55, i32 noundef %1, i32 noundef %2) #25, !range !91
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %55, i64 0, i32 4
  store ptr %90, ptr %94, align 8, !tbaa !70
  store ptr %55, ptr %35, align 8, !tbaa !95
  br label %136

95:                                               ; preds = %47
  %96 = icmp eq i32 %52, 0
  br i1 %96, label %136, label %97

97:                                               ; preds = %95
  %98 = tail call ptr @lambda_linear_expression_new(i32 noundef %1, i32 noundef %2, ptr noundef %6) #25
  br i1 %41, label %99, label %102

99:                                               ; preds = %97
  %100 = load ptr, ptr %49, align 8, !tbaa !59
  %101 = load ptr, ptr %98, align 8, !tbaa !65
  br label %108

102:                                              ; preds = %108, %97
  br i1 %14, label %103, label %123

103:                                              ; preds = %102
  %104 = getelementptr inbounds ptr, ptr %32, i64 %48
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %98, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !68
  br label %116

108:                                              ; preds = %99, %108
  %109 = phi i64 [ 0, %99 ], [ %114, %108 ]
  %110 = getelementptr inbounds i32, ptr %100, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !58
  %112 = sub nsw i32 0, %111
  %113 = getelementptr inbounds i32, ptr %101, i64 %109
  store i32 %112, ptr %113, align 4, !tbaa !58
  %114 = add nuw nsw i64 %109, 1
  %115 = icmp eq i64 %114, %26
  br i1 %115, label %102, label %108, !llvm.loop !292

116:                                              ; preds = %103, %116
  %117 = phi i64 [ 0, %103 ], [ %121, %116 ]
  %118 = getelementptr inbounds i32, ptr %105, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !58
  %120 = getelementptr inbounds i32, ptr %107, i64 %117
  store i32 %119, ptr %120, align 4, !tbaa !58
  %121 = add nuw nsw i64 %117, 1
  %122 = icmp eq i64 %121, %18
  br i1 %122, label %123, label %116, !llvm.loop !293

123:                                              ; preds = %116, %102
  %124 = load ptr, ptr %49, align 8, !tbaa !59
  %125 = getelementptr inbounds i32, ptr %124, i64 %34
  %126 = load i32, ptr %125, align 4, !tbaa !58
  %127 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %98, i64 0, i32 3
  store i32 %126, ptr %127, align 8, !tbaa !69
  %128 = getelementptr inbounds i32, ptr %33, i64 %48
  %129 = load i32, ptr %128, align 4, !tbaa !58
  %130 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %98, i64 0, i32 1
  store i32 %129, ptr %130, align 8, !tbaa !67
  %131 = load ptr, ptr %42, align 8, !tbaa !123
  %132 = tail call fastcc zeroext i8 @lle_equal(ptr noundef %131, ptr noundef %98, i32 noundef %1, i32 noundef %2) #25, !range !91
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %98, i64 0, i32 4
  store ptr %131, ptr %135, align 8, !tbaa !70
  store ptr %98, ptr %42, align 8, !tbaa !123
  br label %136

136:                                              ; preds = %93, %80, %123, %134, %95
  %137 = add nuw nsw i64 %48, 1
  %138 = icmp eq i64 %137, %43
  br i1 %138, label %44, label %47, !llvm.loop !294

139:                                              ; preds = %45, %200
  %140 = phi i64 [ 0, %45 ], [ %202, %200 ]
  %141 = phi i32 [ 0, %45 ], [ %201, %200 ]
  %142 = getelementptr inbounds ptr, ptr %31, i64 %140
  %143 = load ptr, ptr %142, align 8, !tbaa !59
  %144 = getelementptr inbounds i32, ptr %143, i64 %34
  %145 = load i32, ptr %144, align 4, !tbaa !58
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %139
  %148 = sext i32 %141 to i64
  %149 = getelementptr inbounds ptr, ptr %30, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !59
  tail call fastcc void @lambda_vector_copy(ptr noundef nonnull %143, ptr noundef %150, i32 noundef %1) #25
  %151 = getelementptr inbounds ptr, ptr %32, i64 %140
  %152 = load ptr, ptr %151, align 8, !tbaa !59
  %153 = getelementptr inbounds ptr, ptr %29, i64 %148
  %154 = load ptr, ptr %153, align 8, !tbaa !59
  tail call fastcc void @lambda_vector_copy(ptr noundef %152, ptr noundef %154, i32 noundef %2) #25
  %155 = getelementptr inbounds i32, ptr %33, i64 %140
  %156 = load i32, ptr %155, align 4, !tbaa !58
  %157 = getelementptr inbounds i32, ptr %27, i64 %148
  store i32 %156, ptr %157, align 4, !tbaa !58
  %158 = add nsw i32 %141, 1
  br label %200

159:                                              ; preds = %139
  %160 = icmp sgt i32 %145, 0
  br i1 %160, label %161, label %200

161:                                              ; preds = %159
  %162 = getelementptr inbounds ptr, ptr %32, i64 %140
  %163 = getelementptr inbounds i32, ptr %33, i64 %140
  br label %164

164:                                              ; preds = %161, %196
  %165 = phi i64 [ 0, %161 ], [ %198, %196 ]
  %166 = phi i32 [ %141, %161 ], [ %197, %196 ]
  %167 = getelementptr inbounds ptr, ptr %31, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !59
  %169 = getelementptr inbounds i32, ptr %168, i64 %34
  %170 = load i32, ptr %169, align 4, !tbaa !58
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %164
  %173 = load ptr, ptr %142, align 8, !tbaa !59
  %174 = getelementptr inbounds i32, ptr %173, i64 %34
  %175 = load i32, ptr %174, align 4, !tbaa !58
  %176 = tail call i32 @least_common_multiple(i32 noundef %175, i32 noundef %170) #25
  %177 = sdiv i32 %176, %175
  %178 = sdiv i32 %176, %170
  %179 = sub nsw i32 0, %178
  %180 = sext i32 %166 to i64
  %181 = getelementptr inbounds ptr, ptr %30, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !59
  tail call fastcc void @lambda_vector_add_mc(ptr noundef %173, i32 noundef %177, ptr noundef nonnull %168, i32 noundef %179, ptr noundef %182, i32 noundef %1) #25
  %183 = load ptr, ptr %162, align 8, !tbaa !59
  %184 = getelementptr inbounds ptr, ptr %32, i64 %165
  %185 = load ptr, ptr %184, align 8, !tbaa !59
  %186 = getelementptr inbounds ptr, ptr %29, i64 %180
  %187 = load ptr, ptr %186, align 8, !tbaa !59
  tail call fastcc void @lambda_vector_add_mc(ptr noundef %183, i32 noundef %177, ptr noundef %185, i32 noundef %179, ptr noundef %187, i32 noundef %2) #25
  %188 = load i32, ptr %163, align 4, !tbaa !58
  %189 = mul nsw i32 %188, %177
  %190 = getelementptr inbounds i32, ptr %33, i64 %165
  %191 = load i32, ptr %190, align 4, !tbaa !58
  %192 = mul nsw i32 %191, %179
  %193 = add nsw i32 %192, %189
  %194 = getelementptr inbounds i32, ptr %27, i64 %180
  store i32 %193, ptr %194, align 4, !tbaa !58
  %195 = add nsw i32 %166, 1
  br label %196

196:                                              ; preds = %164, %172
  %197 = phi i32 [ %195, %172 ], [ %166, %164 ]
  %198 = add nuw nsw i64 %165, 1
  %199 = icmp eq i64 %198, %46
  br i1 %199, label %200, label %164, !llvm.loop !295

200:                                              ; preds = %196, %147, %159
  %201 = phi i32 [ %158, %147 ], [ %141, %159 ], [ %197, %196 ]
  %202 = add nuw nsw i64 %140, 1
  %203 = icmp eq i64 %202, %46
  br i1 %203, label %20, label %139, !llvm.loop !296

204:                                              ; preds = %20, %7
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @lle_equal(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 !PGOFuncName !297 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !69
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8, !tbaa !65
  %24 = load ptr, ptr %1, align 8, !tbaa !65
  %25 = zext nneg i32 %2 to i64
  br label %37

26:                                               ; preds = %37
  %27 = add nuw nsw i64 %38, 1
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %29, label %37, !llvm.loop !298

29:                                               ; preds = %26, %20
  %30 = icmp sgt i32 %3, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = zext nneg i32 %3 to i64
  br label %47

37:                                               ; preds = %22, %26
  %38 = phi i64 [ 0, %22 ], [ %27, %26 ]
  %39 = getelementptr inbounds i32, ptr %23, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds i32, ptr %24, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !58
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %26, label %54

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %36
  br i1 %46, label %54, label %47, !llvm.loop !299

47:                                               ; preds = %31, %44
  %48 = phi i64 [ 0, %31 ], [ %45, %44 ]
  %49 = getelementptr inbounds i32, ptr %33, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !58
  %51 = getelementptr inbounds i32, ptr %35, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !58
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %44, label %54

54:                                               ; preds = %37, %47, %44, %29, %14, %8, %4
  %55 = phi i8 [ 0, %4 ], [ 0, %8 ], [ 0, %14 ], [ 1, %29 ], [ 0, %47 ], [ 1, %44 ], [ 0, %37 ]
  ret i8 %55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #11 !prof !34 !PGOFuncName !300 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @lambda_matrix_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_col_negate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @lambda_vector_first_nz(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !prof !34 !PGOFuncName !301 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ %6, %5 ], [ %13, %12 ]
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = add nsw i64 %8, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %18, label %7, !llvm.loop !302

16:                                               ; preds = %7
  %17 = trunc i64 %8 to i32
  br label %18

18:                                               ; preds = %12, %16, %3
  %19 = phi i32 [ %2, %3 ], [ %17, %16 ], [ %1, %12 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lambda_vector_min_nz(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !303 {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 345, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp slt i32 %2, %1
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = sext i32 %2 to i64
  %10 = sext i32 %1 to i64
  br label %11

11:                                               ; preds = %8, %26
  %12 = phi i64 [ %9, %8 ], [ %28, %26 ]
  %13 = phi i32 [ -1, %8 ], [ %27, %26 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %12
  %15 = load i32, ptr %14, align 4, !tbaa !58
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = icmp slt i32 %13, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = zext nneg i32 %13 to i64
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %17
  %25 = trunc i64 %12 to i32
  br label %26

26:                                               ; preds = %11, %24, %19
  %27 = phi i32 [ %25, %24 ], [ %13, %19 ], [ %13, %11 ]
  %28 = add nsw i64 %12, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %30, label %11, !llvm.loop !304

30:                                               ; preds = %26
  %31 = icmp sgt i32 %27, -1
  br i1 %31, label %34, label %32

32:                                               ; preds = %6, %30
  %33 = phi i32 [ %27, %30 ], [ -1, %6 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 352, ptr noundef nonnull @.str.1) #24
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i32 [ %27, %30 ], [ %33, %32 ]
  ret i32 %35
}

; Function Attrs: optsize
declare void @lambda_matrix_col_exchange(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lambda_matrix_col_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @lambda_vector_gcd(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !305 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4, !tbaa !58
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 1, %7 ], [ %15, %9 ]
  %11 = phi i32 [ %5, %7 ], [ %14, %9 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !58
  %14 = tail call fastcc i32 @gcd(i32 noundef %11, i32 noundef %13) #25, !range !83
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !306

17:                                               ; preds = %9, %4, %2
  %18 = phi i32 [ 0, %2 ], [ %5, %4 ], [ %14, %9 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_mult_const(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #20 !prof !34 !PGOFuncName !307 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = zext nneg i32 %2 to i64
  br label %11

10:                                               ; preds = %4
  tail call fastcc void @lambda_vector_clear(ptr noundef %1, i32 noundef %2) #25
  br label %19

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %17, %11 ]
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !58
  %15 = mul nsw i32 %14, %3
  %16 = getelementptr inbounds i32, ptr %1, i64 %12
  store i32 %15, ptr %16, align 4, !tbaa !58
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %11, !llvm.loop !308

19:                                               ; preds = %11, %6, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !309 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !91
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #25
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !310 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !311 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #25
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !312
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !313 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #25
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !34 !PGOFuncName !314 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !58
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !315 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #25
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #24
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !316 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !317
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !318 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcc_tree_to_linear_expression(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !prof !34 !PGOFuncName !319 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = load i64, ptr %1, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %86 [
    i16 23, label %11
    i16 141, label %20
  ]

11:                                               ; preds = %6
  %12 = shl nsw i32 %0, 1
  %13 = tail call ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %12, ptr noundef %5) #25
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !153
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %13, i64 0, i32 1
  %18 = add nsw i32 %16, %4
  store i32 %18, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %13, i64 0, i32 3
  store i32 1, ptr %19, align 8, !tbaa !69
  br label %86

20:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  %21 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %7) #25, !range !138
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %25 = shl nsw i32 %0, 1
  %26 = icmp eq i32 %4, 0
  br label %35

27:                                               ; preds = %53, %20
  %28 = phi ptr [ null, %20 ], [ %54, %53 ]
  %29 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %8) #25, !range !138
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %33 = shl nsw i32 %0, 1
  %34 = icmp eq i32 %4, 0
  br label %59

35:                                               ; preds = %23, %53
  %36 = phi i64 [ 0, %23 ], [ %55, %53 ]
  %37 = phi ptr [ null, %23 ], [ %54, %53 ]
  %38 = load ptr, ptr %7, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !153
  %43 = load ptr, ptr %24, align 8, !tbaa !153
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = tail call ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %25, ptr noundef %5) #25
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = getelementptr inbounds i32, ptr %47, i64 %36
  store i32 1, ptr %48, align 4, !tbaa !58
  br i1 %26, label %51, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %46, i64 0, i32 1
  store i32 %4, ptr %50, align 8, !tbaa !67
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %46, i64 0, i32 3
  store i32 1, ptr %52, align 8, !tbaa !69
  br label %53

53:                                               ; preds = %35, %51, %40
  %54 = phi ptr [ %46, %51 ], [ %37, %40 ], [ %37, %35 ]
  %55 = add i64 %36, 1
  %56 = trunc i64 %55 to i32
  %57 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef %56, ptr noundef nonnull %7) #25, !range !138
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %27, label %35, !llvm.loop !320

59:                                               ; preds = %31, %78
  %60 = phi i64 [ 0, %31 ], [ %80, %78 ]
  %61 = phi ptr [ %28, %31 ], [ %79, %78 ]
  %62 = load ptr, ptr %8, align 8, !tbaa !59
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !153
  %67 = load ptr, ptr %32, align 8, !tbaa !153
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = tail call ptr @lambda_linear_expression_new(i32 noundef %0, i32 noundef %33, ptr noundef %5) #25
  %71 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !68
  %73 = getelementptr inbounds i32, ptr %72, i64 %60
  store i32 1, ptr %73, align 4, !tbaa !58
  br i1 %34, label %76, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %70, i64 0, i32 1
  store i32 %4, ptr %75, align 8, !tbaa !67
  br label %76

76:                                               ; preds = %74, %69
  %77 = getelementptr inbounds %struct.lambda_linear_expression_s, ptr %70, i64 0, i32 3
  store i32 1, ptr %77, align 8, !tbaa !69
  br label %78

78:                                               ; preds = %59, %76, %64
  %79 = phi ptr [ %70, %76 ], [ %61, %64 ], [ %61, %59 ]
  %80 = add i64 %60, 1
  %81 = trunc i64 %80 to i32
  %82 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %3, i32 noundef %81, ptr noundef nonnull %8) #25, !range !138
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %59, !llvm.loop !321

84:                                               ; preds = %78, %27
  %85 = phi ptr [ %28, %27 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  br label %86

86:                                               ; preds = %11, %84, %6
  %87 = phi ptr [ null, %6 ], [ %85, %84 ], [ %13, %11 ]
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !322 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #25, !range !138
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef %1) #24
  store ptr %7, ptr %0, align 8, !tbaa !59
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @invariant_in_loop_and_outer_loops(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !323 {
  %3 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #24
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2, %12
  %6 = phi ptr [ %13, %12 ], [ %0, %2 ]
  %7 = tail call fastcc i32 @loop_depth(ptr noundef %6) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %6, ptr noundef %1) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @loop_outer(ptr noundef %6) #25
  %14 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %5, label %16

16:                                               ; preds = %12, %5, %9, %2
  %17 = phi i8 [ 1, %2 ], [ 0, %9 ], [ 1, %5 ], [ 1, %12 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !324 {
  %3 = load i32, ptr %0, align 8, !tbaa !214
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !214
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !325 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !326 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !327 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !328 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !153
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !329 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !330
  %7 = load i32, ptr %0, align 8, !tbaa !214
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #25
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !333 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #25
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !334 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !335
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !337 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !338 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #24
  store ptr %6, ptr %0, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !339 {
  %3 = load i32, ptr %0, align 4, !tbaa !340
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !340
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !342 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !343
  %6 = load i32, ptr %0, align 4, !tbaa !340
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lambda_loop_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !344 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = tail call fastcc i32 @VEC_lambda_loop_base_space(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #24
  store ptr %6, ptr %0, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_lambda_loop_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !345 {
  %3 = load i32, ptr %0, align 8, !tbaa !175
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !175
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_lambda_loop_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_loop_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !346 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_lambda_loop_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !347
  %6 = load i32, ptr %0, align 8, !tbaa !175
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !348 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #24
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #25, !range !129
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #25
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #25
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #25
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #25
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !349

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #25
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #25
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #25
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #25
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #25
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #25
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !350

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #25
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #25
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !194
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #25
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !351 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #25
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #25
  store i8 0, ptr %0, align 8, !tbaa !352
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 918, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #24
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !352
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !354
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #25
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !355
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !356
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #25
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !357 {
  %2 = load i8, ptr %0, align 8, !tbaa !352
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #21 !prof !34 !PGOFuncName !358 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !188
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #25
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #25
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !359 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !360
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !361
  store ptr %7, ptr %2, align 8, !tbaa !360
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !363
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !355
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !354
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !363
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #25
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !352
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !364 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 771, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #25
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !356
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #25
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !365 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !366
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #21 !prof !34 !PGOFuncName !367 {
  %2 = load ptr, ptr %0, align 8, !tbaa !368
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !188
  store ptr %2, ptr %6, align 8, !tbaa !368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #21 !prof !34 !PGOFuncName !369 {
  store ptr %1, ptr %0, align 8, !tbaa !368
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !188
  store ptr %0, ptr %4, align 8, !tbaa !368
  store ptr %0, ptr %3, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !370 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #18 !prof !34 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !352
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !372 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 747, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !373
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #25
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !373
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !374
  store ptr %22, ptr %16, align 8, !tbaa !373
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !360
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #25
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !360
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #25
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !361
  store ptr %36, ptr %29, align 8, !tbaa !360
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !352
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !376 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !377 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !378 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !379 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !380 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_linear_expr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !381 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !59
  %6 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %5) #24
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %4) #25, !range !138
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3, %25
  %10 = phi i32 [ %27, %25 ], [ 0, %3 ]
  %11 = phi ptr [ %26, %25 ], [ %6, %3 ]
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !58
  switch i32 %14, label %17 [
    i32 1, label %15
    i32 0, label %25
  ]

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !tbaa !59
  br label %22

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 8, !tbaa !59
  %19 = sext i32 %14 to i64
  %20 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef %19) #24
  %21 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef %18, ptr noundef %20) #24
  br label %22

22:                                               ; preds = %15, %17
  %23 = phi ptr [ %21, %17 ], [ %16, %15 ]
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %0, ptr noundef %11, ptr noundef %23) #24
  br label %25

25:                                               ; preds = %22, %9
  %26 = phi ptr [ %11, %9 ], [ %24, %22 ]
  %27 = add i32 %10, 1
  %28 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef %27, ptr noundef nonnull %4) #25, !range !138
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %9, !llvm.loop !382

30:                                               ; preds = %25, %3
  %31 = phi ptr [ %6, %3 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !383 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #25, !range !91
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #25
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #25
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !384 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !153
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !385 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !386 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !387 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !388 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #25
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !356
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #15 !prof !34 !PGOFuncName !389 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !360
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #25
  %8 = load ptr, ptr %3, align 8, !tbaa !361
  store ptr %8, ptr %2, align 8, !tbaa !360
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !373
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !390
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #25
  %17 = load ptr, ptr %11, align 8, !tbaa !374
  store ptr %17, ptr %10, align 8, !tbaa !373
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !352
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !391 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !392 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #24
  store ptr %6, ptr %0, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !393 {
  %3 = load i32, ptr %0, align 8, !tbaa !394
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !394
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !396 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !397
  %6 = load i32, ptr %0, align 8, !tbaa !394
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !398 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !399
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !400
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !402 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !403
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !405 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !185
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  store ptr %6, ptr %0, align 8, !tbaa !189
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #25, !range !91
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !406 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @phi_loop_edge_uses_def(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 !prof !34 !PGOFuncName !407 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3, %17
  %7 = phi i64 [ %18, %17 ], [ 0, %3 ]
  %8 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %1, i64 noundef %7) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %9) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = trunc i64 %7 to i32
  %14 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %13) #25
  %15 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %14) #25
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %22, label %17

17:                                               ; preds = %6, %12
  %18 = add nuw nsw i64 %7, 1
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #25
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %6, label %22, !llvm.loop !408

22:                                               ; preds = %12, %17, %3
  %23 = phi i8 [ 0, %3 ], [ 0, %17 ], [ 1, %12 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_uses_phi_result(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 !prof !34 !PGOFuncName !409 {
  %3 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %0, i32 noundef 1) #25
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #15 !prof !34 !PGOFuncName !410 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  store ptr %4, ptr %0, align 8, !tbaa !189
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #25, !range !91
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cannot_convert_bb_to_perfect_nest(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !411 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = tail call ptr @get_loop_exit_condition(ptr noundef %1) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #25
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !91
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 8
  br label %9

9:                                                ; preds = %7, %42
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @not_interesting_stmt(ptr noundef %10) #25, !range !91
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @stmt_is_bumper_for_loop(ptr noundef %1, ptr noundef %10) #25, !range !91
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %10) #25, !range !91
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @cannot_convert_modify_to_perfect_nest(ptr noundef %10, ptr noundef %1) #25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %10) #25
  %26 = tail call fastcc zeroext i8 @can_duplicate_iv(ptr noundef %25, ptr noundef %1) #25, !range !91
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load ptr, ptr %8, align 8, !tbaa !133
  %30 = tail call fastcc zeroext i8 @can_put_in_inner_loop(ptr noundef %29, ptr noundef %10) #25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = tail call fastcc zeroext i8 @can_put_after_inner_loop(ptr noundef nonnull %1, ptr noundef %10) #25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %18
  %36 = tail call fastcc ptr @gimple_bb(ptr noundef %10) #25
  %37 = load ptr, ptr %8, align 8, !tbaa !133
  %38 = getelementptr inbounds %struct.loop, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !169
  %40 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %36, ptr noundef %39) #24
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %15, %12, %9, %24, %32, %28, %35
  call fastcc void @gsi_next(ptr noundef nonnull %3) #25
  %43 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #25, !range !91
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %9, label %45, !llvm.loop !412

45:                                               ; preds = %42, %21, %35, %2
  %46 = phi i8 [ 0, %2 ], [ 1, %35 ], [ 1, %21 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret i8 %46
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !413 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #25, !range !129
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cannot_convert_modify_to_perfect_nest(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !414 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #26
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #25
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @can_duplicate_iv(ptr noundef nonnull %6, ptr noundef %1) #25, !range !91
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef nonnull %6) #25
  %15 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !133
  br label %20

20:                                               ; preds = %17, %28
  %21 = phi ptr [ %14, %17 ], [ %29, %28 ]
  %22 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !153
  %24 = tail call fastcc ptr @gimple_bb(ptr noundef %23) #25
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !143
  %27 = icmp eq ptr %26, %19
  br i1 %27, label %94, label %28

28:                                               ; preds = %20
  %29 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #25
  %30 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %20, label %32, !llvm.loop !415

32:                                               ; preds = %28, %13, %10, %2
  %33 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #25
  %34 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 8
  br label %38

38:                                               ; preds = %36, %90
  %39 = phi ptr [ %33, %36 ], [ %91, %90 ]
  %40 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %39) #25
  %41 = tail call fastcc zeroext i8 @can_duplicate_iv(ptr noundef %40, ptr noundef %1) #25, !range !91
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %40) #25
  %45 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load ptr, ptr %37, align 8, !tbaa !133
  br label %49

49:                                               ; preds = %47, %57
  %50 = phi ptr [ %44, %47 ], [ %58, %57 ]
  %51 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !153
  %53 = tail call fastcc ptr @gimple_bb(ptr noundef %52) #25
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !143
  %56 = icmp eq ptr %55, %48
  br i1 %56, label %94, label %57

57:                                               ; preds = %49
  %58 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #25
  %59 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %49, label %61, !llvm.loop !416

61:                                               ; preds = %57, %43, %38
  %62 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !153
  %64 = tail call fastcc i32 @gimple_code(ptr noundef %63) #25, !range !129
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %5, ptr noundef %63, i32 noundef 1) #25
  %68 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #25
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %66, %86
  %71 = phi ptr [ %87, %86 ], [ %67, %66 ]
  %72 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %71) #25
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 141
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %72, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !153
  %79 = tail call fastcc ptr @gimple_bb(ptr noundef %78) #25
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !143
  %84 = load ptr, ptr %37, align 8, !tbaa !133
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %76, %81, %70
  %87 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #25
  %88 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #25
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %70, label %90, !llvm.loop !417

90:                                               ; preds = %86, %66, %61
  %91 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #25
  %92 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #25
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %38, label %94, !llvm.loop !418

94:                                               ; preds = %20, %90, %49, %81, %32
  %95 = phi i8 [ 0, %32 ], [ 1, %81 ], [ 1, %49 ], [ 0, %90 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret i8 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_duplicate_iv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !419 {
  %3 = tail call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef %0) #24
  %4 = tail call fastcc ptr @instantiate_parameters(ptr noundef %1, ptr noundef %3) #25
  %5 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %4) #25, !range !91
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8, !tbaa !154
  %9 = tail call ptr @evolution_part_in_loop_num(ptr noundef %4, i32 noundef %8) #24
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr @chrec_dont_know, align 8
  %12 = icmp eq ptr %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %7
  br label %19

19:                                               ; preds = %2, %18, %14
  %20 = phi i8 [ 1, %14 ], [ 0, %18 ], [ 0, %2 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !420 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_put_in_inner_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !421 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %1) #25, !range !91
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @stmt_invariant_in_loop_p(ptr noundef %0, ptr noundef %1) #24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #25
  %15 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %14) #25
  %16 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13, %29
  %19 = phi ptr [ %30, %29 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = tail call fastcc zeroext i8 @exit_phi_for_loop_p(ptr noundef %0, ptr noundef %21) #25, !range !91
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load ptr, ptr %20, align 8, !tbaa !153
  %26 = tail call fastcc ptr @gimple_bb(ptr noundef %25) #25
  %27 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %26) #24
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %18, %24
  %30 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #25
  %31 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %18, label %33, !llvm.loop !422

33:                                               ; preds = %24, %29, %13, %7, %10
  %34 = phi i8 [ 0, %10 ], [ 0, %7 ], [ 1, %13 ], [ 0, %24 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_put_after_inner_loop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !423 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #26
  %4 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #25
  %8 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %7) #25
  %9 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %11, %31
  %14 = phi ptr [ %8, %11 ], [ %32, %31 ]
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = tail call fastcc zeroext i8 @exit_phi_for_loop_p(ptr noundef %0, ptr noundef %16) #25, !range !91
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load ptr, ptr %15, align 8, !tbaa !153
  %21 = tail call fastcc ptr @gimple_bb(ptr noundef %20) #25
  %22 = load ptr, ptr %12, align 8, !tbaa !133
  %23 = getelementptr inbounds %struct.loop, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !169
  %25 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %21, ptr noundef %24) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load ptr, ptr %12, align 8, !tbaa !133
  %29 = tail call fastcc zeroext i8 @can_put_in_inner_loop(ptr noundef %28, ptr noundef %1) #25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %19, %27, %13
  %32 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #25
  %33 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #25, !range !91
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %13, label %35, !llvm.loop !424

35:                                               ; preds = %27, %31, %6, %2
  %36 = phi i8 [ 0, %2 ], [ 1, %6 ], [ 0, %27 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #26
  ret i8 %36
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #22 !prof !34 !PGOFuncName !425 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !59
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare zeroext i8 @stmt_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @exit_phi_for_loop_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !426 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %1) #25, !range !129
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #25
  %10 = tail call ptr @single_exit(ptr noundef %0) #24
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !149
  %13 = icmp eq ptr %9, %12
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %8, %2, %5
  %16 = phi i8 [ 0, %5 ], [ 0, %2 ], [ %14, %8 ]
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_source_location_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !427 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = tail call fastcc i32 @VEC_source_location_base_space(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #24
  store ptr %6, ptr %0, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_source_location_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !428 {
  %3 = load i32, ptr %0, align 4, !tbaa !429
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !429
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !431 {
  %2 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef 0) #25
  %3 = getelementptr inbounds %struct.phi_arg_d, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !432
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !434 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 645, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !435
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #25
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !34 !PGOFuncName !436 {
  %2 = load i32, ptr %0, align 8, !tbaa !214
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !214
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_source_location_base_pop(ptr nocapture noundef %0) unnamed_addr #11 !prof !34 !PGOFuncName !437 {
  %2 = load i32, ptr %0, align 4, !tbaa !429
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !429
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !58
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !438 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #25, !range !91
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.38, i32 noundef 655, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !226
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #25
  ret ptr %7
}

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @duplicate_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @recompute_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !439 {
  %2 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !58
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_map_hash(ptr noundef) #2

; Function Attrs: optsize
declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 !prof !34 !PGOFuncName !440 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #25
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #25
  store ptr %4, ptr %0, align 8, !tbaa !229
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !231
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !232
  ret void
}

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_uses_equiv_to_x_with_y(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !prof !34 !PGOFuncName !441 {
  %9 = alloca %struct.ssa_operand_iterator_d, align 8
  %10 = alloca %struct.tree_map, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #26
  %11 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 1) #25
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #25
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %8
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.tree_map, ptr %10, i64 0, i32 1
  br label %17

17:                                               ; preds = %14, %94
  %18 = phi ptr [ %11, %14 ], [ %95, %94 ]
  %19 = call fastcc ptr @get_use_from_ptr(ptr noundef %18) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #26
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %18, ptr noundef %4) #25
  br label %94

22:                                               ; preds = %17
  %23 = call ptr @analyze_scalar_evolution(ptr noundef %0, ptr noundef %19) #24
  %24 = call fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %23) #25
  %25 = icmp eq ptr %24, null
  %26 = load ptr, ptr @chrec_dont_know, align 8
  %27 = icmp eq ptr %24, %26
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %94, label %29

29:                                               ; preds = %22
  %30 = load i32, ptr %0, align 8, !tbaa !154
  %31 = call ptr @evolution_part_in_loop_num(ptr noundef nonnull %24, i32 noundef %30) #24
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr @chrec_dont_know, align 8
  %34 = icmp eq ptr %31, %33
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %94, label %36

36:                                               ; preds = %29
  %37 = load i64, ptr %31, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = call i64 @int_cst_value(ptr noundef nonnull %31) #24
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %43, label %94

43:                                               ; preds = %40
  %44 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !59
  %45 = call i32 %44(ptr noundef %19) #24
  store i32 %45, ptr %16, align 8, !tbaa !442
  store ptr %19, ptr %10, align 8, !tbaa !445
  %46 = call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef nonnull %10, i32 noundef %45) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tree_map, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !446
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %18, ptr noundef %50) #25
  br label %94

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %53 = load i32, ptr %0, align 8, !tbaa !154
  %54 = call ptr @initial_condition_in_loop_num(ptr noundef nonnull %24, i32 noundef %53) #24
  %55 = icmp eq ptr %54, null
  %56 = load ptr, ptr @chrec_dont_know, align 8
  %57 = icmp eq ptr %54, %56
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2083, ptr noundef nonnull @.str.1) #24
  br label %60

60:                                               ; preds = %51, %59
  %61 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !153
  %63 = load ptr, ptr %52, align 8, !tbaa !153
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %62, ptr noundef %54, ptr noundef %5) #24
  %67 = load ptr, ptr %52, align 8, !tbaa !153
  %68 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %67, ptr noundef nonnull %4, ptr noundef %66) #24
  %69 = icmp eq ptr %68, %4
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %18, ptr noundef nonnull %4) #25
  br label %94

71:                                               ; preds = %60
  %72 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %63, ptr noundef nonnull %4, ptr noundef %5) #24
  %73 = load ptr, ptr %61, align 8, !tbaa !153
  %74 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %73, ptr noundef %72) #24
  %75 = load ptr, ptr %61, align 8, !tbaa !153
  %76 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %75, ptr noundef %74, ptr noundef %54) #24
  br label %77

77:                                               ; preds = %65, %71
  %78 = phi ptr [ %68, %65 ], [ %76, %71 ]
  %79 = load ptr, ptr %61, align 8, !tbaa !153
  %80 = call ptr @create_tmp_var(ptr noundef %79, ptr noundef nonnull @.str.39) #24
  %81 = call zeroext i8 @add_referenced_var(ptr noundef %80) #24
  %82 = call ptr @force_gimple_operand_gsi(ptr noundef %7, ptr noundef %78, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #24
  %83 = call ptr @gimple_build_assign_stat(ptr noundef %80, ptr noundef %82) #24
  %84 = call fastcc ptr @make_ssa_name(ptr noundef %80, ptr noundef %83) #25
  call fastcc void @gimple_assign_set_lhs(ptr noundef %83, ptr noundef %84) #25
  call void @gsi_insert_before(ptr noundef %7, ptr noundef %83, i32 noundef 1) #24
  call fastcc void @update_stmt(ptr noundef %83) #25
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %18, ptr noundef %84) #25
  %85 = call ptr @ggc_alloc_stat(i64 noundef 24) #24
  %86 = load i32, ptr %16, align 8, !tbaa !442
  %87 = getelementptr inbounds %struct.tree_map, ptr %85, i64 0, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !442
  store ptr %19, ptr %85, align 8, !tbaa !445
  %88 = getelementptr inbounds %struct.tree_map, ptr %85, i64 0, i32 2
  store ptr %84, ptr %88, align 8, !tbaa !446
  %89 = call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %85, i32 noundef %86, i32 noundef 1) #24
  %90 = load ptr, ptr %89, align 8, !tbaa !59
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2121, ptr noundef nonnull @.str.1) #24
  br label %93

93:                                               ; preds = %77, %92
  store ptr %85, ptr %89, align 8, !tbaa !59
  br label %94

94:                                               ; preds = %29, %36, %40, %22, %93, %70, %48, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #26
  %95 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %9) #25
  %96 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #25
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %17, label %98, !llvm.loop !447

98:                                               ; preds = %94, %8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #26
  ret void
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !448 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !449
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 51, ptr noundef nonnull @.str.1) #24
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !449
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !450
  ret ptr %13
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_source_location_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !454 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_source_location_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !455
  %6 = load i32, ptr %0, align 4, !tbaa !429
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !456 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !435
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #25
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !457 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !458
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !460 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #9 !prof !34 !PGOFuncName !461 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #21 !prof !34 !PGOFuncName !463 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !317
  store ptr %1, ptr %4, align 8, !tbaa !59
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #21 !prof !34 !PGOFuncName !464 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !368
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #25
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !34 !PGOFuncName !465 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !58
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !153
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !153
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_lambda_vector_gc_alloc(i32 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !466 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @av_for_af(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !467 {
  %4 = load i64, ptr %0, align 8
  br label %5

5:                                                ; preds = %15, %3
  %6 = phi i64 [ %4, %3 ], [ %28, %15 ]
  %7 = phi ptr [ %0, %3 ], [ %17, %15 ]
  %8 = trunc i64 %6 to i16
  switch i16 %8, label %35 [
    i16 146, label %9
    i16 23, label %33
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !153
  %22 = trunc i64 %21 to i32
  %23 = tail call fastcc i32 @am_vector_index_for_loop(ptr noundef %2, i32 noundef %22) #25
  %24 = tail call i64 @int_cst_value(ptr noundef nonnull %11) #24
  %25 = trunc i64 %24 to i32
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i32, ptr %1, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !58
  %28 = load i64, ptr %17, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 146
  br i1 %30, label %5, label %31

31:                                               ; preds = %15
  %32 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef nonnull %17, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1) #25, !range !91
  br label %35

33:                                               ; preds = %5
  %34 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef 1) #25, !range !91
  br label %35

35:                                               ; preds = %5, %9, %31, %33
  %36 = phi i8 [ %34, %33 ], [ %32, %31 ], [ 0, %9 ], [ 0, %5 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_lambda_vector_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !468 {
  %3 = load i32, ptr %0, align 8, !tbaa !260
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !260
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @am_vector_index_for_loop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !469 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %4 = load ptr, ptr %0, align 8, !tbaa !275
  %5 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #25, !range !138
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %12
  %8 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  %10 = load i32, ptr %9, align 8, !tbaa !154
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %8, 1
  %14 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %4, i32 noundef %13, ptr noundef nonnull %3) #25, !range !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7, !llvm.loop !470

16:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 157, ptr noundef nonnull @.str.1) #24
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi i32 [ 0, %16 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @av_for_af_base(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !34 !PGOFuncName !471 {
  br label %5

5:                                                ; preds = %51, %4
  %6 = phi ptr [ %0, %4 ], [ %52, %51 ]
  %7 = phi i32 [ %3, %4 ], [ %53, %51 ]
  br label %8

8:                                                ; preds = %5, %39
  %9 = phi ptr [ %41, %39 ], [ %6, %5 ]
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %78 [
    i16 23, label %12
    i16 141, label %26
    i16 63, label %34
    i16 64, label %42
    i16 65, label %54
    i16 79, label %74
  ]

12:                                               ; preds = %8
  %13 = tail call i64 @int_cst_value(ptr noundef nonnull %9) #24
  %14 = getelementptr inbounds %struct.access_matrix, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !277
  %16 = getelementptr inbounds %struct.access_matrix, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !278
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #25
  %19 = add i32 %18, %15
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %1, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = trunc i64 %13 to i32
  %24 = mul i32 %7, %23
  %25 = add i32 %22, %24
  store i32 %25, ptr %21, align 4, !tbaa !58
  br label %78

26:                                               ; preds = %8
  %27 = tail call i32 @access_matrix_get_index_for_parameter(ptr noundef nonnull %9, ptr noundef %2) #24
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds i32, ptr %1, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !58
  %33 = add nsw i32 %32, %7
  store i32 %33, ptr %31, align 4, !tbaa !58
  br label %78

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !153
  %37 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef %36, ptr noundef %1, ptr noundef %2, i32 noundef %7) #25, !range !91
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !153
  br label %8

42:                                               ; preds = %8
  %43 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !153
  %45 = tail call fastcc zeroext i8 @av_for_af_base(ptr noundef %44, ptr noundef %1, ptr noundef %2, i32 noundef %7) #25, !range !91
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !153
  %50 = sub nsw i32 0, %7
  br label %51

51:                                               ; preds = %47, %62, %70, %74
  %52 = phi ptr [ %76, %74 ], [ %56, %70 ], [ %61, %62 ], [ %49, %47 ]
  %53 = phi i32 [ %77, %74 ], [ %73, %70 ], [ %65, %62 ], [ %50, %47 ]
  br label %5

54:                                               ; preds = %8
  %55 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 23
  %60 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !153
  br i1 %59, label %62, label %66

62:                                               ; preds = %54
  %63 = tail call i64 @int_cst_value(ptr noundef nonnull %56) #24
  %64 = trunc i64 %63 to i32
  %65 = mul i32 %7, %64
  br label %51

66:                                               ; preds = %54
  %67 = load i64, ptr %61, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 23
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = tail call i64 @int_cst_value(ptr noundef nonnull %61) #24
  %72 = trunc i64 %71 to i32
  %73 = mul i32 %7, %72
  br label %51

74:                                               ; preds = %8
  %75 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !153
  %77 = sub nsw i32 0, %7
  br label %51

78:                                               ; preds = %66, %42, %8, %34, %29, %26, %12
  %79 = phi i8 [ 1, %12 ], [ 1, %29 ], [ 0, %26 ], [ 0, %34 ], [ 0, %8 ], [ 0, %42 ], [ 0, %66 ]
  ret i8 %79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !34 !PGOFuncName !472 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !335
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !59
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @access_matrix_get_index_for_parameter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 40}
!36 = !{!"obstack", !37, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !37, i64 40, !41, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!36, !40, i64 32}
!43 = !{!36, !40, i64 24}
!44 = !{!36, !40, i64 16}
!45 = !{!36, !41, i64 48}
!46 = !{!36, !40, i64 8}
!47 = !{!48, !40, i64 0}
!48 = !{!"lambda_body_vector_s", !40, i64 0, !41, i64 8, !41, i64 12}
!49 = !{!48, !41, i64 8}
!50 = !{!48, !41, i64 12}
!51 = !{!"lambda-code.c:lambda_vector_new"}
!52 = !{!53, !41, i64 8}
!53 = !{!"lambda_trans_matrix_s", !40, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!54 = !{!53, !41, i64 12}
!55 = !{!53, !41, i64 16}
!56 = !{!53, !40, i64 0}
!57 = !{!"lambda-code.c:lambda_vector_matrix_mult"}
!58 = !{!41, !41, i64 0}
!59 = !{!40, !40, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = !{!"lambda-code.c:print_lambda_vector"}
!64 = distinct !{!64, !61}
!65 = !{!66, !40, i64 0}
!66 = !{!"lambda_linear_expression_s", !40, i64 0, !41, i64 8, !40, i64 16, !41, i64 24, !40, i64 32}
!67 = !{!66, !41, i64 8}
!68 = !{!66, !40, i64 16}
!69 = !{!66, !41, i64 24}
!70 = !{!66, !40, i64 32}
!71 = !{!"lambda-code.c:print_linear_expression"}
!72 = distinct !{!72, !61}
!73 = !{!74, !40, i64 16}
!74 = !{!"lambda_loop_s", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24}
!75 = !{!74, !41, i64 24}
!76 = distinct !{!76, !61}
!77 = distinct !{!77, !61}
!78 = !{!79, !40, i64 0}
!79 = !{!"lambda_loopnest_s", !40, i64 0, !41, i64 8, !41, i64 12}
!80 = !{!79, !41, i64 8}
!81 = !{!79, !41, i64 12}
!82 = distinct !{!82, !61}
!83 = !{i32 0, i32 -2147483648}
!84 = !{!"lambda-code.c:gcd"}
!85 = distinct !{!85, !61}
!86 = distinct !{!86, !61}
!87 = !{!88, !40, i64 0}
!88 = !{!"lambda_lattice_s", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !41, i64 32}
!89 = !{!88, !40, i64 16}
!90 = !{!88, !40, i64 24}
!91 = !{i8 0, i8 2}
!92 = distinct !{!92, !61}
!93 = distinct !{!93, !61}
!94 = !{!"lambda-code.c:lambda_lattice_compute_base"}
!95 = !{!74, !40, i64 0}
!96 = distinct !{!96, !61}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = !{!"lambda-code.c:lambda_compute_auxillary_space"}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61}
!109 = !{!"lambda-code.c:lambda_compute_step_signs"}
!110 = distinct !{!110, !61}
!111 = distinct !{!111, !61}
!112 = distinct !{!112, !61}
!113 = distinct !{!113, !61}
!114 = !{!"lambda-code.c:lambda_compute_target_space"}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61}
!117 = distinct !{!117, !61}
!118 = distinct !{!118, !61}
!119 = distinct !{!119, !61}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = distinct !{!122, !61}
!123 = !{!74, !40, i64 8}
!124 = distinct !{!124, !61}
!125 = distinct !{!125, !61}
!126 = distinct !{!126, !61}
!127 = !{!"lambda-code.c:lambda_vector_zerop"}
!128 = distinct !{!128, !61}
!129 = !{i32 0, i32 256}
!130 = !{!"lambda-code.c:gimple_code"}
!131 = !{!"lambda-code.c:gimple_cond_lhs"}
!132 = !{!"lambda-code.c:gimple_cond_rhs"}
!133 = !{!134, !40, i64 48}
!134 = !{!"loop", !41, i64 0, !41, i64 4, !40, i64 8, !40, i64 16, !135, i64 24, !41, i64 32, !41, i64 36, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !136, i64 80, !136, i64 96, !38, i64 112, !38, i64 113, !41, i64 116, !40, i64 120, !40, i64 128, !38, i64 136, !40, i64 144}
!135 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!136 = !{!"", !37, i64 0, !37, i64 8}
!137 = distinct !{!137, !61}
!138 = !{i32 0, i32 2}
!139 = distinct !{!139, !61}
!140 = !{!"lambda-code.c:depth_of_nest"}
!141 = distinct !{!141, !61}
!142 = !{!134, !41, i64 36}
!143 = !{!144, !40, i64 24}
!144 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !38, i64 32, !40, i64 48, !40, i64 56, !38, i64 64, !37, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!145 = distinct !{!145, !61}
!146 = distinct !{!146, !61}
!147 = !{!"lambda-code.c:can_convert_to_perfect_nest"}
!148 = distinct !{!148, !61}
!149 = !{!150, !40, i64 8}
!150 = !{!"edge_def", !40, i64 0, !40, i64 8, !38, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56}
!151 = distinct !{!151, !61}
!152 = !{!"lambda-code.c:gcc_loop_to_lambda_loop"}
!153 = !{!38, !38, i64 0}
!154 = !{!134, !41, i64 0}
!155 = !{!150, !40, i64 0}
!156 = !{i32 0, i32 65536}
!157 = !{!"lambda-code.c:VEC_tree_heap_safe_push"}
!158 = !{!"lambda-code.c:VEC_lambda_loop_heap_safe_push"}
!159 = !{!"lambda-code.c:perfect_nestify"}
!160 = !{!161, !40, i64 8}
!161 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !40, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!162 = !{!163, !40, i64 8}
!163 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !40, i64 40, !41, i64 48, !38, i64 52, !38, i64 60, !41, i64 68, !41, i64 72}
!164 = !{!144, !40, i64 48}
!165 = distinct !{!165, !61}
!166 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !59}
!167 = distinct !{!167, !61}
!168 = distinct !{!168, !61}
!169 = !{!134, !40, i64 8}
!170 = !{!134, !40, i64 16}
!171 = distinct !{!171, !61}
!172 = distinct !{!172, !61}
!173 = distinct !{!173, !61}
!174 = !{!"lambda-code.c:VEC_lambda_loop_base_iterate"}
!175 = !{!176, !41, i64 0}
!176 = !{!"VEC_lambda_loop_base", !41, i64 0, !41, i64 4, !38, i64 8}
!177 = !{!"lambda-code.c:VEC_lambda_loop_heap_free"}
!178 = !{!"lambda-code.c:VEC_tree_heap_free"}
!179 = !{!"lambda-code.c:VEC_int_heap_free"}
!180 = distinct !{!180, !61}
!181 = distinct !{!181, !61}
!182 = !{!"lambda-code.c:gimple_phi_num_args"}
!183 = !{!"lambda-code.c:gimple_phi_arg_def"}
!184 = !{!"lambda-code.c:first_imm_use_stmt"}
!185 = !{!186, !40, i64 8}
!186 = !{!"immediate_use_iterator_d", !40, i64 0, !40, i64 8, !187, i64 16, !40, i64 48}
!187 = !{!"ssa_use_operand_d", !40, i64 0, !40, i64 8, !38, i64 16, !40, i64 24}
!188 = !{!187, !40, i64 8}
!189 = !{!186, !40, i64 0}
!190 = !{!"lambda-code.c:end_imm_use_stmt_p"}
!191 = !{!"lambda-code.c:is_gimple_debug"}
!192 = !{!"lambda-code.c:next_imm_use_stmt"}
!193 = !{!186, !40, i64 24}
!194 = !{!186, !40, i64 16}
!195 = !{!150, !41, i64 48}
!196 = distinct !{!196, !61}
!197 = distinct !{!197, !61}
!198 = distinct !{!198, !61}
!199 = distinct !{!199, !61}
!200 = distinct !{!200, !61}
!201 = !{!"lambda-code.c:VEC_tree_base_index"}
!202 = !{!"lambda-code.c:lle_to_gcc_expression"}
!203 = distinct !{!203, !61}
!204 = distinct !{!204, !61}
!205 = !{!"lambda-code.c:gimple_bb"}
!206 = !{!"lambda-code.c:gsi_after_labels"}
!207 = distinct !{!207, !61}
!208 = !{!"lambda-code.c:make_ssa_name"}
!209 = !{!"lambda-code.c:gimple_assign_set_lhs"}
!210 = !{!"lambda-code.c:gimple_cond_set_condition"}
!211 = !{!"lambda-code.c:update_stmt"}
!212 = !{!"lambda-code.c:VEC_tree_base_replace"}
!213 = !{!"lambda-code.c:VEC_tree_base_iterate"}
!214 = !{!215, !41, i64 0}
!215 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !38, i64 8}
!216 = !{!"lambda-code.c:get_def_from_ptr"}
!217 = !{!"lambda-code.c:gimple_phi_result_ptr"}
!218 = !{!"lambda-code.c:single_ssa_tree_operand"}
!219 = !{!"lambda-code.c:VEC_tree_base_length"}
!220 = !{!"lambda-code.c:lbv_to_gcc_expression"}
!221 = !{!"lambda-code.c:first_imm_use_on_stmt"}
!222 = !{!186, !40, i64 48}
!223 = !{!"lambda-code.c:end_imm_use_on_stmt_p"}
!224 = !{!"lambda-code.c:next_imm_use_on_stmt"}
!225 = !{!"lambda-code.c:gimple_phi_arg_edge"}
!226 = !{!144, !40, i64 0}
!227 = !{!"lambda-code.c:VEC_gimple_heap_safe_push"}
!228 = !{!"lambda-code.c:gsi_start_bb"}
!229 = !{!230, !40, i64 0}
!230 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16}
!231 = !{!230, !40, i64 8}
!232 = !{!230, !40, i64 16}
!233 = !{!"lambda-code.c:gsi_end_p"}
!234 = !{!"lambda-code.c:gsi_stmt"}
!235 = !{!236, !40, i64 0}
!236 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!237 = !{!"lambda-code.c:not_interesting_stmt"}
!238 = !{!"lambda-code.c:stmt_is_bumper_for_loop"}
!239 = distinct !{!239, !61}
!240 = !{!"lambda-code.c:gsi_next"}
!241 = !{!236, !40, i64 16}
!242 = !{!243, !40, i64 16}
!243 = !{!"data_dependence_relation", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !41, i64 56, !38, i64 60, !38, i64 61, !38, i64 62}
!244 = !{!243, !40, i64 0}
!245 = !{!246, !38, i64 24}
!246 = !{!"data_reference", !40, i64 0, !40, i64 8, !40, i64 16, !38, i64 24, !247, i64 32, !248, i64 72, !249, i64 88, !40, i64 104}
!247 = !{!"innermost_loop_behavior", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!248 = !{!"indices", !40, i64 0, !40, i64 8}
!249 = !{!"dr_alias", !40, i64 0, !40, i64 8}
!250 = !{!243, !40, i64 8}
!251 = !{!243, !40, i64 48}
!252 = distinct !{!252, !61}
!253 = distinct !{!253, !61}
!254 = !{!"lambda-code.c:VEC_ddr_p_base_length"}
!255 = !{!256, !41, i64 0}
!256 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!257 = !{!"lambda-code.c:VEC_ddr_p_base_index"}
!258 = !{!"lambda-code.c:VEC_ddr_p_base_iterate"}
!259 = !{!"lambda-code.c:VEC_lambda_vector_base_length"}
!260 = !{!261, !41, i64 0}
!261 = !{!"VEC_lambda_vector_base", !41, i64 0, !41, i64 4, !38, i64 8}
!262 = !{!"lambda-code.c:VEC_lambda_vector_base_index"}
!263 = !{!"lambda-code.c:lambda_vector_lexico_pos"}
!264 = distinct !{!264, !61}
!265 = !{!246, !40, i64 80}
!266 = distinct !{!266, !61}
!267 = distinct !{!267, !61}
!268 = !{!"lambda-code.c:VEC_data_reference_p_base_iterate"}
!269 = !{!270, !41, i64 0}
!270 = !{!"VEC_data_reference_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!271 = !{!"lambda-code.c:lambda_collect_parameters_from_af"}
!272 = distinct !{!272, !61}
!273 = distinct !{!273, !61}
!274 = !{!"lambda-code.c:build_access_matrix"}
!275 = !{!276, !40, i64 0}
!276 = !{!"access_matrix", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24}
!277 = !{!276, !41, i64 8}
!278 = !{!276, !40, i64 16}
!279 = !{!276, !40, i64 24}
!280 = distinct !{!280, !61}
!281 = !{!246, !40, i64 104}
!282 = !{!"lambda-code.c:lambda_vector_clear"}
!283 = !{!"lambda-code.c:lambda_lattice_new"}
!284 = !{!88, !41, i64 8}
!285 = !{!88, !41, i64 32}
!286 = !{!"lambda-code.c:lambda_vector_add_mc"}
!287 = distinct !{!287, !61}
!288 = !{!"lambda-code.c:compute_nest_using_fourier_motzkin"}
!289 = distinct !{!289, !61}
!290 = distinct !{!290, !61}
!291 = distinct !{!291, !61}
!292 = distinct !{!292, !61}
!293 = distinct !{!293, !61}
!294 = distinct !{!294, !61}
!295 = distinct !{!295, !61}
!296 = distinct !{!296, !61}
!297 = !{!"lambda-code.c:lle_equal"}
!298 = distinct !{!298, !61}
!299 = distinct !{!299, !61}
!300 = !{!"lambda-code.c:lambda_vector_copy"}
!301 = !{!"lambda-code.c:lambda_vector_first_nz"}
!302 = distinct !{!302, !61}
!303 = !{!"lambda-code.c:lambda_vector_min_nz"}
!304 = distinct !{!304, !61}
!305 = !{!"lambda-code.c:lambda_vector_gcd"}
!306 = distinct !{!306, !61}
!307 = !{!"lambda-code.c:lambda_vector_mult_const"}
!308 = distinct !{!308, !61}
!309 = !{!"lambda-code.c:gimple_op"}
!310 = !{!"lambda-code.c:gimple_has_ops"}
!311 = !{!"lambda-code.c:gimple_ops"}
!312 = !{!37, !37, i64 0}
!313 = !{!"lambda-code.c:gimple_statement_structure"}
!314 = !{!"lambda-code.c:gss_for_code"}
!315 = !{!"lambda-code.c:instantiate_parameters"}
!316 = !{!"lambda-code.c:get_use_from_ptr"}
!317 = !{!187, !40, i64 24}
!318 = !{!"lambda-code.c:gimple_phi_arg_imm_use_ptr"}
!319 = !{!"lambda-code.c:gcc_tree_to_linear_expression"}
!320 = distinct !{!320, !61}
!321 = distinct !{!321, !61}
!322 = !{!"lambda-code.c:VEC_tree_heap_reserve"}
!323 = !{!"lambda-code.c:invariant_in_loop_and_outer_loops"}
!324 = !{!"lambda-code.c:VEC_tree_base_quick_push"}
!325 = !{!"lambda-code.c:gimple_cond_code"}
!326 = !{!"lambda-code.c:VEC_int_heap_safe_push"}
!327 = !{!"lambda-code.c:block_before_loop"}
!328 = !{!"lambda-code.c:gimple_phi_arg"}
!329 = !{!"lambda-code.c:VEC_tree_base_space"}
!330 = !{!215, !41, i64 4}
!331 = !{!"lambda-code.c:loop_depth"}
!332 = !{!134, !40, i64 40}
!333 = !{!"lambda-code.c:loop_outer"}
!334 = !{!"lambda-code.c:VEC_loop_p_base_length"}
!335 = !{!336, !41, i64 0}
!336 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !38, i64 8}
!337 = !{!"lambda-code.c:VEC_loop_p_base_index"}
!338 = !{!"lambda-code.c:VEC_int_heap_reserve"}
!339 = !{!"lambda-code.c:VEC_int_base_quick_push"}
!340 = !{!341, !41, i64 0}
!341 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !38, i64 8}
!342 = !{!"lambda-code.c:VEC_int_base_space"}
!343 = !{!341, !41, i64 4}
!344 = !{!"lambda-code.c:VEC_lambda_loop_heap_reserve"}
!345 = !{!"lambda-code.c:VEC_lambda_loop_base_quick_push"}
!346 = !{!"lambda-code.c:VEC_lambda_loop_base_space"}
!347 = !{!176, !41, i64 4}
!348 = !{!"lambda-code.c:link_use_stmts_after"}
!349 = distinct !{!349, !61}
!350 = distinct !{!350, !61}
!351 = !{!"lambda-code.c:op_iter_init_phiuse"}
!352 = !{!353, !38, i64 0}
!353 = !{!"ssa_operand_iterator_d", !38, i64 0, !41, i64 4, !40, i64 8, !40, i64 16, !41, i64 24, !41, i64 28, !40, i64 32}
!354 = !{!353, !40, i64 32}
!355 = !{!353, !41, i64 28}
!356 = !{!353, !41, i64 4}
!357 = !{!"lambda-code.c:op_iter_done"}
!358 = !{!"lambda-code.c:move_use_after_head"}
!359 = !{!"lambda-code.c:op_iter_next_use"}
!360 = !{!353, !40, i64 16}
!361 = !{!362, !40, i64 0}
!362 = !{!"use_optype_d", !40, i64 0, !187, i64 8}
!363 = !{!353, !41, i64 24}
!364 = !{!"lambda-code.c:op_iter_init_use"}
!365 = !{!"lambda-code.c:gimple_vuse_op"}
!366 = !{!362, !40, i64 32}
!367 = !{!"lambda-code.c:delink_imm_use"}
!368 = !{!187, !40, i64 0}
!369 = !{!"lambda-code.c:link_imm_use_to_list"}
!370 = !{!"lambda-code.c:gimple_phi_result"}
!371 = !{!"lambda-code.c:clear_and_done_ssa_iter"}
!372 = !{!"lambda-code.c:op_iter_init"}
!373 = !{!353, !40, i64 8}
!374 = !{!375, !40, i64 0}
!375 = !{!"def_optype_d", !40, i64 0, !40, i64 8}
!376 = !{!"lambda-code.c:gimple_def_ops"}
!377 = !{!"lambda-code.c:gimple_vdef"}
!378 = !{!"lambda-code.c:gimple_use_ops"}
!379 = !{!"lambda-code.c:gimple_vuse"}
!380 = !{!"lambda-code.c:gimple_has_mem_ops"}
!381 = !{!"lambda-code.c:build_linear_expr"}
!382 = distinct !{!382, !61}
!383 = !{!"lambda-code.c:gimple_set_op"}
!384 = !{!"lambda-code.c:gimple_num_ops"}
!385 = !{!"lambda-code.c:gimple_cond_set_code"}
!386 = !{!"lambda-code.c:gimple_cond_set_lhs"}
!387 = !{!"lambda-code.c:gimple_cond_set_rhs"}
!388 = !{!"lambda-code.c:op_iter_init_tree"}
!389 = !{!"lambda-code.c:op_iter_next_tree"}
!390 = !{!375, !40, i64 8}
!391 = !{!"lambda-code.c:VEC_edge_base_index"}
!392 = !{!"lambda-code.c:VEC_gimple_heap_reserve"}
!393 = !{!"lambda-code.c:VEC_gimple_base_quick_push"}
!394 = !{!395, !41, i64 0}
!395 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !38, i64 8}
!396 = !{!"lambda-code.c:VEC_gimple_base_space"}
!397 = !{!395, !41, i64 4}
!398 = !{!"lambda-code.c:bb_seq"}
!399 = !{!144, !41, i64 96}
!400 = !{!401, !40, i64 0}
!401 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!402 = !{!"lambda-code.c:gimple_seq_first"}
!403 = !{!404, !40, i64 0}
!404 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!405 = !{!"lambda-code.c:first_readonly_imm_use"}
!406 = !{!"lambda-code.c:end_readonly_imm_use_p"}
!407 = !{!"lambda-code.c:phi_loop_edge_uses_def"}
!408 = distinct !{!408, !61}
!409 = !{!"lambda-code.c:stmt_uses_phi_result"}
!410 = !{!"lambda-code.c:next_readonly_imm_use"}
!411 = !{!"lambda-code.c:cannot_convert_bb_to_perfect_nest"}
!412 = distinct !{!412, !61}
!413 = !{!"lambda-code.c:is_gimple_assign"}
!414 = !{!"lambda-code.c:cannot_convert_modify_to_perfect_nest"}
!415 = distinct !{!415, !61}
!416 = distinct !{!416, !61}
!417 = distinct !{!417, !61}
!418 = distinct !{!418, !61}
!419 = !{!"lambda-code.c:can_duplicate_iv"}
!420 = !{!"lambda-code.c:gimple_assign_lhs"}
!421 = !{!"lambda-code.c:can_put_in_inner_loop"}
!422 = distinct !{!422, !61}
!423 = !{!"lambda-code.c:can_put_after_inner_loop"}
!424 = distinct !{!424, !61}
!425 = !{!"lambda-code.c:automatically_generated_chrec_p"}
!426 = !{!"lambda-code.c:exit_phi_for_loop_p"}
!427 = !{!"lambda-code.c:VEC_source_location_heap_reserve"}
!428 = !{!"lambda-code.c:VEC_source_location_base_quick_push"}
!429 = !{!430, !41, i64 0}
!430 = !{!"VEC_source_location_base", !41, i64 0, !41, i64 4, !38, i64 8}
!431 = !{!"lambda-code.c:gimple_phi_arg_location"}
!432 = !{!433, !41, i64 40}
!433 = !{!"phi_arg_d", !187, i64 0, !40, i64 32, !41, i64 40}
!434 = !{!"lambda-code.c:single_succ_edge"}
!435 = !{!144, !40, i64 8}
!436 = !{!"lambda-code.c:VEC_tree_base_pop"}
!437 = !{!"lambda-code.c:VEC_source_location_base_pop"}
!438 = !{!"lambda-code.c:single_pred_edge"}
!439 = !{!"lambda-code.c:VEC_int_base_index"}
!440 = !{!"lambda-code.c:gsi_last_bb"}
!441 = !{!"lambda-code.c:replace_uses_equiv_to_x_with_y"}
!442 = !{!443, !41, i64 8}
!443 = !{!"tree_map", !444, i64 0, !41, i64 8, !40, i64 16}
!444 = !{!"tree_map_base", !40, i64 0}
!445 = !{!443, !40, i64 0}
!446 = !{!443, !40, i64 16}
!447 = distinct !{!447, !61}
!448 = !{!"lambda-code.c:gimple_vop"}
!449 = !{!161, !40, i64 24}
!450 = !{!451, !40, i64 24}
!451 = !{!"gimple_df", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !452, i64 32, !452, i64 48, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !41, i64 96, !453, i64 104}
!452 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !40, i64 8}
!453 = !{!"ssa_operands", !40, i64 0, !41, i64 8, !41, i64 12, !38, i64 16, !40, i64 24, !40, i64 32}
!454 = !{!"lambda-code.c:VEC_source_location_base_space"}
!455 = !{!430, !41, i64 4}
!456 = !{!"lambda-code.c:single_succ_p"}
!457 = !{!"lambda-code.c:VEC_edge_base_length"}
!458 = !{!459, !41, i64 0}
!459 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !38, i64 8}
!460 = !{!"lambda-code.c:single_pred_p"}
!461 = !{!"lambda-code.c:gimple_seq_last"}
!462 = !{!404, !40, i64 8}
!463 = !{!"lambda-code.c:set_ssa_use_from_ptr"}
!464 = !{!"lambda-code.c:link_imm_use"}
!465 = !{!"lambda-code.c:tree_operand_length"}
!466 = !{!"lambda-code.c:VEC_lambda_vector_gc_alloc"}
!467 = !{!"lambda-code.c:av_for_af"}
!468 = !{!"lambda-code.c:VEC_lambda_vector_base_quick_push"}
!469 = !{!"lambda-code.c:am_vector_index_for_loop"}
!470 = distinct !{!470, !61}
!471 = !{!"lambda-code.c:av_for_af_base"}
!472 = !{!"lambda-code.c:VEC_loop_p_base_iterate"}
